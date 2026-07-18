{ args, cursor }:
{
  greeter_user = "greeter";
  session = {
    default = "niri";
    last = "niri";
  };
  user = {
    default = args.user;
  };
  appearance = {
    scheme = "Synced";
    password_style = "random";
  };
  inherit cursor;
  keyboard = {
    layout = "us";
  };
  output = {
    layout = "eDP-1:0,0";
  };
  auth = {
  allow_empty_password = true;
  };
}
