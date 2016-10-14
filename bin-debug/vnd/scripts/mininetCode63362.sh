#!/usr/bin/python

"""
Script created by VND - Visual Network Description (SDN version)
"""
from mininet.net import Mininet
from mininet.node import Controller, RemoteController, OVSKernelSwitch, IVSSwitch, UserSwitch
from mininet.link import Link, TCLink
from mininet.cli import CLI
from mininet.log import setLogLevel

def topology():

    "Create a network."
    net = Mininet( controller=RemoteController, link=TCLink, switch=OVSKernelSwitch )

    print "*** Creating nodes"
    sta1 = net.addStation( 'sta1', wlans=1, mac='00:02:00:00:00:01', ip='10.0.0.1/8', position='172,269,0' )
    ap2 = net.addBaseStation( 'ap2', ssid= 'new-ssid', mode= 'g', channel= '1', position='223,96,0' )
    sta3 = net.addStation( 'sta3', wlans=1, mac='00:02:00:00:00:03', ip='10.0.0.3/8', position='425,294,0' )

    print "*** Creating links"
    net.addLink(ap2, sta1)
    net.addLink(ap2, sta3)

    print "*** Starting network"
    net.build()

    net.plotGraph(max_x=445, max_y=314)

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

