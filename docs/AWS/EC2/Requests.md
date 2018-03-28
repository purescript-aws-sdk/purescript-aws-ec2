## Module AWS.EC2.Requests

#### `acceptReservedInstancesExchangeQuote`

``` purescript
acceptReservedInstancesExchangeQuote :: forall eff. Service -> AcceptReservedInstancesExchangeQuoteRequest -> Aff (exception :: EXCEPTION | eff) AcceptReservedInstancesExchangeQuoteResult
```

<p>Accepts the Convertible Reserved Instance exchange quote described in the <a>GetReservedInstancesExchangeQuote</a> call.</p>

#### `acceptVpcEndpointConnections`

``` purescript
acceptVpcEndpointConnections :: forall eff. Service -> AcceptVpcEndpointConnectionsRequest -> Aff (exception :: EXCEPTION | eff) AcceptVpcEndpointConnectionsResult
```

<p>Accepts one or more interface VPC endpoint connection requests to your VPC endpoint service.</p>

#### `acceptVpcPeeringConnection`

``` purescript
acceptVpcPeeringConnection :: forall eff. Service -> AcceptVpcPeeringConnectionRequest -> Aff (exception :: EXCEPTION | eff) AcceptVpcPeeringConnectionResult
```

<p>Accept a VPC peering connection request. To accept a request, the VPC peering connection must be in the <code>pending-acceptance</code> state, and you must be the owner of the peer VPC. Use <a>DescribeVpcPeeringConnections</a> to view your outstanding VPC peering connection requests.</p> <p>For an inter-region VPC peering connection request, you must accept the VPC peering connection in the region of the accepter VPC.</p>

#### `allocateAddress`

``` purescript
allocateAddress :: forall eff. Service -> AllocateAddressRequest -> Aff (exception :: EXCEPTION | eff) AllocateAddressResult
```

<p>Allocates an Elastic IP address.</p> <p>An Elastic IP address is for use either in the EC2-Classic platform or in a VPC. By default, you can allocate 5 Elastic IP addresses for EC2-Classic per region and 5 Elastic IP addresses for EC2-VPC per region.</p> <p>If you release an Elastic IP address for use in a VPC, you might be able to recover it. To recover an Elastic IP address that you released, specify it in the <code>Address</code> parameter. Note that you cannot recover an Elastic IP address that you released after it is allocated to another AWS account.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `allocateHosts`

``` purescript
allocateHosts :: forall eff. Service -> AllocateHostsRequest -> Aff (exception :: EXCEPTION | eff) AllocateHostsResult
```

<p>Allocates a Dedicated Host to your account. At minimum you need to specify the instance size type, Availability Zone, and quantity of hosts you want to allocate.</p>

#### `assignIpv6Addresses`

``` purescript
assignIpv6Addresses :: forall eff. Service -> AssignIpv6AddressesRequest -> Aff (exception :: EXCEPTION | eff) AssignIpv6AddressesResult
```

<p>Assigns one or more IPv6 addresses to the specified network interface. You can specify one or more specific IPv6 addresses, or you can specify the number of IPv6 addresses to be automatically assigned from within the subnet's IPv6 CIDR block range. You can assign as many IPv6 addresses to a network interface as you can assign private IPv4 addresses, and the limit varies per instance type. For information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI">IP Addresses Per Network Interface Per Instance Type</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `assignPrivateIpAddresses`

``` purescript
assignPrivateIpAddresses :: forall eff. Service -> AssignPrivateIpAddressesRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Assigns one or more secondary private IP addresses to the specified network interface. You can specify one or more specific secondary IP addresses, or you can specify the number of secondary IP addresses to be automatically assigned within the subnet's CIDR block range. The number of secondary IP addresses that you can assign to an instance varies by instance type. For information about instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Types</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. For more information about Elastic IP addresses, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>AssignPrivateIpAddresses is available only in EC2-VPC.</p>

#### `associateAddress`

``` purescript
associateAddress :: forall eff. Service -> AssociateAddressRequest -> Aff (exception :: EXCEPTION | eff) AssociateAddressResult
```

<p>Associates an Elastic IP address with an instance or a network interface.</p> <p>An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>[EC2-Classic, VPC in an EC2-VPC-only account] If the Elastic IP address is already associated with a different instance, it is disassociated from that instance and associated with the specified instance. If you associate an Elastic IP address with an instance that has an existing Elastic IP address, the existing address is disassociated from the instance, but remains allocated to your account.</p> <p>[VPC in an EC2-Classic account] If you don't specify a private IP address, the Elastic IP address is associated with the primary IP address. If the Elastic IP address is already associated with a different instance or a network interface, you get an error unless you allow reassociation. You cannot associate an Elastic IP address with an instance or network interface that has an existing Elastic IP address.</p> <important> <p>This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error, and you may be charged for each time the Elastic IP address is remapped to the same instance. For more information, see the <i>Elastic IP Addresses</i> section of <a href="http://aws.amazon.com/ec2/pricing/">Amazon EC2 Pricing</a>.</p> </important>

#### `associateDhcpOptions`

``` purescript
associateDhcpOptions :: forall eff. Service -> AssociateDhcpOptionsRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Associates a set of DHCP options (that you've previously created) with the specified VPC, or associates no DHCP options with the VPC.</p> <p>After you associate the options with the VPC, any existing instances and all new instances that you launch in that VPC use the options. You don't need to restart or relaunch the instances. They automatically pick up the changes within a few hours, depending on how frequently the instance renews its DHCP lease. You can explicitly renew the lease using the operating system on the instance.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `associateIamInstanceProfile`

``` purescript
associateIamInstanceProfile :: forall eff. Service -> AssociateIamInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) AssociateIamInstanceProfileResult
```

<p>Associates an IAM instance profile with a running or stopped instance. You cannot associate more than one IAM instance profile with an instance.</p>

#### `associateRouteTable`

``` purescript
associateRouteTable :: forall eff. Service -> AssociateRouteTableRequest -> Aff (exception :: EXCEPTION | eff) AssociateRouteTableResult
```

<p>Associates a subnet with a route table. The subnet and route table must be in the same VPC. This association causes traffic originating from the subnet to be routed according to the routes in the route table. The action returns an association ID, which you need in order to disassociate the route table from the subnet later. A route table can be associated with multiple subnets.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `associateSubnetCidrBlock`

``` purescript
associateSubnetCidrBlock :: forall eff. Service -> AssociateSubnetCidrBlockRequest -> Aff (exception :: EXCEPTION | eff) AssociateSubnetCidrBlockResult
```

<p>Associates a CIDR block with your subnet. You can only associate a single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a prefix length of /64.</p>

#### `associateVpcCidrBlock`

``` purescript
associateVpcCidrBlock :: forall eff. Service -> AssociateVpcCidrBlockRequest -> Aff (exception :: EXCEPTION | eff) AssociateVpcCidrBlockResult
```

<p>Associates a CIDR block with your VPC. You can associate a secondary IPv4 CIDR block, or you can associate an Amazon-provided IPv6 CIDR block. The IPv6 CIDR block size is fixed at /56.</p> <p>For more information about associating CIDR blocks with your VPC and applicable restrictions, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html#VPC_Sizing">VPC and Subnet Sizing</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `attachClassicLinkVpc`

``` purescript
attachClassicLinkVpc :: forall eff. Service -> AttachClassicLinkVpcRequest -> Aff (exception :: EXCEPTION | eff) AttachClassicLinkVpcResult
```

<p>Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more of the VPC's security groups. You cannot link an EC2-Classic instance to more than one VPC at a time. You can only link an instance that's in the <code>running</code> state. An instance is automatically unlinked from a VPC when it's stopped - you can link it to the VPC again when you restart it.</p> <p>After you've linked an instance, you cannot change the VPC security groups that are associated with it. To change the security groups, you must first unlink the instance, and then link it again.</p> <p>Linking your instance to a VPC is sometimes referred to as <i>attaching</i> your instance.</p>

#### `attachInternetGateway`

``` purescript
attachInternetGateway :: forall eff. Service -> AttachInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Attaches an Internet gateway to a VPC, enabling connectivity between the Internet and the VPC. For more information about your VPC and Internet gateway, see the <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/">Amazon Virtual Private Cloud User Guide</a>.</p>

#### `attachNetworkInterface`

``` purescript
attachNetworkInterface :: forall eff. Service -> AttachNetworkInterfaceRequest -> Aff (exception :: EXCEPTION | eff) AttachNetworkInterfaceResult
```

<p>Attaches a network interface to an instance.</p>

#### `attachVolume`

``` purescript
attachVolume :: forall eff. Service -> AttachVolumeRequest -> Aff (exception :: EXCEPTION | eff) VolumeAttachment
```

<p>Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name.</p> <p>Encrypted EBS volumes may only be attached to instances that support Amazon EBS encryption. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>For a list of supported device names, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html">Attaching an EBS Volume to an Instance</a>. Any device names that aren't reserved for instance store volumes can be used for EBS volumes. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html">Amazon EC2 Instance Store</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>If a volume has an AWS Marketplace product code:</p> <ul> <li> <p>The volume can be attached only to a stopped instance.</p> </li> <li> <p>AWS Marketplace product codes are copied from the volume to the instance.</p> </li> <li> <p>You must be subscribed to the product.</p> </li> <li> <p>The instance type and operating system of the instance must support the product. For example, you can't detach a volume from a Windows instance and attach it to a Linux instance.</p> </li> </ul> <p>For an overview of the AWS Marketplace, see <a href="https://aws.amazon.com/marketplace/help/200900000">Introducing AWS Marketplace</a>.</p> <p>For more information about EBS volumes, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html">Attaching Amazon EBS Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `attachVpnGateway`

``` purescript
attachVpnGateway :: forall eff. Service -> AttachVpnGatewayRequest -> Aff (exception :: EXCEPTION | eff) AttachVpnGatewayResult
```

<p>Attaches a virtual private gateway to a VPC. You can attach one virtual private gateway to one VPC at a time.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `authorizeSecurityGroupEgress`

``` purescript
authorizeSecurityGroupEgress :: forall eff. Service -> AuthorizeSecurityGroupEgressRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>[EC2-VPC only] Adds one or more egress rules to a security group for use with a VPC. Specifically, this action permits instances to send traffic to one or more destination IPv4 or IPv6 CIDR address ranges, or to one or more destination security groups for the same VPC. This action doesn't apply to security groups for use in EC2-Classic. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>. For more information about security group limits, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a>.</p> <p>Each rule consists of the protocol (for example, TCP), plus either a CIDR range or a source group. For the TCP and UDP protocols, you must also specify the destination port or port range. For the ICMP protocol, you must also specify the ICMP type and code. You can use -1 for the type or code to mean all types or all codes. You can optionally specify a description for the rule.</p> <p>Rule changes are propagated to affected instances as quickly as possible. However, a small delay might occur.</p>

#### `authorizeSecurityGroupIngress`

``` purescript
authorizeSecurityGroupIngress :: forall eff. Service -> AuthorizeSecurityGroupIngressRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Adds one or more ingress rules to a security group.</p> <p>Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.</p> <p>[EC2-Classic] This action gives one or more IPv4 CIDR address ranges permission to access a security group in your account, or gives one or more security groups (called the <i>source groups</i>) permission to access a security group for your account. A source group can be for your own AWS account, or another. You can have up to 100 rules per group.</p> <p>[EC2-VPC] This action gives one or more IPv4 or IPv6 CIDR address ranges permission to access a security group in your VPC, or gives one or more other security groups (called the <i>source groups</i>) permission to access a security group for your VPC. The security groups must all be for the same VPC or a peer VPC in a VPC peering connection. For more information about VPC security group limits, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a>.</p> <p>You can optionally specify a description for the security group rule.</p>

#### `bundleInstance`

``` purescript
bundleInstance :: forall eff. Service -> BundleInstanceRequest -> Aff (exception :: EXCEPTION | eff) BundleInstanceResult
```

<p>Bundles an Amazon instance store-backed Windows instance.</p> <p>During bundling, only the root device volume (C:\) is bundled. Data on other instance store volumes is not preserved.</p> <note> <p>This action is not applicable for Linux/Unix instances or Windows instances that are backed by Amazon EBS.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/Creating_InstanceStoreBacked_WinAMI.html">Creating an Instance Store-Backed Windows AMI</a>.</p>

#### `cancelBundleTask`

``` purescript
cancelBundleTask :: forall eff. Service -> CancelBundleTaskRequest -> Aff (exception :: EXCEPTION | eff) CancelBundleTaskResult
```

<p>Cancels a bundling operation for an instance store-backed Windows instance.</p>

#### `cancelConversionTask`

``` purescript
cancelConversionTask :: forall eff. Service -> CancelConversionRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Cancels an active conversion task. The task can be the import of an instance or volume. The action removes all artifacts of the conversion, including a partially uploaded volume or instance. If the conversion is complete or is in the process of transferring the final disk image, the command fails and returns an exception.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html">Importing a Virtual Machine Using the Amazon EC2 CLI</a>.</p>

#### `cancelExportTask`

``` purescript
cancelExportTask :: forall eff. Service -> CancelExportTaskRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Cancels an active export task. The request removes all artifacts of the export, including any partially-created Amazon S3 objects. If the export task is complete or is in the process of transferring the final disk image, the command fails and returns an error.</p>

#### `cancelImportTask`

``` purescript
cancelImportTask :: forall eff. Service -> CancelImportTaskRequest -> Aff (exception :: EXCEPTION | eff) CancelImportTaskResult
```

<p>Cancels an in-process import virtual machine or import snapshot task.</p>

#### `cancelReservedInstancesListing`

``` purescript
cancelReservedInstancesListing :: forall eff. Service -> CancelReservedInstancesListingRequest -> Aff (exception :: EXCEPTION | eff) CancelReservedInstancesListingResult
```

<p>Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `cancelSpotFleetRequests`

``` purescript
cancelSpotFleetRequests :: forall eff. Service -> CancelSpotFleetRequestsRequest -> Aff (exception :: EXCEPTION | eff) CancelSpotFleetRequestsResponse
```

<p>Cancels the specified Spot Fleet requests.</p> <p>After you cancel a Spot Fleet request, the Spot Fleet launches no new Spot Instances. You must specify whether the Spot Fleet should also terminate its Spot Instances. If you terminate the instances, the Spot Fleet request enters the <code>cancelled_terminating</code> state. Otherwise, the Spot Fleet request enters the <code>cancelled_running</code> state and the instances continue to run until they are interrupted or you terminate them manually.</p>

#### `cancelSpotInstanceRequests`

``` purescript
cancelSpotInstanceRequests :: forall eff. Service -> CancelSpotInstanceRequestsRequest -> Aff (exception :: EXCEPTION | eff) CancelSpotInstanceRequestsResult
```

<p>Cancels one or more Spot Instance requests. Spot Instances are instances that Amazon EC2 starts on your behalf when the maximum price that you specify exceeds the current Spot price. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html">Spot Instance Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <important> <p>Canceling a Spot Instance request does not terminate running Spot Instances associated with the request.</p> </important>

#### `confirmProductInstance`

``` purescript
confirmProductInstance :: forall eff. Service -> ConfirmProductInstanceRequest -> Aff (exception :: EXCEPTION | eff) ConfirmProductInstanceResult
```

<p>Determines whether a product code is associated with an instance. This action can only be used by the owner of the product code. It is useful when a product code owner must verify whether another user's instance is eligible for support.</p>

#### `copyFpgaImage`

``` purescript
copyFpgaImage :: forall eff. Service -> CopyFpgaImageRequest -> Aff (exception :: EXCEPTION | eff) CopyFpgaImageResult
```

<p>Copies the specified Amazon FPGA Image (AFI) to the current region.</p>

#### `copyImage`

``` purescript
copyImage :: forall eff. Service -> CopyImageRequest -> Aff (exception :: EXCEPTION | eff) CopyImageResult
```

<p>Initiates the copy of an AMI from the specified source region to the current region. You specify the destination region by using its endpoint when making the request.</p> <p>For more information about the prerequisites and limits when copying an AMI, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html">Copying an AMI</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `copySnapshot`

``` purescript
copySnapshot :: forall eff. Service -> CopySnapshotRequest -> Aff (exception :: EXCEPTION | eff) CopySnapshotResult
```

<p>Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3. You can copy the snapshot within the same region or from one region to another. You can use the snapshot to create EBS volumes or Amazon Machine Images (AMIs). The snapshot is copied to the regional endpoint that you send the HTTP request to.</p> <p>Copies of encrypted EBS snapshots remain encrypted. Copies of unencrypted snapshots remain unencrypted, unless the <code>Encrypted</code> flag is specified during the snapshot copy operation. By default, encrypted snapshot copies use the default AWS Key Management Service (AWS KMS) customer master key (CMK); however, you can specify a non-default CMK with the <code>KmsKeyId</code> parameter. </p> <note> <p>To copy an encrypted snapshot that has been shared from another account, you must have permissions for the CMK used to encrypt the snapshot.</p> </note> <note> <p>Snapshots created by the CopySnapshot action have an arbitrary volume ID that should not be used for any purpose.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html">Copying an Amazon EBS Snapshot</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `createCustomerGateway`

``` purescript
createCustomerGateway :: forall eff. Service -> CreateCustomerGatewayRequest -> Aff (exception :: EXCEPTION | eff) CreateCustomerGatewayResult
```

<p>Provides information to AWS about your VPN customer gateway device. The customer gateway is the appliance at your end of the VPN connection. (The device on the AWS side of the VPN connection is the virtual private gateway.) You must provide the Internet-routable IP address of the customer gateway's external interface. The IP address must be static and may be behind a device performing network address translation (NAT).</p> <p>For devices that use Border Gateway Protocol (BGP), you can also provide the device's BGP Autonomous System Number (ASN). You can use an existing ASN assigned to your network. If you don't have an ASN already, you can use a private ASN (in the 64512 - 65534 range).</p> <note> <p>Amazon EC2 supports all 2-byte ASN numbers in the range of 1 - 65534, with the exception of 7224, which is reserved in the <code>us-east-1</code> region, and 9059, which is reserved in the <code>eu-west-1</code> region.</p> </note> <p>For more information about VPN customer gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <important> <p>You cannot create more than one customer gateway with the same VPN type, IP address, and BGP ASN parameter values. If you run an identical request more than one time, the first request creates the customer gateway, and subsequent requests return information about the existing customer gateway. The subsequent requests do not create new customer gateway resources.</p> </important>

#### `createDefaultSubnet`

``` purescript
createDefaultSubnet :: forall eff. Service -> CreateDefaultSubnetRequest -> Aff (exception :: EXCEPTION | eff) CreateDefaultSubnetResult
```

<p>Creates a default subnet with a size <code>/20</code> IPv4 CIDR block in the specified Availability Zone in your default VPC. You can have only one default subnet per Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html#create-default-subnet">Creating a Default Subnet</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createDefaultVpc`

``` purescript
createDefaultVpc :: forall eff. Service -> CreateDefaultVpcRequest -> Aff (exception :: EXCEPTION | eff) CreateDefaultVpcResult
```

<p>Creates a default VPC with a size <code>/16</code> IPv4 CIDR block and a default subnet in each Availability Zone. For more information about the components of a default VPC, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html">Default VPC and Default Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>. You cannot specify the components of the default VPC yourself.</p> <p>You can create a default VPC if you deleted your previous default VPC. You cannot have more than one default VPC per region. </p> <p>If your account supports EC2-Classic, you cannot use this action to create a default VPC in a region that supports EC2-Classic. If you want a default VPC in a region that supports EC2-Classic, see "I really want a default VPC for my existing EC2 account. Is that possible?" in the <a href="http://aws.amazon.com/vpc/faqs/#Default_VPCs">Default VPCs FAQ</a>.</p>

#### `createDhcpOptions`

``` purescript
createDhcpOptions :: forall eff. Service -> CreateDhcpOptionsRequest -> Aff (exception :: EXCEPTION | eff) CreateDhcpOptionsResult
```

<p>Creates a set of DHCP options for your VPC. After creating the set, you must associate it with the VPC, causing all existing and new instances that you launch in the VPC to use this set of DHCP options. The following are the individual DHCP options you can specify. For more information about the options, see <a href="http://www.ietf.org/rfc/rfc2132.txt">RFC 2132</a>.</p> <ul> <li> <p> <code>domain-name-servers</code> - The IP addresses of up to four domain name servers, or AmazonProvidedDNS. The default DHCP option set specifies AmazonProvidedDNS. If specifying more than one domain name server, specify the IP addresses in a single parameter, separated by commas. If you want your instance to receive a custom DNS hostname as specified in <code>domain-name</code>, you must set <code>domain-name-servers</code> to a custom DNS server.</p> </li> <li> <p> <code>domain-name</code> - If you're using AmazonProvidedDNS in <code>us-east-1</code>, specify <code>ec2.internal</code>. If you're using AmazonProvidedDNS in another region, specify <code>region.compute.internal</code> (for example, <code>ap-northeast-1.compute.internal</code>). Otherwise, specify a domain name (for example, <code>MyCompany.com</code>). This value is used to complete unqualified DNS hostnames. <b>Important</b>: Some Linux operating systems accept multiple domain names separated by spaces. However, Windows and other Linux operating systems treat the value as a single domain, which results in unexpected behavior. If your DHCP options set is associated with a VPC that has instances with multiple operating systems, specify only one domain name.</p> </li> <li> <p> <code>ntp-servers</code> - The IP addresses of up to four Network Time Protocol (NTP) servers.</p> </li> <li> <p> <code>netbios-name-servers</code> - The IP addresses of up to four NetBIOS name servers.</p> </li> <li> <p> <code>netbios-node-type</code> - The NetBIOS node type (1, 2, 4, or 8). We recommend that you specify 2 (broadcast and multicast are not currently supported). For more information about these node types, see <a href="http://www.ietf.org/rfc/rfc2132.txt">RFC 2132</a>.</p> </li> </ul> <p>Your VPC automatically starts out with a set of DHCP options that includes only a DNS server that we provide (AmazonProvidedDNS). If you create a set of options, and if your VPC has an Internet gateway, make sure to set the <code>domain-name-servers</code> option either to <code>AmazonProvidedDNS</code> or to a domain name server of your choice. For more information about DHCP options, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createEgressOnlyInternetGateway`

``` purescript
createEgressOnlyInternetGateway :: forall eff. Service -> CreateEgressOnlyInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) CreateEgressOnlyInternetGatewayResult
```

<p>[IPv6 only] Creates an egress-only Internet gateway for your VPC. An egress-only Internet gateway is used to enable outbound communication over IPv6 from instances in your VPC to the Internet, and prevents hosts outside of your VPC from initiating an IPv6 connection with your instance.</p>

#### `createFlowLogs`

``` purescript
createFlowLogs :: forall eff. Service -> CreateFlowLogsRequest -> Aff (exception :: EXCEPTION | eff) CreateFlowLogsResult
```

<p>Creates one or more flow logs to capture IP traffic for a specific network interface, subnet, or VPC. Flow logs are delivered to a specified log group in Amazon CloudWatch Logs. If you specify a VPC or subnet in the request, a log stream is created in CloudWatch Logs for each network interface in the subnet or VPC. Log streams can include information about accepted and rejected traffic to a network interface. You can view the data in your log streams using Amazon CloudWatch Logs.</p> <p>In your request, you must also specify an IAM role that has permission to publish logs to CloudWatch Logs.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/flow-logs.html">VPC Flow Logs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createFpgaImage`

