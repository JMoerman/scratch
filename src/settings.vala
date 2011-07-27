/***
  BEGIN LICENSE
	
  Copyright (C) 2011 Giulio Collura <random.cpp@gmail.com> 
  This program is free software: you can redistribute it and/or modify it	
  under the terms of the GNU Lesser General Public License version 3, as published	
  by the Free Software Foundation.
	
  This program is distributed in the hope that it will be useful, but	
  WITHOUT ANY WARRANTY; without even the implied warranties of	
  MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR	
  PURPOSE.  See the GNU General Public License for more details.
	
  You should have received a copy of the GNU General Public License along	
  with this program.  If not, see <http://www.gnu.org/licenses/>	
  
  END LICENSE	
***/


namespace Scratch {

	public enum ScratchWindowState {
		NORMAL = 0,
		MAXIMIZED = 1,
		FULLSCREEN = 2
	}

	public class SavedState : Granite.Services.Settings {
	
		public int window_width { get; set; }
		public int window_height { get; set; }
		public ScratchWindowState window_state { get; set; }
				
		public SavedState () {
			base ("org.elementary.Scratch.SavedState");
		}
	
	}
	
    public class Settings : Granite.Services.Settings {

        public bool show_line_numbers { get; set; }
        public bool highlight_current_line { get; set; }
        public bool spaces_instead_of_tabs { get; set; }
        public int indent_width { get; set; }

        public Settings ()  {
            base ("org.elementary.Scratch.Settings");
        }
    
    }
}