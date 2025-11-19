#let default-theme = (
  margin: 28pt,
  font: "Optima",
  font-size: 8pt,
  font-secondary: "Optima",
  font-tertiary: "Libre Baskerville",
  text-color: rgb("#3f454d"),
  color-primary: rgb("#000000"),
  color-secondary: rgb("#475d6a"),
  gutter-size: 4em,
  main-width: 6fr,
  aside-width: 3fr,
  profile-picture-width: 70%,
  tag-font-color: white,
  tag-font-size: 5pt,
)

#let github-icon = image("images/github-brands.svg")
#let phone-icon = image("images/phone-solid.svg")
#let email-icon = image("images/envelope-solid.svg")
#let linkedin-icon = image("images/linkedin.svg")
#let location-icon = image("images/location.svg")
#let certified-icon = image("images/certificate-badge.svg")

#let resume(
  first-name: "",
  last-name: "",
  profession: "",
  bio: "",
  profile-picture: none,
  theme: (),
  aside: [],
  main,
) = {
  // Function to pick a key from the theme, or a default if not provided.
  let th(key, default: none) = {
    return if key in theme and theme.at(key) != none {
      theme.at(key)
    } else if default != none and default in theme and theme.at(default) != none {
      theme.at(default)
    } else if default != none {
      default-theme.at(default)
    } else {
      default-theme.at(key)
    }
  }

  set page(
    margin: (
      top: th("margin"),
      bottom: th("margin"),
      left: th("margin"),
      right: th("margin"),
    ),
  )

  // Fix for https://github.com/typst/typst/discussions/2919
  show heading.where(level: 1): set text(size: th("font-size"))
  show heading.where(level: 2): set text(size: th("font-size"))
  show heading.where(level: 3): set text(size: th("font-size"))

  show heading.where(level: 1): set text(font: th("font-tertiary"), weight: "light")

  set text(font: th("font"), size: th("font-size"), fill: th("text-color"))

  set block(above: 10pt, below: 8pt, spacing: 10pt)

  set grid(columns: (th("gutter-size"), 1fr))

  grid(
    columns: (th("aside-width"), th("margin"), th("main-width")),

    // Aside.
    {
      {
        {
          show heading: set block(above: 0pt, below: 0pt)
          show heading: set text(size: 16pt, weight: "regular", font: th("font-tertiary"), fill: th("text-color"))
          heading(level: 2, first-name)
        }
        {
          show heading: set block(above: 3pt, below: 0pt)
          show heading: set text(size: 24pt, weight: "regular", font: th("font-tertiary"), fill: th("text-color"))

          heading(level: 1, last-name)
        }
        {
          show heading: set block(above: 10pt, below: 0pt)
          show heading: set text(weight: "light", font: th("font-tertiary"))
          heading(level: 3, upper(profession))
        }

        if profile-picture != none {
          set align(center)
          set image(width: th("profile-picture-width"))
          v(30pt)
          profile-picture
          v(10pt)
        } else {
          v(10pt)
        }

        {
            set text(font: default-theme.font) if "font" in default-theme
            set text(weight: "light", style: "italic", hyphenate: true)
            bio
        }
      }

      aside
    },

    // Empty space.
    { },

    // Content.
    main
  )
}


#let section(
  theme: (),
  title,
  body,
) = {
  show heading.where(level: 1): set align(theme.align-title) if "align-title" in theme
  show heading.where(level: 1): set align(end) if not "align-title" in theme
  show heading.where(level: 1): set text(fill: default-theme.color-primary) if "color-primary" in default-theme
  show heading.where(level: 1): set text(font: default-theme.font-tertiary) if "font-tertiary" in default-theme
  show heading.where(level: 1): set text(size: 10pt)


  if "space-above" not in theme {
    v(1fr)
  } else {
    v(theme.space-above)
  }


  heading(level: 1, text(upper(title)))
  {
    set block(above: 2pt, below: 14pt)
    if "color-primary" in default-theme {
        line(stroke: 1pt + default-theme.color-primary, length: 100%)
    } else {
        line(stroke: 1pt, length: 100%)
    }
  }
  body
}

#let subsection(
    theme: (),
    title,
    spacing,
    below,
    body,
) = {
    stack(
        dir: ttb,
        spacing: spacing,
        {
            show heading.where(level: 2): set text(font: default-theme.font-tertiary) if "font-tertiary" in default-theme
            show heading.where(level: 2): set text(size: 8pt)

            heading(level: 2,text(title))
        },
        pad(left: 1em, body)
    )
    v(below)
}

#let contact-entry(
  theme: (),
  gutter,
  right,
) = {
  set grid(columns: (theme.gutter-size, 1fr)) if "gutter-size" in theme
  set text(font: theme.font-secondary) if "font-secondary" in theme
  set text(font: default-theme.font-secondary) if "font-secondary" not in theme
  set text(size: theme.font-size) if "font-size" in theme

  stack(
    dir: ltr,
    spacing: 10pt,
    gutter,
    right
  )
}

#let inter-soft-skill-spacing = 6pt

#let soft-skill-entry(
  skill,
  theme: (),
  level: "",
) = {
  set text(font: theme.font) if "font-secondary" in theme
  set text(font: default-theme.font-secondary) if "font-secondary" not in theme
  set text(size: theme.font-size) if "font-size" in theme

    if level != "" {
        skill + " - " + text(style: "italic", level)
    } else {
        skill
    }
}