``` purescript
createFpgaImage :: forall eff. Service -> CreateFpgaImageRequest -> Aff (exception :: EXCEPTION | eff) CreateFpgaImageResult
```

<p>Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP).</p> <p>The create operation is asynchronous. To verify that the AFI is ready for use, check the output logs.</p> <p>An AFI contains the FPGA bitstream that is ready to download to an FPGA. You can securely deploy an AFI on one or more FPGA-accelerated instances. For more information, see the <a href="https://github.com/aws/aws-fpga/">AWS FPGA Hardware Development Kit</a>.</p>

#### `createImage`

``` purescript
createImage :: forall eff. Service -> CreateImageRequest -> Aff (exception :: EXCEPTION | eff) CreateImageResult
```

<p>Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped.</p> <p>If you customized your instance with instance store volumes or EBS volumes in addition to the root device volume, the new AMI contains block device mapping information for those volumes. When you launch an instance from this new AMI, the instance automatically launches with those additional volumes.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html">Creating Amazon EBS-Backed Linux AMIs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `createInstanceExportTask`

``` purescript
createInstanceExportTask :: forall eff. Service -> CreateInstanceExportTaskRequest -> Aff (exception :: EXCEPTION | eff) CreateInstanceExportTaskResult
```

<p>Exports a running or stopped instance to an S3 bucket.</p> <p>For information about the supported operating systems, image formats, and known limitations for the types of instances you can export, see <a href="http://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html">Exporting an Instance as a VM Using VM Import/Export</a> in the <i>VM Import/Export User Guide</i>.</p>

#### `createInternetGateway`

``` purescript
createInternetGateway :: forall eff. Service -> CreateInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) CreateInternetGatewayResult
```

<p>Creates an Internet gateway for use with a VPC. After creating the Internet gateway, you attach it to a VPC using <a>AttachInternetGateway</a>.</p> <p>For more information about your VPC and Internet gateway, see the <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/">Amazon Virtual Private Cloud User Guide</a>.</p>

#### `createKeyPair`

``` purescript
createKeyPair :: forall eff. Service -> CreateKeyPairRequest -> Aff (exception :: EXCEPTION | eff) KeyPair
```

<p>Creates a 2048-bit RSA key pair with the specified name. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#1 private key. If a key with the specified name already exists, Amazon EC2 returns an error.</p> <p>You can have up to five thousand key pairs per region.</p> <p>The key pair returned to you is available only in the region in which you create it. If you prefer, you can create your own key pair using a third-party tool and upload it to any region using <a>ImportKeyPair</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `createLaunchTemplate`

``` purescript
createLaunchTemplate :: forall eff. Service -> CreateLaunchTemplateRequest -> Aff (exception :: EXCEPTION | eff) CreateLaunchTemplateResult
```

<p>Creates a launch template. A launch template contains the parameters to launch an instance. When you launch an instance using <a>RunInstances</a>, you can specify a launch template instead of providing the launch parameters in the request.</p>

#### `createLaunchTemplateVersion`

``` purescript
createLaunchTemplateVersion :: forall eff. Service -> CreateLaunchTemplateVersionRequest -> Aff (exception :: EXCEPTION | eff) CreateLaunchTemplateVersionResult
```

<p>Creates a new version for a launch template. You can specify an existing version of launch template from which to base the new version.</p> <p>Launch template versions are numbered in the order in which they are created. You cannot specify, change, or replace the numbering of launch template versions.</p>

#### `createNatGateway`

``` purescript
createNatGateway :: forall eff. Service -> CreateNatGatewayRequest -> Aff (exception :: EXCEPTION | eff) CreateNatGatewayResult
```

<p>Creates a NAT gateway in the specified subnet. A NAT gateway can be used to enable instances in a private subnet to connect to the Internet. This action creates a network interface in the specified subnet with a private IP address from the IP address range of the subnet. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html">NAT Gateways</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createNetworkAcl`

``` purescript
createNetworkAcl :: forall eff. Service -> CreateNetworkAclRequest -> Aff (exception :: EXCEPTION | eff) CreateNetworkAclResult
```

<p>Creates a network ACL in a VPC. Network ACLs provide an optional layer of security (in addition to security groups) for the instances in your VPC.</p> <p>For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createNetworkAclEntry`

``` purescript
createNetworkAclEntry :: forall eff. Service -> CreateNetworkAclEntryRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates an entry (a rule) in a network ACL with the specified rule number. Each network ACL has a set of numbered ingress rules and a separate set of numbered egress rules. When determining whether a packet should be allowed in or out of a subnet associated with the ACL, we process the entries in the ACL according to the rule numbers, in ascending order. Each network ACL has a set of ingress rules and a separate set of egress rules.</p> <p>We recommend that you leave room between the rule numbers (for example, 100, 110, 120, ...), and not number them one right after the other (for example, 101, 102, 103, ...). This makes it easier to add a rule between existing ones without having to renumber the rules.</p> <p>After you add an entry, you can't modify it; you must either replace it, or create an entry and delete the old one.</p> <p>For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createNetworkInterface`

``` purescript
createNetworkInterface :: forall eff. Service -> CreateNetworkInterfaceRequest -> Aff (exception :: EXCEPTION | eff) CreateNetworkInterfaceResult
```

<p>Creates a network interface in the specified subnet.</p> <p>For more information about network interfaces, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html">Elastic Network Interfaces</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createNetworkInterfacePermission`

``` purescript
createNetworkInterfacePermission :: forall eff. Service -> CreateNetworkInterfacePermissionRequest -> Aff (exception :: EXCEPTION | eff) CreateNetworkInterfacePermissionResult
```

<p>Grants an AWS authorized partner account permission to attach the specified network interface to an instance in their account.</p> <p>You can grant permission to a single AWS account only, and only one account at a time.</p>

#### `createPlacementGroup`

``` purescript
createPlacementGroup :: forall eff. Service -> CreatePlacementGroupRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates a placement group in which to launch instances. The strategy of the placement group determines how the instances are organized within the group. </p> <p>A <code>cluster</code> placement group is a logical grouping of instances within a single Availability Zone that benefit from low network latency, high network throughput. A <code>spread</code> placement group places instances on distinct hardware.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `createReservedInstancesListing`

``` purescript
createReservedInstancesListing :: forall eff. Service -> CreateReservedInstancesListingRequest -> Aff (exception :: EXCEPTION | eff) CreateReservedInstancesListingResult
```

<p>Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace. You can submit one Standard Reserved Instance listing at a time. To get a list of your Standard Reserved Instances, you can use the <a>DescribeReservedInstances</a> operation.</p> <note> <p>Only Standard Reserved Instances with a capacity reservation can be sold in the Reserved Instance Marketplace. Convertible Reserved Instances and Standard Reserved Instances with a regional benefit cannot be sold.</p> </note> <p>The Reserved Instance Marketplace matches sellers who want to resell Standard Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.</p> <p>To sell your Standard Reserved Instances, you must first register as a seller in the Reserved Instance Marketplace. After completing the registration process, you can create a Reserved Instance Marketplace listing of some or all of your Standard Reserved Instances, and specify the upfront price to receive for them. Your Standard Reserved Instance listings then become available for purchase. To view the details of your Standard Reserved Instance listing, you can use the <a>DescribeReservedInstancesListings</a> operation.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `createRoute`

``` purescript
createRoute :: forall eff. Service -> CreateRouteRequest -> Aff (exception :: EXCEPTION | eff) CreateRouteResult
```

<p>Creates a route in a route table within a VPC.</p> <p>You must specify one of the following targets: Internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, or egress-only Internet gateway.</p> <p>When determining how to route traffic, we use the route with the most specific match. For example, traffic is destined for the IPv4 address <code>192.0.2.3</code>, and the route table includes the following two IPv4 routes:</p> <ul> <li> <p> <code>192.0.2.0/24</code> (goes to some target A)</p> </li> <li> <p> <code>192.0.2.0/28</code> (goes to some target B)</p> </li> </ul> <p>Both routes apply to the traffic destined for <code>192.0.2.3</code>. However, the second route in the list covers a smaller number of IP addresses and is therefore more specific, so we use that route to determine where to target the traffic.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createRouteTable`

``` purescript
createRouteTable :: forall eff. Service -> CreateRouteTableRequest -> Aff (exception :: EXCEPTION | eff) CreateRouteTableResult
```

