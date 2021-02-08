module Styles = {
  open Css

  let nav = style(list{
    display(block),
    width(pct(100.)),
    zIndex(99),
    borderTop(px(1), solid, hex("eee")),
    borderBottom(px(1), solid, hex("eee")),
  })

  let navbarList = style(list{listStyleType(none), marginBottom(rem(0.))})

  let navbarItem = style(list{position(relative), Css.float(#left), marginBottom(rem(0.))})

  let navbarLink = style(list{
    textTransform(uppercase),
    fontSize(px(11)),
    letterSpacing(rem(0.2)),
    marginRight(px(35)),
    textDecoration(none),
    lineHeight(rem(6.5)),
    color(hex("222")),
  })
}

@react.component
let make = () =>
  <nav className=Styles.nav>
    <div className="container">
      <ul className=Styles.navbarList>
        <li className=Styles.navbarItem>
          <a href="#commits" className=Styles.navbarLink> {React.string("commits")} </a>
        </li>
        <li className=Styles.navbarItem>
          <a href="#pull-requests" className=Styles.navbarLink> {React.string("pull requests")} </a>
        </li>
      </ul>
    </div>
  </nav>
