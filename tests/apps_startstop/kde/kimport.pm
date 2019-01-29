use base "installedtest";
use strict;
use testapi;
use utils;

# This test checks that Kimport starts.

sub run {
    my $self = shift;
    
    # Start the application
    start_with_launcher('kimport_launch','menu_applications','menu_utilities');
    # Click ok to go further
    assert_and_click 'kde_ok';
    wait_still_screen 2;
    # Check that it is started
    assert_screen 'kimport_runs';
    # Close the application
    quit_with_shortcut();
}

sub test_flags {
    return {always_rollback => 1};
}


1;

# vim: set sw=4 et:
