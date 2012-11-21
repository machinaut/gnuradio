/* -*- c++ -*- */
/*
 * Copyright 2004,2010,2012 Free Software Foundation, Inc.
 *
 * This file is part of GNU Radio
 *
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

GR_SWIG_BLOCK_MAGIC(gr, fft_vfc)

gr_fft_vfc_sptr
gr_make_fft_vfc (int fft_size, bool forward,
		 const std::vector<float> &window,
		 int nthreads=1)
throw(std::exception);

class gr_fft_vfc : public gr_sync_block
{
 protected:
  gr_fft_vfc (int fft_size, bool forward,
	      const std::vector<float> &window,
	      int nthreads=1);

 public:
  bool set_window(const std::vector<float> &window);
  void set_nthreads(int n);
  int nthreads() const;
};