#let work-entry(
  theme: (),
  timeframe: "",
  title: "",
  organization: "",
  location: "",
  body,
) = {
  set text(size: theme.font-size) if "font-size" in theme

  if "space-above" not in theme {
    v(1fr)
  } else {
    v(theme.space-above)
  }
  {
    set text(font: theme.font-secondary) if "font-secondary" in theme
    set text(font: default-theme.font-secondary) if "font-secondary" not in theme
    set block(above: 0pt, below: 0pt)
    stack(
      dir: ltr,
      spacing: 1fr,
      stack(
        spacing: 5pt,
        context {
          set text(weight: "light", fill: text.fill.lighten(30%))
          timeframe
        },
        {
          {
            set text(font: default-theme.font-tertiary, weight: "bold", size: 7pt)
            upper(title)
          }
          " – "
          organization
        },
      ),
      context {
        set align(horizon)
        set text(weight: "light", fill: text.fill.lighten(30%))
        location
      },
    )
  }
  {
    set block(above: 6pt, below: 8pt)
    line(stroke: 0.1pt, length: 100%)
  }
  context {
    set par(leading: 1em)
    body
  }
}

#let tag(
    theme: (),
    label
) = {

    set box(fill: theme.tag-fill) if "tag-fill" in theme
    set box(fill: default-theme.color-secondary) if "tag-fill" not in theme

    set box(stroke: 0.5pt + theme.tag-stroke) if "tag-stroke" in theme
    set box(stroke: 0.5pt + default-theme.color-secondary) if "tag-stroke" not in theme

    set text(fill: theme.tag-font-color) if  "tag-font-color" in theme
    set text(fill: default-theme.tag-font-color) if  "tag-font-color" not in theme

    set text(size: theme.tag-font-size) if "tag-font-size" in theme
    set text(size: default-theme.tag-font-size) if "tag-font-size" not in theme

    set text(font: default-theme.font-tertiary) if "font-tertiary" in default-theme

    box(
        radius: 50%,
        inset: (x: 4pt, y: 1.5pt),
        text(label, weight: "bold"),
    )
}

#let inter-project-spacing = 15pt

#let project(
  theme: (),
  title,
  description,
  technologies: (),
) = {

    set text(font: default-theme.font) if "font" in default-theme

    stack(
        context {
            set text(fill: text.fill.lighten(20%))
            text(weight: "bold", title)
        },
        v(5pt),
        stack(
            dir: ltr,
            spacing: 3pt,
            ..technologies.map(t => tag(t))
        ),
        v(5pt),
        context {
            set text(fill: text.fill.lighten(30%))
            par(description, justify: true, leading: 0.6em)
        }

    )
}

#let progressbar(
  theme: (),
  progress: 0%,
) = {

  set rect(fill: theme.color) if "color" in theme
  set rect(fill: default-theme.color-secondary) if "color-secondary" in default-theme
  set rect(radius: 50%)

  let progress-bar-height = 3pt

  context {
    let light-accent = rect.fill.lighten(80%)

    rect(
      height: progress-bar-height,
      width: 100%,
      inset: 0pt,
      fill: light-accent,
      [
        #place(
          rect(
            width: progress,
            stroke: 0pt,
          )
        )
      ]
    )
  }
}

#let skill-level(
    theme: (),
    scale,
    level,
) = {

    set rect(radius: theme.radius) if "radius" in theme
    set rect(radius: 10%) if "radius" not in theme

    set rect(stroke: 1pt + theme.stroke) if "stroke" in theme
    set rect(stroke: 1pt + default-theme.color-secondary) if "stroke" not in theme

    set rect(fill: theme.fill) if "fill" in theme
    set rect(fill: default-theme.color-secondary) if "fill" not in theme

    let rect-width = 10pt
    let rect-height = 5pt

    stack(
        dir: ltr,
        spacing: 2pt,
        ..range(level).map(_ =>  rect(height: rect-height, width: rect-width)),
        ..range(scale - level).map(_ =>  rect(fill: none, height: rect-height, width: rect-width)),
    )
}

#let skill-entry(
    theme: (),
    title,
    progress,
) = {

    set text(font: default-theme.font) if "font" in default-theme
    title + h(1fr) + box(progressbar(theme: theme, progress: progress), width: 40%)
}

#let education-entry(
  theme: (),
  timeframe: "",
  title: "",
  institution: "",
  location: "",
  body,
) = {
  set text(size: theme.font-size) if "font-size" in theme

  {
    set text(font: theme.font-secondary) if "font-secondary" in theme
    set text(font: default-theme.font-secondary) if "font-secondary" not in theme
    stack(
      spacing: 5pt,
      {
        set text(weight: "bold")
        upper(title)
      },
      institution,
    )

    {
      set block(above: 6pt, below: 8pt)
      line(stroke: 0.1pt, length: 100%)
    }
  }


  context {
    set text(weight: "light", fill: text.fill.lighten(30%))
    stack(
      spacing: 8pt,
      {
        set text(font: default-theme.font) if "font" in default-theme
        body
      },
      {
        set text(font: theme.font-secondary) if "font-secondary" in theme
        set text(font: default-theme.font-secondary) if "font-secondary" not in theme
        timeframe
      },
    )
  }
}

