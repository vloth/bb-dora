[@bs.val] external document: Js.t({..}) = "document"

let makeRoot = () => {
  let root = document##createElement("div")
  root##id #= "root"
  document##body##appendChild(root) -> ignore
  root
}

ReactDOMRe.render(<App />, makeRoot())

