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
    c2 = net.addController( 'c2', controller=RemoteController, ip='127.0.0.1', port=6634 )
    s3 = net.addSwitch( 's3', listenPort=6635, mac='00:00:00:00:00:03' )
    c4 = net.addController( 'c4', controller=RemoteController, ip='127.0.0.1', port=6636 )
    s5 = net.addSwitch( 's5', listenPort=6637, mac='00:00:00:00:00:05' )

    print "*** Creating links"

    print "*** Starting network"
    net.build()
    c1.start()
    c2.start()
    c4.start()

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

