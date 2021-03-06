#
# $Id: book.rb 4315 2009-09-02 04:15:24Z kmuto $
#
# Copyright (c) 2002-2008 Minero Aoki
#               2009 Minero Aoki, Kenshi Muto
#
# This program is free software.
# You can distribute or modify this program under the terms of
# the GNU LGPL, Lesser General Public License version 2.1.
# For details of the GNU LGPL, see the file "COPYING".
#
module ReVIEW
  module Book
    class PageMetric

      MetricData = Struct.new(:n_lines, :n_columns)

      def PageMetric.a5
        new(46, 80, 30, 74, 1)
      end

      def PageMetric.b5
        new(46, 80, 30, 74, 2)
      end

      def initialize(list_lines, list_columns, text_lines, text_columns, page_per_kbyte)
        @list = MetricData.new(list_lines, list_columns)
        @text = MetricData.new(text_lines, text_columns)
        @page_per_kbyte = page_per_kbyte
      end

      attr_reader :list
      attr_reader :text
      attr_reader :page_per_kbyte

    end
  end
end
