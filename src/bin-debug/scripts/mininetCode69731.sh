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
    ap1 = net.addBaseStation( 'ap1', ssid='new-ssid1', mode= 'g', channel= '1', position='263,902.25,0', range=18 )
    s2 = net.addSwitch( 's2', protocols='OpenFlow10', listenPort=6674, mac='00:00:00:00:00:02' )
    sta3 = net.addStation( 'sta3', wlans=1, mac='00:00:00:00:00:03', ip='10.0.0.3/8', position='547.05,671.75,0', range=18 )

    print "*** Creating links"
    net.addLink(s2, ap1)
    net.addLink(ap1, sta3)

    print "*** Starting network"
    net.build()

    net.plotGraph(max_x=922, max_y=922)

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

