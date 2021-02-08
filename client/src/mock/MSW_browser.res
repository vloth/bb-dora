open ResMsw.MSW
open ResMsw.MSW.ServiceWorker

let worker = setup([Mock.Rest.get])

let start = () => {
  worker->start()

  let injectToWindow = %bs.raw(`(worker, rest) => {
    window.bsmsw = {
      worker,
      rest,
    }
  }`)

  injectToWindow(worker, rest)
}
