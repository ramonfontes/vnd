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

    print "*** Creating nodes"
    s1 = net.addSwitch( 's1', listenPort=null, mac='null' )
    sta2 = net.addStation( 'sta2', wlans=null, mac='00:00:00:00:00:02', ip='10.0.0.2/8', position='228.3,851,0', range=18 )
    c3 = net.addController( 'c3' )

    print "*** Creating links"

    print "*** Starting network"
    net.build()
    c3.start()

    net.plotGraph(max_x=871, max_y=871)

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

