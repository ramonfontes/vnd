//UNDER DEVELOPMENT
//##########################################
//Script created by VND - Visual Network Description (SDN version)
//##########################################
#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/internet-module.h"
#include "ns3/point-to-point-module.h"
#include "ns3/applications-module.h"
#include "ns3/csma-channel.h"
#include "ns3/csma-net-device.h"
#include "ns3/csma-module.h"
#include "ns3/csma-helper.h"
#include "ns3/internet-stack-helper.h"
#include "ns3/log.h"

using namespace ns3;

NS_LOG_COMPONENT_DEFINE ("FirstScriptExample");

bool verbose = false;
bool use_drop = false;
ns3::Time timeout = ns3::Seconds (0);

bool SetVerbose (std::string value){
verbose = true;
return true;}

bool SetDrop (std::string value){
use_drop = true;
return true;}

bool SetTimeout (std::string value){
try {
timeout = ns3::Seconds (atof (value.c_str ()));
return true;}
catch (...) { return false; }
return false;}

int main (int argc, char *argv[]){
Time::SetResolution (Time::NS);
#ifdef NS3_OPENFLOW

  CommandLine cmd;
  cmd.AddValue ("v", "Verbose (turns on logging).", MakeCallback (&SetVerbose));
  cmd.AddValue ("verbose", "Verbose (turns on logging).", MakeCallback (&SetVerbose));
  cmd.AddValue ("d", "Use Drop Controller (Learning if not specified).", MakeCallback (&SetDrop));
  cmd.AddValue ("drop", "Use Drop Controller (Learning if not specified).", MakeCallback (&SetDrop));
  cmd.AddValue ("t", "Learning Controller Timeout (has no effect if drop controller is specified).", MakeCallback ( &SetTimeout));
  cmd.AddValue ("timeout", "Learning Controller Timeout (has no effect if drop controller is specified).", MakeCallback ( &SetTimeout));

  cmd.Parse (argc, argv);

  if (verbose){
  LogComponentEnable ("OpenFlowCsmaSwitchExample", LOG_LEVEL_INFO);
  LogComponentEnable ("OpenFlowInterface", LOG_LEVEL_INFO);
  LogComponentEnable ("OpenFlowSwitchNetDevice", LOG_LEVEL_INFO);
  LogComponentEnable ("UdpEchoClientApplication", LOG_LEVEL_INFO);
  LogComponentEnable ("UdpEchoServerApplication", LOG_LEVEL_INFO);}

  NodeContainer computer_1;
  computer_1.Create (1);
  NodeContainer switchOpenflow_2;
  switchOpenflow_2.Create (1);
  NodeContainer computer_4;
  computer_4.Create (1);
  NodeContainer computer_5;
  computer_5.Create (1);


  NS_LOG_INFO ("Building links.");


  NS_LOG_INFO ("Building link net device container.");
  NodeContainer all_switchOpenflow_2_computer_5;
  all_switchOpenflow_2_computer_5.Add (switchOpenflow_2);
  all_switchOpenflow_2_computer_5.Add (computer_5);
  NetDeviceContainer ndc_p2p5 = csma_bridge_2_5.Install (all_switchOpenflow_2_computer_5);
  NodeContainer all_switchOpenflow_2_computer_4;
  all_switchOpenflow_2_computer_4.Add (switchOpenflow_2);
  all_switchOpenflow_2_computer_4.Add (computer_4);
  NetDeviceContainer ndc_p2p4 = csma_bridge_2_4.Install (all_switchOpenflow_2_computer_4);
  NodeContainer all_computer_1_switchOpenflow_2;
  all_computer_1_switchOpenflow_2.Add (computer_1);
  all_computer_1_switchOpenflow_2.Add (switchOpenflow_2);
  NetDeviceContainer ndc_p1p2 = csma_bridge_1_2.Install (all_computer_1_switchOpenflow_2);

  NS_LOG_INFO ("Install the IP stack.");
  InternetStackHelper internetStackH;
  internetStackH.Install (computer_1);
  internetStackH.Install (switchOpenflow_2);
  internetStackH.Install (computer_4);
  internetStackH.Install (computer_5);

  //Addressing...
  Ipv4AddressHelper address;
  address.SetBase ("10.0.0.1", "255.0.0.0");
  Ipv4InterfaceContainer iface_switchOpenflow_2_computer_5 = address.Assign (ndc_p2p5);
  address.SetBase ("10.0.0.1", "255.0.0.0");
  Ipv4InterfaceContainer iface_switchOpenflow_2_computer_4 = address.Assign (ndc_p2p4);
  address.SetBase ("10.0.0.1", "255.0.0.0");
  Ipv4InterfaceContainer iface_computer_1_switchOpenflow_2 = address.Assign (ndc_p1p2);

  UdpEchoServerHelper echoServer0 (9);

  ApplicationContainer serverApps3 = echoServer0.Install (computer_1.Get (0));
  ApplicationContainer serverApps4 = echoServer0.Install (switchOpenflow_2.Get (0));
  ApplicationContainer serverApps5 = echoServer0.Install (computer_4.Get (0));
  ApplicationContainer serverApps6 = echoServer0.Install (computer_5.Get (0));
  serverApps3.Start (Seconds (1.0));
  serverApps4.Start (Seconds (1.0));
  serverApps5.Start (Seconds (1.0));
  serverApps6.Start (Seconds (1.0));

  serverApps3.Stop (Seconds (10.0));
  serverApps4.Stop (Seconds (10.0));
  serverApps5.Stop (Seconds (10.0));
  serverApps6.Stop (Seconds (10.0));

  UdpEchoClientHelper echoClient0 (iface_switchOpenflow_2_computer_5.GetAddress (1), 9);
  echoClient0.SetAttribute ("MaxPackets", UintegerValue (1));
  echoClient0.SetAttribute ("Interval", TimeValue (Seconds (1.0)));
  echoClient0.SetAttribute ("PacketSize", UintegerValue (1024));

  UdpEchoClientHelper echoClient1 (iface_switchOpenflow_2_computer_4.GetAddress (1), 9);
  echoClient1.SetAttribute ("MaxPackets", UintegerValue (1));
  echoClient1.SetAttribute ("Interval", TimeValue (Seconds (1.0)));
  echoClient1.SetAttribute ("PacketSize", UintegerValue (1024));

  UdpEchoClientHelper echoClient2 (iface_computer_1_switchOpenflow_2.GetAddress (1), 9);
  echoClient2.SetAttribute ("MaxPackets", UintegerValue (1));
  echoClient2.SetAttribute ("Interval", TimeValue (Seconds (1.0)));
  echoClient2.SetAttribute ("PacketSize", UintegerValue (1024));


  ApplicationContainer clientApps3 = echoClient0.Install (computer_1.Get (0));
  ApplicationContainer clientApps4 = echoClient0.Install (switchOpenflow_2.Get (0));
  ApplicationContainer clientApps5 = echoClient0.Install (computer_4.Get (0));
  ApplicationContainer clientApps6 = echoClient0.Install (computer_5.Get (0));
  clientApps3.Start (Seconds (2.0));
  clientApps4.Start (Seconds (2.0));
  clientApps5.Start (Seconds (2.0));
  clientApps6.Start (Seconds (2.0));
  clientApps3.Stop (Seconds (10.0));
  clientApps4.Stop (Seconds (10.0));
  clientApps5.Stop (Seconds (10.0));
  clientApps6.Stop (Seconds (10.0));

  NS_LOG_INFO ("Run Simulation.");
  Simulator::Run ();
  Simulator::Destroy ();
  NS_LOG_INFO ("Done.");
  #else
  NS_LOG_INFO ("NS-3 OpenFlow is not enabled. Cannot run simulation.");
  #endif
}

//###################################################################
//Do you want to contribute for development of automatic NS3 code? Please contact me via email: ramonreisfontes@gmail.com
//###################################################################
