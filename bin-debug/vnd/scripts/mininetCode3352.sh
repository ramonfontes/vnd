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
    s1 = net.addSwitch( 's1', listenPort=6673, mac='00:00:00:00:00:01' )
    sta2 = net.addStation( 'sta2', wlans=1, mac='00:02:00:00:00:02', ip='10.0.0.2/8', position='309,323,0', range=18 )
    sta3 = net.addStation( 'sta3', wlans=1, mac='00:02:00:00:00:03', ip='10.0.0.3/8', position='457,322,0', range=18 )
    h4 = net.addHost( 'h4', mac='00:00:00:00:00:04', ip='10.0.0.4/8' )
    h5 = net.addHost( 'h5', mac='00:00:00:00:00:05', ip='10.0.0.5/8' )
    c6 = net.addController( 'c6' )

    print "*** Creating links"
    net.addLink(h5, s1)
    net.addLink(s1, sta2)
    net.addLink(s1, sta3)
    net.addLink(s1, h4)

    print "*** Starting network"
    net.build()
    c6.start()
    s1.start( [c6] )

    net.plotGraph(max_x=477, max_y=343)

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

