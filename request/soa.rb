require 'savon'
require 'rubygems'

# client = Savon.client(wsdl: "https://vcenter.local/sdk/vimService.wsdl")

# puts client.Login("administrator@vsphere.local", "PASS_HERE", "en")

# puts client.inspect

vc_host = "https://vcenter.local"
vc_user = "administrator@vsphere.local"
vc_pass = "PASS_HERE"

client = Savon.client(
    :wsdl => vc_host + "/sdk/vim.wsdl",
    :endpoint => vc_host + "/sdk/vimService",
    :proxy => "https://127.0.0.1:8888",
    :env_namespace => :'soap-env',
    # :namespace_identifier => nil,
    :namespace_identifier => "ns0",

    :headers => {
        'Content-Type': 'text/xml; charset=utf-8',
        'User-Agent': 'PowerCLI/11.0.0.10380590',
        'SOAPAction': '"urn:vim25/6.7.1"',
        'Expect': '100-continue'
    },

    # :namespaces => {
    #     "xmlns:ns0": "urn:vim25"
    # },

    :ssl_verify_mode => :none,
    :ssl_version => :TLSv1_2,
    :raise_errors => false,
    :log_level => :info,
    :log => false

    # :strip_namespaces => false,
    # :namespace => vc_host + "/sdk/",

    # ssl_version :TLSv1_2
    # ssl_verify_mode :none
    # convert_request_keys_to :lower_camelcase
)

# puts client.operations

# message = {
#     username: "administrator@vsphere.local",
#     password: "PASS_HERE"
# }

# res = client.call(:login, message: message)

login  = client.call(:login) do 
    message(:_this => "SessionManager", :userName => vc_user, :password => vc_pass)
end

client.globals.headers({ "Cookie" => login.http.headers["Set-Cookie"] })



# puts login.http.headers["Set-Cookie"]

# puts login.to_hash



propset = {
    'type': 'VirtualMachine',
    # 'all': 0,
    'pathSet': [
        'name',
        'parent',
        'guest',
        'configStatus',
        'runtime.powerState',
        'runtime.host',
        'runtime.bootTime',
        'runtime.maxCpuUsage',
        'runtime.maxMemoryUsage',
        'runtime.numMksConnections',
        'runtime.toolsInstallerMounted',
        'config.hardware.numCPU',
        'config.hardware.numCoresPerSocket',
        'config.hardware.memoryMB',
        'config.hardware.device',
        'config.guestFullName',
        'config.guestId',
        'config.template',
        'config.instanceUuid',
        'config.annotation',
        # 'config.createDate',
        'config.changeVersion',
        'config.firmware',
        'config.version',
    ]
}

sSet3 = [
    {'name': 'vAppResourcePoolTSpec'},
    {'name': 'vAppVMTSpec'},
    {'name': 'resourcePoolTSpec'},
    {'name': 'resourcePoolVMTSpec'}
]

sSet4 = [
    {'name': 'resourcePoolTSpec'},
    {'name': 'resourcePoolVMTSpec'},
    {'name': 'vAppVMTSpec'},
    {'name': 'vAppResourcePoolTSpec'}
]

sSet1 = [
    {'name': 'traverseFolders'}
]

sSet2 = {:name => 'traverseFolders'}


tSet1 = {
    :name => 'datacenterVmTraversalSpec',
    :type => 'Datacenter',
    :path => 'vmFolder', 
    :skip => true, 
    :selectSet => sSet1,
    :'@xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
    :'@xsi:type' => "ns0:TraversalSpec"
}

tSet2 = {
    :name => 'vAppVMTSpec',
    :type => 'VirtualApp', 
    :path => 'vm', 
    :skip => false,
    :'@xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
    :'@xsi:type' => "ns0:TraversalSpec"
}

tSet3 = {
    :name => 'vAppResourcePoolTSpec',
    :type => 'VirtualApp', 
    :path => 'resourcePool', 
    :skip => true, 
    :selectSet => sSet3,
    :'@xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
    :'@xsi:type' => "ns0:TraversalSpec"
}

tSet4 = {
    :name => 'resourcePoolTSpec',
    :type => 'ResourcePool', 
    :path => 'resourcePool', 
    :skip => true, 
    :selectSet => sSet4,
    :'@xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
    :'@xsi:type' => "ns0:TraversalSpec"
}

tSet5 = {
    :name => 'resourcePoolVMTSpec',
    :type => 'ResourcePool', 
    :path => 'vm', 
    :skip => false,
    :'@xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
    :'@xsi:type' => "ns0:TraversalSpec"
}

tSet = {
    :name => 'traverseFolders',
    :type =>'Folder',
    :path =>'childEntity',
    :skip => false,
    :selectSet => [tSet1, tSet2, tSet3, tSet4, tSet5, sSet2]
    # :attributes! => {
    #     :selectSet => { 
    #         "xsi:type" => "TraversalSpec",
    #         "xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance"
    #     }
    # }
}

$objectSet = {
    :obj => "group-d1",
    :skip => false,
    :selectSet => [
        tSet
    ],
    :attributes! => { 
        :obj => { :type => "Folder" },
        :selectSet => {
            "xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance",
            "xsi:type" => "ns0:TraversalSpec"
        }
    }
    
}


message = {
    :_this => "propertyCollector",
    :attributes! => { :_this => { :type => "PropertyCollector" } },
    :specSet => {
        :propSet => propset,
        :objectSet => $objectSet
    }
}

res = client.call(
    :retrieve_properties,
    message: message
)

require 'json'

File.open("vmlist.txt", "w") do |file|
    file.write JSON.dump res.to_hash
end

# puts res.to_hash

# puts client.wsdl.inspect




