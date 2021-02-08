open Dog

type state =
  | LoadingDogs
  | ErrorFetchingDogs
  | LoadedDogs(dog)

let data = () => {
  let (state, setState) = React.useState(() => LoadingDogs)

  React.useEffect0(() => {
    {
      open Js.Promise
      Fetch.fetch("https://dog.ceo/api/breeds/image/random/3")
      |> then_(Fetch.Response.json)
      |> then_(json => {
        setState(_ => LoadedDogs(Decode.dogs(json)))
        resolve()
      })
      |> catch(_err => {
        setState(_ => ErrorFetchingDogs)
        resolve()
      })
      |> ignore
    }

    None
  })

  state
}
