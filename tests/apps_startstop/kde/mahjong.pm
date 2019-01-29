use base "installedtest";
use strict;
use testapi;
use utils;

# This test checks that Mahjong starts.

sub run {
    my $self = shift;
    
    # Start the application
    start_with_launcher('menu_boardgames', 'menu_applications','menu_games');
    # Games are hidden even deeper in menus, so let us fix that here.
    assert_and_click 'mahjong_launch';
    wait_still_screen 2;
    # Check that it is started
    assert_screen 'mahjong_runs';
    # Close the application
    quit_with_shortcut();
}

sub test_flags {
    return {always_rollback => 1};
}


1;

# vim: set sw=4 et:
