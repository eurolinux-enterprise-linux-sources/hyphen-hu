#!/usr/bin/ruby

require 'ftools'

if File.exist?('new.txt')
  File.open('new.txt~', 'a') do |resultfile|
    IO.foreach('new.txt') do |line|
      namechar=case line
        when /^[Áá]/u then 'a'
        when /^[Éé]/u then 'e'
        when /^[Íí]/u then 'i'
        when /^[ÓÖŐóöő]/u then 'o'
        when /^[ÚÜŰúüű]/u then 'u'
        else line[0..0].downcase
      end
      File.open(namechar + '.txt', 'a') { |file| file << line }
      resultfile << line
    end 
    File.delete('new.txt')
  end
  ('a'..'z').each do |pattern|
    puts pattern
    `cat #{pattern}.txt | tr 'A-ZÁÄÉÍÓÖŐÚÜŰ' 'a-záäéíóöőúüű' | sort | uniq > #{pattern}.tmp`
    `mv #{pattern}.tmp #{pattern}.txt`
  end
end
