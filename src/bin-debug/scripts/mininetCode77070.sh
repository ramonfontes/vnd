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
    ap1 = net.addBaseStation( 'ap1', ssid='new-ssid1', mode= 'g', channel= '1', position='18.2,961.15,0', range=18 )

    print "*** Creating links"

    print "*** Starting network"
    net.build()

    net.plotGraph(max_x=981, max_y=981)

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