<p>Creates a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createSecurityGroup`

``` purescript
createSecurityGroup :: forall eff. Service -> CreateSecurityGroupRequest -> Aff (exception :: EXCEPTION | eff) CreateSecurityGroupResult
```

<p>Creates a security group.</p> <p>A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Amazon EC2 Security Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i> and <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <important> <p>EC2-Classic: You can have up to 500 security groups.</p> <p>EC2-VPC: You can create up to 500 security groups per VPC.</p> </important> <p>When you create a security group, you specify a friendly name of your choice. You can have a security group for use in EC2-Classic with the same name as a security group for use in a VPC. However, you can't have two security groups for use in EC2-Classic with the same name or two security groups for use in a VPC with the same name.</p> <p>You have a default security group for use in EC2-Classic and a default security group for use in your VPC. If you don't specify a security group when you launch an instance, the instance is launched into the appropriate default security group. A default security group includes a default rule that grants instances unrestricted network access to each other.</p> <p>You can add or remove rules from your security groups using <a>AuthorizeSecurityGroupIngress</a>, <a>AuthorizeSecurityGroupEgress</a>, <a>RevokeSecurityGroupIngress</a>, and <a>RevokeSecurityGroupEgress</a>.</p>

#### `createSnapshot`

``` purescript
createSnapshot :: forall eff. Service -> CreateSnapshotRequest -> Aff (exception :: EXCEPTION | eff) Snapshot
```

<p>Creates a snapshot of an EBS volume and stores it in Amazon S3. You can use snapshots for backups, to make copies of EBS volumes, and to save data before shutting down an instance.</p> <p>When a snapshot is created, any AWS Marketplace product codes that are associated with the source volume are propagated to the snapshot.</p> <p>You can take a snapshot of an attached volume that is in use. However, snapshots only capture data that has been written to your EBS volume at the time the snapshot command is issued; this may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the volume long enough to take a snapshot, your snapshot should be complete. However, if you cannot pause all file writes to the volume, you should unmount the volume from within the instance, issue the snapshot command, and then remount the volume to ensure a consistent and complete snapshot. You may remount and use your volume while the snapshot status is <code>pending</code>.</p> <p>To create a snapshot for EBS volumes that serve as root devices, you should stop the instance before taking the snapshot.</p> <p>Snapshots that are taken from encrypted volumes are automatically encrypted. Volumes that are created from encrypted snapshots are also automatically encrypted. Your encrypted volumes and any associated snapshots always remain protected.</p> <p>You can tag your snapshots during creation. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Amazon EC2 Resources</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html">Amazon Elastic Block Store</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `createSpotDatafeedSubscription`

``` purescript
createSpotDatafeedSubscription :: forall eff. Service -> CreateSpotDatafeedSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) CreateSpotDatafeedSubscriptionResult
```

<p>Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs. You can create one data feed per AWS account. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html">Spot Instance Data Feed</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `createSubnet`

``` purescript
createSubnet :: forall eff. Service -> CreateSubnetRequest -> Aff (exception :: EXCEPTION | eff) CreateSubnetResult
```

<p>Creates a subnet in an existing VPC.</p> <p>When you create each subnet, you provide the VPC ID and the IPv4 CIDR block you want for the subnet. After you create a subnet, you can't change its CIDR block. The size of the subnet's IPv4 CIDR block can be the same as a VPC's IPv4 CIDR block, or a subset of a VPC's IPv4 CIDR block. If you create more than one subnet in a VPC, the subnets' CIDR blocks must not overlap. The smallest IPv4 subnet (and VPC) you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses).</p> <p>If you've associated an IPv6 CIDR block with your VPC, you can create a subnet with an IPv6 CIDR block that uses a /64 prefix length. </p> <important> <p>AWS reserves both the first four and the last IPv4 address in each subnet's CIDR block. They're not available for use.</p> </important> <p>If you add more than one subnet to a VPC, they're set up in a star topology with a logical router in the middle.</p> <p>If you launch an instance in a VPC using an Amazon EBS-backed AMI, the IP address doesn't change if you stop and restart the instance (unlike a similar instance launched outside a VPC, which gets a new IP address when restarted). It's therefore possible to have a subnet with no running instances (they're all stopped), but no remaining IP addresses available.</p> <p>For more information about subnets, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">Your VPC and Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createTags`

``` purescript
createTags :: forall eff. Service -> CreateTagsRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Adds or overwrites one or more tags for the specified Amazon EC2 resource or resources. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique per resource.</p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. For more information about creating IAM policies that control users' access to resources based on tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html">Supported Resource-Level Permissions for Amazon EC2 API Actions</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `createVolume`

``` purescript
createVolume :: forall eff. Service -> CreateVolumeRequest -> Aff (exception :: EXCEPTION | eff) Volume
```

<p>Creates an EBS volume that can be attached to an instance in the same Availability Zone. The volume is created in the regional endpoint that you send the HTTP request to. For more information see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p> <p>You can create a new empty volume or restore a volume from an EBS snapshot. Any AWS Marketplace product codes from the snapshot are propagated to the volume.</p> <p>You can create encrypted volumes with the <code>Encrypted</code> parameter. Encrypted volumes may only be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are also automatically encrypted. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>You can tag your volumes during creation. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Amazon EC2 Resources</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html">Creating an Amazon EBS Volume</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `createVpc`

``` purescript
createVpc :: forall eff. Service -> CreateVpcRequest -> Aff (exception :: EXCEPTION | eff) CreateVpcResult
```

<p>Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses). To help you decide how big to make your VPC, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">Your VPC and Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>You can optionally request an Amazon-provided IPv6 CIDR block for the VPC. The IPv6 CIDR block uses a /56 prefix length, and is allocated from Amazon's pool of IPv6 addresses. You cannot choose the IPv6 range for your VPC.</p> <p>By default, each instance you launch in the VPC has the default DHCP options, which includes only a default DNS server that we provide (AmazonProvidedDNS). For more information about DHCP options, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>You can specify the instance tenancy value for the VPC when you create it. You can't change this value for the VPC after you create it. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `createVpcEndpoint`

``` purescript
createVpcEndpoint :: forall eff. Service -> CreateVpcEndpointRequest -> Aff (exception :: EXCEPTION | eff) CreateVpcEndpointResult
```

<p>Creates a VPC endpoint for a specified service. An endpoint enables you to create a private connection between your VPC and the service. The service may be provided by AWS, an AWS Marketplace partner, or another AWS account. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-endpoints.html">VPC Endpoints</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>A <code>gateway</code> endpoint serves as a target for a route in your route table for traffic destined for the AWS service. You can specify an endpoint policy to attach to the endpoint that will control access to the service from your VPC. You can also specify the VPC route tables that use the endpoint.</p> <p>An <code>interface</code> endpoint is a network interface in your subnet that serves as an endpoint for communicating with the specified service. You can specify the subnets in which to create an endpoint, and the security groups to associate with the endpoint network interface.</p> <p>Use <a>DescribeVpcEndpointServices</a> to get a list of supported services.</p>

#### `createVpcEndpointConnectionNotification`

``` purescript
createVpcEndpointConnectionNotification :: forall eff. Service -> CreateVpcEndpointConnectionNotificationRequest -> Aff (exception :: EXCEPTION | eff) CreateVpcEndpointConnectionNotificationResult
```

<p>Creates a connection notification for a specified VPC endpoint or VPC endpoint service. A connection notification notifies you of specific endpoint events. You must create an SNS topic to receive notifications. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Create a Topic</a> in the <i>Amazon Simple Notification Service Developer Guide</i>.</p> <p>You can create a connection notification for interface endpoints only.</p>

#### `createVpcEndpointServiceConfiguration`

``` purescript
createVpcEndpointServiceConfiguration :: forall eff. Service -> CreateVpcEndpointServiceConfigurationRequest -> Aff (exception :: EXCEPTION | eff) CreateVpcEndpointServiceConfigurationResult
```

<p>Creates a VPC endpoint service configuration to which service consumers (AWS accounts, IAM users, and IAM roles) can connect. Service consumers can create an interface VPC endpoint to connect to your service.</p> <p>To create an endpoint service configuration, you must first create a Network Load Balancer for your service. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/endpoint-service.html">VPC Endpoint Services</a> in the <i>Amazon Virtual Private Cloud User Guide</i>. </p>

#### `createVpcPeeringConnection`

``` purescript
createVpcPeeringConnection :: forall eff. Service -> CreateVpcPeeringConnectionRequest -> Aff (exception :: EXCEPTION | eff) CreateVpcPeeringConnectionResult
```

<p>Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection. The accepter VPC can belong to another AWS account and can be in a different region to the requester VPC. The requester VPC and accepter VPC cannot have overlapping CIDR blocks.</p> <note> <p>Limitations and rules apply to a VPC peering connection. For more information, see the <a href="http://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/vpc-peering-basics.html#vpc-peering-limitations">limitations</a> section in the <i>VPC Peering Guide</i>.</p> </note> <p>The owner of the accepter VPC must accept the peering request to activate the peering connection. The VPC peering connection request expires after 7 days, after which it cannot be accepted or rejected.</p> <p>If you create a VPC peering connection request between VPCs with overlapping CIDR blocks, the VPC peering connection has a status of <code>failed</code>.</p>

#### `createVpnConnection`

``` purescript
createVpnConnection :: forall eff. Service -> CreateVpnConnectionRequest -> Aff (exception :: EXCEPTION | eff) CreateVpnConnectionResult
```

<p>Creates a VPN connection between an existing virtual private gateway and a VPN customer gateway. The only supported connection type is <code>ipsec.1</code>.</p> <p>The response includes information that you need to give to your network administrator to configure your customer gateway.</p> <important> <p>We strongly recommend that you use HTTPS when calling this operation because the response contains sensitive cryptographic information for configuring your customer gateway.</p> </important> <p>If you decide to shut down your VPN connection for any reason and later create a new VPN connection, you must reconfigure your customer gateway with the new information returned from this call.</p> <p>This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createVpnConnectionRoute`

``` purescript
createVpnConnectionRoute :: forall eff. Service -> CreateVpnConnectionRouteRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.</p> <p>For more information about VPN connections, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `createVpnGateway`

``` purescript
createVpnGateway :: forall eff. Service -> CreateVpnGatewayRequest -> Aff (exception :: EXCEPTION | eff) CreateVpnGatewayResult
```

<p>Creates a virtual private gateway. A virtual private gateway is the endpoint on the VPC side of your VPN connection. You can create a virtual private gateway before creating the VPC itself.</p> <p>For more information about virtual private gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `deleteCustomerGateway`

``` purescript
deleteCustomerGateway :: forall eff. Service -> DeleteCustomerGatewayRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified customer gateway. You must delete the VPN connection before you can delete the customer gateway.</p>

#### `deleteDhcpOptions`

``` purescript
deleteDhcpOptions :: forall eff. Service -> DeleteDhcpOptionsRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified set of DHCP options. You must disassociate the set of DHCP options before you can delete it. You can disassociate the set of DHCP options by associating either a new set of options or the default set of options with the VPC.</p>

#### `deleteEgressOnlyInternetGateway`

``` purescript
deleteEgressOnlyInternetGateway :: forall eff. Service -> DeleteEgressOnlyInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) DeleteEgressOnlyInternetGatewayResult
```

<p>Deletes an egress-only Internet gateway.</p>

#### `deleteFlowLogs`

``` purescript
deleteFlowLogs :: forall eff. Service -> DeleteFlowLogsRequest -> Aff (exception :: EXCEPTION | eff) DeleteFlowLogsResult
```

<p>Deletes one or more flow logs.</p>

#### `deleteFpgaImage`

``` purescript
deleteFpgaImage :: forall eff. Service -> DeleteFpgaImageRequest -> Aff (exception :: EXCEPTION | eff) DeleteFpgaImageResult
```

<p>Deletes the specified Amazon FPGA Image (AFI).</p>

#### `deleteInternetGateway`

``` purescript
deleteInternetGateway :: forall eff. Service -> DeleteInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified Internet gateway. You must detach the Internet gateway from the VPC before you can delete it.</p>

#### `deleteKeyPair`

``` purescript
deleteKeyPair :: forall eff. Service -> DeleteKeyPairRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified key pair, by removing the public key from Amazon EC2.</p>

#### `deleteLaunchTemplate`

``` purescript
deleteLaunchTemplate :: forall eff. Service -> DeleteLaunchTemplateRequest -> Aff (exception :: EXCEPTION | eff) DeleteLaunchTemplateResult
```

<p>Deletes a launch template. Deleting a launch template deletes all of its versions.</p>

#### `deleteLaunchTemplateVersions`

``` purescript
deleteLaunchTemplateVersions :: forall eff. Service -> DeleteLaunchTemplateVersionsRequest -> Aff (exception :: EXCEPTION | eff) DeleteLaunchTemplateVersionsResult
```

<p>Deletes one or more versions of a launch template. You cannot delete the default version of a launch template; you must first assign a different version as the default. If the default version is the only version for the launch template, you must delete the entire launch template using <a>DeleteLaunchTemplate</a>.</p>

#### `deleteNatGateway`

``` purescript
deleteNatGateway :: forall eff. Service -> DeleteNatGatewayRequest -> Aff (exception :: EXCEPTION | eff) DeleteNatGatewayResult
```

<p>Deletes the specified NAT gateway. Deleting a NAT gateway disassociates its Elastic IP address, but does not release the address from your account. Deleting a NAT gateway does not delete any NAT gateway routes in your route tables.</p>

#### `deleteNetworkAcl`

``` purescript
deleteNetworkAcl :: forall eff. Service -> DeleteNetworkAclRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified network ACL. You can't delete the ACL if it's associated with any subnets. You can't delete the default network ACL.</p>

#### `deleteNetworkAclEntry`

``` purescript
deleteNetworkAclEntry :: forall eff. Service -> DeleteNetworkAclEntryRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified ingress or egress entry (rule) from the specified network ACL.</p>

#### `deleteNetworkInterface`

``` purescript
deleteNetworkInterface :: forall eff. Service -> DeleteNetworkInterfaceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified network interface. You must detach the network interface before you can delete it.</p>

#### `deleteNetworkInterfacePermission`

``` purescript
deleteNetworkInterfacePermission :: forall eff. Service -> DeleteNetworkInterfacePermissionRequest -> Aff (exception :: EXCEPTION | eff) DeleteNetworkInterfacePermissionResult
```

<p>Deletes a permission for a network interface. By default, you cannot delete the permission if the account for which you're removing the permission has attached the network interface to an instance. However, you can force delete the permission, regardless of any attachment.</p>

#### `deletePlacementGroup`

``` purescript
deletePlacementGroup :: forall eff. Service -> DeletePlacementGroupRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified placement group. You must terminate all instances in the placement group before you can delete the placement group. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `deleteRoute`

``` purescript
deleteRoute :: forall eff. Service -> DeleteRouteRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified route from the specified route table.</p>

#### `deleteRouteTable`

``` purescript
deleteRouteTable :: forall eff. Service -> DeleteRouteTableRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified route table. You must disassociate the route table from any subnets before you can delete it. You can't delete the main route table.</p>

#### `deleteSecurityGroup`

``` purescript
deleteSecurityGroup :: forall eff. Service -> DeleteSecurityGroupRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a security group.</p> <p>If you attempt to delete a security group that is associated with an instance, or is referenced by another security group, the operation fails with <code>InvalidGroup.InUse</code> in EC2-Classic or <code>DependencyViolation</code> in EC2-VPC.</p>

#### `deleteSnapshot`

``` purescript
deleteSnapshot :: forall eff. Service -> DeleteSnapshotRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified snapshot.</p> <p>When you make periodic snapshots of a volume, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the volume.</p> <p>You cannot delete a snapshot of the root device of an EBS volume used by a registered AMI. You must first de-register the AMI before you can delete the snapshot.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html">Deleting an Amazon EBS Snapshot</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `deleteSpotDatafeedSubscription`

``` purescript
deleteSpotDatafeedSubscription :: forall eff. Service -> DeleteSpotDatafeedSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the data feed for Spot Instances.</p>

#### `deleteSubnet`

``` purescript
deleteSubnet :: forall eff. Service -> DeleteSubnetRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified subnet. You must terminate all running instances in the subnet before you can delete the subnet.</p>

#### `deleteTags`

``` purescript
deleteTags :: forall eff. Service -> DeleteTagsRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified set of tags from the specified set of resources.</p> <p>To list the current tags, use <a>DescribeTags</a>. For more information about tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `deleteVolume`

``` purescript
deleteVolume :: forall eff. Service -> DeleteVolumeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified EBS volume. The volume must be in the <code>available</code> state (not attached to an instance).</p> <note> <p>The volume may remain in the <code>deleting</code> state for several minutes.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html">Deleting an Amazon EBS Volume</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `deleteVpc`

``` purescript
deleteVpc :: forall eff. Service -> DeleteVpcRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified VPC. You must detach or delete all gateways and resources that are associated with the VPC before you can delete it. For example, you must terminate all instances running in the VPC, delete all security groups associated with the VPC (except the default one), delete all route tables associated with the VPC (except the default one), and so on.</p>

#### `deleteVpcEndpointConnectionNotifications`

``` purescript
deleteVpcEndpointConnectionNotifications :: forall eff. Service -> DeleteVpcEndpointConnectionNotificationsRequest -> Aff (exception :: EXCEPTION | eff) DeleteVpcEndpointConnectionNotificationsResult
```

<p>Deletes one or more VPC endpoint connection notifications.</p>

#### `deleteVpcEndpointServiceConfigurations`

``` purescript
deleteVpcEndpointServiceConfigurations :: forall eff. Service -> DeleteVpcEndpointServiceConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DeleteVpcEndpointServiceConfigurationsResult
```

<p>Deletes one or more VPC endpoint service configurations in your account. Before you delete the endpoint service configuration, you must reject any <code>Available</code> or <code>PendingAcceptance</code> interface endpoint connections that are attached to the service.</p>

#### `deleteVpcEndpoints`

``` purescript
deleteVpcEndpoints :: forall eff. Service -> DeleteVpcEndpointsRequest -> Aff (exception :: EXCEPTION | eff) DeleteVpcEndpointsResult
```

<p>Deletes one or more specified VPC endpoints. Deleting a gateway endpoint also deletes the endpoint routes in the route tables that were associated with the endpoint. Deleting an interface endpoint deletes the endpoint network interfaces.</p>

#### `deleteVpcPeeringConnection`

``` purescript
deleteVpcPeeringConnection :: forall eff. Service -> DeleteVpcPeeringConnectionRequest -> Aff (exception :: EXCEPTION | eff) DeleteVpcPeeringConnectionResult
```

