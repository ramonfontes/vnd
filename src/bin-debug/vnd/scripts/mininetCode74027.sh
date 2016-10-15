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
    sta1 = net.addStation( 'sta1', wlans=1, mac='00:02:00:00:00:01', ip='10.0.0.1/8', position='179,523,0', range=18 )
    sta2 = net.addStation( 'sta2', wlans=1, mac='00:02:00:00:00:02', ip='10.0.0.2/8', position='311,528,0', range=18 )
    sta3 = net.addStation( 'sta3', wlans=1, mac='00:02:00:00:00:03', ip='10.0.0.3/8', position='456,529,0', range=18 )
    sta4 = net.addStation( 'sta4', wlans=1, mac='00:02:00:00:00:04', ip='10.0.0.4/8', position='589,530,0', range=18 )
    sta5 = net.addStation( 'sta5', wlans=1, mac='00:02:00:00:00:05', ip='10.0.0.5/8', position='732,531,0', range=18 )
    sta6 = net.addStation( 'sta6', wlans=1, mac='00:02:00:00:00:06', ip='10.0.0.6/8', position='957,531,0', range=18 )
    ap7 = net.addBaseStation( 'ap7', ssid='new-ssid', mode= 'g', channel= '1', position='340,420,0', range=33 )
    ap8 = net.addBaseStation( 'ap8', ssid='new-ssid', mode= 'g', channel= '1', position='626,419,0', range=33 )
    ap9 = net.addBaseStation( 'ap9', ssid='new-ssid', mode= 'g', channel= '1', position='912,418,0', range=33 )
    ap10 = net.addBaseStation( 'ap10', ssid='new-ssid', mode= 'g', channel= '1', position='489,331,0', range=33 )
    ap11 = net.addBaseStation( 'ap11', ssid='new-ssid', mode= 'g', channel= '1', position='785,333,0', range=33 )
    c12 = net.addController( 'c12', ip='127.0.0.1', port=6633 )

    print "*** Creating links"
    net.addLink(sta1, ap7)
    net.addLink(sta2, ap7)
    net.addLink(sta6, ap9)
    net.addLink(ap7, ap10)
    net.addLink(ap10, ap8)
    net.addLink(ap8, ap11)
    net.addLink(ap11, ap9)
    net.addLink(ap7, ap8)
    net.addLink(ap8, ap9)
    net.addLink(sta3, ap7)
    net.addLink(sta4, ap7)
    net.addLink(sta5, ap8)

    print "*** Starting network"
    net.build()
    c12.start()
    ap9.start( [c12] )
    ap11.start( [c12] )
    ap8.start( [c12] )
    ap10.start( [c12] )
    ap7.start( [c12] )

    net.plotGraph(max_x=977, max_y=551)

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()

