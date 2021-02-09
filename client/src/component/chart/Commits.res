open BsRecharts

@react.component
let make = (~data) => {
  let margin = {"top": 10, "right": 10, "bottom": 3, "left": 3}

  let state = UseCommits.data()

  Js.log(state)

  <>
    <ResponsiveContainer height=Px(200.) width=Prc(100.)>
      <LineChart margin data>
        <Line
          dot=false
          animationEasing=#easeIn
          _type=#monotone
          name="commits"
          dataKey="pv"
          stroke="#000"
        />
        <Tooltip />
        <Legend />
      </LineChart>
    </ResponsiveContainer>
  </>
}