<p>Deletes a VPC peering connection. Either the owner of the requester VPC or the owner of the accepter VPC can delete the VPC peering connection if it's in the <code>active</code> state. The owner of the requester VPC can delete a VPC peering connection in the <code>pending-acceptance</code> state. You cannot delete a VPC peering connection that's in the <code>failed</code> state.</p>

#### `deleteVpnConnection`

``` purescript
deleteVpnConnection :: forall eff. Service -> DeleteVpnConnectionRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified VPN connection.</p> <p>If you're deleting the VPC and its associated components, we recommend that you detach the virtual private gateway from the VPC and delete the VPC before deleting the VPN connection. If you believe that the tunnel credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.</p>

#### `deleteVpnConnectionRoute`

``` purescript
deleteVpnConnectionRoute :: forall eff. Service -> DeleteVpnConnectionRouteRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.</p>

#### `deleteVpnGateway`

``` purescript
deleteVpnGateway :: forall eff. Service -> DeleteVpnGatewayRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified virtual private gateway. We recommend that before you delete a virtual private gateway, you detach it from the VPC and delete the VPN connection. Note that you don't need to delete the virtual private gateway if you plan to delete and recreate the VPN connection between your VPC and your network.</p>

#### `deregisterImage`

``` purescript
deregisterImage :: forall eff. Service -> DeregisterImageRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deregisters the specified AMI. After you deregister an AMI, it can't be used to launch new instances; however, it doesn't affect any instances that you've already launched from the AMI. You'll continue to incur usage costs for those instances until you terminate them.</p> <p>When you deregister an Amazon EBS-backed AMI, it doesn't affect the snapshot that was created for the root volume of the instance during the AMI creation process. When you deregister an instance store-backed AMI, it doesn't affect the files that you uploaded to Amazon S3 when you created the AMI.</p>

#### `describeAccountAttributes`

``` purescript
describeAccountAttributes :: forall eff. Service -> DescribeAccountAttributesRequest -> Aff (exception :: EXCEPTION | eff) DescribeAccountAttributesResult
```

<p>Describes attributes of your AWS account. The following are the supported account attributes:</p> <ul> <li> <p> <code>supported-platforms</code>: Indicates whether your account can launch instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.</p> </li> <li> <p> <code>default-vpc</code>: The ID of the default VPC for your account, or <code>none</code>.</p> </li> <li> <p> <code>max-instances</code>: The maximum number of On-Demand Instances that you can run.</p> </li> <li> <p> <code>vpc-max-security-groups-per-interface</code>: The maximum number of security groups that you can assign to a network interface.</p> </li> <li> <p> <code>max-elastic-ips</code>: The maximum number of Elastic IP addresses that you can allocate for use with EC2-Classic. </p> </li> <li> <p> <code>vpc-max-elastic-ips</code>: The maximum number of Elastic IP addresses that you can allocate for use with EC2-VPC.</p> </li> </ul>

#### `describeAddresses`

``` purescript
describeAddresses :: forall eff. Service -> DescribeAddressesRequest -> Aff (exception :: EXCEPTION | eff) DescribeAddressesResult
```

<p>Describes one or more of your Elastic IP addresses.</p> <p>An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeAggregateIdFormat`

``` purescript
describeAggregateIdFormat :: forall eff. Service -> DescribeAggregateIdFormatRequest -> Aff (exception :: EXCEPTION | eff) DescribeAggregateIdFormatResult
```

<p>Describes the longer ID format settings for all resource types in a specific region. This request is useful for performing a quick audit to determine whether a specific region is fully opted in for longer IDs (17-character IDs).</p> <p>This request only returns information about resource types that support longer IDs.</p> <p>The following resource types support longer IDs: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>instance</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>reservation</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>snapshot</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>volume</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>.</p>

#### `describeAvailabilityZones`

``` purescript
describeAvailabilityZones :: forall eff. Service -> DescribeAvailabilityZonesRequest -> Aff (exception :: EXCEPTION | eff) DescribeAvailabilityZonesResult
```

<p>Describes one or more of the Availability Zones that are available to you. The results include zones only for the region you're currently using. If there is an event impacting an Availability Zone, you can use this request to view the state and any provided message for that Availability Zone.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html">Regions and Availability Zones</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeBundleTasks`

``` purescript
describeBundleTasks :: forall eff. Service -> DescribeBundleTasksRequest -> Aff (exception :: EXCEPTION | eff) DescribeBundleTasksResult
```

<p>Describes one or more of your bundling tasks.</p> <note> <p>Completed bundle tasks are listed for only a limited time. If your bundle task is no longer in the list, you can still register an AMI from it. Just use <code>RegisterImage</code> with the Amazon S3 bucket name and image manifest name you provided to the bundle task.</p> </note>

#### `describeClassicLinkInstances`

``` purescript
describeClassicLinkInstances :: forall eff. Service -> DescribeClassicLinkInstancesRequest -> Aff (exception :: EXCEPTION | eff) DescribeClassicLinkInstancesResult
```

<p>Describes one or more of your linked EC2-Classic instances. This request only returns information about EC2-Classic instances linked to a VPC through ClassicLink; you cannot use this request to return information about other instances.</p>

#### `describeConversionTasks`

``` purescript
describeConversionTasks :: forall eff. Service -> DescribeConversionTasksRequest -> Aff (exception :: EXCEPTION | eff) DescribeConversionTasksResult
```

<p>Describes one or more of your conversion tasks. For more information, see the <a href="http://docs.aws.amazon.com/vm-import/latest/userguide/">VM Import/Export User Guide</a>.</p> <p>For information about the import manifest referenced by this API action, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html">VM Import Manifest</a>.</p>

#### `describeCustomerGateways`

``` purescript
describeCustomerGateways :: forall eff. Service -> DescribeCustomerGatewaysRequest -> Aff (exception :: EXCEPTION | eff) DescribeCustomerGatewaysResult
```

<p>Describes one or more of your VPN customer gateways.</p> <p>For more information about VPN customer gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `describeDhcpOptions`

``` purescript
describeDhcpOptions :: forall eff. Service -> DescribeDhcpOptionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeDhcpOptionsResult
```

<p>Describes one or more of your DHCP options sets.</p> <p>For more information about DHCP options sets, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `describeEgressOnlyInternetGateways`

``` purescript
describeEgressOnlyInternetGateways :: forall eff. Service -> DescribeEgressOnlyInternetGatewaysRequest -> Aff (exception :: EXCEPTION | eff) DescribeEgressOnlyInternetGatewaysResult
```

<p>Describes one or more of your egress-only Internet gateways.</p>

#### `describeElasticGpus`

``` purescript
describeElasticGpus :: forall eff. Service -> DescribeElasticGpusRequest -> Aff (exception :: EXCEPTION | eff) DescribeElasticGpusResult
```

<p>Describes the Elastic GPUs associated with your instances. For more information about Elastic GPUs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-gpus.html">Amazon EC2 Elastic GPUs</a>.</p>

#### `describeExportTasks`

``` purescript
describeExportTasks :: forall eff. Service -> DescribeExportTasksRequest -> Aff (exception :: EXCEPTION | eff) DescribeExportTasksResult
```

<p>Describes one or more of your export tasks.</p>

#### `describeFlowLogs`

``` purescript
describeFlowLogs :: forall eff. Service -> DescribeFlowLogsRequest -> Aff (exception :: EXCEPTION | eff) DescribeFlowLogsResult
```

<p>Describes one or more flow logs. To view the information in your flow logs (the log streams for the network interfaces), you must use the CloudWatch Logs console or the CloudWatch Logs API.</p>

#### `describeFpgaImageAttribute`

``` purescript
describeFpgaImageAttribute :: forall eff. Service -> DescribeFpgaImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) DescribeFpgaImageAttributeResult
```

<p>Describes the specified attribute of the specified Amazon FPGA Image (AFI).</p>

#### `describeFpgaImages`

``` purescript
describeFpgaImages :: forall eff. Service -> DescribeFpgaImagesRequest -> Aff (exception :: EXCEPTION | eff) DescribeFpgaImagesResult
```

<p>Describes one or more available Amazon FPGA Images (AFIs). These include public AFIs, private AFIs that you own, and AFIs owned by other AWS accounts for which you have load permissions.</p>

#### `describeHostReservationOfferings`

``` purescript
describeHostReservationOfferings :: forall eff. Service -> DescribeHostReservationOfferingsRequest -> Aff (exception :: EXCEPTION | eff) DescribeHostReservationOfferingsResult
```

<p>Describes the Dedicated Host Reservations that are available to purchase.</p> <p>The results describe all the Dedicated Host Reservation offerings, including offerings that may not match the instance family and region of your Dedicated Hosts. When purchasing an offering, ensure that the the instance family and region of the offering matches that of the Dedicated Host/s it will be associated with. For an overview of supported instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html">Dedicated Hosts Overview</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p>

#### `describeHostReservations`

``` purescript
describeHostReservations :: forall eff. Service -> DescribeHostReservationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeHostReservationsResult
```

<p>Describes Dedicated Host Reservations which are associated with Dedicated Hosts in your account.</p>

#### `describeHosts`

``` purescript
describeHosts :: forall eff. Service -> DescribeHostsRequest -> Aff (exception :: EXCEPTION | eff) DescribeHostsResult
```

<p>Describes one or more of your Dedicated Hosts.</p> <p>The results describe only the Dedicated Hosts in the region you're currently using. All listed instances consume capacity on your Dedicated Host. Dedicated Hosts that have recently been released will be listed with the state <code>released</code>.</p>

#### `describeIamInstanceProfileAssociations`

``` purescript
describeIamInstanceProfileAssociations :: forall eff. Service -> DescribeIamInstanceProfileAssociationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeIamInstanceProfileAssociationsResult
```

<p>Describes your IAM instance profile associations.</p>

#### `describeIdFormat`

``` purescript
describeIdFormat :: forall eff. Service -> DescribeIdFormatRequest -> Aff (exception :: EXCEPTION | eff) DescribeIdFormatResult
```

<p>Describes the ID format settings for your resources on a per-region basis, for example, to view which resource types are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types.</p> <p>The following resource types support longer IDs: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>instance</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>reservation</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>snapshot</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>volume</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>. </p> <p>These settings apply to the IAM user who makes the request; they do not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user, unless they explicitly override the settings by running the <a>ModifyIdFormat</a> command. Resources created with longer IDs are visible to all IAM users, regardless of these settings and provided that they have permission to use the relevant <code>Describe</code> command for the resource type.</p>

#### `describeIdentityIdFormat`

``` purescript
describeIdentityIdFormat :: forall eff. Service -> DescribeIdentityIdFormatRequest -> Aff (exception :: EXCEPTION | eff) DescribeIdentityIdFormatResult
```

<p>Describes the ID format settings for resources for the specified IAM user, IAM role, or root user. For example, you can view the resource types that are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html">Resource IDs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p> <p>The following resource types support longer IDs: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>instance</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>reservation</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>snapshot</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>volume</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>. </p> <p>These settings apply to the principal specified in the request. They do not apply to the principal that makes the request.</p>

#### `describeImageAttribute`

``` purescript
describeImageAttribute :: forall eff. Service -> DescribeImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) ImageAttribute
```

<p>Describes the specified attribute of the specified AMI. You can specify only one attribute at a time.</p>

#### `describeImages`

``` purescript
describeImages :: forall eff. Service -> DescribeImagesRequest -> Aff (exception :: EXCEPTION | eff) DescribeImagesResult
```

<p>Describes one or more of the images (AMIs, AKIs, and ARIs) available to you. Images available to you include public images, private images that you own, and private images owned by other AWS accounts but for which you have explicit launch permissions.</p> <note> <p>Deregistered images are included in the returned results for an unspecified interval after deregistration.</p> </note>

#### `describeImportImageTasks`

``` purescript
describeImportImageTasks :: forall eff. Service -> DescribeImportImageTasksRequest -> Aff (exception :: EXCEPTION | eff) DescribeImportImageTasksResult
```

<p>Displays details about an import virtual machine or import snapshot tasks that are already created.</p>

#### `describeImportSnapshotTasks`

``` purescript
describeImportSnapshotTasks :: forall eff. Service -> DescribeImportSnapshotTasksRequest -> Aff (exception :: EXCEPTION | eff) DescribeImportSnapshotTasksResult
```

<p>Describes your import snapshot tasks.</p>

#### `describeInstanceAttribute`

``` purescript
describeInstanceAttribute :: forall eff. Service -> DescribeInstanceAttributeRequest -> Aff (exception :: EXCEPTION | eff) InstanceAttribute
```

<p>Describes the specified attribute of the specified instance. You can specify only one attribute at a time. Valid attribute values are: <code>instanceType</code> | <code>kernel</code> | <code>ramdisk</code> | <code>userData</code> | <code>disableApiTermination</code> | <code>instanceInitiatedShutdownBehavior</code> | <code>rootDeviceName</code> | <code>blockDeviceMapping</code> | <code>productCodes</code> | <code>sourceDestCheck</code> | <code>groupSet</code> | <code>ebsOptimized</code> | <code>sriovNetSupport</code> </p>

#### `describeInstanceCreditSpecifications`

``` purescript
describeInstanceCreditSpecifications :: forall eff. Service -> DescribeInstanceCreditSpecificationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeInstanceCreditSpecificationsResult
```

<p>Describes the credit option for CPU usage of one or more of your T2 instances. The credit options are <code>standard</code> and <code>unlimited</code>.</p> <p>If you do not specify an instance ID, Amazon EC2 returns only the T2 instances with the <code>unlimited</code> credit option. If you specify one or more instance IDs, Amazon EC2 returns the credit option (<code>standard</code> or <code>unlimited</code>) of those instances. If you specify an instance ID that is not valid, such as an instance that is not a T2 instance, an error is returned.</p> <p>Recently terminated instances might appear in the returned results. This interval is usually less than one hour.</p> <p>If an Availability Zone is experiencing a service disruption and you specify instance IDs in the affected zone, or do not specify any instance IDs at all, the call fails. If you specify only instance IDs in an unaffected zone, the call works normally.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/t2-instances.html">T2 Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeInstanceStatus`

``` purescript
describeInstanceStatus :: forall eff. Service -> DescribeInstanceStatusRequest -> Aff (exception :: EXCEPTION | eff) DescribeInstanceStatusResult
```

<p>Describes the status of one or more instances. By default, only running instances are described, unless you specifically indicate to return the status of all instances.</p> <p>Instance status includes the following components:</p> <ul> <li> <p> <b>Status checks</b> - Amazon EC2 performs status checks on running EC2 instances to identify hardware and software issues. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html">Status Checks for Your Instances</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html">Troubleshooting Instances with Failed Status Checks</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> </li> <li> <p> <b>Scheduled events</b> - Amazon EC2 can schedule events (such as reboot, stop, or terminate) for your instances related to hardware issues, software updates, or system maintenance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html">Scheduled Events for Your Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> </li> <li> <p> <b>Instance state</b> - You can manage your instances from the moment you launch them through their termination. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html">Instance Lifecycle</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> </li> </ul>

#### `describeInstances`

``` purescript
describeInstances :: forall eff. Service -> DescribeInstancesRequest -> Aff (exception :: EXCEPTION | eff) DescribeInstancesResult
```

<p>Describes one or more of your instances.</p> <p>If you specify one or more instance IDs, Amazon EC2 returns information for those instances. If you do not specify instance IDs, Amazon EC2 returns information for all relevant instances. If you specify an instance ID that is not valid, an error is returned. If you specify an instance that you do not own, it is not included in the returned results.</p> <p>Recently terminated instances might appear in the returned results. This interval is usually less than one hour.</p> <p>If you describe instances in the rare case where an Availability Zone is experiencing a service disruption and you specify instance IDs that are in the affected zone, or do not specify any instance IDs at all, the call fails. If you describe instances and specify only instance IDs that are in an unaffected zone, the call works normally.</p>

#### `describeInternetGateways`

``` purescript
describeInternetGateways :: forall eff. Service -> DescribeInternetGatewaysRequest -> Aff (exception :: EXCEPTION | eff) DescribeInternetGatewaysResult
```

<p>Describes one or more of your Internet gateways.</p>

#### `describeKeyPairs`

``` purescript
describeKeyPairs :: forall eff. Service -> DescribeKeyPairsRequest -> Aff (exception :: EXCEPTION | eff) DescribeKeyPairsResult
```

