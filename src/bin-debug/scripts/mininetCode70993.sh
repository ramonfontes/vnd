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
    sta1 = net.addStation( 'sta1', wlans=1, mac='00:00:00:00:00:01', ip='10.0.0.1/8', position='102.9,897.05,0', range=18 )
    s2 = net.addSwitch( 's2', protocols='OpenFlow10', listenPort=6673, mac='00:00:00:00:00:02' )
    ap3 = net.addBaseStation( 'ap3', ssid='new-ssid3', mode= 'g', channel= '1', position='302.35,877.65,0', range=18 )

    print "*** Creating links"
    net.addLink(s2, ap3)
    net.addLink(sta1, ap3)

    print "*** Starting network"
    net.build()

    net.plotGraph(max_x=917, max_y=917)

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

