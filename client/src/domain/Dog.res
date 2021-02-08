type dog = {message: array<string>}

module Decode = {
  let dogs = json => {
    open Json.Decode
    {
      message: json |> field("message", array(string)),
    }
  }
}

module Encode = {
  let dogs = d => {
    open Json.Encode
    object_(list{("message", d.message |> array(string))})
  }
}