<p>Describes one or more of your key pairs.</p> <p>For more information about key pairs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeLaunchTemplateVersions`

``` purescript
describeLaunchTemplateVersions :: forall eff. Service -> DescribeLaunchTemplateVersionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeLaunchTemplateVersionsResult
```

<p>Describes one or more versions of a specified launch template. You can describe all versions, individual versions, or a range of versions.</p>

#### `describeLaunchTemplates`

``` purescript
describeLaunchTemplates :: forall eff. Service -> DescribeLaunchTemplatesRequest -> Aff (exception :: EXCEPTION | eff) DescribeLaunchTemplatesResult
```

<p>Describes one or more launch templates.</p>

#### `describeMovingAddresses`

``` purescript
describeMovingAddresses :: forall eff. Service -> DescribeMovingAddressesRequest -> Aff (exception :: EXCEPTION | eff) DescribeMovingAddressesResult
```

<p>Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform. This request does not return information about any other Elastic IP addresses in your account.</p>

#### `describeNatGateways`

``` purescript
describeNatGateways :: forall eff. Service -> DescribeNatGatewaysRequest -> Aff (exception :: EXCEPTION | eff) DescribeNatGatewaysResult
```

<p>Describes one or more of the your NAT gateways.</p>

#### `describeNetworkAcls`

``` purescript
describeNetworkAcls :: forall eff. Service -> DescribeNetworkAclsRequest -> Aff (exception :: EXCEPTION | eff) DescribeNetworkAclsResult
```

<p>Describes one or more of your network ACLs.</p> <p>For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `describeNetworkInterfaceAttribute`

``` purescript
describeNetworkInterfaceAttribute :: forall eff. Service -> DescribeNetworkInterfaceAttributeRequest -> Aff (exception :: EXCEPTION | eff) DescribeNetworkInterfaceAttributeResult
```

<p>Describes a network interface attribute. You can specify only one attribute at a time.</p>

#### `describeNetworkInterfacePermissions`

``` purescript
describeNetworkInterfacePermissions :: forall eff. Service -> DescribeNetworkInterfacePermissionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeNetworkInterfacePermissionsResult
```

<p>Describes the permissions for your network interfaces. </p>

#### `describeNetworkInterfaces`

``` purescript
describeNetworkInterfaces :: forall eff. Service -> DescribeNetworkInterfacesRequest -> Aff (exception :: EXCEPTION | eff) DescribeNetworkInterfacesResult
```

<p>Describes one or more of your network interfaces.</p>

#### `describePlacementGroups`

``` purescript
describePlacementGroups :: forall eff. Service -> DescribePlacementGroupsRequest -> Aff (exception :: EXCEPTION | eff) DescribePlacementGroupsResult
```

<p>Describes one or more of your placement groups. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describePrefixLists`

``` purescript
describePrefixLists :: forall eff. Service -> DescribePrefixListsRequest -> Aff (exception :: EXCEPTION | eff) DescribePrefixListsResult
```

<p>Describes available AWS services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service. A prefix list ID is required for creating an outbound security group rule that allows traffic from a VPC to access an AWS service through a gateway VPC endpoint.</p>

#### `describePrincipalIdFormat`

``` purescript
describePrincipalIdFormat :: forall eff. Service -> DescribePrincipalIdFormatRequest -> Aff (exception :: EXCEPTION | eff) DescribePrincipalIdFormatResult
```

<p>Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference. </p> <p>By default, all IAM roles and IAM users default to the same ID settings as the root user, unless they explicitly override the settings. This request is useful for identifying those IAM users and IAM roles that have overridden the default ID settings.</p> <p>The following resource types support longer IDs: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>instance</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>reservation</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>snapshot</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>volume</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>. </p>

#### `describeRegions`

``` purescript
describeRegions :: forall eff. Service -> DescribeRegionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeRegionsResult
```

<p>Describes one or more regions that are currently available to you.</p> <p>For a list of the regions supported by Amazon EC2, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region">Regions and Endpoints</a>.</p>

#### `describeReservedInstances`

``` purescript
describeReservedInstances :: forall eff. Service -> DescribeReservedInstancesRequest -> Aff (exception :: EXCEPTION | eff) DescribeReservedInstancesResult
```

<p>Describes one or more of the Reserved Instances that you purchased.</p> <p>For more information about Reserved Instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html">Reserved Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeReservedInstancesListings`

``` purescript
describeReservedInstancesListings :: forall eff. Service -> DescribeReservedInstancesListingsRequest -> Aff (exception :: EXCEPTION | eff) DescribeReservedInstancesListingsResult
```

<p>Describes your account's Reserved Instance listings in the Reserved Instance Marketplace.</p> <p>The Reserved Instance Marketplace matches sellers who want to resell Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.</p> <p>As a seller, you choose to list some or all of your Reserved Instances, and you specify the upfront price to receive for them. Your Reserved Instances are then listed in the Reserved Instance Marketplace and are available for purchase.</p> <p>As a buyer, you specify the configuration of the Reserved Instance to purchase, and the Marketplace matches what you're searching for with what's available. The Marketplace first sells the lowest priced Reserved Instances to you, and continues to sell available Reserved Instance listings to you until your demand is met. You are charged based on the total price of all of the listings that you purchase.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeReservedInstancesModifications`

``` purescript
describeReservedInstancesModifications :: forall eff. Service -> DescribeReservedInstancesModificationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeReservedInstancesModificationsResult
```

<p>Describes the modifications made to your Reserved Instances. If no parameter is specified, information about all your Reserved Instances modification requests is returned. If a modification ID is specified, only information about the specific modification is returned.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html">Modifying Reserved Instances</a> in the Amazon Elastic Compute Cloud User Guide.</p>

#### `describeReservedInstancesOfferings`

``` purescript
describeReservedInstancesOfferings :: forall eff. Service -> DescribeReservedInstancesOfferingsRequest -> Aff (exception :: EXCEPTION | eff) DescribeReservedInstancesOfferingsResult
```

<p>Describes Reserved Instance offerings that are available for purchase. With Reserved Instances, you purchase the right to launch instances for a period of time. During that time period, you do not receive insufficient capacity errors, and you pay a lower usage rate than the rate charged for On-Demand instances for the actual time used.</p> <p>If you have listed your own Reserved Instances for sale in the Reserved Instance Marketplace, they will be excluded from these results. This is to ensure that you do not purchase your own Reserved Instances.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeRouteTables`

``` purescript
describeRouteTables :: forall eff. Service -> DescribeRouteTablesRequest -> Aff (exception :: EXCEPTION | eff) DescribeRouteTablesResult
```

<p>Describes one or more of your route tables.</p> <p>Each subnet in your VPC must be associated with a route table. If a subnet is not explicitly associated with any route table, it is implicitly associated with the main route table. This command does not return the subnet ID for implicit associations.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `describeScheduledInstanceAvailability`

``` purescript
describeScheduledInstanceAvailability :: forall eff. Service -> DescribeScheduledInstanceAvailabilityRequest -> Aff (exception :: EXCEPTION | eff) DescribeScheduledInstanceAvailabilityResult
```

<p>Finds available schedules that meet the specified criteria.</p> <p>You can search for an available schedule no more than 3 months in advance. You must meet the minimum required duration of 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.</p> <p>After you find a schedule that meets your needs, call <a>PurchaseScheduledInstances</a> to purchase Scheduled Instances with that schedule.</p>

#### `describeScheduledInstances`

``` purescript
describeScheduledInstances :: forall eff. Service -> DescribeScheduledInstancesRequest -> Aff (exception :: EXCEPTION | eff) DescribeScheduledInstancesResult
```

<p>Describes one or more of your Scheduled Instances.</p>

#### `describeSecurityGroupReferences`

``` purescript
describeSecurityGroupReferences :: forall eff. Service -> DescribeSecurityGroupReferencesRequest -> Aff (exception :: EXCEPTION | eff) DescribeSecurityGroupReferencesResult
```

<p>[EC2-VPC only] Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you've specified in this request.</p>

#### `describeSecurityGroups`

``` purescript
describeSecurityGroups :: forall eff. Service -> DescribeSecurityGroupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeSecurityGroupsResult
```

<p>Describes one or more of your security groups.</p> <p>A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Amazon EC2 Security Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i> and <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `describeSnapshotAttribute`

``` purescript
describeSnapshotAttribute :: forall eff. Service -> DescribeSnapshotAttributeRequest -> Aff (exception :: EXCEPTION | eff) DescribeSnapshotAttributeResult
```

<p>Describes the specified attribute of the specified snapshot. You can specify only one attribute at a time.</p> <p>For more information about EBS snapshots, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html">Amazon EBS Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeSnapshots`

``` purescript
describeSnapshots :: forall eff. Service -> DescribeSnapshotsRequest -> Aff (exception :: EXCEPTION | eff) DescribeSnapshotsResult
```

<p>Describes one or more of the EBS snapshots available to you. Available snapshots include public snapshots available for any AWS account to launch, private snapshots that you own, and private snapshots owned by another AWS account but for which you've been given explicit create volume permissions.</p> <p>The create volume permissions fall into the following categories:</p> <ul> <li> <p> <i>public</i>: The owner of the snapshot granted create volume permissions for the snapshot to the <code>all</code> group. All AWS accounts have create volume permissions for these snapshots.</p> </li> <li> <p> <i>explicit</i>: The owner of the snapshot granted create volume permissions to a specific AWS account.</p> </li> <li> <p> <i>implicit</i>: An AWS account has implicit create volume permissions for all snapshots it owns.</p> </li> </ul> <p>The list of snapshots returned can be modified by specifying snapshot IDs, snapshot owners, or AWS accounts with create volume permissions. If no options are specified, Amazon EC2 returns all snapshots for which you have create volume permissions.</p> <p>If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned. If you specify an invalid snapshot ID, an error is returned. If you specify a snapshot ID for which you do not have access, it is not included in the returned results.</p> <p>If you specify one or more snapshot owners using the <code>OwnerIds</code> option, only snapshots from the specified owners and for which you have access are returned. The results can include the AWS account IDs of the specified owners, <code>amazon</code> for snapshots owned by Amazon, or <code>self</code> for snapshots that you own.</p> <p>If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are returned. You can specify AWS account IDs (if you own the snapshots), <code>self</code> for snapshots for which you own or have explicit permissions, or <code>all</code> for public snapshots.</p> <p>If you are describing a long list of snapshots, you can paginate the output to make the list more manageable. The <code>MaxResults</code> parameter sets the maximum number of results returned in a single page. If the list of results exceeds your <code>MaxResults</code> value, then that number of results is returned along with a <code>NextToken</code> value that can be passed to a subsequent <code>DescribeSnapshots</code> request to retrieve the remaining results.</p> <p>For more information about EBS snapshots, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html">Amazon EBS Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeSpotDatafeedSubscription`

``` purescript
describeSpotDatafeedSubscription :: forall eff. Service -> DescribeSpotDatafeedSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) DescribeSpotDatafeedSubscriptionResult
```

<p>Describes the data feed for Spot Instances. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html">Spot Instance Data Feed</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeSpotFleetInstances`

``` purescript
describeSpotFleetInstances :: forall eff. Service -> DescribeSpotFleetInstancesRequest -> Aff (exception :: EXCEPTION | eff) DescribeSpotFleetInstancesResponse
```

<p>Describes the running instances for the specified Spot Fleet.</p>

#### `describeSpotFleetRequestHistory`

``` purescript
describeSpotFleetRequestHistory :: forall eff. Service -> DescribeSpotFleetRequestHistoryRequest -> Aff (exception :: EXCEPTION | eff) DescribeSpotFleetRequestHistoryResponse
```

<p>Describes the events for the specified Spot Fleet request during the specified time.</p> <p>Spot Fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event.</p>

#### `describeSpotFleetRequests`

``` purescript
describeSpotFleetRequests :: forall eff. Service -> DescribeSpotFleetRequestsRequest -> Aff (exception :: EXCEPTION | eff) DescribeSpotFleetRequestsResponse
```

<p>Describes your Spot Fleet requests.</p> <p>Spot Fleet requests are deleted 48 hours after they are canceled and their instances are terminated.</p>

#### `describeSpotInstanceRequests`

``` purescript
describeSpotInstanceRequests :: forall eff. Service -> DescribeSpotInstanceRequestsRequest -> Aff (exception :: EXCEPTION | eff) DescribeSpotInstanceRequestsResult
```

<p>Describes the Spot Instance requests that belong to your account. Spot Instances are instances that Amazon EC2 launches when the Spot price that you specify exceeds the current Spot price. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html">Spot Instance Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>You can use <code>DescribeSpotInstanceRequests</code> to find a running Spot Instance by examining the response. If the status of the Spot Instance is <code>fulfilled</code>, the instance ID appears in the response and contains the identifier of the instance. Alternatively, you can use <a>DescribeInstances</a> with a filter to look for instances where the instance lifecycle is <code>spot</code>.</p> <p>Spot Instance requests are deleted 4 hours after they are canceled and their instances are terminated.</p>

#### `describeSpotPriceHistory`

``` purescript
describeSpotPriceHistory :: forall eff. Service -> DescribeSpotPriceHistoryRequest -> Aff (exception :: EXCEPTION | eff) DescribeSpotPriceHistoryResult
```

<p>Describes the Spot price history. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html">Spot Instance Pricing History</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>When you specify a start and end time, this operation returns the prices of the instance types within the time range that you specified and the time when the price changed. The price is valid within the time period that you specified; the response merely indicates the last time that the price changed.</p>

#### `describeStaleSecurityGroups`

``` purescript
describeStaleSecurityGroups :: forall eff. Service -> DescribeStaleSecurityGroupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeStaleSecurityGroupsResult
```

<p>[EC2-VPC only] Describes the stale security group rules for security groups in a specified VPC. Rules are stale when they reference a deleted security group in a peer VPC, or a security group in a peer VPC for which the VPC peering connection has been deleted.</p>

#### `describeSubnets`

``` purescript
describeSubnets :: forall eff. Service -> DescribeSubnetsRequest -> Aff (exception :: EXCEPTION | eff) DescribeSubnetsResult
```

<p>Describes one or more of your subnets.</p> <p>For more information about subnets, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">Your VPC and Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `describeTags`

``` purescript
describeTags :: forall eff. Service -> DescribeTagsRequest -> Aff (exception :: EXCEPTION | eff) DescribeTagsResult
```

<p>Describes one or more of the tags for your EC2 resources.</p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeVolumeAttribute`

``` purescript
describeVolumeAttribute :: forall eff. Service -> DescribeVolumeAttributeRequest -> Aff (exception :: EXCEPTION | eff) DescribeVolumeAttributeResult
```

<p>Describes the specified attribute of the specified volume. You can specify only one attribute at a time.</p> <p>For more information about EBS volumes, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html">Amazon EBS Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeVolumeStatus`

``` purescript
describeVolumeStatus :: forall eff. Service -> DescribeVolumeStatusRequest -> Aff (exception :: EXCEPTION | eff) DescribeVolumeStatusResult
```

<p>Describes the status of the specified volumes. Volume status provides the result of the checks performed on your volumes to determine events that can impair the performance of your volumes. The performance of a volume can be affected if an issue occurs on the volume's underlying host. If the volume's underlying host experiences a power outage or system issue, after the system is restored, there could be data inconsistencies on the volume. Volume events notify you if this occurs. Volume actions notify you if any action needs to be taken in response to the event.</p> <p>The <code>DescribeVolumeStatus</code> operation provides the following information about the specified volumes:</p> <p> <i>Status</i>: Reflects the current status of the volume. The possible values are <code>ok</code>, <code>impaired</code> , <code>warning</code>, or <code>insufficient-data</code>. If all checks pass, the overall status of the volume is <code>ok</code>. If the check fails, the overall status is <code>impaired</code>. If the status is <code>insufficient-data</code>, then the checks may still be taking place on your volume at the time. We recommend that you retry the request. For more information on volume status, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html">Monitoring the Status of Your Volumes</a>.</p> <p> <i>Events</i>: Reflect the cause of a volume status and may require you to take action. For example, if your volume returns an <code>impaired</code> status, then the volume event might be <code>potential-data-inconsistency</code>. This means that your volume has been affected by an issue with the underlying host, has all I/O operations disabled, and may have inconsistent data.</p> <p> <i>Actions</i>: Reflect the actions you may have to take in response to an event. For example, if the status of the volume is <code>impaired</code> and the volume event shows <code>potential-data-inconsistency</code>, then the action shows <code>enable-volume-io</code>. This means that you may want to enable the I/O operations for the volume by calling the <a>EnableVolumeIO</a> action and then check the volume for data consistency.</p> <note> <p>Volume status is based on the volume status checks, and does not reflect the volume state. Therefore, volume status does not indicate volumes in the <code>error</code> state (for example, when a volume is incapable of accepting I/O.)</p> </note>

#### `describeVolumes`

``` purescript
describeVolumes :: forall eff. Service -> DescribeVolumesRequest -> Aff (exception :: EXCEPTION | eff) DescribeVolumesResult
```

<p>Describes the specified EBS volumes.</p> <p>If you are describing a long list of volumes, you can paginate the output to make the list more manageable. The <code>MaxResults</code> parameter sets the maximum number of results returned in a single page. If the list of results exceeds your <code>MaxResults</code> value, then that number of results is returned along with a <code>NextToken</code> value that can be passed to a subsequent <code>DescribeVolumes</code> request to retrieve the remaining results.</p> <p>For more information about EBS volumes, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html">Amazon EBS Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeVolumesModifications`

