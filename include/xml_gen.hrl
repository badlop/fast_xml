%%%----------------------------------------------------------------------
%%% File    : xml_gen.hrl
%%% Author  : Evgeniy Khramtsov <ekhramtsov@process-one.net>
%%% Purpose : XML utils
%%% Created : 1 May 2013 by Evgeniy Khramtsov <ekhramtsov@process-one.net>
%%%
%%%
%%% xml, Copyright (C) 2002-2015   ProcessOne
%%%
%%% This program is free software; you can redistribute it and/or
%%% modify it under the terms of the GNU General Public License as
%%% published by the Free Software Foundation; either version 2 of the
%%% License, or (at your option) any later version.
%%%
%%% This program is distributed in the hope that it will be useful,
%%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
%%% General Public License for more details.
%%%
%%% You should have received a copy of the GNU General Public License
%%% along with this program; if not, write to the Free Software
%%% Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
%%% 02111-1307 USA
%%%
%%%----------------------------------------------------------------------


-record(attr, {name,
	       label,
	       required = false,
	       default,
	       dec,
	       enc}).

-record(cdata, {required = false,
		label = '$cdata',
		default,
		dec,
		enc}).

-record(elem, {name,
               xmlns = <<"">>,
               cdata = #cdata{},
               result,
               attrs = [],
               refs = []}).

-record(ref, {name,
              label,
              min = 0,
              max = infinity,
              default}).