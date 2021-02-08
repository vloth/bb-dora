open ResMsw.MSW

module Rest = {
  open ResMsw.MSW.Node

  let get = rest |> get("https://dog.ceo/api/breeds/image/random/3", (_, res, ctx) => {
    open Dog
    let dogs = {
      message: ["au", "au", "wof"]
    }

    res |> Rest.mock([ctx |> Rest.status(200), ctx |> Rest.json(Encode.dogs(dogs))])
  })
}