``` purescript
describeVolumesModifications :: forall eff. Service -> DescribeVolumesModificationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeVolumesModificationsResult
```

<p>Reports the current modification status of EBS volumes.</p> <p>Current-generation EBS volumes support modification of attributes including type, size, and (for <code>io1</code> volumes) IOPS provisioning while either attached to or detached from an instance. Following an action from the API or the console to modify a volume, the status of the modification may be <code>modifying</code>, <code>optimizing</code>, <code>completed</code>, or <code>failed</code>. If a volume has never been modified, then certain elements of the returned <code>VolumeModification</code> objects are null. </p> <p> You can also use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/">Amazon CloudWatch Events User Guide</a>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods">Monitoring Volume Modifications"</a>. </p>

#### `describeVpcAttribute`

``` purescript
describeVpcAttribute :: forall eff. Service -> DescribeVpcAttributeRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcAttributeResult
```

<p>Describes the specified attribute of the specified VPC. You can specify only one attribute at a time.</p>

#### `describeVpcClassicLink`

``` purescript
describeVpcClassicLink :: forall eff. Service -> DescribeVpcClassicLinkRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcClassicLinkResult
```

<p>Describes the ClassicLink status of one or more VPCs.</p>

#### `describeVpcClassicLinkDnsSupport`

``` purescript
describeVpcClassicLinkDnsSupport :: forall eff. Service -> DescribeVpcClassicLinkDnsSupportRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcClassicLinkDnsSupportResult
```

<p>Describes the ClassicLink DNS support status of one or more VPCs. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `describeVpcEndpointConnectionNotifications`

``` purescript
describeVpcEndpointConnectionNotifications :: forall eff. Service -> DescribeVpcEndpointConnectionNotificationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcEndpointConnectionNotificationsResult
```

<p>Describes the connection notifications for VPC endpoints and VPC endpoint services.</p>

#### `describeVpcEndpointConnections`

``` purescript
describeVpcEndpointConnections :: forall eff. Service -> DescribeVpcEndpointConnectionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcEndpointConnectionsResult
```

<p>Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance.</p>

#### `describeVpcEndpointServiceConfigurations`

``` purescript
describeVpcEndpointServiceConfigurations :: forall eff. Service -> DescribeVpcEndpointServiceConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcEndpointServiceConfigurationsResult
```

<p>Describes the VPC endpoint service configurations in your account (your services).</p>

#### `describeVpcEndpointServicePermissions`

``` purescript
describeVpcEndpointServicePermissions :: forall eff. Service -> DescribeVpcEndpointServicePermissionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcEndpointServicePermissionsResult
```

<p>Describes the principals (service consumers) that are permitted to discover your VPC endpoint service.</p>

#### `describeVpcEndpointServices`

``` purescript
describeVpcEndpointServices :: forall eff. Service -> DescribeVpcEndpointServicesRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcEndpointServicesResult
```

<p>Describes available services to which you can create a VPC endpoint.</p>

#### `describeVpcEndpoints`

``` purescript
describeVpcEndpoints :: forall eff. Service -> DescribeVpcEndpointsRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcEndpointsResult
```

<p>Describes one or more of your VPC endpoints.</p>

#### `describeVpcPeeringConnections`

``` purescript
describeVpcPeeringConnections :: forall eff. Service -> DescribeVpcPeeringConnectionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcPeeringConnectionsResult
```

<p>Describes one or more of your VPC peering connections.</p>

#### `describeVpcs`

``` purescript
describeVpcs :: forall eff. Service -> DescribeVpcsRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpcsResult
```

<p>Describes one or more of your VPCs.</p>

#### `describeVpnConnections`

``` purescript
describeVpnConnections :: forall eff. Service -> DescribeVpnConnectionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpnConnectionsResult
```

<p>Describes one or more of your VPN connections.</p> <p>For more information about VPN connections, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `describeVpnGateways`

``` purescript
describeVpnGateways :: forall eff. Service -> DescribeVpnGatewaysRequest -> Aff (exception :: EXCEPTION | eff) DescribeVpnGatewaysResult
```

<p>Describes one or more of your virtual private gateways.</p> <p>For more information about virtual private gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `detachClassicLinkVpc`

``` purescript
detachClassicLinkVpc :: forall eff. Service -> DetachClassicLinkVpcRequest -> Aff (exception :: EXCEPTION | eff) DetachClassicLinkVpcResult
```

<p>Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the instance has been unlinked, the VPC security groups are no longer associated with it. An instance is automatically unlinked from a VPC when it's stopped.</p>

#### `detachInternetGateway`

``` purescript
detachInternetGateway :: forall eff. Service -> DetachInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Detaches an Internet gateway from a VPC, disabling connectivity between the Internet and the VPC. The VPC must not contain any running instances with Elastic IP addresses or public IPv4 addresses.</p>

#### `detachNetworkInterface`

``` purescript
detachNetworkInterface :: forall eff. Service -> DetachNetworkInterfaceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Detaches a network interface from an instance.</p>

#### `detachVolume`

``` purescript
detachVolume :: forall eff. Service -> DetachVolumeRequest -> Aff (exception :: EXCEPTION | eff) VolumeAttachment
```

<p>Detaches an EBS volume from an instance. Make sure to unmount any file systems on the device within your operating system before detaching the volume. Failure to do so can result in the volume becoming stuck in the <code>busy</code> state while detaching. If this happens, detachment can be delayed indefinitely until you unmount the volume, force detachment, reboot the instance, or all three. If an EBS volume is the root device of an instance, it can't be detached while the instance is running. To detach the root volume, stop the instance first.</p> <p>When a volume with an AWS Marketplace product code is detached from an instance, the product code is no longer associated with the instance.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html">Detaching an Amazon EBS Volume</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `detachVpnGateway`

``` purescript
detachVpnGateway :: forall eff. Service -> DetachVpnGatewayRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Detaches a virtual private gateway from a VPC. You do this if you're planning to turn off the VPC and not use it anymore. You can confirm a virtual private gateway has been completely detached from a VPC by describing the virtual private gateway (any attachments to the virtual private gateway are also described).</p> <p>You must wait for the attachment's state to switch to <code>detached</code> before you can delete the VPC or attach a different VPC to the virtual private gateway.</p>

#### `disableVgwRoutePropagation`

``` purescript
disableVgwRoutePropagation :: forall eff. Service -> DisableVgwRoutePropagationRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC.</p>

#### `disableVpcClassicLink`

``` purescript
disableVpcClassicLink :: forall eff. Service -> DisableVpcClassicLinkRequest -> Aff (exception :: EXCEPTION | eff) DisableVpcClassicLinkResult
```

<p>Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC that has EC2-Classic instances linked to it.</p>

#### `disableVpcClassicLinkDnsSupport`

``` purescript
disableVpcClassicLinkDnsSupport :: forall eff. Service -> DisableVpcClassicLinkDnsSupportRequest -> Aff (exception :: EXCEPTION | eff) DisableVpcClassicLinkDnsSupportResult
```

<p>Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames resolve to public IP addresses when addressed between a linked EC2-Classic instance and instances in the VPC to which it's linked. For more information about ClassicLink, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `disassociateAddress`

``` purescript
disassociateAddress :: forall eff. Service -> DisassociateAddressRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Disassociates an Elastic IP address from the instance or network interface it's associated with.</p> <p>An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.</p>

#### `disassociateIamInstanceProfile`

``` purescript
disassociateIamInstanceProfile :: forall eff. Service -> DisassociateIamInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) DisassociateIamInstanceProfileResult
```

<p>Disassociates an IAM instance profile from a running or stopped instance.</p> <p>Use <a>DescribeIamInstanceProfileAssociations</a> to get the association ID.</p>

#### `disassociateRouteTable`

``` purescript
disassociateRouteTable :: forall eff. Service -> DisassociateRouteTableRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Disassociates a subnet from a route table.</p> <p>After you perform this action, the subnet no longer uses the routes in the route table. Instead, it uses the routes in the VPC's main route table. For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `disassociateSubnetCidrBlock`

``` purescript
disassociateSubnetCidrBlock :: forall eff. Service -> DisassociateSubnetCidrBlockRequest -> Aff (exception :: EXCEPTION | eff) DisassociateSubnetCidrBlockResult
```

<p>Disassociates a CIDR block from a subnet. Currently, you can disassociate an IPv6 CIDR block only. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it. </p>

#### `disassociateVpcCidrBlock`

``` purescript
disassociateVpcCidrBlock :: forall eff. Service -> DisassociateVpcCidrBlockRequest -> Aff (exception :: EXCEPTION | eff) DisassociateVpcCidrBlockResult
```

<p>Disassociates a CIDR block from a VPC. To disassociate the CIDR block, you must specify its association ID. You can get the association ID by using <a>DescribeVpcs</a>. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it. </p> <p>You cannot disassociate the CIDR block with which you originally created the VPC (the primary CIDR block).</p>

#### `enableVgwRoutePropagation`

``` purescript
enableVgwRoutePropagation :: forall eff. Service -> EnableVgwRoutePropagationRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC.</p>

#### `enableVolumeIO`

``` purescript
enableVolumeIO :: forall eff. Service -> EnableVolumeIORequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent.</p>

#### `enableVpcClassicLink`

``` purescript
enableVpcClassicLink :: forall eff. Service -> EnableVpcClassicLinkRequest -> Aff (exception :: EXCEPTION | eff) EnableVpcClassicLinkResult
```

<p>Enables a VPC for ClassicLink. You can then link EC2-Classic instances to your ClassicLink-enabled VPC to allow communication over private IP addresses. You cannot enable your VPC for ClassicLink if any of your VPC's route tables have existing routes for address ranges within the <code>10.0.0.0/8</code> IP address range, excluding local routes for VPCs in the <code>10.0.0.0/16</code> and <code>10.1.0.0/16</code> IP address ranges. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `enableVpcClassicLinkDnsSupport`

``` purescript
enableVpcClassicLinkDnsSupport :: forall eff. Service -> EnableVpcClassicLinkDnsSupportRequest -> Aff (exception :: EXCEPTION | eff) EnableVpcClassicLinkDnsSupportResult
```

<p>Enables a VPC to support DNS hostname resolution for ClassicLink. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information about ClassicLink, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `getConsoleOutput`

``` purescript
getConsoleOutput :: forall eff. Service -> GetConsoleOutputRequest -> Aff (exception :: EXCEPTION | eff) GetConsoleOutputResult
```

<p>Gets the console output for the specified instance.</p> <p>Instances do not have a physical monitor through which you can view their console output. They also lack physical controls that allow you to power up, reboot, or shut them down. To allow these actions, we provide them through the Amazon EC2 API and command line interface.</p> <p>Instance console output is buffered and posted shortly after instance boot, reboot, and termination. Amazon EC2 preserves the most recent 64 KB output, which is available for at least one hour after the most recent post.</p> <p>For Linux instances, the instance console output displays the exact console output that would normally be displayed on a physical monitor attached to a computer. This output is buffered because the instance produces it and then posts it to a store where the instance's owner can retrieve it.</p> <p>For Windows instances, the instance console output includes output from the EC2Config service.</p>

#### `getConsoleScreenshot`

``` purescript
getConsoleScreenshot :: forall eff. Service -> GetConsoleScreenshotRequest -> Aff (exception :: EXCEPTION | eff) GetConsoleScreenshotResult
```

<p>Retrieve a JPG-format screenshot of a running instance to help with troubleshooting.</p> <p>The returned content is Base64-encoded.</p>

#### `getHostReservationPurchasePreview`

``` purescript
getHostReservationPurchasePreview :: forall eff. Service -> GetHostReservationPurchasePreviewRequest -> Aff (exception :: EXCEPTION | eff) GetHostReservationPurchasePreviewResult
```

<p>Preview a reservation purchase with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation.</p> <p>This is a preview of the <a>PurchaseHostReservation</a> action and does not result in the offering being purchased.</p>

#### `getLaunchTemplateData`

``` purescript
getLaunchTemplateData :: forall eff. Service -> GetLaunchTemplateDataRequest -> Aff (exception :: EXCEPTION | eff) GetLaunchTemplateDataResult
```

<p>Retrieves the configuration data of the specified instance. You can use this data to create a launch template.</p>

#### `getPasswordData`

``` purescript
getPasswordData :: forall eff. Service -> GetPasswordDataRequest -> Aff (exception :: EXCEPTION | eff) GetPasswordDataResult
```

<p>Retrieves the encrypted administrator password for a running Windows instance.</p> <p>The Windows password is generated at boot by the <code>EC2Config</code> service or <code>EC2Launch</code> scripts (Windows Server 2016 and later). This usually only happens the first time an instance is launched. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/UsingConfig_WinAMI.html">EC2Config</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html">EC2Launch</a> in the Amazon Elastic Compute Cloud User Guide.</p> <p>For the <code>EC2Config</code> service, the password is not generated for rebundled AMIs unless <code>Ec2SetPassword</code> is enabled before bundling.</p> <p>The password is encrypted using the key pair that you specified when you launched the instance. You must provide the corresponding key pair file.</p> <p>When you launch an instance, password generation and encryption may take a few minutes. If you try to retrieve the password before it's available, the output returns an empty string. We recommend that you wait up to 15 minutes after launching an instance before trying to retrieve the generated password.</p>

#### `getReservedInstancesExchangeQuote`

``` purescript
getReservedInstancesExchangeQuote :: forall eff. Service -> GetReservedInstancesExchangeQuoteRequest -> Aff (exception :: EXCEPTION | eff) GetReservedInstancesExchangeQuoteResult
```

<p>Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance. If the exchange cannot be performed, the reason is returned in the response. Use <a>AcceptReservedInstancesExchangeQuote</a> to perform the exchange.</p>

#### `importImage`

``` purescript
importImage :: forall eff. Service -> ImportImageRequest -> Aff (exception :: EXCEPTION | eff) ImportImageResult
```

<p>Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI). For more information, see <a href="http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html">Importing a VM as an Image Using VM Import/Export</a> in the <i>VM Import/Export User Guide</i>.</p>

#### `importInstance`

``` purescript
importInstance :: forall eff. Service -> ImportInstanceRequest -> Aff (exception :: EXCEPTION | eff) ImportInstanceResult
```

<p>Creates an import instance task using metadata from the specified disk image. <code>ImportInstance</code> only supports single-volume VMs. To import multi-volume VMs, use <a>ImportImage</a>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html">Importing a Virtual Machine Using the Amazon EC2 CLI</a>.</p> <p>For information about the import manifest referenced by this API action, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html">VM Import Manifest</a>.</p>

#### `importKeyPair`

``` purescript
importKeyPair :: forall eff. Service -> ImportKeyPairRequest -> Aff (exception :: EXCEPTION | eff) ImportKeyPairResult
```

<p>Imports the public key from an RSA key pair that you created with a third-party tool. Compare this with <a>CreateKeyPair</a>, in which AWS creates the key pair and gives the keys to you (AWS keeps a copy of the public key). With ImportKeyPair, you create the key pair and give AWS just the public key. The private key is never transferred between you and AWS.</p> <p>For more information about key pairs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `importSnapshot`

``` purescript
importSnapshot :: forall eff. Service -> ImportSnapshotRequest -> Aff (exception :: EXCEPTION | eff) ImportSnapshotResult
```

<p>Imports a disk into an EBS snapshot.</p>

#### `importVolume`

``` purescript
importVolume :: forall eff. Service -> ImportVolumeRequest -> Aff (exception :: EXCEPTION | eff) ImportVolumeResult
```

<p>Creates an import volume task using metadata from the specified disk image.For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/importing-your-volumes-into-amazon-ebs.html">Importing Disks to Amazon EBS</a>.</p> <p>For information about the import manifest referenced by this API action, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html">VM Import Manifest</a>.</p>

#### `modifyFpgaImageAttribute`

``` purescript
modifyFpgaImageAttribute :: forall eff. Service -> ModifyFpgaImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) ModifyFpgaImageAttributeResult
```

<p>Modifies the specified attribute of the specified Amazon FPGA Image (AFI).</p>

#### `modifyHosts`

``` purescript
modifyHosts :: forall eff. Service -> ModifyHostsRequest -> Aff (exception :: EXCEPTION | eff) ModifyHostsResult
```

<p>Modify the auto-placement setting of a Dedicated Host. When auto-placement is enabled, AWS will place instances that you launch with a tenancy of <code>host</code>, but without targeting a specific host ID, onto any available Dedicated Host in your account which has auto-placement enabled. When auto-placement is disabled, you need to provide a host ID if you want the instance to launch onto a specific host. If no host ID is provided, the instance will be launched onto a suitable host which has auto-placement enabled.</p>

#### `modifyIdFormat`

