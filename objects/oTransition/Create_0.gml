/// @desc Size variables and mode setup

// sets variables of the screen width and height.
w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;

// sets the transition types/modes.
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;

