#!/usr/bin/env ruby -Ku
# auのwebページからIPリストを抽出する場当たり的なスクリプト。

require 'kconv'
require 'open-uri'
require 'pp'
require 'rubygems'
require 'hpricot'

ips = []

src = open("http://www.au.kddi.com/ezfactory/tec/spec/ezsava_ip.html").read.toutf8
doc = Hpricot(src)
(doc/'//table').each do |table|
  trs = (table/'tr')
  next if trs.first && (trs.first/'td[2]').inner_text != 'IPアドレス'
  trs.each do |tr|
    a = (tr/'td').to_a.map(&:inner_text)
    next if a[1] == 'IPアドレス'
    ips << a[1..2].join if a[3] != '廃止'
  end
end
ips.uniq!

# 書き出し
open("lib/jpmobile/mobile/z_ip_addresses_au.rb","w") do |f|
  f.puts "Jpmobile::Mobile::Au::IP_ADDRESSES = "
  f.puts "#{ips.pretty_inspect.chomp }.map {|ip| IPAddr.new(ip) }"
end