``` purescript
modifyIdFormat :: forall eff. Service -> ModifyIdFormatRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Modifies the ID format for the specified resource on a per-region basis. You can specify that resources should receive longer IDs (17-character IDs) when they are created.</p> <p>This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>.</p> <p>This setting applies to the IAM user who makes the request; it does not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user. If you're using this action as the root user, then these settings apply to the entire account, unless an IAM user explicitly overrides these settings for themselves. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html">Resource IDs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p> <p>Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant <code>Describe</code> command for the resource type.</p>

#### `modifyIdentityIdFormat`

``` purescript
modifyIdentityIdFormat :: forall eff. Service -> ModifyIdentityIdFormatRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Modifies the ID format of a resource for a specified IAM user, IAM role, or the root user for an account; or all IAM users, IAM roles, and the root user for an account. You can specify that resources should receive longer IDs (17-character IDs) when they are created. </p> <p>This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html">Resource IDs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p> <p>This setting applies to the principal specified in the request; it does not apply to the principal that makes the request. </p> <p>Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant <code>Describe</code> command for the resource type.</p>

#### `modifyImageAttribute`

``` purescript
modifyImageAttribute :: forall eff. Service -> ModifyImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Modifies the specified attribute of the specified AMI. You can specify only one attribute at a time. You can use the <code>Attribute</code> parameter to specify the attribute or one of the following parameters: <code>Description</code>, <code>LaunchPermission</code>, or <code>ProductCode</code>.</p> <p>AWS Marketplace product codes cannot be modified. Images with an AWS Marketplace product code cannot be made public.</p> <p>To enable the SriovNetSupport enhanced networking attribute of an image, enable SriovNetSupport on an instance and create an AMI from the instance.</p>

#### `modifyInstanceAttribute`

``` purescript
modifyInstanceAttribute :: forall eff. Service -> ModifyInstanceAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Modifies the specified attribute of the specified instance. You can specify only one attribute at a time.</p> <p>To modify some attributes, the instance must be stopped. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html">Modifying Attributes of a Stopped Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `modifyInstanceCreditSpecification`

``` purescript
modifyInstanceCreditSpecification :: forall eff. Service -> ModifyInstanceCreditSpecificationRequest -> Aff (exception :: EXCEPTION | eff) ModifyInstanceCreditSpecificationResult
```

<p>Modifies the credit option for CPU usage on a running or stopped T2 instance. The credit options are <code>standard</code> and <code>unlimited</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/t2-instances.html">T2 Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `modifyInstancePlacement`

``` purescript
modifyInstancePlacement :: forall eff. Service -> ModifyInstancePlacementRequest -> Aff (exception :: EXCEPTION | eff) ModifyInstancePlacementResult
```

<p>Modifies the placement attributes for a specified instance. You can do the following:</p> <ul> <li> <p>Modify the affinity between an instance and a <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html">Dedicated Host</a>. When affinity is set to <code>host</code> and the instance is not associated with a specific Dedicated Host, the next time the instance is launched, it is automatically associated with the host on which it lands. If the instance is restarted or rebooted, this relationship persists.</p> </li> <li> <p>Change the Dedicated Host with which an instance is associated.</p> </li> <li> <p>Change the instance tenancy of an instance from <code>host</code> to <code>dedicated</code>, or from <code>dedicated</code> to <code>host</code>.</p> </li> <li> <p>Move an instance to or from a <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">placement group</a>.</p> </li> </ul> <p>At least one attribute for affinity, host ID, tenancy, or placement group name must be specified in the request. Affinity and tenancy can be modified in the same request.</p> <p>To modify the host ID, tenancy, or placement group for an instance, the instance must be in the <code>stopped</code> state.</p>

#### `modifyLaunchTemplate`

``` purescript
modifyLaunchTemplate :: forall eff. Service -> ModifyLaunchTemplateRequest -> Aff (exception :: EXCEPTION | eff) ModifyLaunchTemplateResult
```

<p>Modifies a launch template. You can specify which version of the launch template to set as the default version. When launching an instance, the default version applies when a launch template version is not specified.</p>

#### `modifyNetworkInterfaceAttribute`

``` purescript
modifyNetworkInterfaceAttribute :: forall eff. Service -> ModifyNetworkInterfaceAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Modifies the specified network interface attribute. You can specify only one attribute at a time.</p>

#### `modifyReservedInstances`

``` purescript
modifyReservedInstances :: forall eff. Service -> ModifyReservedInstancesRequest -> Aff (exception :: EXCEPTION | eff) ModifyReservedInstancesResult
```

<p>Modifies the Availability Zone, instance count, instance type, or network platform (EC2-Classic or EC2-VPC) of your Reserved Instances. The Reserved Instances to be modified must be identical, except for Availability Zone, network platform, and instance type.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html">Modifying Reserved Instances</a> in the Amazon Elastic Compute Cloud User Guide.</p>

#### `modifySnapshotAttribute`

``` purescript
modifySnapshotAttribute :: forall eff. Service -> ModifySnapshotAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Adds or removes permission settings for the specified snapshot. You may add or remove specified AWS account IDs from a snapshot's list of create volume permissions, but you cannot do both in a single API call. If you need to both add and remove account IDs for a snapshot, you must use multiple API calls.</p> <note> <p>Encrypted snapshots and snapshots with AWS Marketplace product codes cannot be made public. Snapshots encrypted with your default CMK cannot be shared with other accounts.</p> </note> <p>For more information on modifying snapshot permissions, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html">Sharing Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `modifySpotFleetRequest`

``` purescript
modifySpotFleetRequest :: forall eff. Service -> ModifySpotFleetRequestRequest -> Aff (exception :: EXCEPTION | eff) ModifySpotFleetRequestResponse
```

<p>Modifies the specified Spot Fleet request.</p> <p>While the Spot Fleet request is being modified, it is in the <code>modifying</code> state.</p> <p>To scale up your Spot Fleet, increase its target capacity. The Spot Fleet launches the additional Spot Instances according to the allocation strategy for the Spot Fleet request. If the allocation strategy is <code>lowestPrice</code>, the Spot Fleet launches instances using the Spot pool with the lowest price. If the allocation strategy is <code>diversified</code>, the Spot Fleet distributes the instances across the Spot pools.</p> <p>To scale down your Spot Fleet, decrease its target capacity. First, the Spot Fleet cancels any open requests that exceed the new target capacity. You can request that the Spot Fleet terminate Spot Instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is <code>lowestPrice</code>, the Spot Fleet terminates the instances with the highest price per unit. If the allocation strategy is <code>diversified</code>, the Spot Fleet terminates instances across the Spot pools. Alternatively, you can request that the Spot Fleet keep the fleet at its current size, but not replace any Spot Instances that are interrupted or that you terminate manually.</p> <p>If you are finished with your Spot Fleet for now, but will use it again later, you can set the target capacity to 0.</p>

#### `modifySubnetAttribute`

``` purescript
modifySubnetAttribute :: forall eff. Service -> ModifySubnetAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Modifies a subnet attribute. You can only modify one attribute at a time.</p>

#### `modifyVolume`

``` purescript
modifyVolume :: forall eff. Service -> ModifyVolumeRequest -> Aff (exception :: EXCEPTION | eff) ModifyVolumeResult
```

<p>You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity. If your EBS volume is attached to a current-generation EC2 instance type, you may be able to apply these changes without stopping the instance or detaching the volume from it. For more information about modifying an EBS volume running Linux, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html">Modifying the Size, IOPS, or Type of an EBS Volume on Linux</a>. For more information about modifying an EBS volume running Windows, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html">Modifying the Size, IOPS, or Type of an EBS Volume on Windows</a>. </p> <p> When you complete a resize operation on your volume, you need to extend the volume's file-system size to take advantage of the new storage capacity. For information about extending a Linux file system, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux">Extending a Linux File System</a>. For information about extending a Windows file system, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows">Extending a Windows File System</a>. </p> <p> You can use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/">Amazon CloudWatch Events User Guide</a>. You can also track the status of a modification using the <a>DescribeVolumesModifications</a> API. For information about tracking status changes using either method, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods">Monitoring Volume Modifications</a>. </p> <note> <p>With previous-generation instance types, resizing an EBS volume may require detaching and reattaching the volume or stopping and restarting the instance. For more information about modifying an EBS volume running Linux, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html">Modifying the Size, IOPS, or Type of an EBS Volume on Linux</a>. For more information about modifying an EBS volume running Windows, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html">Modifying the Size, IOPS, or Type of an EBS Volume on Windows</a>.</p> </note> <note> <p>If you reach the maximum volume modification rate per volume limit, you will need to wait at least six hours before applying further modifications to the affected EBS volume.</p> </note>

#### `modifyVolumeAttribute`

``` purescript
modifyVolumeAttribute :: forall eff. Service -> ModifyVolumeAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Modifies a volume attribute.</p> <p>By default, all I/O operations for the volume are suspended when the data on the volume is determined to be potentially inconsistent, to prevent undetectable, latent data corruption. The I/O access to the volume can be resumed by first enabling I/O access and then checking the data consistency on your volume.</p> <p>You can change the default behavior to resume I/O operations. We recommend that you change this only for boot volumes or for volumes that are stateless or disposable.</p>

#### `modifyVpcAttribute`

``` purescript
modifyVpcAttribute :: forall eff. Service -> ModifyVpcAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Modifies the specified attribute of the specified VPC.</p>

#### `modifyVpcEndpoint`

``` purescript
modifyVpcEndpoint :: forall eff. Service -> ModifyVpcEndpointRequest -> Aff (exception :: EXCEPTION | eff) ModifyVpcEndpointResult
```

<p>Modifies attributes of a specified VPC endpoint. The attributes that you can modify depend on the type of VPC endpoint (interface or gateway). For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-endpoints.html">VPC Endpoints</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `modifyVpcEndpointConnectionNotification`

``` purescript
modifyVpcEndpointConnectionNotification :: forall eff. Service -> ModifyVpcEndpointConnectionNotificationRequest -> Aff (exception :: EXCEPTION | eff) ModifyVpcEndpointConnectionNotificationResult
```

<p>Modifies a connection notification for VPC endpoint or VPC endpoint service. You can change the SNS topic for the notification, or the events for which to be notified. </p>

#### `modifyVpcEndpointServiceConfiguration`

``` purescript
modifyVpcEndpointServiceConfiguration :: forall eff. Service -> ModifyVpcEndpointServiceConfigurationRequest -> Aff (exception :: EXCEPTION | eff) ModifyVpcEndpointServiceConfigurationResult
```

<p>Modifies the attributes of your VPC endpoint service configuration. You can change the Network Load Balancers for your service, and you can specify whether acceptance is required for requests to connect to your endpoint service through an interface VPC endpoint.</p>

#### `modifyVpcEndpointServicePermissions`

``` purescript
modifyVpcEndpointServicePermissions :: forall eff. Service -> ModifyVpcEndpointServicePermissionsRequest -> Aff (exception :: EXCEPTION | eff) ModifyVpcEndpointServicePermissionsResult
```

<p>Modifies the permissions for your <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/endpoint-service.html">VPC endpoint service</a>. You can add or remove permissions for service consumers (IAM users, IAM roles, and AWS accounts) to connect to your endpoint service.</p>

#### `modifyVpcPeeringConnectionOptions`

``` purescript
modifyVpcPeeringConnectionOptions :: forall eff. Service -> ModifyVpcPeeringConnectionOptionsRequest -> Aff (exception :: EXCEPTION | eff) ModifyVpcPeeringConnectionOptionsResult
```

<p>Modifies the VPC peering connection options on one side of a VPC peering connection. You can do the following:</p> <ul> <li> <p>Enable/disable communication over the peering connection between an EC2-Classic instance that's linked to your VPC (using ClassicLink) and instances in the peer VPC.</p> </li> <li> <p>Enable/disable communication over the peering connection between instances in your VPC and an EC2-Classic instance that's linked to the peer VPC.</p> </li> <li> <p>Enable/disable the ability to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.</p> </li> </ul> <p>If the peered VPCs are in different accounts, each owner must initiate a separate request to modify the peering connection options, depending on whether their VPC was the requester or accepter for the VPC peering connection. If the peered VPCs are in the same account, you can modify the requester and accepter options in the same request. To confirm which VPC is the accepter and requester for a VPC peering connection, use the <a>DescribeVpcPeeringConnections</a> command.</p>

#### `modifyVpcTenancy`

``` purescript
modifyVpcTenancy :: forall eff. Service -> ModifyVpcTenancyRequest -> Aff (exception :: EXCEPTION | eff) ModifyVpcTenancyResult
```

<p>Modifies the instance tenancy attribute of the specified VPC. You can change the instance tenancy attribute of a VPC to <code>default</code> only. You cannot change the instance tenancy attribute to <code>dedicated</code>.</p> <p>After you modify the tenancy of the VPC, any new instances that you launch into the VPC have a tenancy of <code>default</code>, unless you specify otherwise during launch. The tenancy of any existing instances in the VPC is not affected.</p> <p>For more information about Dedicated Instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `monitorInstances`

``` purescript
monitorInstances :: forall eff. Service -> MonitorInstancesRequest -> Aff (exception :: EXCEPTION | eff) MonitorInstancesResult
```

<p>Enables detailed monitoring for a running instance. Otherwise, basic monitoring is enabled. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html">Monitoring Your Instances and Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>To disable detailed monitoring, see .</p>

#### `moveAddressToVpc`

``` purescript
moveAddressToVpc :: forall eff. Service -> MoveAddressToVpcRequest -> Aff (exception :: EXCEPTION | eff) MoveAddressToVpcResult
```

<p>Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform. The Elastic IP address must be allocated to your account for more than 24 hours, and it must not be associated with an instance. After the Elastic IP address is moved, it is no longer available for use in the EC2-Classic platform, unless you move it back using the <a>RestoreAddressToClassic</a> request. You cannot move an Elastic IP address that was originally allocated for use in the EC2-VPC platform to the EC2-Classic platform. </p>

#### `purchaseHostReservation`

``` purescript
purchaseHostReservation :: forall eff. Service -> PurchaseHostReservationRequest -> Aff (exception :: EXCEPTION | eff) PurchaseHostReservationResult
```

<p>Purchase a reservation with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation. This action results in the specified reservation being purchased and charged to your account.</p>

#### `purchaseReservedInstancesOffering`

``` purescript
purchaseReservedInstancesOffering :: forall eff. Service -> PurchaseReservedInstancesOfferingRequest -> Aff (exception :: EXCEPTION | eff) PurchaseReservedInstancesOfferingResult
```

<p>Purchases a Reserved Instance for use with your account. With Reserved Instances, you pay a lower hourly rate compared to On-Demand instance pricing.</p> <p>Use <a>DescribeReservedInstancesOfferings</a> to get a list of Reserved Instance offerings that match your specifications. After you've purchased a Reserved Instance, you can check for your new Reserved Instance with <a>DescribeReservedInstances</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html">Reserved Instances</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `purchaseScheduledInstances`

``` purescript
purchaseScheduledInstances :: forall eff. Service -> PurchaseScheduledInstancesRequest -> Aff (exception :: EXCEPTION | eff) PurchaseScheduledInstancesResult
```

<p>Purchases one or more Scheduled Instances with the specified schedule.</p> <p>Scheduled Instances enable you to purchase Amazon EC2 compute capacity by the hour for a one-year term. Before you can purchase a Scheduled Instance, you must call <a>DescribeScheduledInstanceAvailability</a> to check for available schedules and obtain a purchase token. After you purchase a Scheduled Instance, you must call <a>RunScheduledInstances</a> during each scheduled time period.</p> <p>After you purchase a Scheduled Instance, you can't cancel, modify, or resell your purchase.</p>

#### `rebootInstances`

``` purescript
rebootInstances :: forall eff. Service -> RebootInstancesRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Requests a reboot of one or more instances. This operation is asynchronous; it only queues a request to reboot the specified instances. The operation succeeds if the instances are valid and belong to you. Requests to reboot terminated instances are ignored.</p> <p>If an instance does not cleanly shut down within four minutes, Amazon EC2 performs a hard reboot.</p> <p>For more information about troubleshooting, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html">Getting Console Output and Rebooting Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `registerImage`

``` purescript
registerImage :: forall eff. Service -> RegisterImageRequest -> Aff (exception :: EXCEPTION | eff) RegisterImageResult
```

<p>Registers an AMI. When you're creating an AMI, this is the final step you must complete before you can launch an instance from the AMI. For more information about creating AMIs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html">Creating Your Own AMIs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <note> <p>For Amazon EBS-backed instances, <a>CreateImage</a> creates and registers the AMI in a single request, so you don't have to register the AMI yourself.</p> </note> <p>You can also use <code>RegisterImage</code> to create an Amazon EBS-backed Linux AMI from a snapshot of a root device volume. You specify the snapshot using the block device mapping. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-launch-snapshot.html">Launching a Linux Instance from a Backup</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>You can't register an image where a secondary (non-root) snapshot has AWS Marketplace product codes.</p> <p>Some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE Linux Enterprise Server (SLES), use the EC2 billing product code associated with an AMI to verify the subscription status for package updates. Creating an AMI from an EBS snapshot does not maintain this billing code, and subsequent instances launched from such an AMI will not be able to connect to package update infrastructure. To create an AMI that must retain billing codes, see <a>CreateImage</a>.</p> <p>If needed, you can deregister an AMI at any time. Any modifications you make to an AMI backed by an instance store volume invalidates its registration. If you make changes to an image, deregister the previous image and register the new image.</p>

