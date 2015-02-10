#!/usr/bin/python

"""
Script created by VND - Visual Network Description (SDN version)
"""
from mininet.net import Mininet
from mininet.node import Controller, RemoteController, OVSKernelSwitch, OVSLegacyKernelSwitch, UserSwitch
from mininet.cli import CLI
from mininet.log import setLogLevel
from mininet.link import Link, TCLink

def topology():
    "Create a network."
    net = Mininet( controller=RemoteController, link=TCLink, switch=OVSKernelSwitch )

    print "*** Creating nodes"
    c1 = net.addController( 'c1', controller=RemoteController, ip='127.0.0.1', port=6633 )
    s2 = net.addSwitch( 's2', listenPort=6673, mac='00:00:00:00:00:02' )
    c3 = net.addController( 'c3', controller=RemoteController, ip='127.0.0.1', port=6634 )
    s4 = net.addSwitch( 's4', listenPort=6674, mac='00:00:00:00:00:04' )

    print "*** Creating links"

    print "*** Starting network"
    net.build()
    c1.start()
    c3.start()
    s4.start( [c3] )
    s2.start( [c1] )

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

