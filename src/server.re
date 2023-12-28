let () =
  Dream.run(~interface="0.0.0.0", ~port=8080) @@
  Dream.logger @@
  Dream.router([
    Dream.get("/:word", request =>
      Dream.param(request, "word") |> Template.render |> Dream.html
    ),
  ]);