#### `rejectVpcEndpointConnections`

``` purescript
rejectVpcEndpointConnections :: forall eff. Service -> RejectVpcEndpointConnectionsRequest -> Aff (exception :: EXCEPTION | eff) RejectVpcEndpointConnectionsResult
```

<p>Rejects one or more VPC endpoint connection requests to your VPC endpoint service.</p>

#### `rejectVpcPeeringConnection`

``` purescript
rejectVpcPeeringConnection :: forall eff. Service -> RejectVpcPeeringConnectionRequest -> Aff (exception :: EXCEPTION | eff) RejectVpcPeeringConnectionResult
```

<p>Rejects a VPC peering connection request. The VPC peering connection must be in the <code>pending-acceptance</code> state. Use the <a>DescribeVpcPeeringConnections</a> request to view your outstanding VPC peering connection requests. To delete an active VPC peering connection, or to delete a VPC peering connection request that you initiated, use <a>DeleteVpcPeeringConnection</a>.</p>

#### `releaseAddress`

``` purescript
releaseAddress :: forall eff. Service -> ReleaseAddressRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Releases the specified Elastic IP address.</p> <p>[EC2-Classic, default VPC] Releasing an Elastic IP address automatically disassociates it from any instance that it's associated with. To disassociate an Elastic IP address without releasing it, use <a>DisassociateAddress</a>.</p> <p>[Nondefault VPC] You must use <a>DisassociateAddress</a> to disassociate the Elastic IP address before you can release it. Otherwise, Amazon EC2 returns an error (<code>InvalidIPAddress.InUse</code>).</p> <p>After releasing an Elastic IP address, it is released to the IP address pool. Be sure to update your DNS records and any servers or devices that communicate with the address. If you attempt to release an Elastic IP address that you already released, you'll get an <code>AuthFailure</code> error if the address is already allocated to another AWS account.</p> <p>[EC2-VPC] After you release an Elastic IP address for use in a VPC, you might be able to recover it. For more information, see <a>AllocateAddress</a>.</p>

#### `releaseHosts`

``` purescript
releaseHosts :: forall eff. Service -> ReleaseHostsRequest -> Aff (exception :: EXCEPTION | eff) ReleaseHostsResult
```

<p>When you no longer want to use an On-Demand Dedicated Host it can be released. On-Demand billing is stopped and the host goes into <code>released</code> state. The host ID of Dedicated Hosts that have been released can no longer be specified in another request, e.g., ModifyHosts. You must stop or terminate all instances on a host before it can be released.</p> <p>When Dedicated Hosts are released, it make take some time for them to stop counting toward your limit and you may receive capacity errors when trying to allocate new Dedicated hosts. Try waiting a few minutes, and then try again.</p> <p>Released hosts will still appear in a <a>DescribeHosts</a> response.</p>

#### `replaceIamInstanceProfileAssociation`

``` purescript
replaceIamInstanceProfileAssociation :: forall eff. Service -> ReplaceIamInstanceProfileAssociationRequest -> Aff (exception :: EXCEPTION | eff) ReplaceIamInstanceProfileAssociationResult
```

<p>Replaces an IAM instance profile for the specified running instance. You can use this action to change the IAM instance profile that's associated with an instance without having to disassociate the existing IAM instance profile first.</p> <p>Use <a>DescribeIamInstanceProfileAssociations</a> to get the association ID.</p>

#### `replaceNetworkAclAssociation`

``` purescript
replaceNetworkAclAssociation :: forall eff. Service -> ReplaceNetworkAclAssociationRequest -> Aff (exception :: EXCEPTION | eff) ReplaceNetworkAclAssociationResult
```

<p>Changes which network ACL a subnet is associated with. By default when you create a subnet, it's automatically associated with the default network ACL. For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>This is an idempotent operation.</p>

#### `replaceNetworkAclEntry`

``` purescript
replaceNetworkAclEntry :: forall eff. Service -> ReplaceNetworkAclEntryRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Replaces an entry (rule) in a network ACL. For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `replaceRoute`

``` purescript
replaceRoute :: forall eff. Service -> ReplaceRouteRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Replaces an existing route within a route table in a VPC. You must provide only one of the following: Internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, or egress-only Internet gateway.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `replaceRouteTableAssociation`

``` purescript
replaceRouteTableAssociation :: forall eff. Service -> ReplaceRouteTableAssociationRequest -> Aff (exception :: EXCEPTION | eff) ReplaceRouteTableAssociationResult
```

<p>Changes the route table associated with a given subnet in a VPC. After the operation completes, the subnet uses the routes in the new route table it's associated with. For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>You can also use ReplaceRouteTableAssociation to change which table is the main route table in the VPC. You just specify the main route table's association ID and the route table to be the new main route table.</p>

#### `reportInstanceStatus`

``` purescript
reportInstanceStatus :: forall eff. Service -> ReportInstanceStatusRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Submits feedback about the status of an instance. The instance must be in the <code>running</code> state. If your experience with the instance differs from the instance status returned by <a>DescribeInstanceStatus</a>, use <a>ReportInstanceStatus</a> to report your experience with the instance. Amazon EC2 collects this information to improve the accuracy of status checks.</p> <p>Use of this action does not change the value returned by <a>DescribeInstanceStatus</a>.</p>

#### `requestSpotFleet`

``` purescript
requestSpotFleet :: forall eff. Service -> RequestSpotFleetRequest -> Aff (exception :: EXCEPTION | eff) RequestSpotFleetResponse
```

<p>Creates a Spot Fleet request.</p> <p>You can submit a single request that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.</p> <p>By default, the Spot Fleet requests Spot Instances in the Spot pool where the price per unit is the lowest. Each launch specification can include its own instance weighting that reflects the value of the instance type to your application workload.</p> <p>Alternatively, you can specify that the Spot Fleet distribute the target capacity across the Spot pools included in its launch specifications. By ensuring that the Spot Instances in your Spot Fleet are in different Spot pools, you can improve the availability of your fleet.</p> <p>You can specify tags for the Spot Instances. You cannot tag other resource types in a Spot Fleet request; only the <code>instance</code> resource type is supported.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html">Spot Fleet Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `requestSpotInstances`

``` purescript
requestSpotInstances :: forall eff. Service -> RequestSpotInstancesRequest -> Aff (exception :: EXCEPTION | eff) RequestSpotInstancesResult
```

<p>Creates a Spot Instance request. Spot Instances are instances that Amazon EC2 launches when the maximum price that you specify exceeds the current Spot price. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html">Spot Instance Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `resetFpgaImageAttribute`

``` purescript
resetFpgaImageAttribute :: forall eff. Service -> ResetFpgaImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) ResetFpgaImageAttributeResult
```

<p>Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value. You can only reset the load permission attribute.</p>

#### `resetImageAttribute`

``` purescript
resetImageAttribute :: forall eff. Service -> ResetImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Resets an attribute of an AMI to its default value.</p> <note> <p>The productCodes attribute can't be reset.</p> </note>

#### `resetInstanceAttribute`

``` purescript
resetInstanceAttribute :: forall eff. Service -> ResetInstanceAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Resets an attribute of an instance to its default value. To reset the <code>kernel</code> or <code>ramdisk</code>, the instance must be in a stopped state. To reset the <code>sourceDestCheck</code>, the instance can be either running or stopped.</p> <p>The <code>sourceDestCheck</code> attribute controls whether source/destination checking is enabled. The default value is <code>true</code>, which means checking is enabled. This value must be <code>false</code> for a NAT instance to perform NAT. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html">NAT Instances</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

#### `resetNetworkInterfaceAttribute`

``` purescript
resetNetworkInterfaceAttribute :: forall eff. Service -> ResetNetworkInterfaceAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Resets a network interface attribute. You can specify only one attribute at a time.</p>

#### `resetSnapshotAttribute`

``` purescript
resetSnapshotAttribute :: forall eff. Service -> ResetSnapshotAttributeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Resets permission settings for the specified snapshot.</p> <p>For more information on modifying snapshot permissions, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html">Sharing Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `restoreAddressToClassic`

``` purescript
restoreAddressToClassic :: forall eff. Service -> RestoreAddressToClassicRequest -> Aff (exception :: EXCEPTION | eff) RestoreAddressToClassicResult
```

<p>Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform. You cannot move an Elastic IP address that was originally allocated for use in EC2-VPC. The Elastic IP address must not be associated with an instance or network interface.</p>

#### `revokeSecurityGroupEgress`

``` purescript
revokeSecurityGroupEgress :: forall eff. Service -> RevokeSecurityGroupEgressRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>[EC2-VPC only] Removes one or more egress rules from a security group for EC2-VPC. This action doesn't apply to security groups for use in EC2-Classic. To remove a rule, the values that you specify (for example, ports) must match the existing rule's values exactly.</p> <p>Each rule consists of the protocol and the IPv4 or IPv6 CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not have to specify the description to revoke the rule.</p> <p>Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.</p>

#### `revokeSecurityGroupIngress`

``` purescript
revokeSecurityGroupIngress :: forall eff. Service -> RevokeSecurityGroupIngressRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes one or more ingress rules from a security group. To remove a rule, the values that you specify (for example, ports) must match the existing rule's values exactly.</p> <note> <p>[EC2-Classic security groups only] If the values you specify do not match the existing rule's values, no error is returned. Use <a>DescribeSecurityGroups</a> to verify that the rule has been removed.</p> </note> <p>Each rule consists of the protocol and the CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not have to specify the description to revoke the rule.</p> <p>Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.</p>

#### `runInstances`

``` purescript
runInstances :: forall eff. Service -> RunInstancesRequest -> Aff (exception :: EXCEPTION | eff) Reservation
```

<p>Launches the specified number of instances using an AMI for which you have permissions. </p> <p>You can specify a number of options, or leave the default options. The following rules apply:</p> <ul> <li> <p>[EC2-VPC] If you don't specify a subnet ID, we choose a default subnet from your default VPC for you. If you don't have a default VPC, you must specify a subnet ID in the request.</p> </li> <li> <p>[EC2-Classic] If don't specify an Availability Zone, we choose one for you.</p> </li> <li> <p>Some instance types must be launched into a VPC. If you do not have a default VPC, or if you do not specify a subnet ID, the request fails. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#vpc-only-instance-types">Instance Types Available Only in a VPC</a>.</p> </li> <li> <p>[EC2-VPC] All instances have a network interface with a primary private IPv4 address. If you don't specify this address, we choose one from the IPv4 range of your subnet.</p> </li> <li> <p>Not all instance types support IPv6 addresses. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Types</a>.</p> </li> <li> <p>If you don't specify a security group ID, we use the default security group. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Security Groups</a>.</p> </li> <li> <p>If any of the AMIs have a product code attached for which the user has not subscribed, the request fails.</p> </li> </ul> <p>You can create a <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html">launch template</a>, which is a resource that contains the parameters to launch an instance. When you launch an instance using <a>RunInstances</a>, you can specify the launch template instead of specifying the launch parameters.</p> <p>To ensure faster instance launches, break up large requests into smaller batches. For example, create five separate launch requests for 100 instances each instead of one launch request for 500 instances.</p> <p>An instance is ready for you to use when it's in the <code>running</code> state. You can check the state of your instance using <a>DescribeInstances</a>. You can tag instances and EBS volumes during launch, after launch, or both. For more information, see <a>CreateTags</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Amazon EC2 Resources</a>.</p> <p>Linux instances have access to the public key of the key pair at boot. You can use this key to provide secure access to the instance. Amazon EC2 public images use this feature to provide secure access without passwords. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>For troubleshooting, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html">What To Do If An Instance Immediately Terminates</a>, and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html">Troubleshooting Connecting to Your Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `runScheduledInstances`

``` purescript
runScheduledInstances :: forall eff. Service -> RunScheduledInstancesRequest -> Aff (exception :: EXCEPTION | eff) RunScheduledInstancesResult
```

<p>Launches the specified Scheduled Instances.</p> <p>Before you can launch a Scheduled Instance, you must purchase it and obtain an identifier using <a>PurchaseScheduledInstances</a>.</p> <p>You must launch a Scheduled Instance during its scheduled time period. You can't stop or reboot a Scheduled Instance, but you can terminate it as needed. If you terminate a Scheduled Instance before the current scheduled time period ends, you can launch it again after a few minutes. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html">Scheduled Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `startInstances`

``` purescript
startInstances :: forall eff. Service -> StartInstancesRequest -> Aff (exception :: EXCEPTION | eff) StartInstancesResult
```

<p>Starts an Amazon EBS-backed instance that you've previously stopped.</p> <p>Instances that use Amazon EBS volumes as their root devices can be quickly stopped and started. When an instance is stopped, the compute resources are released and you are not billed for instance usage. However, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. You can restart your instance at any time. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.</p> <p>Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.</p> <p>Performing this operation on an instance that uses an instance store as its root device returns an error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html">Stopping Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `stopInstances`

``` purescript
stopInstances :: forall eff. Service -> StopInstancesRequest -> Aff (exception :: EXCEPTION | eff) StopInstancesResult
```

<p>Stops an Amazon EBS-backed instance.</p> <p>We don't charge usage for a stopped instance, or data transfer fees; however, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.</p> <p>You can't start or stop Spot Instances, and you can't stop instance store-backed instances.</p> <p>When you stop an instance, we shut it down. You can restart your instance at any time. Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.</p> <p>Stopping an instance is different to rebooting or terminating it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, the root device and any other devices attached during the instance launch are automatically deleted. For more information about the differences between rebooting, stopping, and terminating instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html">Instance Lifecycle</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>When you stop an instance, we attempt to shut it down forcibly after a short while. If your instance appears stuck in the stopping state after a period of time, there may be an issue with the underlying host computer. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html">Troubleshooting Stopping Your Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `terminateInstances`

``` purescript
terminateInstances :: forall eff. Service -> TerminateInstancesRequest -> Aff (exception :: EXCEPTION | eff) TerminateInstancesResult
```

<p>Shuts down one or more instances. This operation is idempotent; if you terminate an instance more than once, each call succeeds. </p> <p>If you specify multiple instances and the request fails (for example, because of a single incorrect instance ID), none of the instances are terminated.</p> <p>Terminated instances remain visible after termination (for approximately one hour).</p> <p>By default, Amazon EC2 deletes all EBS volumes that were attached when the instance launched. Volumes attached after instance launch continue running.</p> <p>You can stop, start, and terminate EBS-backed instances. You can only terminate instance store-backed instances. What happens to an instance differs if you stop it or terminate it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, any attached EBS volumes with the <code>DeleteOnTermination</code> block device mapping parameter set to <code>true</code> are automatically deleted. For more information about the differences between stopping and terminating instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html">Instance Lifecycle</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>For more information about troubleshooting, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html">Troubleshooting Terminating Your Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `unassignIpv6Addresses`

``` purescript
unassignIpv6Addresses :: forall eff. Service -> UnassignIpv6AddressesRequest -> Aff (exception :: EXCEPTION | eff) UnassignIpv6AddressesResult
```

<p>Unassigns one or more IPv6 addresses from a network interface.</p>

#### `unassignPrivateIpAddresses`

``` purescript
unassignPrivateIpAddresses :: forall eff. Service -> UnassignPrivateIpAddressesRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Unassigns one or more secondary private IP addresses from a network interface.</p>

#### `unmonitorInstances`

``` purescript
unmonitorInstances :: forall eff. Service -> UnmonitorInstancesRequest -> Aff (exception :: EXCEPTION | eff) UnmonitorInstancesResult
```

<p>Disables detailed monitoring for a running instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html">Monitoring Your Instances and Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

#### `updateSecurityGroupRuleDescriptionsEgress`

``` purescript
updateSecurityGroupRuleDescriptionsEgress :: forall eff. Service -> UpdateSecurityGroupRuleDescriptionsEgressRequest -> Aff (exception :: EXCEPTION | eff) UpdateSecurityGroupRuleDescriptionsEgressResult
```

<p>[EC2-VPC only] Updates the description of an egress (outbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously.</p> <p>You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.</p>

#### `updateSecurityGroupRuleDescriptionsIngress`

``` purescript
updateSecurityGroupRuleDescriptionsIngress :: forall eff. Service -> UpdateSecurityGroupRuleDescriptionsIngressRequest -> Aff (exception :: EXCEPTION | eff) UpdateSecurityGroupRuleDescriptionsIngressResult
```

<p>Updates the description of an ingress (inbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously.</p> <p>You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.</p>


