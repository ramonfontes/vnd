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
    net = Mininet( controller=Controller, link=TCLink, switch=OVSKernelSwitch )

    print "*** Creating nodes"
    ap1 = net.addBaseStation( 'ap1', ssid= 'new-ssid', mode= 'g', channel= '1' )
    ap2 = net.addBaseStation( 'ap2', ssid= 'new-ssid', mode= 'g', channel= '1' )
    c3 = net.addController( 'c3' )

    print "*** Creating links"
    net.addLink(ap1, ap2)

    print "*** Starting network"
    net.build()
    c3.start()
    ap2.start( [c3] )
    ap1.start( [c3] )

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

