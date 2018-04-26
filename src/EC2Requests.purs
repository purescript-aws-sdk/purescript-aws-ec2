
module AWS.EC2.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.EC2 as EC2
import AWS.EC2.Types as EC2Types


-- | <p>Accepts the Convertible Reserved Instance exchange quote described in the <a>GetReservedInstancesExchangeQuote</a> call.</p>
acceptReservedInstancesExchangeQuote :: forall eff. EC2.Service -> EC2Types.AcceptReservedInstancesExchangeQuoteRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AcceptReservedInstancesExchangeQuoteResult
acceptReservedInstancesExchangeQuote (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "acceptReservedInstancesExchangeQuote"


-- | <p>Accepts one or more interface VPC endpoint connection requests to your VPC endpoint service.</p>
acceptVpcEndpointConnections :: forall eff. EC2.Service -> EC2Types.AcceptVpcEndpointConnectionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AcceptVpcEndpointConnectionsResult
acceptVpcEndpointConnections (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "acceptVpcEndpointConnections"


-- | <p>Accept a VPC peering connection request. To accept a request, the VPC peering connection must be in the <code>pending-acceptance</code> state, and you must be the owner of the peer VPC. Use <a>DescribeVpcPeeringConnections</a> to view your outstanding VPC peering connection requests.</p> <p>For an inter-region VPC peering connection request, you must accept the VPC peering connection in the region of the accepter VPC.</p>
acceptVpcPeeringConnection :: forall eff. EC2.Service -> EC2Types.AcceptVpcPeeringConnectionRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AcceptVpcPeeringConnectionResult
acceptVpcPeeringConnection (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "acceptVpcPeeringConnection"


-- | <p>Allocates an Elastic IP address.</p> <p>An Elastic IP address is for use either in the EC2-Classic platform or in a VPC. By default, you can allocate 5 Elastic IP addresses for EC2-Classic per region and 5 Elastic IP addresses for EC2-VPC per region.</p> <p>If you release an Elastic IP address for use in a VPC, you might be able to recover it. To recover an Elastic IP address that you released, specify it in the <code>Address</code> parameter. Note that you cannot recover an Elastic IP address that you released after it is allocated to another AWS account.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
allocateAddress :: forall eff. EC2.Service -> EC2Types.AllocateAddressRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AllocateAddressResult
allocateAddress (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "allocateAddress"


-- | <p>Allocates a Dedicated Host to your account. At minimum you need to specify the instance size type, Availability Zone, and quantity of hosts you want to allocate.</p>
allocateHosts :: forall eff. EC2.Service -> EC2Types.AllocateHostsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AllocateHostsResult
allocateHosts (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "allocateHosts"


-- | <p>Assigns one or more IPv6 addresses to the specified network interface. You can specify one or more specific IPv6 addresses, or you can specify the number of IPv6 addresses to be automatically assigned from within the subnet's IPv6 CIDR block range. You can assign as many IPv6 addresses to a network interface as you can assign private IPv4 addresses, and the limit varies per instance type. For information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI">IP Addresses Per Network Interface Per Instance Type</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
assignIpv6Addresses :: forall eff. EC2.Service -> EC2Types.AssignIpv6AddressesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AssignIpv6AddressesResult
assignIpv6Addresses (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "assignIpv6Addresses"


-- | <p>Assigns one or more secondary private IP addresses to the specified network interface. You can specify one or more specific secondary IP addresses, or you can specify the number of secondary IP addresses to be automatically assigned within the subnet's CIDR block range. The number of secondary IP addresses that you can assign to an instance varies by instance type. For information about instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Types</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. For more information about Elastic IP addresses, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>AssignPrivateIpAddresses is available only in EC2-VPC.</p>
assignPrivateIpAddresses :: forall eff. EC2.Service -> EC2Types.AssignPrivateIpAddressesRequest -> Aff (exception :: EXCEPTION | eff) Unit
assignPrivateIpAddresses (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "assignPrivateIpAddresses"


-- | <p>Associates an Elastic IP address with an instance or a network interface.</p> <p>An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>[EC2-Classic, VPC in an EC2-VPC-only account] If the Elastic IP address is already associated with a different instance, it is disassociated from that instance and associated with the specified instance. If you associate an Elastic IP address with an instance that has an existing Elastic IP address, the existing address is disassociated from the instance, but remains allocated to your account.</p> <p>[VPC in an EC2-Classic account] If you don't specify a private IP address, the Elastic IP address is associated with the primary IP address. If the Elastic IP address is already associated with a different instance or a network interface, you get an error unless you allow reassociation. You cannot associate an Elastic IP address with an instance or network interface that has an existing Elastic IP address.</p> <important> <p>This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error, and you may be charged for each time the Elastic IP address is remapped to the same instance. For more information, see the <i>Elastic IP Addresses</i> section of <a href="http://aws.amazon.com/ec2/pricing/">Amazon EC2 Pricing</a>.</p> </important>
associateAddress :: forall eff. EC2.Service -> EC2Types.AssociateAddressRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AssociateAddressResult
associateAddress (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateAddress"


-- | <p>Associates a set of DHCP options (that you've previously created) with the specified VPC, or associates no DHCP options with the VPC.</p> <p>After you associate the options with the VPC, any existing instances and all new instances that you launch in that VPC use the options. You don't need to restart or relaunch the instances. They automatically pick up the changes within a few hours, depending on how frequently the instance renews its DHCP lease. You can explicitly renew the lease using the operating system on the instance.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
associateDhcpOptions :: forall eff. EC2.Service -> EC2Types.AssociateDhcpOptionsRequest -> Aff (exception :: EXCEPTION | eff) Unit
associateDhcpOptions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateDhcpOptions"


-- | <p>Associates an IAM instance profile with a running or stopped instance. You cannot associate more than one IAM instance profile with an instance.</p>
associateIamInstanceProfile :: forall eff. EC2.Service -> EC2Types.AssociateIamInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AssociateIamInstanceProfileResult
associateIamInstanceProfile (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateIamInstanceProfile"


-- | <p>Associates a subnet with a route table. The subnet and route table must be in the same VPC. This association causes traffic originating from the subnet to be routed according to the routes in the route table. The action returns an association ID, which you need in order to disassociate the route table from the subnet later. A route table can be associated with multiple subnets.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
associateRouteTable :: forall eff. EC2.Service -> EC2Types.AssociateRouteTableRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AssociateRouteTableResult
associateRouteTable (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateRouteTable"


-- | <p>Associates a CIDR block with your subnet. You can only associate a single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a prefix length of /64.</p>
associateSubnetCidrBlock :: forall eff. EC2.Service -> EC2Types.AssociateSubnetCidrBlockRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AssociateSubnetCidrBlockResult
associateSubnetCidrBlock (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateSubnetCidrBlock"


-- | <p>Associates a CIDR block with your VPC. You can associate a secondary IPv4 CIDR block, or you can associate an Amazon-provided IPv6 CIDR block. The IPv6 CIDR block size is fixed at /56.</p> <p>For more information about associating CIDR blocks with your VPC and applicable restrictions, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html#VPC_Sizing">VPC and Subnet Sizing</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
associateVpcCidrBlock :: forall eff. EC2.Service -> EC2Types.AssociateVpcCidrBlockRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AssociateVpcCidrBlockResult
associateVpcCidrBlock (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateVpcCidrBlock"


-- | <p>Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more of the VPC's security groups. You cannot link an EC2-Classic instance to more than one VPC at a time. You can only link an instance that's in the <code>running</code> state. An instance is automatically unlinked from a VPC when it's stopped - you can link it to the VPC again when you restart it.</p> <p>After you've linked an instance, you cannot change the VPC security groups that are associated with it. To change the security groups, you must first unlink the instance, and then link it again.</p> <p>Linking your instance to a VPC is sometimes referred to as <i>attaching</i> your instance.</p>
attachClassicLinkVpc :: forall eff. EC2.Service -> EC2Types.AttachClassicLinkVpcRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AttachClassicLinkVpcResult
attachClassicLinkVpc (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachClassicLinkVpc"


-- | <p>Attaches an Internet gateway to a VPC, enabling connectivity between the Internet and the VPC. For more information about your VPC and Internet gateway, see the <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/">Amazon Virtual Private Cloud User Guide</a>.</p>
attachInternetGateway :: forall eff. EC2.Service -> EC2Types.AttachInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) Unit
attachInternetGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachInternetGateway"


-- | <p>Attaches a network interface to an instance.</p>
attachNetworkInterface :: forall eff. EC2.Service -> EC2Types.AttachNetworkInterfaceRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AttachNetworkInterfaceResult
attachNetworkInterface (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachNetworkInterface"


-- | <p>Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name.</p> <p>Encrypted EBS volumes may only be attached to instances that support Amazon EBS encryption. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>For a list of supported device names, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html">Attaching an EBS Volume to an Instance</a>. Any device names that aren't reserved for instance store volumes can be used for EBS volumes. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html">Amazon EC2 Instance Store</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>If a volume has an AWS Marketplace product code:</p> <ul> <li> <p>The volume can be attached only to a stopped instance.</p> </li> <li> <p>AWS Marketplace product codes are copied from the volume to the instance.</p> </li> <li> <p>You must be subscribed to the product.</p> </li> <li> <p>The instance type and operating system of the instance must support the product. For example, you can't detach a volume from a Windows instance and attach it to a Linux instance.</p> </li> </ul> <p>For an overview of the AWS Marketplace, see <a href="https://aws.amazon.com/marketplace/help/200900000">Introducing AWS Marketplace</a>.</p> <p>For more information about EBS volumes, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html">Attaching Amazon EBS Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
attachVolume :: forall eff. EC2.Service -> EC2Types.AttachVolumeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.VolumeAttachment
attachVolume (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachVolume"


-- | <p>Attaches a virtual private gateway to a VPC. You can attach one virtual private gateway to one VPC at a time.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
attachVpnGateway :: forall eff. EC2.Service -> EC2Types.AttachVpnGatewayRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.AttachVpnGatewayResult
attachVpnGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachVpnGateway"


-- | <p>[EC2-VPC only] Adds one or more egress rules to a security group for use with a VPC. Specifically, this action permits instances to send traffic to one or more destination IPv4 or IPv6 CIDR address ranges, or to one or more destination security groups for the same VPC. This action doesn't apply to security groups for use in EC2-Classic. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>. For more information about security group limits, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a>.</p> <p>Each rule consists of the protocol (for example, TCP), plus either a CIDR range or a source group. For the TCP and UDP protocols, you must also specify the destination port or port range. For the ICMP protocol, you must also specify the ICMP type and code. You can use -1 for the type or code to mean all types or all codes. You can optionally specify a description for the rule.</p> <p>Rule changes are propagated to affected instances as quickly as possible. However, a small delay might occur.</p>
authorizeSecurityGroupEgress :: forall eff. EC2.Service -> EC2Types.AuthorizeSecurityGroupEgressRequest -> Aff (exception :: EXCEPTION | eff) Unit
authorizeSecurityGroupEgress (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "authorizeSecurityGroupEgress"


-- | <p>Adds one or more ingress rules to a security group.</p> <p>Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.</p> <p>[EC2-Classic] This action gives one or more IPv4 CIDR address ranges permission to access a security group in your account, or gives one or more security groups (called the <i>source groups</i>) permission to access a security group for your account. A source group can be for your own AWS account, or another. You can have up to 100 rules per group.</p> <p>[EC2-VPC] This action gives one or more IPv4 or IPv6 CIDR address ranges permission to access a security group in your VPC, or gives one or more other security groups (called the <i>source groups</i>) permission to access a security group for your VPC. The security groups must all be for the same VPC or a peer VPC in a VPC peering connection. For more information about VPC security group limits, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a>.</p> <p>You can optionally specify a description for the security group rule.</p>
authorizeSecurityGroupIngress :: forall eff. EC2.Service -> EC2Types.AuthorizeSecurityGroupIngressRequest -> Aff (exception :: EXCEPTION | eff) Unit
authorizeSecurityGroupIngress (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "authorizeSecurityGroupIngress"


-- | <p>Bundles an Amazon instance store-backed Windows instance.</p> <p>During bundling, only the root device volume (C:\) is bundled. Data on other instance store volumes is not preserved.</p> <note> <p>This action is not applicable for Linux/Unix instances or Windows instances that are backed by Amazon EBS.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/Creating_InstanceStoreBacked_WinAMI.html">Creating an Instance Store-Backed Windows AMI</a>.</p>
bundleInstance :: forall eff. EC2.Service -> EC2Types.BundleInstanceRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.BundleInstanceResult
bundleInstance (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "bundleInstance"


-- | <p>Cancels a bundling operation for an instance store-backed Windows instance.</p>
cancelBundleTask :: forall eff. EC2.Service -> EC2Types.CancelBundleTaskRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CancelBundleTaskResult
cancelBundleTask (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelBundleTask"


-- | <p>Cancels an active conversion task. The task can be the import of an instance or volume. The action removes all artifacts of the conversion, including a partially uploaded volume or instance. If the conversion is complete or is in the process of transferring the final disk image, the command fails and returns an exception.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html">Importing a Virtual Machine Using the Amazon EC2 CLI</a>.</p>
cancelConversionTask :: forall eff. EC2.Service -> EC2Types.CancelConversionRequest -> Aff (exception :: EXCEPTION | eff) Unit
cancelConversionTask (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelConversionTask"


-- | <p>Cancels an active export task. The request removes all artifacts of the export, including any partially-created Amazon S3 objects. If the export task is complete or is in the process of transferring the final disk image, the command fails and returns an error.</p>
cancelExportTask :: forall eff. EC2.Service -> EC2Types.CancelExportTaskRequest -> Aff (exception :: EXCEPTION | eff) Unit
cancelExportTask (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelExportTask"


-- | <p>Cancels an in-process import virtual machine or import snapshot task.</p>
cancelImportTask :: forall eff. EC2.Service -> EC2Types.CancelImportTaskRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CancelImportTaskResult
cancelImportTask (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelImportTask"


-- | <p>Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
cancelReservedInstancesListing :: forall eff. EC2.Service -> EC2Types.CancelReservedInstancesListingRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CancelReservedInstancesListingResult
cancelReservedInstancesListing (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelReservedInstancesListing"


-- | <p>Cancels the specified Spot Fleet requests.</p> <p>After you cancel a Spot Fleet request, the Spot Fleet launches no new Spot Instances. You must specify whether the Spot Fleet should also terminate its Spot Instances. If you terminate the instances, the Spot Fleet request enters the <code>cancelled_terminating</code> state. Otherwise, the Spot Fleet request enters the <code>cancelled_running</code> state and the instances continue to run until they are interrupted or you terminate them manually.</p>
cancelSpotFleetRequests :: forall eff. EC2.Service -> EC2Types.CancelSpotFleetRequestsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CancelSpotFleetRequestsResponse
cancelSpotFleetRequests (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelSpotFleetRequests"


-- | <p>Cancels one or more Spot Instance requests. Spot Instances are instances that Amazon EC2 starts on your behalf when the maximum price that you specify exceeds the current Spot price. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html">Spot Instance Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <important> <p>Canceling a Spot Instance request does not terminate running Spot Instances associated with the request.</p> </important>
cancelSpotInstanceRequests :: forall eff. EC2.Service -> EC2Types.CancelSpotInstanceRequestsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CancelSpotInstanceRequestsResult
cancelSpotInstanceRequests (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelSpotInstanceRequests"


-- | <p>Determines whether a product code is associated with an instance. This action can only be used by the owner of the product code. It is useful when a product code owner must verify whether another user's instance is eligible for support.</p>
confirmProductInstance :: forall eff. EC2.Service -> EC2Types.ConfirmProductInstanceRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ConfirmProductInstanceResult
confirmProductInstance (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "confirmProductInstance"


-- | <p>Copies the specified Amazon FPGA Image (AFI) to the current region.</p>
copyFpgaImage :: forall eff. EC2.Service -> EC2Types.CopyFpgaImageRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CopyFpgaImageResult
copyFpgaImage (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "copyFpgaImage"


-- | <p>Initiates the copy of an AMI from the specified source region to the current region. You specify the destination region by using its endpoint when making the request.</p> <p>For more information about the prerequisites and limits when copying an AMI, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html">Copying an AMI</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
copyImage :: forall eff. EC2.Service -> EC2Types.CopyImageRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CopyImageResult
copyImage (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "copyImage"


-- | <p>Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3. You can copy the snapshot within the same region or from one region to another. You can use the snapshot to create EBS volumes or Amazon Machine Images (AMIs). The snapshot is copied to the regional endpoint that you send the HTTP request to.</p> <p>Copies of encrypted EBS snapshots remain encrypted. Copies of unencrypted snapshots remain unencrypted, unless the <code>Encrypted</code> flag is specified during the snapshot copy operation. By default, encrypted snapshot copies use the default AWS Key Management Service (AWS KMS) customer master key (CMK); however, you can specify a non-default CMK with the <code>KmsKeyId</code> parameter. </p> <note> <p>To copy an encrypted snapshot that has been shared from another account, you must have permissions for the CMK used to encrypt the snapshot.</p> </note> <note> <p>Snapshots created by the CopySnapshot action have an arbitrary volume ID that should not be used for any purpose.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html">Copying an Amazon EBS Snapshot</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
copySnapshot :: forall eff. EC2.Service -> EC2Types.CopySnapshotRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CopySnapshotResult
copySnapshot (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "copySnapshot"


-- | <p>Provides information to AWS about your VPN customer gateway device. The customer gateway is the appliance at your end of the VPN connection. (The device on the AWS side of the VPN connection is the virtual private gateway.) You must provide the Internet-routable IP address of the customer gateway's external interface. The IP address must be static and may be behind a device performing network address translation (NAT).</p> <p>For devices that use Border Gateway Protocol (BGP), you can also provide the device's BGP Autonomous System Number (ASN). You can use an existing ASN assigned to your network. If you don't have an ASN already, you can use a private ASN (in the 64512 - 65534 range).</p> <note> <p>Amazon EC2 supports all 2-byte ASN numbers in the range of 1 - 65534, with the exception of 7224, which is reserved in the <code>us-east-1</code> region, and 9059, which is reserved in the <code>eu-west-1</code> region.</p> </note> <p>For more information about VPN customer gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <important> <p>You cannot create more than one customer gateway with the same VPN type, IP address, and BGP ASN parameter values. If you run an identical request more than one time, the first request creates the customer gateway, and subsequent requests return information about the existing customer gateway. The subsequent requests do not create new customer gateway resources.</p> </important>
createCustomerGateway :: forall eff. EC2.Service -> EC2Types.CreateCustomerGatewayRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateCustomerGatewayResult
createCustomerGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createCustomerGateway"


-- | <p>Creates a default subnet with a size <code>/20</code> IPv4 CIDR block in the specified Availability Zone in your default VPC. You can have only one default subnet per Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html#create-default-subnet">Creating a Default Subnet</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createDefaultSubnet :: forall eff. EC2.Service -> EC2Types.CreateDefaultSubnetRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateDefaultSubnetResult
createDefaultSubnet (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDefaultSubnet"


-- | <p>Creates a default VPC with a size <code>/16</code> IPv4 CIDR block and a default subnet in each Availability Zone. For more information about the components of a default VPC, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html">Default VPC and Default Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>. You cannot specify the components of the default VPC yourself.</p> <p>You can create a default VPC if you deleted your previous default VPC. You cannot have more than one default VPC per region. </p> <p>If your account supports EC2-Classic, you cannot use this action to create a default VPC in a region that supports EC2-Classic. If you want a default VPC in a region that supports EC2-Classic, see "I really want a default VPC for my existing EC2 account. Is that possible?" in the <a href="http://aws.amazon.com/vpc/faqs/#Default_VPCs">Default VPCs FAQ</a>.</p>
createDefaultVpc :: forall eff. EC2.Service -> EC2Types.CreateDefaultVpcRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateDefaultVpcResult
createDefaultVpc (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDefaultVpc"


-- | <p>Creates a set of DHCP options for your VPC. After creating the set, you must associate it with the VPC, causing all existing and new instances that you launch in the VPC to use this set of DHCP options. The following are the individual DHCP options you can specify. For more information about the options, see <a href="http://www.ietf.org/rfc/rfc2132.txt">RFC 2132</a>.</p> <ul> <li> <p> <code>domain-name-servers</code> - The IP addresses of up to four domain name servers, or AmazonProvidedDNS. The default DHCP option set specifies AmazonProvidedDNS. If specifying more than one domain name server, specify the IP addresses in a single parameter, separated by commas. If you want your instance to receive a custom DNS hostname as specified in <code>domain-name</code>, you must set <code>domain-name-servers</code> to a custom DNS server.</p> </li> <li> <p> <code>domain-name</code> - If you're using AmazonProvidedDNS in <code>us-east-1</code>, specify <code>ec2.internal</code>. If you're using AmazonProvidedDNS in another region, specify <code>region.compute.internal</code> (for example, <code>ap-northeast-1.compute.internal</code>). Otherwise, specify a domain name (for example, <code>MyCompany.com</code>). This value is used to complete unqualified DNS hostnames. <b>Important</b>: Some Linux operating systems accept multiple domain names separated by spaces. However, Windows and other Linux operating systems treat the value as a single domain, which results in unexpected behavior. If your DHCP options set is associated with a VPC that has instances with multiple operating systems, specify only one domain name.</p> </li> <li> <p> <code>ntp-servers</code> - The IP addresses of up to four Network Time Protocol (NTP) servers.</p> </li> <li> <p> <code>netbios-name-servers</code> - The IP addresses of up to four NetBIOS name servers.</p> </li> <li> <p> <code>netbios-node-type</code> - The NetBIOS node type (1, 2, 4, or 8). We recommend that you specify 2 (broadcast and multicast are not currently supported). For more information about these node types, see <a href="http://www.ietf.org/rfc/rfc2132.txt">RFC 2132</a>.</p> </li> </ul> <p>Your VPC automatically starts out with a set of DHCP options that includes only a DNS server that we provide (AmazonProvidedDNS). If you create a set of options, and if your VPC has an Internet gateway, make sure to set the <code>domain-name-servers</code> option either to <code>AmazonProvidedDNS</code> or to a domain name server of your choice. For more information about DHCP options, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createDhcpOptions :: forall eff. EC2.Service -> EC2Types.CreateDhcpOptionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateDhcpOptionsResult
createDhcpOptions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDhcpOptions"


-- | <p>[IPv6 only] Creates an egress-only Internet gateway for your VPC. An egress-only Internet gateway is used to enable outbound communication over IPv6 from instances in your VPC to the Internet, and prevents hosts outside of your VPC from initiating an IPv6 connection with your instance.</p>
createEgressOnlyInternetGateway :: forall eff. EC2.Service -> EC2Types.CreateEgressOnlyInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateEgressOnlyInternetGatewayResult
createEgressOnlyInternetGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createEgressOnlyInternetGateway"


-- | <p>Creates one or more flow logs to capture IP traffic for a specific network interface, subnet, or VPC. Flow logs are delivered to a specified log group in Amazon CloudWatch Logs. If you specify a VPC or subnet in the request, a log stream is created in CloudWatch Logs for each network interface in the subnet or VPC. Log streams can include information about accepted and rejected traffic to a network interface. You can view the data in your log streams using Amazon CloudWatch Logs.</p> <p>In your request, you must also specify an IAM role that has permission to publish logs to CloudWatch Logs.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/flow-logs.html">VPC Flow Logs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createFlowLogs :: forall eff. EC2.Service -> EC2Types.CreateFlowLogsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateFlowLogsResult
createFlowLogs (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createFlowLogs"


-- | <p>Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP).</p> <p>The create operation is asynchronous. To verify that the AFI is ready for use, check the output logs.</p> <p>An AFI contains the FPGA bitstream that is ready to download to an FPGA. You can securely deploy an AFI on one or more FPGA-accelerated instances. For more information, see the <a href="https://github.com/aws/aws-fpga/">AWS FPGA Hardware Development Kit</a>.</p>
createFpgaImage :: forall eff. EC2.Service -> EC2Types.CreateFpgaImageRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateFpgaImageResult
createFpgaImage (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createFpgaImage"


-- | <p>Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped.</p> <p>If you customized your instance with instance store volumes or EBS volumes in addition to the root device volume, the new AMI contains block device mapping information for those volumes. When you launch an instance from this new AMI, the instance automatically launches with those additional volumes.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html">Creating Amazon EBS-Backed Linux AMIs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
createImage :: forall eff. EC2.Service -> EC2Types.CreateImageRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateImageResult
createImage (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createImage"


-- | <p>Exports a running or stopped instance to an S3 bucket.</p> <p>For information about the supported operating systems, image formats, and known limitations for the types of instances you can export, see <a href="http://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html">Exporting an Instance as a VM Using VM Import/Export</a> in the <i>VM Import/Export User Guide</i>.</p>
createInstanceExportTask :: forall eff. EC2.Service -> EC2Types.CreateInstanceExportTaskRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateInstanceExportTaskResult
createInstanceExportTask (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createInstanceExportTask"


-- | <p>Creates an Internet gateway for use with a VPC. After creating the Internet gateway, you attach it to a VPC using <a>AttachInternetGateway</a>.</p> <p>For more information about your VPC and Internet gateway, see the <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/">Amazon Virtual Private Cloud User Guide</a>.</p>
createInternetGateway :: forall eff. EC2.Service -> EC2Types.CreateInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateInternetGatewayResult
createInternetGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createInternetGateway"


-- | <p>Creates a 2048-bit RSA key pair with the specified name. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#1 private key. If a key with the specified name already exists, Amazon EC2 returns an error.</p> <p>You can have up to five thousand key pairs per region.</p> <p>The key pair returned to you is available only in the region in which you create it. If you prefer, you can create your own key pair using a third-party tool and upload it to any region using <a>ImportKeyPair</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
createKeyPair :: forall eff. EC2.Service -> EC2Types.CreateKeyPairRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.KeyPair
createKeyPair (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createKeyPair"


-- | <p>Creates a launch template. A launch template contains the parameters to launch an instance. When you launch an instance using <a>RunInstances</a>, you can specify a launch template instead of providing the launch parameters in the request.</p>
createLaunchTemplate :: forall eff. EC2.Service -> EC2Types.CreateLaunchTemplateRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateLaunchTemplateResult
createLaunchTemplate (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createLaunchTemplate"


-- | <p>Creates a new version for a launch template. You can specify an existing version of launch template from which to base the new version.</p> <p>Launch template versions are numbered in the order in which they are created. You cannot specify, change, or replace the numbering of launch template versions.</p>
createLaunchTemplateVersion :: forall eff. EC2.Service -> EC2Types.CreateLaunchTemplateVersionRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateLaunchTemplateVersionResult
createLaunchTemplateVersion (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createLaunchTemplateVersion"


-- | <p>Creates a NAT gateway in the specified subnet. A NAT gateway can be used to enable instances in a private subnet to connect to the Internet. This action creates a network interface in the specified subnet with a private IP address from the IP address range of the subnet. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html">NAT Gateways</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createNatGateway :: forall eff. EC2.Service -> EC2Types.CreateNatGatewayRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateNatGatewayResult
createNatGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createNatGateway"


-- | <p>Creates a network ACL in a VPC. Network ACLs provide an optional layer of security (in addition to security groups) for the instances in your VPC.</p> <p>For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createNetworkAcl :: forall eff. EC2.Service -> EC2Types.CreateNetworkAclRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateNetworkAclResult
createNetworkAcl (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createNetworkAcl"


-- | <p>Creates an entry (a rule) in a network ACL with the specified rule number. Each network ACL has a set of numbered ingress rules and a separate set of numbered egress rules. When determining whether a packet should be allowed in or out of a subnet associated with the ACL, we process the entries in the ACL according to the rule numbers, in ascending order. Each network ACL has a set of ingress rules and a separate set of egress rules.</p> <p>We recommend that you leave room between the rule numbers (for example, 100, 110, 120, ...), and not number them one right after the other (for example, 101, 102, 103, ...). This makes it easier to add a rule between existing ones without having to renumber the rules.</p> <p>After you add an entry, you can't modify it; you must either replace it, or create an entry and delete the old one.</p> <p>For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createNetworkAclEntry :: forall eff. EC2.Service -> EC2Types.CreateNetworkAclEntryRequest -> Aff (exception :: EXCEPTION | eff) Unit
createNetworkAclEntry (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createNetworkAclEntry"


-- | <p>Creates a network interface in the specified subnet.</p> <p>For more information about network interfaces, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html">Elastic Network Interfaces</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createNetworkInterface :: forall eff. EC2.Service -> EC2Types.CreateNetworkInterfaceRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateNetworkInterfaceResult
createNetworkInterface (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createNetworkInterface"


-- | <p>Grants an AWS authorized partner account permission to attach the specified network interface to an instance in their account.</p> <p>You can grant permission to a single AWS account only, and only one account at a time.</p>
createNetworkInterfacePermission :: forall eff. EC2.Service -> EC2Types.CreateNetworkInterfacePermissionRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateNetworkInterfacePermissionResult
createNetworkInterfacePermission (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createNetworkInterfacePermission"


-- | <p>Creates a placement group in which to launch instances. The strategy of the placement group determines how the instances are organized within the group. </p> <p>A <code>cluster</code> placement group is a logical grouping of instances within a single Availability Zone that benefit from low network latency, high network throughput. A <code>spread</code> placement group places instances on distinct hardware.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
createPlacementGroup :: forall eff. EC2.Service -> EC2Types.CreatePlacementGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
createPlacementGroup (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPlacementGroup"


-- | <p>Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace. You can submit one Standard Reserved Instance listing at a time. To get a list of your Standard Reserved Instances, you can use the <a>DescribeReservedInstances</a> operation.</p> <note> <p>Only Standard Reserved Instances with a capacity reservation can be sold in the Reserved Instance Marketplace. Convertible Reserved Instances and Standard Reserved Instances with a regional benefit cannot be sold.</p> </note> <p>The Reserved Instance Marketplace matches sellers who want to resell Standard Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.</p> <p>To sell your Standard Reserved Instances, you must first register as a seller in the Reserved Instance Marketplace. After completing the registration process, you can create a Reserved Instance Marketplace listing of some or all of your Standard Reserved Instances, and specify the upfront price to receive for them. Your Standard Reserved Instance listings then become available for purchase. To view the details of your Standard Reserved Instance listing, you can use the <a>DescribeReservedInstancesListings</a> operation.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
createReservedInstancesListing :: forall eff. EC2.Service -> EC2Types.CreateReservedInstancesListingRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateReservedInstancesListingResult
createReservedInstancesListing (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createReservedInstancesListing"


-- | <p>Creates a route in a route table within a VPC.</p> <p>You must specify one of the following targets: Internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, or egress-only Internet gateway.</p> <p>When determining how to route traffic, we use the route with the most specific match. For example, traffic is destined for the IPv4 address <code>192.0.2.3</code>, and the route table includes the following two IPv4 routes:</p> <ul> <li> <p> <code>192.0.2.0/24</code> (goes to some target A)</p> </li> <li> <p> <code>192.0.2.0/28</code> (goes to some target B)</p> </li> </ul> <p>Both routes apply to the traffic destined for <code>192.0.2.3</code>. However, the second route in the list covers a smaller number of IP addresses and is therefore more specific, so we use that route to determine where to target the traffic.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createRoute :: forall eff. EC2.Service -> EC2Types.CreateRouteRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateRouteResult
createRoute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createRoute"


-- | <p>Creates a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createRouteTable :: forall eff. EC2.Service -> EC2Types.CreateRouteTableRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateRouteTableResult
createRouteTable (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createRouteTable"


-- | <p>Creates a security group.</p> <p>A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Amazon EC2 Security Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i> and <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <important> <p>EC2-Classic: You can have up to 500 security groups.</p> <p>EC2-VPC: You can create up to 500 security groups per VPC.</p> </important> <p>When you create a security group, you specify a friendly name of your choice. You can have a security group for use in EC2-Classic with the same name as a security group for use in a VPC. However, you can't have two security groups for use in EC2-Classic with the same name or two security groups for use in a VPC with the same name.</p> <p>You have a default security group for use in EC2-Classic and a default security group for use in your VPC. If you don't specify a security group when you launch an instance, the instance is launched into the appropriate default security group. A default security group includes a default rule that grants instances unrestricted network access to each other.</p> <p>You can add or remove rules from your security groups using <a>AuthorizeSecurityGroupIngress</a>, <a>AuthorizeSecurityGroupEgress</a>, <a>RevokeSecurityGroupIngress</a>, and <a>RevokeSecurityGroupEgress</a>.</p>
createSecurityGroup :: forall eff. EC2.Service -> EC2Types.CreateSecurityGroupRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateSecurityGroupResult
createSecurityGroup (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSecurityGroup"


-- | <p>Creates a snapshot of an EBS volume and stores it in Amazon S3. You can use snapshots for backups, to make copies of EBS volumes, and to save data before shutting down an instance.</p> <p>When a snapshot is created, any AWS Marketplace product codes that are associated with the source volume are propagated to the snapshot.</p> <p>You can take a snapshot of an attached volume that is in use. However, snapshots only capture data that has been written to your EBS volume at the time the snapshot command is issued; this may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the volume long enough to take a snapshot, your snapshot should be complete. However, if you cannot pause all file writes to the volume, you should unmount the volume from within the instance, issue the snapshot command, and then remount the volume to ensure a consistent and complete snapshot. You may remount and use your volume while the snapshot status is <code>pending</code>.</p> <p>To create a snapshot for EBS volumes that serve as root devices, you should stop the instance before taking the snapshot.</p> <p>Snapshots that are taken from encrypted volumes are automatically encrypted. Volumes that are created from encrypted snapshots are also automatically encrypted. Your encrypted volumes and any associated snapshots always remain protected.</p> <p>You can tag your snapshots during creation. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Amazon EC2 Resources</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html">Amazon Elastic Block Store</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
createSnapshot :: forall eff. EC2.Service -> EC2Types.CreateSnapshotRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.Snapshot
createSnapshot (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSnapshot"


-- | <p>Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs. You can create one data feed per AWS account. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html">Spot Instance Data Feed</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
createSpotDatafeedSubscription :: forall eff. EC2.Service -> EC2Types.CreateSpotDatafeedSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateSpotDatafeedSubscriptionResult
createSpotDatafeedSubscription (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSpotDatafeedSubscription"


-- | <p>Creates a subnet in an existing VPC.</p> <p>When you create each subnet, you provide the VPC ID and the IPv4 CIDR block you want for the subnet. After you create a subnet, you can't change its CIDR block. The size of the subnet's IPv4 CIDR block can be the same as a VPC's IPv4 CIDR block, or a subset of a VPC's IPv4 CIDR block. If you create more than one subnet in a VPC, the subnets' CIDR blocks must not overlap. The smallest IPv4 subnet (and VPC) you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses).</p> <p>If you've associated an IPv6 CIDR block with your VPC, you can create a subnet with an IPv6 CIDR block that uses a /64 prefix length. </p> <important> <p>AWS reserves both the first four and the last IPv4 address in each subnet's CIDR block. They're not available for use.</p> </important> <p>If you add more than one subnet to a VPC, they're set up in a star topology with a logical router in the middle.</p> <p>If you launch an instance in a VPC using an Amazon EBS-backed AMI, the IP address doesn't change if you stop and restart the instance (unlike a similar instance launched outside a VPC, which gets a new IP address when restarted). It's therefore possible to have a subnet with no running instances (they're all stopped), but no remaining IP addresses available.</p> <p>For more information about subnets, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">Your VPC and Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createSubnet :: forall eff. EC2.Service -> EC2Types.CreateSubnetRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateSubnetResult
createSubnet (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSubnet"


-- | <p>Adds or overwrites one or more tags for the specified Amazon EC2 resource or resources. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique per resource.</p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. For more information about creating IAM policies that control users' access to resources based on tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html">Supported Resource-Level Permissions for Amazon EC2 API Actions</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
createTags :: forall eff. EC2.Service -> EC2Types.CreateTagsRequest -> Aff (exception :: EXCEPTION | eff) Unit
createTags (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTags"


-- | <p>Creates an EBS volume that can be attached to an instance in the same Availability Zone. The volume is created in the regional endpoint that you send the HTTP request to. For more information see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p> <p>You can create a new empty volume or restore a volume from an EBS snapshot. Any AWS Marketplace product codes from the snapshot are propagated to the volume.</p> <p>You can create encrypted volumes with the <code>Encrypted</code> parameter. Encrypted volumes may only be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are also automatically encrypted. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>You can tag your volumes during creation. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Amazon EC2 Resources</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html">Creating an Amazon EBS Volume</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
createVolume :: forall eff. EC2.Service -> EC2Types.CreateVolumeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.Volume
createVolume (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVolume"


-- | <p>Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses). To help you decide how big to make your VPC, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">Your VPC and Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>You can optionally request an Amazon-provided IPv6 CIDR block for the VPC. The IPv6 CIDR block uses a /56 prefix length, and is allocated from Amazon's pool of IPv6 addresses. You cannot choose the IPv6 range for your VPC.</p> <p>By default, each instance you launch in the VPC has the default DHCP options, which includes only a default DNS server that we provide (AmazonProvidedDNS). For more information about DHCP options, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>You can specify the instance tenancy value for the VPC when you create it. You can't change this value for the VPC after you create it. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
createVpc :: forall eff. EC2.Service -> EC2Types.CreateVpcRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateVpcResult
createVpc (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVpc"


-- | <p>Creates a VPC endpoint for a specified service. An endpoint enables you to create a private connection between your VPC and the service. The service may be provided by AWS, an AWS Marketplace partner, or another AWS account. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-endpoints.html">VPC Endpoints</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>A <code>gateway</code> endpoint serves as a target for a route in your route table for traffic destined for the AWS service. You can specify an endpoint policy to attach to the endpoint that will control access to the service from your VPC. You can also specify the VPC route tables that use the endpoint.</p> <p>An <code>interface</code> endpoint is a network interface in your subnet that serves as an endpoint for communicating with the specified service. You can specify the subnets in which to create an endpoint, and the security groups to associate with the endpoint network interface.</p> <p>Use <a>DescribeVpcEndpointServices</a> to get a list of supported services.</p>
createVpcEndpoint :: forall eff. EC2.Service -> EC2Types.CreateVpcEndpointRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateVpcEndpointResult
createVpcEndpoint (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVpcEndpoint"


-- | <p>Creates a connection notification for a specified VPC endpoint or VPC endpoint service. A connection notification notifies you of specific endpoint events. You must create an SNS topic to receive notifications. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Create a Topic</a> in the <i>Amazon Simple Notification Service Developer Guide</i>.</p> <p>You can create a connection notification for interface endpoints only.</p>
createVpcEndpointConnectionNotification :: forall eff. EC2.Service -> EC2Types.CreateVpcEndpointConnectionNotificationRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateVpcEndpointConnectionNotificationResult
createVpcEndpointConnectionNotification (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVpcEndpointConnectionNotification"


-- | <p>Creates a VPC endpoint service configuration to which service consumers (AWS accounts, IAM users, and IAM roles) can connect. Service consumers can create an interface VPC endpoint to connect to your service.</p> <p>To create an endpoint service configuration, you must first create a Network Load Balancer for your service. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/endpoint-service.html">VPC Endpoint Services</a> in the <i>Amazon Virtual Private Cloud User Guide</i>. </p>
createVpcEndpointServiceConfiguration :: forall eff. EC2.Service -> EC2Types.CreateVpcEndpointServiceConfigurationRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateVpcEndpointServiceConfigurationResult
createVpcEndpointServiceConfiguration (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVpcEndpointServiceConfiguration"


-- | <p>Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection. The accepter VPC can belong to another AWS account and can be in a different region to the requester VPC. The requester VPC and accepter VPC cannot have overlapping CIDR blocks.</p> <note> <p>Limitations and rules apply to a VPC peering connection. For more information, see the <a href="http://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/vpc-peering-basics.html#vpc-peering-limitations">limitations</a> section in the <i>VPC Peering Guide</i>.</p> </note> <p>The owner of the accepter VPC must accept the peering request to activate the peering connection. The VPC peering connection request expires after 7 days, after which it cannot be accepted or rejected.</p> <p>If you create a VPC peering connection request between VPCs with overlapping CIDR blocks, the VPC peering connection has a status of <code>failed</code>.</p>
createVpcPeeringConnection :: forall eff. EC2.Service -> EC2Types.CreateVpcPeeringConnectionRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateVpcPeeringConnectionResult
createVpcPeeringConnection (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVpcPeeringConnection"


-- | <p>Creates a VPN connection between an existing virtual private gateway and a VPN customer gateway. The only supported connection type is <code>ipsec.1</code>.</p> <p>The response includes information that you need to give to your network administrator to configure your customer gateway.</p> <important> <p>We strongly recommend that you use HTTPS when calling this operation because the response contains sensitive cryptographic information for configuring your customer gateway.</p> </important> <p>If you decide to shut down your VPN connection for any reason and later create a new VPN connection, you must reconfigure your customer gateway with the new information returned from this call.</p> <p>This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createVpnConnection :: forall eff. EC2.Service -> EC2Types.CreateVpnConnectionRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateVpnConnectionResult
createVpnConnection (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVpnConnection"


-- | <p>Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.</p> <p>For more information about VPN connections, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createVpnConnectionRoute :: forall eff. EC2.Service -> EC2Types.CreateVpnConnectionRouteRequest -> Aff (exception :: EXCEPTION | eff) Unit
createVpnConnectionRoute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVpnConnectionRoute"


-- | <p>Creates a virtual private gateway. A virtual private gateway is the endpoint on the VPC side of your VPN connection. You can create a virtual private gateway before creating the VPC itself.</p> <p>For more information about virtual private gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
createVpnGateway :: forall eff. EC2.Service -> EC2Types.CreateVpnGatewayRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.CreateVpnGatewayResult
createVpnGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createVpnGateway"


-- | <p>Deletes the specified customer gateway. You must delete the VPN connection before you can delete the customer gateway.</p>
deleteCustomerGateway :: forall eff. EC2.Service -> EC2Types.DeleteCustomerGatewayRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteCustomerGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteCustomerGateway"


-- | <p>Deletes the specified set of DHCP options. You must disassociate the set of DHCP options before you can delete it. You can disassociate the set of DHCP options by associating either a new set of options or the default set of options with the VPC.</p>
deleteDhcpOptions :: forall eff. EC2.Service -> EC2Types.DeleteDhcpOptionsRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteDhcpOptions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteDhcpOptions"


-- | <p>Deletes an egress-only Internet gateway.</p>
deleteEgressOnlyInternetGateway :: forall eff. EC2.Service -> EC2Types.DeleteEgressOnlyInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteEgressOnlyInternetGatewayResult
deleteEgressOnlyInternetGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteEgressOnlyInternetGateway"


-- | <p>Deletes one or more flow logs.</p>
deleteFlowLogs :: forall eff. EC2.Service -> EC2Types.DeleteFlowLogsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteFlowLogsResult
deleteFlowLogs (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteFlowLogs"


-- | <p>Deletes the specified Amazon FPGA Image (AFI).</p>
deleteFpgaImage :: forall eff. EC2.Service -> EC2Types.DeleteFpgaImageRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteFpgaImageResult
deleteFpgaImage (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteFpgaImage"


-- | <p>Deletes the specified Internet gateway. You must detach the Internet gateway from the VPC before you can delete it.</p>
deleteInternetGateway :: forall eff. EC2.Service -> EC2Types.DeleteInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteInternetGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteInternetGateway"


-- | <p>Deletes the specified key pair, by removing the public key from Amazon EC2.</p>
deleteKeyPair :: forall eff. EC2.Service -> EC2Types.DeleteKeyPairRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteKeyPair (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteKeyPair"


-- | <p>Deletes a launch template. Deleting a launch template deletes all of its versions.</p>
deleteLaunchTemplate :: forall eff. EC2.Service -> EC2Types.DeleteLaunchTemplateRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteLaunchTemplateResult
deleteLaunchTemplate (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteLaunchTemplate"


-- | <p>Deletes one or more versions of a launch template. You cannot delete the default version of a launch template; you must first assign a different version as the default. If the default version is the only version for the launch template, you must delete the entire launch template using <a>DeleteLaunchTemplate</a>.</p>
deleteLaunchTemplateVersions :: forall eff. EC2.Service -> EC2Types.DeleteLaunchTemplateVersionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteLaunchTemplateVersionsResult
deleteLaunchTemplateVersions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteLaunchTemplateVersions"


-- | <p>Deletes the specified NAT gateway. Deleting a NAT gateway disassociates its Elastic IP address, but does not release the address from your account. Deleting a NAT gateway does not delete any NAT gateway routes in your route tables.</p>
deleteNatGateway :: forall eff. EC2.Service -> EC2Types.DeleteNatGatewayRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteNatGatewayResult
deleteNatGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteNatGateway"


-- | <p>Deletes the specified network ACL. You can't delete the ACL if it's associated with any subnets. You can't delete the default network ACL.</p>
deleteNetworkAcl :: forall eff. EC2.Service -> EC2Types.DeleteNetworkAclRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteNetworkAcl (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteNetworkAcl"


-- | <p>Deletes the specified ingress or egress entry (rule) from the specified network ACL.</p>
deleteNetworkAclEntry :: forall eff. EC2.Service -> EC2Types.DeleteNetworkAclEntryRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteNetworkAclEntry (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteNetworkAclEntry"


-- | <p>Deletes the specified network interface. You must detach the network interface before you can delete it.</p>
deleteNetworkInterface :: forall eff. EC2.Service -> EC2Types.DeleteNetworkInterfaceRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteNetworkInterface (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteNetworkInterface"


-- | <p>Deletes a permission for a network interface. By default, you cannot delete the permission if the account for which you're removing the permission has attached the network interface to an instance. However, you can force delete the permission, regardless of any attachment.</p>
deleteNetworkInterfacePermission :: forall eff. EC2.Service -> EC2Types.DeleteNetworkInterfacePermissionRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteNetworkInterfacePermissionResult
deleteNetworkInterfacePermission (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteNetworkInterfacePermission"


-- | <p>Deletes the specified placement group. You must terminate all instances in the placement group before you can delete the placement group. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
deletePlacementGroup :: forall eff. EC2.Service -> EC2Types.DeletePlacementGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
deletePlacementGroup (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deletePlacementGroup"


-- | <p>Deletes the specified route from the specified route table.</p>
deleteRoute :: forall eff. EC2.Service -> EC2Types.DeleteRouteRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteRoute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteRoute"


-- | <p>Deletes the specified route table. You must disassociate the route table from any subnets before you can delete it. You can't delete the main route table.</p>
deleteRouteTable :: forall eff. EC2.Service -> EC2Types.DeleteRouteTableRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteRouteTable (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteRouteTable"


-- | <p>Deletes a security group.</p> <p>If you attempt to delete a security group that is associated with an instance, or is referenced by another security group, the operation fails with <code>InvalidGroup.InUse</code> in EC2-Classic or <code>DependencyViolation</code> in EC2-VPC.</p>
deleteSecurityGroup :: forall eff. EC2.Service -> EC2Types.DeleteSecurityGroupRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteSecurityGroup (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSecurityGroup"


-- | <p>Deletes the specified snapshot.</p> <p>When you make periodic snapshots of a volume, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the volume.</p> <p>You cannot delete a snapshot of the root device of an EBS volume used by a registered AMI. You must first de-register the AMI before you can delete the snapshot.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html">Deleting an Amazon EBS Snapshot</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
deleteSnapshot :: forall eff. EC2.Service -> EC2Types.DeleteSnapshotRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteSnapshot (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSnapshot"


-- | <p>Deletes the data feed for Spot Instances.</p>
deleteSpotDatafeedSubscription :: forall eff. EC2.Service -> EC2Types.DeleteSpotDatafeedSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteSpotDatafeedSubscription (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSpotDatafeedSubscription"


-- | <p>Deletes the specified subnet. You must terminate all running instances in the subnet before you can delete the subnet.</p>
deleteSubnet :: forall eff. EC2.Service -> EC2Types.DeleteSubnetRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteSubnet (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSubnet"


-- | <p>Deletes the specified set of tags from the specified set of resources.</p> <p>To list the current tags, use <a>DescribeTags</a>. For more information about tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
deleteTags :: forall eff. EC2.Service -> EC2Types.DeleteTagsRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteTags (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTags"


-- | <p>Deletes the specified EBS volume. The volume must be in the <code>available</code> state (not attached to an instance).</p> <note> <p>The volume may remain in the <code>deleting</code> state for several minutes.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html">Deleting an Amazon EBS Volume</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
deleteVolume :: forall eff. EC2.Service -> EC2Types.DeleteVolumeRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteVolume (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVolume"


-- | <p>Deletes the specified VPC. You must detach or delete all gateways and resources that are associated with the VPC before you can delete it. For example, you must terminate all instances running in the VPC, delete all security groups associated with the VPC (except the default one), delete all route tables associated with the VPC (except the default one), and so on.</p>
deleteVpc :: forall eff. EC2.Service -> EC2Types.DeleteVpcRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteVpc (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVpc"


-- | <p>Deletes one or more VPC endpoint connection notifications.</p>
deleteVpcEndpointConnectionNotifications :: forall eff. EC2.Service -> EC2Types.DeleteVpcEndpointConnectionNotificationsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteVpcEndpointConnectionNotificationsResult
deleteVpcEndpointConnectionNotifications (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVpcEndpointConnectionNotifications"


-- | <p>Deletes one or more VPC endpoint service configurations in your account. Before you delete the endpoint service configuration, you must reject any <code>Available</code> or <code>PendingAcceptance</code> interface endpoint connections that are attached to the service.</p>
deleteVpcEndpointServiceConfigurations :: forall eff. EC2.Service -> EC2Types.DeleteVpcEndpointServiceConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteVpcEndpointServiceConfigurationsResult
deleteVpcEndpointServiceConfigurations (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVpcEndpointServiceConfigurations"


-- | <p>Deletes one or more specified VPC endpoints. Deleting a gateway endpoint also deletes the endpoint routes in the route tables that were associated with the endpoint. Deleting an interface endpoint deletes the endpoint network interfaces.</p>
deleteVpcEndpoints :: forall eff. EC2.Service -> EC2Types.DeleteVpcEndpointsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteVpcEndpointsResult
deleteVpcEndpoints (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVpcEndpoints"


-- | <p>Deletes a VPC peering connection. Either the owner of the requester VPC or the owner of the accepter VPC can delete the VPC peering connection if it's in the <code>active</code> state. The owner of the requester VPC can delete a VPC peering connection in the <code>pending-acceptance</code> state. You cannot delete a VPC peering connection that's in the <code>failed</code> state.</p>
deleteVpcPeeringConnection :: forall eff. EC2.Service -> EC2Types.DeleteVpcPeeringConnectionRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DeleteVpcPeeringConnectionResult
deleteVpcPeeringConnection (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVpcPeeringConnection"


-- | <p>Deletes the specified VPN connection.</p> <p>If you're deleting the VPC and its associated components, we recommend that you detach the virtual private gateway from the VPC and delete the VPC before deleting the VPN connection. If you believe that the tunnel credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.</p>
deleteVpnConnection :: forall eff. EC2.Service -> EC2Types.DeleteVpnConnectionRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteVpnConnection (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVpnConnection"


-- | <p>Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.</p>
deleteVpnConnectionRoute :: forall eff. EC2.Service -> EC2Types.DeleteVpnConnectionRouteRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteVpnConnectionRoute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVpnConnectionRoute"


-- | <p>Deletes the specified virtual private gateway. We recommend that before you delete a virtual private gateway, you detach it from the VPC and delete the VPN connection. Note that you don't need to delete the virtual private gateway if you plan to delete and recreate the VPN connection between your VPC and your network.</p>
deleteVpnGateway :: forall eff. EC2.Service -> EC2Types.DeleteVpnGatewayRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteVpnGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteVpnGateway"


-- | <p>Deregisters the specified AMI. After you deregister an AMI, it can't be used to launch new instances; however, it doesn't affect any instances that you've already launched from the AMI. You'll continue to incur usage costs for those instances until you terminate them.</p> <p>When you deregister an Amazon EBS-backed AMI, it doesn't affect the snapshot that was created for the root volume of the instance during the AMI creation process. When you deregister an instance store-backed AMI, it doesn't affect the files that you uploaded to Amazon S3 when you created the AMI.</p>
deregisterImage :: forall eff. EC2.Service -> EC2Types.DeregisterImageRequest -> Aff (exception :: EXCEPTION | eff) Unit
deregisterImage (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deregisterImage"


-- | <p>Describes attributes of your AWS account. The following are the supported account attributes:</p> <ul> <li> <p> <code>supported-platforms</code>: Indicates whether your account can launch instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.</p> </li> <li> <p> <code>default-vpc</code>: The ID of the default VPC for your account, or <code>none</code>.</p> </li> <li> <p> <code>max-instances</code>: The maximum number of On-Demand Instances that you can run.</p> </li> <li> <p> <code>vpc-max-security-groups-per-interface</code>: The maximum number of security groups that you can assign to a network interface.</p> </li> <li> <p> <code>max-elastic-ips</code>: The maximum number of Elastic IP addresses that you can allocate for use with EC2-Classic. </p> </li> <li> <p> <code>vpc-max-elastic-ips</code>: The maximum number of Elastic IP addresses that you can allocate for use with EC2-VPC.</p> </li> </ul>
describeAccountAttributes :: forall eff. EC2.Service -> EC2Types.DescribeAccountAttributesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeAccountAttributesResult
describeAccountAttributes (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAccountAttributes"


-- | <p>Describes one or more of your Elastic IP addresses.</p> <p>An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeAddresses :: forall eff. EC2.Service -> EC2Types.DescribeAddressesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeAddressesResult
describeAddresses (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAddresses"


-- | <p>Describes the longer ID format settings for all resource types in a specific region. This request is useful for performing a quick audit to determine whether a specific region is fully opted in for longer IDs (17-character IDs).</p> <p>This request only returns information about resource types that support longer IDs.</p> <p>The following resource types support longer IDs: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>instance</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>reservation</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>snapshot</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>volume</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>.</p>
describeAggregateIdFormat :: forall eff. EC2.Service -> EC2Types.DescribeAggregateIdFormatRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeAggregateIdFormatResult
describeAggregateIdFormat (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAggregateIdFormat"


-- | <p>Describes one or more of the Availability Zones that are available to you. The results include zones only for the region you're currently using. If there is an event impacting an Availability Zone, you can use this request to view the state and any provided message for that Availability Zone.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html">Regions and Availability Zones</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeAvailabilityZones :: forall eff. EC2.Service -> EC2Types.DescribeAvailabilityZonesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeAvailabilityZonesResult
describeAvailabilityZones (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAvailabilityZones"


-- | <p>Describes one or more of your bundling tasks.</p> <note> <p>Completed bundle tasks are listed for only a limited time. If your bundle task is no longer in the list, you can still register an AMI from it. Just use <code>RegisterImage</code> with the Amazon S3 bucket name and image manifest name you provided to the bundle task.</p> </note>
describeBundleTasks :: forall eff. EC2.Service -> EC2Types.DescribeBundleTasksRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeBundleTasksResult
describeBundleTasks (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeBundleTasks"


-- | <p>Describes one or more of your linked EC2-Classic instances. This request only returns information about EC2-Classic instances linked to a VPC through ClassicLink; you cannot use this request to return information about other instances.</p>
describeClassicLinkInstances :: forall eff. EC2.Service -> EC2Types.DescribeClassicLinkInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeClassicLinkInstancesResult
describeClassicLinkInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeClassicLinkInstances"


-- | <p>Describes one or more of your conversion tasks. For more information, see the <a href="http://docs.aws.amazon.com/vm-import/latest/userguide/">VM Import/Export User Guide</a>.</p> <p>For information about the import manifest referenced by this API action, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html">VM Import Manifest</a>.</p>
describeConversionTasks :: forall eff. EC2.Service -> EC2Types.DescribeConversionTasksRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeConversionTasksResult
describeConversionTasks (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeConversionTasks"


-- | <p>Describes one or more of your VPN customer gateways.</p> <p>For more information about VPN customer gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
describeCustomerGateways :: forall eff. EC2.Service -> EC2Types.DescribeCustomerGatewaysRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeCustomerGatewaysResult
describeCustomerGateways (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeCustomerGateways"


-- | <p>Describes one or more of your DHCP options sets.</p> <p>For more information about DHCP options sets, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
describeDhcpOptions :: forall eff. EC2.Service -> EC2Types.DescribeDhcpOptionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeDhcpOptionsResult
describeDhcpOptions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeDhcpOptions"


-- | <p>Describes one or more of your egress-only Internet gateways.</p>
describeEgressOnlyInternetGateways :: forall eff. EC2.Service -> EC2Types.DescribeEgressOnlyInternetGatewaysRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeEgressOnlyInternetGatewaysResult
describeEgressOnlyInternetGateways (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEgressOnlyInternetGateways"


-- | <p>Describes the Elastic GPUs associated with your instances. For more information about Elastic GPUs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-gpus.html">Amazon EC2 Elastic GPUs</a>.</p>
describeElasticGpus :: forall eff. EC2.Service -> EC2Types.DescribeElasticGpusRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeElasticGpusResult
describeElasticGpus (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeElasticGpus"


-- | <p>Describes one or more of your export tasks.</p>
describeExportTasks :: forall eff. EC2.Service -> EC2Types.DescribeExportTasksRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeExportTasksResult
describeExportTasks (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeExportTasks"


-- | <p>Describes one or more flow logs. To view the information in your flow logs (the log streams for the network interfaces), you must use the CloudWatch Logs console or the CloudWatch Logs API.</p>
describeFlowLogs :: forall eff. EC2.Service -> EC2Types.DescribeFlowLogsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeFlowLogsResult
describeFlowLogs (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeFlowLogs"


-- | <p>Describes the specified attribute of the specified Amazon FPGA Image (AFI).</p>
describeFpgaImageAttribute :: forall eff. EC2.Service -> EC2Types.DescribeFpgaImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeFpgaImageAttributeResult
describeFpgaImageAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeFpgaImageAttribute"


-- | <p>Describes one or more available Amazon FPGA Images (AFIs). These include public AFIs, private AFIs that you own, and AFIs owned by other AWS accounts for which you have load permissions.</p>
describeFpgaImages :: forall eff. EC2.Service -> EC2Types.DescribeFpgaImagesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeFpgaImagesResult
describeFpgaImages (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeFpgaImages"


-- | <p>Describes the Dedicated Host Reservations that are available to purchase.</p> <p>The results describe all the Dedicated Host Reservation offerings, including offerings that may not match the instance family and region of your Dedicated Hosts. When purchasing an offering, ensure that the the instance family and region of the offering matches that of the Dedicated Host/s it will be associated with. For an overview of supported instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html">Dedicated Hosts Overview</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p>
describeHostReservationOfferings :: forall eff. EC2.Service -> EC2Types.DescribeHostReservationOfferingsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeHostReservationOfferingsResult
describeHostReservationOfferings (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeHostReservationOfferings"


-- | <p>Describes Dedicated Host Reservations which are associated with Dedicated Hosts in your account.</p>
describeHostReservations :: forall eff. EC2.Service -> EC2Types.DescribeHostReservationsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeHostReservationsResult
describeHostReservations (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeHostReservations"


-- | <p>Describes one or more of your Dedicated Hosts.</p> <p>The results describe only the Dedicated Hosts in the region you're currently using. All listed instances consume capacity on your Dedicated Host. Dedicated Hosts that have recently been released will be listed with the state <code>released</code>.</p>
describeHosts :: forall eff. EC2.Service -> EC2Types.DescribeHostsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeHostsResult
describeHosts (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeHosts"


-- | <p>Describes your IAM instance profile associations.</p>
describeIamInstanceProfileAssociations :: forall eff. EC2.Service -> EC2Types.DescribeIamInstanceProfileAssociationsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeIamInstanceProfileAssociationsResult
describeIamInstanceProfileAssociations (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeIamInstanceProfileAssociations"


-- | <p>Describes the ID format settings for your resources on a per-region basis, for example, to view which resource types are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types.</p> <p>The following resource types support longer IDs: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>instance</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>reservation</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>snapshot</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>volume</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>. </p> <p>These settings apply to the IAM user who makes the request; they do not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user, unless they explicitly override the settings by running the <a>ModifyIdFormat</a> command. Resources created with longer IDs are visible to all IAM users, regardless of these settings and provided that they have permission to use the relevant <code>Describe</code> command for the resource type.</p>
describeIdFormat :: forall eff. EC2.Service -> EC2Types.DescribeIdFormatRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeIdFormatResult
describeIdFormat (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeIdFormat"


-- | <p>Describes the ID format settings for resources for the specified IAM user, IAM role, or root user. For example, you can view the resource types that are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html">Resource IDs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p> <p>The following resource types support longer IDs: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>instance</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>reservation</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>snapshot</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>volume</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>. </p> <p>These settings apply to the principal specified in the request. They do not apply to the principal that makes the request.</p>
describeIdentityIdFormat :: forall eff. EC2.Service -> EC2Types.DescribeIdentityIdFormatRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeIdentityIdFormatResult
describeIdentityIdFormat (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeIdentityIdFormat"


-- | <p>Describes the specified attribute of the specified AMI. You can specify only one attribute at a time.</p>
describeImageAttribute :: forall eff. EC2.Service -> EC2Types.DescribeImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ImageAttribute
describeImageAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeImageAttribute"


-- | <p>Describes one or more of the images (AMIs, AKIs, and ARIs) available to you. Images available to you include public images, private images that you own, and private images owned by other AWS accounts but for which you have explicit launch permissions.</p> <note> <p>Deregistered images are included in the returned results for an unspecified interval after deregistration.</p> </note>
describeImages :: forall eff. EC2.Service -> EC2Types.DescribeImagesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeImagesResult
describeImages (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeImages"


-- | <p>Displays details about an import virtual machine or import snapshot tasks that are already created.</p>
describeImportImageTasks :: forall eff. EC2.Service -> EC2Types.DescribeImportImageTasksRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeImportImageTasksResult
describeImportImageTasks (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeImportImageTasks"


-- | <p>Describes your import snapshot tasks.</p>
describeImportSnapshotTasks :: forall eff. EC2.Service -> EC2Types.DescribeImportSnapshotTasksRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeImportSnapshotTasksResult
describeImportSnapshotTasks (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeImportSnapshotTasks"


-- | <p>Describes the specified attribute of the specified instance. You can specify only one attribute at a time. Valid attribute values are: <code>instanceType</code> | <code>kernel</code> | <code>ramdisk</code> | <code>userData</code> | <code>disableApiTermination</code> | <code>instanceInitiatedShutdownBehavior</code> | <code>rootDeviceName</code> | <code>blockDeviceMapping</code> | <code>productCodes</code> | <code>sourceDestCheck</code> | <code>groupSet</code> | <code>ebsOptimized</code> | <code>sriovNetSupport</code> </p>
describeInstanceAttribute :: forall eff. EC2.Service -> EC2Types.DescribeInstanceAttributeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.InstanceAttribute
describeInstanceAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeInstanceAttribute"


-- | <p>Describes the credit option for CPU usage of one or more of your T2 instances. The credit options are <code>standard</code> and <code>unlimited</code>.</p> <p>If you do not specify an instance ID, Amazon EC2 returns only the T2 instances with the <code>unlimited</code> credit option. If you specify one or more instance IDs, Amazon EC2 returns the credit option (<code>standard</code> or <code>unlimited</code>) of those instances. If you specify an instance ID that is not valid, such as an instance that is not a T2 instance, an error is returned.</p> <p>Recently terminated instances might appear in the returned results. This interval is usually less than one hour.</p> <p>If an Availability Zone is experiencing a service disruption and you specify instance IDs in the affected zone, or do not specify any instance IDs at all, the call fails. If you specify only instance IDs in an unaffected zone, the call works normally.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/t2-instances.html">T2 Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeInstanceCreditSpecifications :: forall eff. EC2.Service -> EC2Types.DescribeInstanceCreditSpecificationsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeInstanceCreditSpecificationsResult
describeInstanceCreditSpecifications (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeInstanceCreditSpecifications"


-- | <p>Describes the status of one or more instances. By default, only running instances are described, unless you specifically indicate to return the status of all instances.</p> <p>Instance status includes the following components:</p> <ul> <li> <p> <b>Status checks</b> - Amazon EC2 performs status checks on running EC2 instances to identify hardware and software issues. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html">Status Checks for Your Instances</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html">Troubleshooting Instances with Failed Status Checks</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> </li> <li> <p> <b>Scheduled events</b> - Amazon EC2 can schedule events (such as reboot, stop, or terminate) for your instances related to hardware issues, software updates, or system maintenance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html">Scheduled Events for Your Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> </li> <li> <p> <b>Instance state</b> - You can manage your instances from the moment you launch them through their termination. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html">Instance Lifecycle</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> </li> </ul>
describeInstanceStatus :: forall eff. EC2.Service -> EC2Types.DescribeInstanceStatusRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeInstanceStatusResult
describeInstanceStatus (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeInstanceStatus"


-- | <p>Describes one or more of your instances.</p> <p>If you specify one or more instance IDs, Amazon EC2 returns information for those instances. If you do not specify instance IDs, Amazon EC2 returns information for all relevant instances. If you specify an instance ID that is not valid, an error is returned. If you specify an instance that you do not own, it is not included in the returned results.</p> <p>Recently terminated instances might appear in the returned results. This interval is usually less than one hour.</p> <p>If you describe instances in the rare case where an Availability Zone is experiencing a service disruption and you specify instance IDs that are in the affected zone, or do not specify any instance IDs at all, the call fails. If you describe instances and specify only instance IDs that are in an unaffected zone, the call works normally.</p>
describeInstances :: forall eff. EC2.Service -> EC2Types.DescribeInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeInstancesResult
describeInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeInstances"


-- | <p>Describes one or more of your Internet gateways.</p>
describeInternetGateways :: forall eff. EC2.Service -> EC2Types.DescribeInternetGatewaysRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeInternetGatewaysResult
describeInternetGateways (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeInternetGateways"


-- | <p>Describes one or more of your key pairs.</p> <p>For more information about key pairs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeKeyPairs :: forall eff. EC2.Service -> EC2Types.DescribeKeyPairsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeKeyPairsResult
describeKeyPairs (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeKeyPairs"


-- | <p>Describes one or more versions of a specified launch template. You can describe all versions, individual versions, or a range of versions.</p>
describeLaunchTemplateVersions :: forall eff. EC2.Service -> EC2Types.DescribeLaunchTemplateVersionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeLaunchTemplateVersionsResult
describeLaunchTemplateVersions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeLaunchTemplateVersions"


-- | <p>Describes one or more launch templates.</p>
describeLaunchTemplates :: forall eff. EC2.Service -> EC2Types.DescribeLaunchTemplatesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeLaunchTemplatesResult
describeLaunchTemplates (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeLaunchTemplates"


-- | <p>Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform. This request does not return information about any other Elastic IP addresses in your account.</p>
describeMovingAddresses :: forall eff. EC2.Service -> EC2Types.DescribeMovingAddressesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeMovingAddressesResult
describeMovingAddresses (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeMovingAddresses"


-- | <p>Describes one or more of the your NAT gateways.</p>
describeNatGateways :: forall eff. EC2.Service -> EC2Types.DescribeNatGatewaysRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeNatGatewaysResult
describeNatGateways (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeNatGateways"


-- | <p>Describes one or more of your network ACLs.</p> <p>For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
describeNetworkAcls :: forall eff. EC2.Service -> EC2Types.DescribeNetworkAclsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeNetworkAclsResult
describeNetworkAcls (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeNetworkAcls"


-- | <p>Describes a network interface attribute. You can specify only one attribute at a time.</p>
describeNetworkInterfaceAttribute :: forall eff. EC2.Service -> EC2Types.DescribeNetworkInterfaceAttributeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeNetworkInterfaceAttributeResult
describeNetworkInterfaceAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeNetworkInterfaceAttribute"


-- | <p>Describes the permissions for your network interfaces. </p>
describeNetworkInterfacePermissions :: forall eff. EC2.Service -> EC2Types.DescribeNetworkInterfacePermissionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeNetworkInterfacePermissionsResult
describeNetworkInterfacePermissions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeNetworkInterfacePermissions"


-- | <p>Describes one or more of your network interfaces.</p>
describeNetworkInterfaces :: forall eff. EC2.Service -> EC2Types.DescribeNetworkInterfacesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeNetworkInterfacesResult
describeNetworkInterfaces (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeNetworkInterfaces"


-- | <p>Describes one or more of your placement groups. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describePlacementGroups :: forall eff. EC2.Service -> EC2Types.DescribePlacementGroupsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribePlacementGroupsResult
describePlacementGroups (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describePlacementGroups"


-- | <p>Describes available AWS services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service. A prefix list ID is required for creating an outbound security group rule that allows traffic from a VPC to access an AWS service through a gateway VPC endpoint.</p>
describePrefixLists :: forall eff. EC2.Service -> EC2Types.DescribePrefixListsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribePrefixListsResult
describePrefixLists (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describePrefixLists"


-- | <p>Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference. </p> <p>By default, all IAM roles and IAM users default to the same ID settings as the root user, unless they explicitly override the settings. This request is useful for identifying those IAM users and IAM roles that have overridden the default ID settings.</p> <p>The following resource types support longer IDs: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>instance</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>reservation</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>snapshot</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>volume</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>. </p>
describePrincipalIdFormat :: forall eff. EC2.Service -> EC2Types.DescribePrincipalIdFormatRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribePrincipalIdFormatResult
describePrincipalIdFormat (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describePrincipalIdFormat"


-- | <p>Describes one or more regions that are currently available to you.</p> <p>For a list of the regions supported by Amazon EC2, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region">Regions and Endpoints</a>.</p>
describeRegions :: forall eff. EC2.Service -> EC2Types.DescribeRegionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeRegionsResult
describeRegions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeRegions"


-- | <p>Describes one or more of the Reserved Instances that you purchased.</p> <p>For more information about Reserved Instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html">Reserved Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeReservedInstances :: forall eff. EC2.Service -> EC2Types.DescribeReservedInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeReservedInstancesResult
describeReservedInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeReservedInstances"


-- | <p>Describes your account's Reserved Instance listings in the Reserved Instance Marketplace.</p> <p>The Reserved Instance Marketplace matches sellers who want to resell Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.</p> <p>As a seller, you choose to list some or all of your Reserved Instances, and you specify the upfront price to receive for them. Your Reserved Instances are then listed in the Reserved Instance Marketplace and are available for purchase.</p> <p>As a buyer, you specify the configuration of the Reserved Instance to purchase, and the Marketplace matches what you're searching for with what's available. The Marketplace first sells the lowest priced Reserved Instances to you, and continues to sell available Reserved Instance listings to you until your demand is met. You are charged based on the total price of all of the listings that you purchase.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeReservedInstancesListings :: forall eff. EC2.Service -> EC2Types.DescribeReservedInstancesListingsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeReservedInstancesListingsResult
describeReservedInstancesListings (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeReservedInstancesListings"


-- | <p>Describes the modifications made to your Reserved Instances. If no parameter is specified, information about all your Reserved Instances modification requests is returned. If a modification ID is specified, only information about the specific modification is returned.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html">Modifying Reserved Instances</a> in the Amazon Elastic Compute Cloud User Guide.</p>
describeReservedInstancesModifications :: forall eff. EC2.Service -> EC2Types.DescribeReservedInstancesModificationsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeReservedInstancesModificationsResult
describeReservedInstancesModifications (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeReservedInstancesModifications"


-- | <p>Describes Reserved Instance offerings that are available for purchase. With Reserved Instances, you purchase the right to launch instances for a period of time. During that time period, you do not receive insufficient capacity errors, and you pay a lower usage rate than the rate charged for On-Demand instances for the actual time used.</p> <p>If you have listed your own Reserved Instances for sale in the Reserved Instance Marketplace, they will be excluded from these results. This is to ensure that you do not purchase your own Reserved Instances.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeReservedInstancesOfferings :: forall eff. EC2.Service -> EC2Types.DescribeReservedInstancesOfferingsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeReservedInstancesOfferingsResult
describeReservedInstancesOfferings (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeReservedInstancesOfferings"


-- | <p>Describes one or more of your route tables.</p> <p>Each subnet in your VPC must be associated with a route table. If a subnet is not explicitly associated with any route table, it is implicitly associated with the main route table. This command does not return the subnet ID for implicit associations.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
describeRouteTables :: forall eff. EC2.Service -> EC2Types.DescribeRouteTablesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeRouteTablesResult
describeRouteTables (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeRouteTables"


-- | <p>Finds available schedules that meet the specified criteria.</p> <p>You can search for an available schedule no more than 3 months in advance. You must meet the minimum required duration of 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.</p> <p>After you find a schedule that meets your needs, call <a>PurchaseScheduledInstances</a> to purchase Scheduled Instances with that schedule.</p>
describeScheduledInstanceAvailability :: forall eff. EC2.Service -> EC2Types.DescribeScheduledInstanceAvailabilityRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeScheduledInstanceAvailabilityResult
describeScheduledInstanceAvailability (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeScheduledInstanceAvailability"


-- | <p>Describes one or more of your Scheduled Instances.</p>
describeScheduledInstances :: forall eff. EC2.Service -> EC2Types.DescribeScheduledInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeScheduledInstancesResult
describeScheduledInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeScheduledInstances"


-- | <p>[EC2-VPC only] Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you've specified in this request.</p>
describeSecurityGroupReferences :: forall eff. EC2.Service -> EC2Types.DescribeSecurityGroupReferencesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSecurityGroupReferencesResult
describeSecurityGroupReferences (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSecurityGroupReferences"


-- | <p>Describes one or more of your security groups.</p> <p>A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Amazon EC2 Security Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i> and <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
describeSecurityGroups :: forall eff. EC2.Service -> EC2Types.DescribeSecurityGroupsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSecurityGroupsResult
describeSecurityGroups (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSecurityGroups"


-- | <p>Describes the specified attribute of the specified snapshot. You can specify only one attribute at a time.</p> <p>For more information about EBS snapshots, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html">Amazon EBS Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeSnapshotAttribute :: forall eff. EC2.Service -> EC2Types.DescribeSnapshotAttributeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSnapshotAttributeResult
describeSnapshotAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSnapshotAttribute"


-- | <p>Describes one or more of the EBS snapshots available to you. Available snapshots include public snapshots available for any AWS account to launch, private snapshots that you own, and private snapshots owned by another AWS account but for which you've been given explicit create volume permissions.</p> <p>The create volume permissions fall into the following categories:</p> <ul> <li> <p> <i>public</i>: The owner of the snapshot granted create volume permissions for the snapshot to the <code>all</code> group. All AWS accounts have create volume permissions for these snapshots.</p> </li> <li> <p> <i>explicit</i>: The owner of the snapshot granted create volume permissions to a specific AWS account.</p> </li> <li> <p> <i>implicit</i>: An AWS account has implicit create volume permissions for all snapshots it owns.</p> </li> </ul> <p>The list of snapshots returned can be modified by specifying snapshot IDs, snapshot owners, or AWS accounts with create volume permissions. If no options are specified, Amazon EC2 returns all snapshots for which you have create volume permissions.</p> <p>If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned. If you specify an invalid snapshot ID, an error is returned. If you specify a snapshot ID for which you do not have access, it is not included in the returned results.</p> <p>If you specify one or more snapshot owners using the <code>OwnerIds</code> option, only snapshots from the specified owners and for which you have access are returned. The results can include the AWS account IDs of the specified owners, <code>amazon</code> for snapshots owned by Amazon, or <code>self</code> for snapshots that you own.</p> <p>If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are returned. You can specify AWS account IDs (if you own the snapshots), <code>self</code> for snapshots for which you own or have explicit permissions, or <code>all</code> for public snapshots.</p> <p>If you are describing a long list of snapshots, you can paginate the output to make the list more manageable. The <code>MaxResults</code> parameter sets the maximum number of results returned in a single page. If the list of results exceeds your <code>MaxResults</code> value, then that number of results is returned along with a <code>NextToken</code> value that can be passed to a subsequent <code>DescribeSnapshots</code> request to retrieve the remaining results.</p> <p>For more information about EBS snapshots, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html">Amazon EBS Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeSnapshots :: forall eff. EC2.Service -> EC2Types.DescribeSnapshotsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSnapshotsResult
describeSnapshots (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSnapshots"


-- | <p>Describes the data feed for Spot Instances. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html">Spot Instance Data Feed</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeSpotDatafeedSubscription :: forall eff. EC2.Service -> EC2Types.DescribeSpotDatafeedSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSpotDatafeedSubscriptionResult
describeSpotDatafeedSubscription (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSpotDatafeedSubscription"


-- | <p>Describes the running instances for the specified Spot Fleet.</p>
describeSpotFleetInstances :: forall eff. EC2.Service -> EC2Types.DescribeSpotFleetInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSpotFleetInstancesResponse
describeSpotFleetInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSpotFleetInstances"


-- | <p>Describes the events for the specified Spot Fleet request during the specified time.</p> <p>Spot Fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event.</p>
describeSpotFleetRequestHistory :: forall eff. EC2.Service -> EC2Types.DescribeSpotFleetRequestHistoryRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSpotFleetRequestHistoryResponse
describeSpotFleetRequestHistory (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSpotFleetRequestHistory"


-- | <p>Describes your Spot Fleet requests.</p> <p>Spot Fleet requests are deleted 48 hours after they are canceled and their instances are terminated.</p>
describeSpotFleetRequests :: forall eff. EC2.Service -> EC2Types.DescribeSpotFleetRequestsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSpotFleetRequestsResponse
describeSpotFleetRequests (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSpotFleetRequests"


-- | <p>Describes the Spot Instance requests that belong to your account. Spot Instances are instances that Amazon EC2 launches when the Spot price that you specify exceeds the current Spot price. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html">Spot Instance Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>You can use <code>DescribeSpotInstanceRequests</code> to find a running Spot Instance by examining the response. If the status of the Spot Instance is <code>fulfilled</code>, the instance ID appears in the response and contains the identifier of the instance. Alternatively, you can use <a>DescribeInstances</a> with a filter to look for instances where the instance lifecycle is <code>spot</code>.</p> <p>Spot Instance requests are deleted 4 hours after they are canceled and their instances are terminated.</p>
describeSpotInstanceRequests :: forall eff. EC2.Service -> EC2Types.DescribeSpotInstanceRequestsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSpotInstanceRequestsResult
describeSpotInstanceRequests (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSpotInstanceRequests"


-- | <p>Describes the Spot price history. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html">Spot Instance Pricing History</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>When you specify a start and end time, this operation returns the prices of the instance types within the time range that you specified and the time when the price changed. The price is valid within the time period that you specified; the response merely indicates the last time that the price changed.</p>
describeSpotPriceHistory :: forall eff. EC2.Service -> EC2Types.DescribeSpotPriceHistoryRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSpotPriceHistoryResult
describeSpotPriceHistory (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSpotPriceHistory"


-- | <p>[EC2-VPC only] Describes the stale security group rules for security groups in a specified VPC. Rules are stale when they reference a deleted security group in a peer VPC, or a security group in a peer VPC for which the VPC peering connection has been deleted.</p>
describeStaleSecurityGroups :: forall eff. EC2.Service -> EC2Types.DescribeStaleSecurityGroupsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeStaleSecurityGroupsResult
describeStaleSecurityGroups (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStaleSecurityGroups"


-- | <p>Describes one or more of your subnets.</p> <p>For more information about subnets, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">Your VPC and Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
describeSubnets :: forall eff. EC2.Service -> EC2Types.DescribeSubnetsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeSubnetsResult
describeSubnets (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSubnets"


-- | <p>Describes one or more of the tags for your EC2 resources.</p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeTags :: forall eff. EC2.Service -> EC2Types.DescribeTagsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeTagsResult
describeTags (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTags"


-- | <p>Describes the specified attribute of the specified volume. You can specify only one attribute at a time.</p> <p>For more information about EBS volumes, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html">Amazon EBS Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeVolumeAttribute :: forall eff. EC2.Service -> EC2Types.DescribeVolumeAttributeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVolumeAttributeResult
describeVolumeAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVolumeAttribute"


-- | <p>Describes the status of the specified volumes. Volume status provides the result of the checks performed on your volumes to determine events that can impair the performance of your volumes. The performance of a volume can be affected if an issue occurs on the volume's underlying host. If the volume's underlying host experiences a power outage or system issue, after the system is restored, there could be data inconsistencies on the volume. Volume events notify you if this occurs. Volume actions notify you if any action needs to be taken in response to the event.</p> <p>The <code>DescribeVolumeStatus</code> operation provides the following information about the specified volumes:</p> <p> <i>Status</i>: Reflects the current status of the volume. The possible values are <code>ok</code>, <code>impaired</code> , <code>warning</code>, or <code>insufficient-data</code>. If all checks pass, the overall status of the volume is <code>ok</code>. If the check fails, the overall status is <code>impaired</code>. If the status is <code>insufficient-data</code>, then the checks may still be taking place on your volume at the time. We recommend that you retry the request. For more information on volume status, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html">Monitoring the Status of Your Volumes</a>.</p> <p> <i>Events</i>: Reflect the cause of a volume status and may require you to take action. For example, if your volume returns an <code>impaired</code> status, then the volume event might be <code>potential-data-inconsistency</code>. This means that your volume has been affected by an issue with the underlying host, has all I/O operations disabled, and may have inconsistent data.</p> <p> <i>Actions</i>: Reflect the actions you may have to take in response to an event. For example, if the status of the volume is <code>impaired</code> and the volume event shows <code>potential-data-inconsistency</code>, then the action shows <code>enable-volume-io</code>. This means that you may want to enable the I/O operations for the volume by calling the <a>EnableVolumeIO</a> action and then check the volume for data consistency.</p> <note> <p>Volume status is based on the volume status checks, and does not reflect the volume state. Therefore, volume status does not indicate volumes in the <code>error</code> state (for example, when a volume is incapable of accepting I/O.)</p> </note>
describeVolumeStatus :: forall eff. EC2.Service -> EC2Types.DescribeVolumeStatusRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVolumeStatusResult
describeVolumeStatus (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVolumeStatus"


-- | <p>Describes the specified EBS volumes.</p> <p>If you are describing a long list of volumes, you can paginate the output to make the list more manageable. The <code>MaxResults</code> parameter sets the maximum number of results returned in a single page. If the list of results exceeds your <code>MaxResults</code> value, then that number of results is returned along with a <code>NextToken</code> value that can be passed to a subsequent <code>DescribeVolumes</code> request to retrieve the remaining results.</p> <p>For more information about EBS volumes, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html">Amazon EBS Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeVolumes :: forall eff. EC2.Service -> EC2Types.DescribeVolumesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVolumesResult
describeVolumes (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVolumes"


-- | <p>Reports the current modification status of EBS volumes.</p> <p>Current-generation EBS volumes support modification of attributes including type, size, and (for <code>io1</code> volumes) IOPS provisioning while either attached to or detached from an instance. Following an action from the API or the console to modify a volume, the status of the modification may be <code>modifying</code>, <code>optimizing</code>, <code>completed</code>, or <code>failed</code>. If a volume has never been modified, then certain elements of the returned <code>VolumeModification</code> objects are null. </p> <p> You can also use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/">Amazon CloudWatch Events User Guide</a>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods">Monitoring Volume Modifications"</a>. </p>
describeVolumesModifications :: forall eff. EC2.Service -> EC2Types.DescribeVolumesModificationsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVolumesModificationsResult
describeVolumesModifications (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVolumesModifications"


-- | <p>Describes the specified attribute of the specified VPC. You can specify only one attribute at a time.</p>
describeVpcAttribute :: forall eff. EC2.Service -> EC2Types.DescribeVpcAttributeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcAttributeResult
describeVpcAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcAttribute"


-- | <p>Describes the ClassicLink status of one or more VPCs.</p>
describeVpcClassicLink :: forall eff. EC2.Service -> EC2Types.DescribeVpcClassicLinkRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcClassicLinkResult
describeVpcClassicLink (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcClassicLink"


-- | <p>Describes the ClassicLink DNS support status of one or more VPCs. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
describeVpcClassicLinkDnsSupport :: forall eff. EC2.Service -> EC2Types.DescribeVpcClassicLinkDnsSupportRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcClassicLinkDnsSupportResult
describeVpcClassicLinkDnsSupport (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcClassicLinkDnsSupport"


-- | <p>Describes the connection notifications for VPC endpoints and VPC endpoint services.</p>
describeVpcEndpointConnectionNotifications :: forall eff. EC2.Service -> EC2Types.DescribeVpcEndpointConnectionNotificationsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcEndpointConnectionNotificationsResult
describeVpcEndpointConnectionNotifications (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcEndpointConnectionNotifications"


-- | <p>Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance.</p>
describeVpcEndpointConnections :: forall eff. EC2.Service -> EC2Types.DescribeVpcEndpointConnectionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcEndpointConnectionsResult
describeVpcEndpointConnections (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcEndpointConnections"


-- | <p>Describes the VPC endpoint service configurations in your account (your services).</p>
describeVpcEndpointServiceConfigurations :: forall eff. EC2.Service -> EC2Types.DescribeVpcEndpointServiceConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcEndpointServiceConfigurationsResult
describeVpcEndpointServiceConfigurations (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcEndpointServiceConfigurations"


-- | <p>Describes the principals (service consumers) that are permitted to discover your VPC endpoint service.</p>
describeVpcEndpointServicePermissions :: forall eff. EC2.Service -> EC2Types.DescribeVpcEndpointServicePermissionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcEndpointServicePermissionsResult
describeVpcEndpointServicePermissions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcEndpointServicePermissions"


-- | <p>Describes available services to which you can create a VPC endpoint.</p>
describeVpcEndpointServices :: forall eff. EC2.Service -> EC2Types.DescribeVpcEndpointServicesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcEndpointServicesResult
describeVpcEndpointServices (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcEndpointServices"


-- | <p>Describes one or more of your VPC endpoints.</p>
describeVpcEndpoints :: forall eff. EC2.Service -> EC2Types.DescribeVpcEndpointsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcEndpointsResult
describeVpcEndpoints (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcEndpoints"


-- | <p>Describes one or more of your VPC peering connections.</p>
describeVpcPeeringConnections :: forall eff. EC2.Service -> EC2Types.DescribeVpcPeeringConnectionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcPeeringConnectionsResult
describeVpcPeeringConnections (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcPeeringConnections"


-- | <p>Describes one or more of your VPCs.</p>
describeVpcs :: forall eff. EC2.Service -> EC2Types.DescribeVpcsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpcsResult
describeVpcs (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpcs"


-- | <p>Describes one or more of your VPN connections.</p> <p>For more information about VPN connections, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
describeVpnConnections :: forall eff. EC2.Service -> EC2Types.DescribeVpnConnectionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpnConnectionsResult
describeVpnConnections (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpnConnections"


-- | <p>Describes one or more of your virtual private gateways.</p> <p>For more information about virtual private gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">AWS Managed VPN Connections</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
describeVpnGateways :: forall eff. EC2.Service -> EC2Types.DescribeVpnGatewaysRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DescribeVpnGatewaysResult
describeVpnGateways (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVpnGateways"


-- | <p>Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the instance has been unlinked, the VPC security groups are no longer associated with it. An instance is automatically unlinked from a VPC when it's stopped.</p>
detachClassicLinkVpc :: forall eff. EC2.Service -> EC2Types.DetachClassicLinkVpcRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DetachClassicLinkVpcResult
detachClassicLinkVpc (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachClassicLinkVpc"


-- | <p>Detaches an Internet gateway from a VPC, disabling connectivity between the Internet and the VPC. The VPC must not contain any running instances with Elastic IP addresses or public IPv4 addresses.</p>
detachInternetGateway :: forall eff. EC2.Service -> EC2Types.DetachInternetGatewayRequest -> Aff (exception :: EXCEPTION | eff) Unit
detachInternetGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachInternetGateway"


-- | <p>Detaches a network interface from an instance.</p>
detachNetworkInterface :: forall eff. EC2.Service -> EC2Types.DetachNetworkInterfaceRequest -> Aff (exception :: EXCEPTION | eff) Unit
detachNetworkInterface (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachNetworkInterface"


-- | <p>Detaches an EBS volume from an instance. Make sure to unmount any file systems on the device within your operating system before detaching the volume. Failure to do so can result in the volume becoming stuck in the <code>busy</code> state while detaching. If this happens, detachment can be delayed indefinitely until you unmount the volume, force detachment, reboot the instance, or all three. If an EBS volume is the root device of an instance, it can't be detached while the instance is running. To detach the root volume, stop the instance first.</p> <p>When a volume with an AWS Marketplace product code is detached from an instance, the product code is no longer associated with the instance.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html">Detaching an Amazon EBS Volume</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
detachVolume :: forall eff. EC2.Service -> EC2Types.DetachVolumeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.VolumeAttachment
detachVolume (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachVolume"


-- | <p>Detaches a virtual private gateway from a VPC. You do this if you're planning to turn off the VPC and not use it anymore. You can confirm a virtual private gateway has been completely detached from a VPC by describing the virtual private gateway (any attachments to the virtual private gateway are also described).</p> <p>You must wait for the attachment's state to switch to <code>detached</code> before you can delete the VPC or attach a different VPC to the virtual private gateway.</p>
detachVpnGateway :: forall eff. EC2.Service -> EC2Types.DetachVpnGatewayRequest -> Aff (exception :: EXCEPTION | eff) Unit
detachVpnGateway (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachVpnGateway"


-- | <p>Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC.</p>
disableVgwRoutePropagation :: forall eff. EC2.Service -> EC2Types.DisableVgwRoutePropagationRequest -> Aff (exception :: EXCEPTION | eff) Unit
disableVgwRoutePropagation (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disableVgwRoutePropagation"


-- | <p>Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC that has EC2-Classic instances linked to it.</p>
disableVpcClassicLink :: forall eff. EC2.Service -> EC2Types.DisableVpcClassicLinkRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DisableVpcClassicLinkResult
disableVpcClassicLink (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disableVpcClassicLink"


-- | <p>Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames resolve to public IP addresses when addressed between a linked EC2-Classic instance and instances in the VPC to which it's linked. For more information about ClassicLink, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
disableVpcClassicLinkDnsSupport :: forall eff. EC2.Service -> EC2Types.DisableVpcClassicLinkDnsSupportRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DisableVpcClassicLinkDnsSupportResult
disableVpcClassicLinkDnsSupport (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disableVpcClassicLinkDnsSupport"


-- | <p>Disassociates an Elastic IP address from the instance or network interface it's associated with.</p> <p>An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.</p>
disassociateAddress :: forall eff. EC2.Service -> EC2Types.DisassociateAddressRequest -> Aff (exception :: EXCEPTION | eff) Unit
disassociateAddress (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateAddress"


-- | <p>Disassociates an IAM instance profile from a running or stopped instance.</p> <p>Use <a>DescribeIamInstanceProfileAssociations</a> to get the association ID.</p>
disassociateIamInstanceProfile :: forall eff. EC2.Service -> EC2Types.DisassociateIamInstanceProfileRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DisassociateIamInstanceProfileResult
disassociateIamInstanceProfile (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateIamInstanceProfile"


-- | <p>Disassociates a subnet from a route table.</p> <p>After you perform this action, the subnet no longer uses the routes in the route table. Instead, it uses the routes in the VPC's main route table. For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
disassociateRouteTable :: forall eff. EC2.Service -> EC2Types.DisassociateRouteTableRequest -> Aff (exception :: EXCEPTION | eff) Unit
disassociateRouteTable (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateRouteTable"


-- | <p>Disassociates a CIDR block from a subnet. Currently, you can disassociate an IPv6 CIDR block only. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it. </p>
disassociateSubnetCidrBlock :: forall eff. EC2.Service -> EC2Types.DisassociateSubnetCidrBlockRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DisassociateSubnetCidrBlockResult
disassociateSubnetCidrBlock (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateSubnetCidrBlock"


-- | <p>Disassociates a CIDR block from a VPC. To disassociate the CIDR block, you must specify its association ID. You can get the association ID by using <a>DescribeVpcs</a>. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it. </p> <p>You cannot disassociate the CIDR block with which you originally created the VPC (the primary CIDR block).</p>
disassociateVpcCidrBlock :: forall eff. EC2.Service -> EC2Types.DisassociateVpcCidrBlockRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.DisassociateVpcCidrBlockResult
disassociateVpcCidrBlock (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateVpcCidrBlock"


-- | <p>Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC.</p>
enableVgwRoutePropagation :: forall eff. EC2.Service -> EC2Types.EnableVgwRoutePropagationRequest -> Aff (exception :: EXCEPTION | eff) Unit
enableVgwRoutePropagation (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableVgwRoutePropagation"


-- | <p>Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent.</p>
enableVolumeIO :: forall eff. EC2.Service -> EC2Types.EnableVolumeIORequest -> Aff (exception :: EXCEPTION | eff) Unit
enableVolumeIO (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableVolumeIO"


-- | <p>Enables a VPC for ClassicLink. You can then link EC2-Classic instances to your ClassicLink-enabled VPC to allow communication over private IP addresses. You cannot enable your VPC for ClassicLink if any of your VPC's route tables have existing routes for address ranges within the <code>10.0.0.0/8</code> IP address range, excluding local routes for VPCs in the <code>10.0.0.0/16</code> and <code>10.1.0.0/16</code> IP address ranges. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
enableVpcClassicLink :: forall eff. EC2.Service -> EC2Types.EnableVpcClassicLinkRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.EnableVpcClassicLinkResult
enableVpcClassicLink (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableVpcClassicLink"


-- | <p>Enables a VPC to support DNS hostname resolution for ClassicLink. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information about ClassicLink, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
enableVpcClassicLinkDnsSupport :: forall eff. EC2.Service -> EC2Types.EnableVpcClassicLinkDnsSupportRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.EnableVpcClassicLinkDnsSupportResult
enableVpcClassicLinkDnsSupport (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableVpcClassicLinkDnsSupport"


-- | <p>Gets the console output for the specified instance.</p> <p>Instances do not have a physical monitor through which you can view their console output. They also lack physical controls that allow you to power up, reboot, or shut them down. To allow these actions, we provide them through the Amazon EC2 API and command line interface.</p> <p>Instance console output is buffered and posted shortly after instance boot, reboot, and termination. Amazon EC2 preserves the most recent 64 KB output, which is available for at least one hour after the most recent post.</p> <p>For Linux instances, the instance console output displays the exact console output that would normally be displayed on a physical monitor attached to a computer. This output is buffered because the instance produces it and then posts it to a store where the instance's owner can retrieve it.</p> <p>For Windows instances, the instance console output includes output from the EC2Config service.</p>
getConsoleOutput :: forall eff. EC2.Service -> EC2Types.GetConsoleOutputRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.GetConsoleOutputResult
getConsoleOutput (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getConsoleOutput"


-- | <p>Retrieve a JPG-format screenshot of a running instance to help with troubleshooting.</p> <p>The returned content is Base64-encoded.</p>
getConsoleScreenshot :: forall eff. EC2.Service -> EC2Types.GetConsoleScreenshotRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.GetConsoleScreenshotResult
getConsoleScreenshot (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getConsoleScreenshot"


-- | <p>Preview a reservation purchase with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation.</p> <p>This is a preview of the <a>PurchaseHostReservation</a> action and does not result in the offering being purchased.</p>
getHostReservationPurchasePreview :: forall eff. EC2.Service -> EC2Types.GetHostReservationPurchasePreviewRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.GetHostReservationPurchasePreviewResult
getHostReservationPurchasePreview (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getHostReservationPurchasePreview"


-- | <p>Retrieves the configuration data of the specified instance. You can use this data to create a launch template.</p>
getLaunchTemplateData :: forall eff. EC2.Service -> EC2Types.GetLaunchTemplateDataRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.GetLaunchTemplateDataResult
getLaunchTemplateData (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getLaunchTemplateData"


-- | <p>Retrieves the encrypted administrator password for a running Windows instance.</p> <p>The Windows password is generated at boot by the <code>EC2Config</code> service or <code>EC2Launch</code> scripts (Windows Server 2016 and later). This usually only happens the first time an instance is launched. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/UsingConfig_WinAMI.html">EC2Config</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html">EC2Launch</a> in the Amazon Elastic Compute Cloud User Guide.</p> <p>For the <code>EC2Config</code> service, the password is not generated for rebundled AMIs unless <code>Ec2SetPassword</code> is enabled before bundling.</p> <p>The password is encrypted using the key pair that you specified when you launched the instance. You must provide the corresponding key pair file.</p> <p>When you launch an instance, password generation and encryption may take a few minutes. If you try to retrieve the password before it's available, the output returns an empty string. We recommend that you wait up to 15 minutes after launching an instance before trying to retrieve the generated password.</p>
getPasswordData :: forall eff. EC2.Service -> EC2Types.GetPasswordDataRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.GetPasswordDataResult
getPasswordData (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getPasswordData"


-- | <p>Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance. If the exchange cannot be performed, the reason is returned in the response. Use <a>AcceptReservedInstancesExchangeQuote</a> to perform the exchange.</p>
getReservedInstancesExchangeQuote :: forall eff. EC2.Service -> EC2Types.GetReservedInstancesExchangeQuoteRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.GetReservedInstancesExchangeQuoteResult
getReservedInstancesExchangeQuote (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getReservedInstancesExchangeQuote"


-- | <p>Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI). For more information, see <a href="http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html">Importing a VM as an Image Using VM Import/Export</a> in the <i>VM Import/Export User Guide</i>.</p>
importImage :: forall eff. EC2.Service -> EC2Types.ImportImageRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ImportImageResult
importImage (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "importImage"


-- | <p>Creates an import instance task using metadata from the specified disk image. <code>ImportInstance</code> only supports single-volume VMs. To import multi-volume VMs, use <a>ImportImage</a>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html">Importing a Virtual Machine Using the Amazon EC2 CLI</a>.</p> <p>For information about the import manifest referenced by this API action, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html">VM Import Manifest</a>.</p>
importInstance :: forall eff. EC2.Service -> EC2Types.ImportInstanceRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ImportInstanceResult
importInstance (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "importInstance"


-- | <p>Imports the public key from an RSA key pair that you created with a third-party tool. Compare this with <a>CreateKeyPair</a>, in which AWS creates the key pair and gives the keys to you (AWS keeps a copy of the public key). With ImportKeyPair, you create the key pair and give AWS just the public key. The private key is never transferred between you and AWS.</p> <p>For more information about key pairs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
importKeyPair :: forall eff. EC2.Service -> EC2Types.ImportKeyPairRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ImportKeyPairResult
importKeyPair (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "importKeyPair"


-- | <p>Imports a disk into an EBS snapshot.</p>
importSnapshot :: forall eff. EC2.Service -> EC2Types.ImportSnapshotRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ImportSnapshotResult
importSnapshot (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "importSnapshot"


-- | <p>Creates an import volume task using metadata from the specified disk image.For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/importing-your-volumes-into-amazon-ebs.html">Importing Disks to Amazon EBS</a>.</p> <p>For information about the import manifest referenced by this API action, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html">VM Import Manifest</a>.</p>
importVolume :: forall eff. EC2.Service -> EC2Types.ImportVolumeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ImportVolumeResult
importVolume (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "importVolume"


-- | <p>Modifies the specified attribute of the specified Amazon FPGA Image (AFI).</p>
modifyFpgaImageAttribute :: forall eff. EC2.Service -> EC2Types.ModifyFpgaImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyFpgaImageAttributeResult
modifyFpgaImageAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyFpgaImageAttribute"


-- | <p>Modify the auto-placement setting of a Dedicated Host. When auto-placement is enabled, AWS will place instances that you launch with a tenancy of <code>host</code>, but without targeting a specific host ID, onto any available Dedicated Host in your account which has auto-placement enabled. When auto-placement is disabled, you need to provide a host ID if you want the instance to launch onto a specific host. If no host ID is provided, the instance will be launched onto a suitable host which has auto-placement enabled.</p>
modifyHosts :: forall eff. EC2.Service -> EC2Types.ModifyHostsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyHostsResult
modifyHosts (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyHosts"


-- | <p>Modifies the ID format for the specified resource on a per-region basis. You can specify that resources should receive longer IDs (17-character IDs) when they are created.</p> <p>This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>.</p> <p>This setting applies to the IAM user who makes the request; it does not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user. If you're using this action as the root user, then these settings apply to the entire account, unless an IAM user explicitly overrides these settings for themselves. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html">Resource IDs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p> <p>Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant <code>Describe</code> command for the resource type.</p>
modifyIdFormat :: forall eff. EC2.Service -> EC2Types.ModifyIdFormatRequest -> Aff (exception :: EXCEPTION | eff) Unit
modifyIdFormat (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyIdFormat"


-- | <p>Modifies the ID format of a resource for a specified IAM user, IAM role, or the root user for an account; or all IAM users, IAM roles, and the root user for an account. You can specify that resources should receive longer IDs (17-character IDs) when they are created. </p> <p>This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: <code>bundle</code> | <code>conversion-task</code> | <code>customer-gateway</code> | <code>dhcp-options</code> | <code>elastic-ip-allocation</code> | <code>elastic-ip-association</code> | <code>export-task</code> | <code>flow-log</code> | <code>image</code> | <code>import-task</code> | <code>internet-gateway</code> | <code>network-acl</code> | <code>network-acl-association</code> | <code>network-interface</code> | <code>network-interface-attachment</code> | <code>prefix-list</code> | <code>route-table</code> | <code>route-table-association</code> | <code>security-group</code> | <code>subnet</code> | <code>subnet-cidr-block-association</code> | <code>vpc</code> | <code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> | <code>vpc-peering-connection</code> | <code>vpn-connection</code> | <code>vpn-gateway</code>. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html">Resource IDs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p> <p>This setting applies to the principal specified in the request; it does not apply to the principal that makes the request. </p> <p>Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant <code>Describe</code> command for the resource type.</p>
modifyIdentityIdFormat :: forall eff. EC2.Service -> EC2Types.ModifyIdentityIdFormatRequest -> Aff (exception :: EXCEPTION | eff) Unit
modifyIdentityIdFormat (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyIdentityIdFormat"


-- | <p>Modifies the specified attribute of the specified AMI. You can specify only one attribute at a time. You can use the <code>Attribute</code> parameter to specify the attribute or one of the following parameters: <code>Description</code>, <code>LaunchPermission</code>, or <code>ProductCode</code>.</p> <p>AWS Marketplace product codes cannot be modified. Images with an AWS Marketplace product code cannot be made public.</p> <p>To enable the SriovNetSupport enhanced networking attribute of an image, enable SriovNetSupport on an instance and create an AMI from the instance.</p>
modifyImageAttribute :: forall eff. EC2.Service -> EC2Types.ModifyImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
modifyImageAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyImageAttribute"


-- | <p>Modifies the specified attribute of the specified instance. You can specify only one attribute at a time.</p> <p>To modify some attributes, the instance must be stopped. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html">Modifying Attributes of a Stopped Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
modifyInstanceAttribute :: forall eff. EC2.Service -> EC2Types.ModifyInstanceAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
modifyInstanceAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyInstanceAttribute"


-- | <p>Modifies the credit option for CPU usage on a running or stopped T2 instance. The credit options are <code>standard</code> and <code>unlimited</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/t2-instances.html">T2 Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
modifyInstanceCreditSpecification :: forall eff. EC2.Service -> EC2Types.ModifyInstanceCreditSpecificationRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyInstanceCreditSpecificationResult
modifyInstanceCreditSpecification (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyInstanceCreditSpecification"


-- | <p>Modifies the placement attributes for a specified instance. You can do the following:</p> <ul> <li> <p>Modify the affinity between an instance and a <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html">Dedicated Host</a>. When affinity is set to <code>host</code> and the instance is not associated with a specific Dedicated Host, the next time the instance is launched, it is automatically associated with the host on which it lands. If the instance is restarted or rebooted, this relationship persists.</p> </li> <li> <p>Change the Dedicated Host with which an instance is associated.</p> </li> <li> <p>Change the instance tenancy of an instance from <code>host</code> to <code>dedicated</code>, or from <code>dedicated</code> to <code>host</code>.</p> </li> <li> <p>Move an instance to or from a <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">placement group</a>.</p> </li> </ul> <p>At least one attribute for affinity, host ID, tenancy, or placement group name must be specified in the request. Affinity and tenancy can be modified in the same request.</p> <p>To modify the host ID, tenancy, or placement group for an instance, the instance must be in the <code>stopped</code> state.</p>
modifyInstancePlacement :: forall eff. EC2.Service -> EC2Types.ModifyInstancePlacementRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyInstancePlacementResult
modifyInstancePlacement (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyInstancePlacement"


-- | <p>Modifies a launch template. You can specify which version of the launch template to set as the default version. When launching an instance, the default version applies when a launch template version is not specified.</p>
modifyLaunchTemplate :: forall eff. EC2.Service -> EC2Types.ModifyLaunchTemplateRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyLaunchTemplateResult
modifyLaunchTemplate (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyLaunchTemplate"


-- | <p>Modifies the specified network interface attribute. You can specify only one attribute at a time.</p>
modifyNetworkInterfaceAttribute :: forall eff. EC2.Service -> EC2Types.ModifyNetworkInterfaceAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
modifyNetworkInterfaceAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyNetworkInterfaceAttribute"


-- | <p>Modifies the Availability Zone, instance count, instance type, or network platform (EC2-Classic or EC2-VPC) of your Reserved Instances. The Reserved Instances to be modified must be identical, except for Availability Zone, network platform, and instance type.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html">Modifying Reserved Instances</a> in the Amazon Elastic Compute Cloud User Guide.</p>
modifyReservedInstances :: forall eff. EC2.Service -> EC2Types.ModifyReservedInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyReservedInstancesResult
modifyReservedInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyReservedInstances"


-- | <p>Adds or removes permission settings for the specified snapshot. You may add or remove specified AWS account IDs from a snapshot's list of create volume permissions, but you cannot do both in a single API call. If you need to both add and remove account IDs for a snapshot, you must use multiple API calls.</p> <note> <p>Encrypted snapshots and snapshots with AWS Marketplace product codes cannot be made public. Snapshots encrypted with your default CMK cannot be shared with other accounts.</p> </note> <p>For more information on modifying snapshot permissions, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html">Sharing Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
modifySnapshotAttribute :: forall eff. EC2.Service -> EC2Types.ModifySnapshotAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
modifySnapshotAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifySnapshotAttribute"


-- | <p>Modifies the specified Spot Fleet request.</p> <p>While the Spot Fleet request is being modified, it is in the <code>modifying</code> state.</p> <p>To scale up your Spot Fleet, increase its target capacity. The Spot Fleet launches the additional Spot Instances according to the allocation strategy for the Spot Fleet request. If the allocation strategy is <code>lowestPrice</code>, the Spot Fleet launches instances using the Spot pool with the lowest price. If the allocation strategy is <code>diversified</code>, the Spot Fleet distributes the instances across the Spot pools.</p> <p>To scale down your Spot Fleet, decrease its target capacity. First, the Spot Fleet cancels any open requests that exceed the new target capacity. You can request that the Spot Fleet terminate Spot Instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is <code>lowestPrice</code>, the Spot Fleet terminates the instances with the highest price per unit. If the allocation strategy is <code>diversified</code>, the Spot Fleet terminates instances across the Spot pools. Alternatively, you can request that the Spot Fleet keep the fleet at its current size, but not replace any Spot Instances that are interrupted or that you terminate manually.</p> <p>If you are finished with your Spot Fleet for now, but will use it again later, you can set the target capacity to 0.</p>
modifySpotFleetRequest :: forall eff. EC2.Service -> EC2Types.ModifySpotFleetRequestRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifySpotFleetRequestResponse
modifySpotFleetRequest (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifySpotFleetRequest"


-- | <p>Modifies a subnet attribute. You can only modify one attribute at a time.</p>
modifySubnetAttribute :: forall eff. EC2.Service -> EC2Types.ModifySubnetAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
modifySubnetAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifySubnetAttribute"


-- | <p>You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity. If your EBS volume is attached to a current-generation EC2 instance type, you may be able to apply these changes without stopping the instance or detaching the volume from it. For more information about modifying an EBS volume running Linux, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html">Modifying the Size, IOPS, or Type of an EBS Volume on Linux</a>. For more information about modifying an EBS volume running Windows, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html">Modifying the Size, IOPS, or Type of an EBS Volume on Windows</a>. </p> <p> When you complete a resize operation on your volume, you need to extend the volume's file-system size to take advantage of the new storage capacity. For information about extending a Linux file system, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux">Extending a Linux File System</a>. For information about extending a Windows file system, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows">Extending a Windows File System</a>. </p> <p> You can use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/">Amazon CloudWatch Events User Guide</a>. You can also track the status of a modification using the <a>DescribeVolumesModifications</a> API. For information about tracking status changes using either method, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods">Monitoring Volume Modifications</a>. </p> <note> <p>With previous-generation instance types, resizing an EBS volume may require detaching and reattaching the volume or stopping and restarting the instance. For more information about modifying an EBS volume running Linux, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html">Modifying the Size, IOPS, or Type of an EBS Volume on Linux</a>. For more information about modifying an EBS volume running Windows, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html">Modifying the Size, IOPS, or Type of an EBS Volume on Windows</a>.</p> </note> <note> <p>If you reach the maximum volume modification rate per volume limit, you will need to wait at least six hours before applying further modifications to the affected EBS volume.</p> </note>
modifyVolume :: forall eff. EC2.Service -> EC2Types.ModifyVolumeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyVolumeResult
modifyVolume (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyVolume"


-- | <p>Modifies a volume attribute.</p> <p>By default, all I/O operations for the volume are suspended when the data on the volume is determined to be potentially inconsistent, to prevent undetectable, latent data corruption. The I/O access to the volume can be resumed by first enabling I/O access and then checking the data consistency on your volume.</p> <p>You can change the default behavior to resume I/O operations. We recommend that you change this only for boot volumes or for volumes that are stateless or disposable.</p>
modifyVolumeAttribute :: forall eff. EC2.Service -> EC2Types.ModifyVolumeAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
modifyVolumeAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyVolumeAttribute"


-- | <p>Modifies the specified attribute of the specified VPC.</p>
modifyVpcAttribute :: forall eff. EC2.Service -> EC2Types.ModifyVpcAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
modifyVpcAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyVpcAttribute"


-- | <p>Modifies attributes of a specified VPC endpoint. The attributes that you can modify depend on the type of VPC endpoint (interface or gateway). For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-endpoints.html">VPC Endpoints</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
modifyVpcEndpoint :: forall eff. EC2.Service -> EC2Types.ModifyVpcEndpointRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyVpcEndpointResult
modifyVpcEndpoint (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyVpcEndpoint"


-- | <p>Modifies a connection notification for VPC endpoint or VPC endpoint service. You can change the SNS topic for the notification, or the events for which to be notified. </p>
modifyVpcEndpointConnectionNotification :: forall eff. EC2.Service -> EC2Types.ModifyVpcEndpointConnectionNotificationRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyVpcEndpointConnectionNotificationResult
modifyVpcEndpointConnectionNotification (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyVpcEndpointConnectionNotification"


-- | <p>Modifies the attributes of your VPC endpoint service configuration. You can change the Network Load Balancers for your service, and you can specify whether acceptance is required for requests to connect to your endpoint service through an interface VPC endpoint.</p>
modifyVpcEndpointServiceConfiguration :: forall eff. EC2.Service -> EC2Types.ModifyVpcEndpointServiceConfigurationRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyVpcEndpointServiceConfigurationResult
modifyVpcEndpointServiceConfiguration (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyVpcEndpointServiceConfiguration"


-- | <p>Modifies the permissions for your <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/endpoint-service.html">VPC endpoint service</a>. You can add or remove permissions for service consumers (IAM users, IAM roles, and AWS accounts) to connect to your endpoint service.</p>
modifyVpcEndpointServicePermissions :: forall eff. EC2.Service -> EC2Types.ModifyVpcEndpointServicePermissionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyVpcEndpointServicePermissionsResult
modifyVpcEndpointServicePermissions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyVpcEndpointServicePermissions"


-- | <p>Modifies the VPC peering connection options on one side of a VPC peering connection. You can do the following:</p> <ul> <li> <p>Enable/disable communication over the peering connection between an EC2-Classic instance that's linked to your VPC (using ClassicLink) and instances in the peer VPC.</p> </li> <li> <p>Enable/disable communication over the peering connection between instances in your VPC and an EC2-Classic instance that's linked to the peer VPC.</p> </li> <li> <p>Enable/disable the ability to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.</p> </li> </ul> <p>If the peered VPCs are in different accounts, each owner must initiate a separate request to modify the peering connection options, depending on whether their VPC was the requester or accepter for the VPC peering connection. If the peered VPCs are in the same account, you can modify the requester and accepter options in the same request. To confirm which VPC is the accepter and requester for a VPC peering connection, use the <a>DescribeVpcPeeringConnections</a> command.</p>
modifyVpcPeeringConnectionOptions :: forall eff. EC2.Service -> EC2Types.ModifyVpcPeeringConnectionOptionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyVpcPeeringConnectionOptionsResult
modifyVpcPeeringConnectionOptions (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyVpcPeeringConnectionOptions"


-- | <p>Modifies the instance tenancy attribute of the specified VPC. You can change the instance tenancy attribute of a VPC to <code>default</code> only. You cannot change the instance tenancy attribute to <code>dedicated</code>.</p> <p>After you modify the tenancy of the VPC, any new instances that you launch into the VPC have a tenancy of <code>default</code>, unless you specify otherwise during launch. The tenancy of any existing instances in the VPC is not affected.</p> <p>For more information about Dedicated Instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
modifyVpcTenancy :: forall eff. EC2.Service -> EC2Types.ModifyVpcTenancyRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ModifyVpcTenancyResult
modifyVpcTenancy (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyVpcTenancy"


-- | <p>Enables detailed monitoring for a running instance. Otherwise, basic monitoring is enabled. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html">Monitoring Your Instances and Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>To disable detailed monitoring, see .</p>
monitorInstances :: forall eff. EC2.Service -> EC2Types.MonitorInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.MonitorInstancesResult
monitorInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "monitorInstances"


-- | <p>Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform. The Elastic IP address must be allocated to your account for more than 24 hours, and it must not be associated with an instance. After the Elastic IP address is moved, it is no longer available for use in the EC2-Classic platform, unless you move it back using the <a>RestoreAddressToClassic</a> request. You cannot move an Elastic IP address that was originally allocated for use in the EC2-VPC platform to the EC2-Classic platform. </p>
moveAddressToVpc :: forall eff. EC2.Service -> EC2Types.MoveAddressToVpcRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.MoveAddressToVpcResult
moveAddressToVpc (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "moveAddressToVpc"


-- | <p>Purchase a reservation with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation. This action results in the specified reservation being purchased and charged to your account.</p>
purchaseHostReservation :: forall eff. EC2.Service -> EC2Types.PurchaseHostReservationRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.PurchaseHostReservationResult
purchaseHostReservation (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "purchaseHostReservation"


-- | <p>Purchases a Reserved Instance for use with your account. With Reserved Instances, you pay a lower hourly rate compared to On-Demand instance pricing.</p> <p>Use <a>DescribeReservedInstancesOfferings</a> to get a list of Reserved Instance offerings that match your specifications. After you've purchased a Reserved Instance, you can check for your new Reserved Instance with <a>DescribeReservedInstances</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html">Reserved Instances</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
purchaseReservedInstancesOffering :: forall eff. EC2.Service -> EC2Types.PurchaseReservedInstancesOfferingRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.PurchaseReservedInstancesOfferingResult
purchaseReservedInstancesOffering (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "purchaseReservedInstancesOffering"


-- | <p>Purchases one or more Scheduled Instances with the specified schedule.</p> <p>Scheduled Instances enable you to purchase Amazon EC2 compute capacity by the hour for a one-year term. Before you can purchase a Scheduled Instance, you must call <a>DescribeScheduledInstanceAvailability</a> to check for available schedules and obtain a purchase token. After you purchase a Scheduled Instance, you must call <a>RunScheduledInstances</a> during each scheduled time period.</p> <p>After you purchase a Scheduled Instance, you can't cancel, modify, or resell your purchase.</p>
purchaseScheduledInstances :: forall eff. EC2.Service -> EC2Types.PurchaseScheduledInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.PurchaseScheduledInstancesResult
purchaseScheduledInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "purchaseScheduledInstances"


-- | <p>Requests a reboot of one or more instances. This operation is asynchronous; it only queues a request to reboot the specified instances. The operation succeeds if the instances are valid and belong to you. Requests to reboot terminated instances are ignored.</p> <p>If an instance does not cleanly shut down within four minutes, Amazon EC2 performs a hard reboot.</p> <p>For more information about troubleshooting, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html">Getting Console Output and Rebooting Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
rebootInstances :: forall eff. EC2.Service -> EC2Types.RebootInstancesRequest -> Aff (exception :: EXCEPTION | eff) Unit
rebootInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "rebootInstances"


-- | <p>Registers an AMI. When you're creating an AMI, this is the final step you must complete before you can launch an instance from the AMI. For more information about creating AMIs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html">Creating Your Own AMIs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <note> <p>For Amazon EBS-backed instances, <a>CreateImage</a> creates and registers the AMI in a single request, so you don't have to register the AMI yourself.</p> </note> <p>You can also use <code>RegisterImage</code> to create an Amazon EBS-backed Linux AMI from a snapshot of a root device volume. You specify the snapshot using the block device mapping. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-launch-snapshot.html">Launching a Linux Instance from a Backup</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>You can't register an image where a secondary (non-root) snapshot has AWS Marketplace product codes.</p> <p>Some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE Linux Enterprise Server (SLES), use the EC2 billing product code associated with an AMI to verify the subscription status for package updates. Creating an AMI from an EBS snapshot does not maintain this billing code, and subsequent instances launched from such an AMI will not be able to connect to package update infrastructure. To create an AMI that must retain billing codes, see <a>CreateImage</a>.</p> <p>If needed, you can deregister an AMI at any time. Any modifications you make to an AMI backed by an instance store volume invalidates its registration. If you make changes to an image, deregister the previous image and register the new image.</p>
registerImage :: forall eff. EC2.Service -> EC2Types.RegisterImageRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.RegisterImageResult
registerImage (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerImage"


-- | <p>Rejects one or more VPC endpoint connection requests to your VPC endpoint service.</p>
rejectVpcEndpointConnections :: forall eff. EC2.Service -> EC2Types.RejectVpcEndpointConnectionsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.RejectVpcEndpointConnectionsResult
rejectVpcEndpointConnections (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "rejectVpcEndpointConnections"


-- | <p>Rejects a VPC peering connection request. The VPC peering connection must be in the <code>pending-acceptance</code> state. Use the <a>DescribeVpcPeeringConnections</a> request to view your outstanding VPC peering connection requests. To delete an active VPC peering connection, or to delete a VPC peering connection request that you initiated, use <a>DeleteVpcPeeringConnection</a>.</p>
rejectVpcPeeringConnection :: forall eff. EC2.Service -> EC2Types.RejectVpcPeeringConnectionRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.RejectVpcPeeringConnectionResult
rejectVpcPeeringConnection (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "rejectVpcPeeringConnection"


-- | <p>Releases the specified Elastic IP address.</p> <p>[EC2-Classic, default VPC] Releasing an Elastic IP address automatically disassociates it from any instance that it's associated with. To disassociate an Elastic IP address without releasing it, use <a>DisassociateAddress</a>.</p> <p>[Nondefault VPC] You must use <a>DisassociateAddress</a> to disassociate the Elastic IP address before you can release it. Otherwise, Amazon EC2 returns an error (<code>InvalidIPAddress.InUse</code>).</p> <p>After releasing an Elastic IP address, it is released to the IP address pool. Be sure to update your DNS records and any servers or devices that communicate with the address. If you attempt to release an Elastic IP address that you already released, you'll get an <code>AuthFailure</code> error if the address is already allocated to another AWS account.</p> <p>[EC2-VPC] After you release an Elastic IP address for use in a VPC, you might be able to recover it. For more information, see <a>AllocateAddress</a>.</p>
releaseAddress :: forall eff. EC2.Service -> EC2Types.ReleaseAddressRequest -> Aff (exception :: EXCEPTION | eff) Unit
releaseAddress (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "releaseAddress"


-- | <p>When you no longer want to use an On-Demand Dedicated Host it can be released. On-Demand billing is stopped and the host goes into <code>released</code> state. The host ID of Dedicated Hosts that have been released can no longer be specified in another request, e.g., ModifyHosts. You must stop or terminate all instances on a host before it can be released.</p> <p>When Dedicated Hosts are released, it make take some time for them to stop counting toward your limit and you may receive capacity errors when trying to allocate new Dedicated hosts. Try waiting a few minutes, and then try again.</p> <p>Released hosts will still appear in a <a>DescribeHosts</a> response.</p>
releaseHosts :: forall eff. EC2.Service -> EC2Types.ReleaseHostsRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ReleaseHostsResult
releaseHosts (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "releaseHosts"


-- | <p>Replaces an IAM instance profile for the specified running instance. You can use this action to change the IAM instance profile that's associated with an instance without having to disassociate the existing IAM instance profile first.</p> <p>Use <a>DescribeIamInstanceProfileAssociations</a> to get the association ID.</p>
replaceIamInstanceProfileAssociation :: forall eff. EC2.Service -> EC2Types.ReplaceIamInstanceProfileAssociationRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ReplaceIamInstanceProfileAssociationResult
replaceIamInstanceProfileAssociation (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "replaceIamInstanceProfileAssociation"


-- | <p>Changes which network ACL a subnet is associated with. By default when you create a subnet, it's automatically associated with the default network ACL. For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>This is an idempotent operation.</p>
replaceNetworkAclAssociation :: forall eff. EC2.Service -> EC2Types.ReplaceNetworkAclAssociationRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ReplaceNetworkAclAssociationResult
replaceNetworkAclAssociation (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "replaceNetworkAclAssociation"


-- | <p>Replaces an entry (rule) in a network ACL. For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
replaceNetworkAclEntry :: forall eff. EC2.Service -> EC2Types.ReplaceNetworkAclEntryRequest -> Aff (exception :: EXCEPTION | eff) Unit
replaceNetworkAclEntry (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "replaceNetworkAclEntry"


-- | <p>Replaces an existing route within a route table in a VPC. You must provide only one of the following: Internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, or egress-only Internet gateway.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
replaceRoute :: forall eff. EC2.Service -> EC2Types.ReplaceRouteRequest -> Aff (exception :: EXCEPTION | eff) Unit
replaceRoute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "replaceRoute"


-- | <p>Changes the route table associated with a given subnet in a VPC. After the operation completes, the subnet uses the routes in the new route table it's associated with. For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>You can also use ReplaceRouteTableAssociation to change which table is the main route table in the VPC. You just specify the main route table's association ID and the route table to be the new main route table.</p>
replaceRouteTableAssociation :: forall eff. EC2.Service -> EC2Types.ReplaceRouteTableAssociationRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ReplaceRouteTableAssociationResult
replaceRouteTableAssociation (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "replaceRouteTableAssociation"


-- | <p>Submits feedback about the status of an instance. The instance must be in the <code>running</code> state. If your experience with the instance differs from the instance status returned by <a>DescribeInstanceStatus</a>, use <a>ReportInstanceStatus</a> to report your experience with the instance. Amazon EC2 collects this information to improve the accuracy of status checks.</p> <p>Use of this action does not change the value returned by <a>DescribeInstanceStatus</a>.</p>
reportInstanceStatus :: forall eff. EC2.Service -> EC2Types.ReportInstanceStatusRequest -> Aff (exception :: EXCEPTION | eff) Unit
reportInstanceStatus (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "reportInstanceStatus"


-- | <p>Creates a Spot Fleet request.</p> <p>You can submit a single request that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.</p> <p>By default, the Spot Fleet requests Spot Instances in the Spot pool where the price per unit is the lowest. Each launch specification can include its own instance weighting that reflects the value of the instance type to your application workload.</p> <p>Alternatively, you can specify that the Spot Fleet distribute the target capacity across the Spot pools included in its launch specifications. By ensuring that the Spot Instances in your Spot Fleet are in different Spot pools, you can improve the availability of your fleet.</p> <p>You can specify tags for the Spot Instances. You cannot tag other resource types in a Spot Fleet request; only the <code>instance</code> resource type is supported.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html">Spot Fleet Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
requestSpotFleet :: forall eff. EC2.Service -> EC2Types.RequestSpotFleetRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.RequestSpotFleetResponse
requestSpotFleet (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "requestSpotFleet"


-- | <p>Creates a Spot Instance request. Spot Instances are instances that Amazon EC2 launches when the maximum price that you specify exceeds the current Spot price. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html">Spot Instance Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
requestSpotInstances :: forall eff. EC2.Service -> EC2Types.RequestSpotInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.RequestSpotInstancesResult
requestSpotInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "requestSpotInstances"


-- | <p>Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value. You can only reset the load permission attribute.</p>
resetFpgaImageAttribute :: forall eff. EC2.Service -> EC2Types.ResetFpgaImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.ResetFpgaImageAttributeResult
resetFpgaImageAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "resetFpgaImageAttribute"


-- | <p>Resets an attribute of an AMI to its default value.</p> <note> <p>The productCodes attribute can't be reset.</p> </note>
resetImageAttribute :: forall eff. EC2.Service -> EC2Types.ResetImageAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
resetImageAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "resetImageAttribute"


-- | <p>Resets an attribute of an instance to its default value. To reset the <code>kernel</code> or <code>ramdisk</code>, the instance must be in a stopped state. To reset the <code>sourceDestCheck</code>, the instance can be either running or stopped.</p> <p>The <code>sourceDestCheck</code> attribute controls whether source/destination checking is enabled. The default value is <code>true</code>, which means checking is enabled. This value must be <code>false</code> for a NAT instance to perform NAT. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html">NAT Instances</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>
resetInstanceAttribute :: forall eff. EC2.Service -> EC2Types.ResetInstanceAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
resetInstanceAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "resetInstanceAttribute"


-- | <p>Resets a network interface attribute. You can specify only one attribute at a time.</p>
resetNetworkInterfaceAttribute :: forall eff. EC2.Service -> EC2Types.ResetNetworkInterfaceAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
resetNetworkInterfaceAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "resetNetworkInterfaceAttribute"


-- | <p>Resets permission settings for the specified snapshot.</p> <p>For more information on modifying snapshot permissions, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html">Sharing Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
resetSnapshotAttribute :: forall eff. EC2.Service -> EC2Types.ResetSnapshotAttributeRequest -> Aff (exception :: EXCEPTION | eff) Unit
resetSnapshotAttribute (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "resetSnapshotAttribute"


-- | <p>Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform. You cannot move an Elastic IP address that was originally allocated for use in EC2-VPC. The Elastic IP address must not be associated with an instance or network interface.</p>
restoreAddressToClassic :: forall eff. EC2.Service -> EC2Types.RestoreAddressToClassicRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.RestoreAddressToClassicResult
restoreAddressToClassic (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "restoreAddressToClassic"


-- | <p>[EC2-VPC only] Removes one or more egress rules from a security group for EC2-VPC. This action doesn't apply to security groups for use in EC2-Classic. To remove a rule, the values that you specify (for example, ports) must match the existing rule's values exactly.</p> <p>Each rule consists of the protocol and the IPv4 or IPv6 CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not have to specify the description to revoke the rule.</p> <p>Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.</p>
revokeSecurityGroupEgress :: forall eff. EC2.Service -> EC2Types.RevokeSecurityGroupEgressRequest -> Aff (exception :: EXCEPTION | eff) Unit
revokeSecurityGroupEgress (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "revokeSecurityGroupEgress"


-- | <p>Removes one or more ingress rules from a security group. To remove a rule, the values that you specify (for example, ports) must match the existing rule's values exactly.</p> <note> <p>[EC2-Classic security groups only] If the values you specify do not match the existing rule's values, no error is returned. Use <a>DescribeSecurityGroups</a> to verify that the rule has been removed.</p> </note> <p>Each rule consists of the protocol and the CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not have to specify the description to revoke the rule.</p> <p>Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.</p>
revokeSecurityGroupIngress :: forall eff. EC2.Service -> EC2Types.RevokeSecurityGroupIngressRequest -> Aff (exception :: EXCEPTION | eff) Unit
revokeSecurityGroupIngress (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "revokeSecurityGroupIngress"


-- | <p>Launches the specified number of instances using an AMI for which you have permissions. </p> <p>You can specify a number of options, or leave the default options. The following rules apply:</p> <ul> <li> <p>[EC2-VPC] If you don't specify a subnet ID, we choose a default subnet from your default VPC for you. If you don't have a default VPC, you must specify a subnet ID in the request.</p> </li> <li> <p>[EC2-Classic] If don't specify an Availability Zone, we choose one for you.</p> </li> <li> <p>Some instance types must be launched into a VPC. If you do not have a default VPC, or if you do not specify a subnet ID, the request fails. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#vpc-only-instance-types">Instance Types Available Only in a VPC</a>.</p> </li> <li> <p>[EC2-VPC] All instances have a network interface with a primary private IPv4 address. If you don't specify this address, we choose one from the IPv4 range of your subnet.</p> </li> <li> <p>Not all instance types support IPv6 addresses. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Types</a>.</p> </li> <li> <p>If you don't specify a security group ID, we use the default security group. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Security Groups</a>.</p> </li> <li> <p>If any of the AMIs have a product code attached for which the user has not subscribed, the request fails.</p> </li> </ul> <p>You can create a <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html">launch template</a>, which is a resource that contains the parameters to launch an instance. When you launch an instance using <a>RunInstances</a>, you can specify the launch template instead of specifying the launch parameters.</p> <p>To ensure faster instance launches, break up large requests into smaller batches. For example, create five separate launch requests for 100 instances each instead of one launch request for 500 instances.</p> <p>An instance is ready for you to use when it's in the <code>running</code> state. You can check the state of your instance using <a>DescribeInstances</a>. You can tag instances and EBS volumes during launch, after launch, or both. For more information, see <a>CreateTags</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Amazon EC2 Resources</a>.</p> <p>Linux instances have access to the public key of the key pair at boot. You can use this key to provide secure access to the instance. Amazon EC2 public images use this feature to provide secure access without passwords. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>For troubleshooting, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html">What To Do If An Instance Immediately Terminates</a>, and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html">Troubleshooting Connecting to Your Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
runInstances :: forall eff. EC2.Service -> EC2Types.RunInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.Reservation
runInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "runInstances"


-- | <p>Launches the specified Scheduled Instances.</p> <p>Before you can launch a Scheduled Instance, you must purchase it and obtain an identifier using <a>PurchaseScheduledInstances</a>.</p> <p>You must launch a Scheduled Instance during its scheduled time period. You can't stop or reboot a Scheduled Instance, but you can terminate it as needed. If you terminate a Scheduled Instance before the current scheduled time period ends, you can launch it again after a few minutes. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html">Scheduled Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
runScheduledInstances :: forall eff. EC2.Service -> EC2Types.RunScheduledInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.RunScheduledInstancesResult
runScheduledInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "runScheduledInstances"


-- | <p>Starts an Amazon EBS-backed instance that you've previously stopped.</p> <p>Instances that use Amazon EBS volumes as their root devices can be quickly stopped and started. When an instance is stopped, the compute resources are released and you are not billed for instance usage. However, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. You can restart your instance at any time. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.</p> <p>Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.</p> <p>Performing this operation on an instance that uses an instance store as its root device returns an error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html">Stopping Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
startInstances :: forall eff. EC2.Service -> EC2Types.StartInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.StartInstancesResult
startInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startInstances"


-- | <p>Stops an Amazon EBS-backed instance.</p> <p>We don't charge usage for a stopped instance, or data transfer fees; however, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.</p> <p>You can't start or stop Spot Instances, and you can't stop instance store-backed instances.</p> <p>When you stop an instance, we shut it down. You can restart your instance at any time. Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.</p> <p>Stopping an instance is different to rebooting or terminating it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, the root device and any other devices attached during the instance launch are automatically deleted. For more information about the differences between rebooting, stopping, and terminating instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html">Instance Lifecycle</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>When you stop an instance, we attempt to shut it down forcibly after a short while. If your instance appears stuck in the stopping state after a period of time, there may be an issue with the underlying host computer. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html">Troubleshooting Stopping Your Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
stopInstances :: forall eff. EC2.Service -> EC2Types.StopInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.StopInstancesResult
stopInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopInstances"


-- | <p>Shuts down one or more instances. This operation is idempotent; if you terminate an instance more than once, each call succeeds. </p> <p>If you specify multiple instances and the request fails (for example, because of a single incorrect instance ID), none of the instances are terminated.</p> <p>Terminated instances remain visible after termination (for approximately one hour).</p> <p>By default, Amazon EC2 deletes all EBS volumes that were attached when the instance launched. Volumes attached after instance launch continue running.</p> <p>You can stop, start, and terminate EBS-backed instances. You can only terminate instance store-backed instances. What happens to an instance differs if you stop it or terminate it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, any attached EBS volumes with the <code>DeleteOnTermination</code> block device mapping parameter set to <code>true</code> are automatically deleted. For more information about the differences between stopping and terminating instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html">Instance Lifecycle</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>For more information about troubleshooting, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html">Troubleshooting Terminating Your Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
terminateInstances :: forall eff. EC2.Service -> EC2Types.TerminateInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.TerminateInstancesResult
terminateInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "terminateInstances"


-- | <p>Unassigns one or more IPv6 addresses from a network interface.</p>
unassignIpv6Addresses :: forall eff. EC2.Service -> EC2Types.UnassignIpv6AddressesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.UnassignIpv6AddressesResult
unassignIpv6Addresses (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "unassignIpv6Addresses"


-- | <p>Unassigns one or more secondary private IP addresses from a network interface.</p>
unassignPrivateIpAddresses :: forall eff. EC2.Service -> EC2Types.UnassignPrivateIpAddressesRequest -> Aff (exception :: EXCEPTION | eff) Unit
unassignPrivateIpAddresses (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "unassignPrivateIpAddresses"


-- | <p>Disables detailed monitoring for a running instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html">Monitoring Your Instances and Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
unmonitorInstances :: forall eff. EC2.Service -> EC2Types.UnmonitorInstancesRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.UnmonitorInstancesResult
unmonitorInstances (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "unmonitorInstances"


-- | <p>[EC2-VPC only] Updates the description of an egress (outbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously.</p> <p>You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.</p>
updateSecurityGroupRuleDescriptionsEgress :: forall eff. EC2.Service -> EC2Types.UpdateSecurityGroupRuleDescriptionsEgressRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.UpdateSecurityGroupRuleDescriptionsEgressResult
updateSecurityGroupRuleDescriptionsEgress (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateSecurityGroupRuleDescriptionsEgress"


-- | <p>Updates the description of an ingress (inbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously.</p> <p>You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.</p>
updateSecurityGroupRuleDescriptionsIngress :: forall eff. EC2.Service -> EC2Types.UpdateSecurityGroupRuleDescriptionsIngressRequest -> Aff (exception :: EXCEPTION | eff) EC2Types.UpdateSecurityGroupRuleDescriptionsIngressResult
updateSecurityGroupRuleDescriptionsIngress (EC2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateSecurityGroupRuleDescriptionsIngress"
