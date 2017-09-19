open GMain

let locale = GtkMain.Main.init ()

let callback () =
  let window = GWindow.file_selection ~modal:true () in
window#show()

let main () =
  let window_p = GWindow.window ~width:320 ~height:240
                              ~title:"Windows" () in
  let box = GPack.vbox ~packing:window_p#add () in
  let button = GButton.button ~label:"Button" ~packing:box#add () in
  ignore (button#connect#clicked ~callback:callback);
  window_p#show ();
  Main.main ()

let () = main ()
