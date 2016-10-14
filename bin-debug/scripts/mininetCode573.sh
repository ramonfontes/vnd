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
    ap1 = net.addBaseStation( 'ap1', ssid='new-ssid1', mode= 'g', channel= '1', position='99.4,929.4,0', range=18 )
    car2 = net.addCar( 'car2', wlans=1, mac='00:00:00:00:00:02', ip='10.0.0.2/8', position='68.2,764.1,0', range=18 )
    sta3 = net.addStation( 'sta3', wlans=1, mac='00:00:00:00:00:03', ip='10.0.0.3/8', position='386.4,906.1,0', range=18 )
    s6 = net.addSwitch( 's6', listenPort=6674, mac='null' )

    print "*** Creating links"
    net.addLink(ap1, sta3)
    net.addLink(sta3, s6)

    print "*** Starting network"
    net.build()

    net.plotGraph(max_x=949, max_y=949)

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

