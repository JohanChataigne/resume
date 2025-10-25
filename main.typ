#import "package.typ": *

#show: resume.with(
  theme: (
    margin: 26pt,
    font: "Libre Baskerville",
    font-size: 8pt,
    font-secondary: "Roboto",
    font-tertiary: "Montserrat",
    text-color: rgb("#3f454d"),
    gutter-size: 4em,
    main-width: 6fr,
    aside-width: 3fr,
    profile-picture-width: 70%,
  ),
  first-name: "Johan",
  last-name: "Chataigner",
  profession: "Fullstack Software Engineer",
  bio: [
    TODO
  ],
  profile-picture: {
     box(image("./images/profile.jpg", fit: "cover"), inset: (top: -10%, bottom: -50%, left: -10%, right: -10%), clip: true, radius: 100%)
  },
  aside: {
    section(
      theme: (
        space-above: 0.4fr,
      ),
      "Contact",
      {
        set image(width: 8pt)
        contact-entry(
          email-icon,
          link("mailto:jchataigner.pro@gmail.com", "jchataigner.pro@gmail.com"),
        )
        line(stroke: 0.1pt, length: 100%)
        contact-entry(
          phone-icon,
          link("tel:+33 7 86 38 35 69", "+33 7 86 38 35 69"),
        )
        line(stroke: 0.1pt, length: 100%)
        contact-entry(
          github-icon,
          link("https://github.com/JohanChataigne", "JohanChataigne"),
        )
        line(stroke: 0.1pt, length: 100%)
        contact-entry(
          email-icon,
          link("https://www.linkedin.com/in/johan-chataigner-b9970a151", "linkedin"),
        )
      },
    )

    section(
        theme: (
          space-above: 0.3fr,
        ),
      "Technical Skills",
      {
        set text(font: "Roboto", size: 8pt)
        skill-entry(
            "Kotlin",
            5,
            5,
        )
        skill-entry(
            "Terraform",
            5,
            5,
        )
        skill-entry(
            "Python",
            5,
            4,
        )
        skill-entry(
            "Spring",
            5,
            4,
        )
        skill-entry(
            "React & React Native",
            5,
            3,
        )
        skill-entry(
            "Flutter",
            5,
            2,
        )
      }
    )

    section(
        theme: (
          space-above: 0.3fr,
        ),
        "Cloud providers",
        {
            set text(font: "Roboto", size: 8pt)
              skill-entry(
                "AWS",
                5,
                4,
              )
              skill-entry(
                "Azure",
                5,
                4,
              )
              skill-entry(
                "Scaleway",
                5,
                2,
              )
              skill-entry(
                "Oracle (OCI)",
                5,
                1,
              )
        }
    )

    section(
        theme: (
          space-above: 0.3fr,
        ),
      "Languages",
      {
        language-entry("French", "Native")
        language-entry("English", "TOEIC - 975 pts")
        language-entry("Spanish", "B2 level")
      },
    )

    section(
        theme: (
          space-above: 0.3fr,
        ),
      "Hobbies",
      {
        set text(size: 7pt)
        stack(
          spacing: 8pt,
          "Volleyball (niveau pré-national)",
          "Sports in general",
          "Video games",
        )
      },
    )
  },
)


#section(
  theme: (
    space-above: 0pt,
  ),
  "Work Experiences",
  {
    work-entry(
      theme: (
        space-above: 0pt,
      ),
      timeframe: "September 2021 - Today",
      title: "Fullstack Software Engineer",
      organization: "BeTomorrow",
      location: "Bordeaux, France",
      {
        heading(level: 2, "Backend development & DevOps")

        project(
           "Refonte de l'application TBM",
           [
               Développement d'un backend for frontend et de l'infrastructure associée. Gestion de la connexion à de nombreuses dépendances externes, dans un contexte de charge importante sur l'infrastructure.
           ],
           technologies: ("Kotlin", "Spring", "Terraform", "Azure", "Redis"),
        )
        project(
           "Développement et maintenance des applications Cleo et Physio.me (Biogen)",
           [
               Applications web et mobiles publiées dans de nombreux pays, avec des infrastructures Cloud dans plusieurs régions mondiales dans un contexte HDS.
           ],
           technologies: ("Kotlin", "Spring", "Terraform", "AWS", "React", "React Native"),
        )

        heading(level: 2, "Fullstack development for AI")

        project(
           "Assistant mobilité",
           [
                Développement d'un chatbot d'aide à la mobilité, exploitant les données publiques des réseaux de transports (GTFS, GTFS-RT).
                Architecture multi-agents LLM avec du streaming en temps réel à une application mobile.
           ],
           technologies: ("Python", "FastAPI", "LangGraph", "Terraform", "Azure", "SSE"),
        )

        project(
           "Assistant Plan Local d'Urbanisme",
           [
                Développement d'un agent LLM capable de répondre de manière simple et en citant ces sources à des questions sur le PLU de Bordeaux Métropole.
                Agent avec des outils de recherche (RAG) et streaming en temps-réel à un site web.
           ],
           technologies: ("Python", "FastAPI", "LangGraph", "Terraform", "Azure", "Scaleway", "SSE"),
        )

        project(
           "Assistant de création d'expériences de voyage sur mesure",
           [
                Développement d'un agent LLM de création d'expériences de voyage dans le milieu de l'hôtellerie de luxe.
                Agent avec des outils de recherche d'expériences et disponibilités et streaming en temps-réel à une application web et mobile.
           ],
           technologies: ("Python", "FastAPI", "LangGraph", "Terraform", "AWS", "OpenSearch", "SSE"),
        )



        // Quid de César et Saretec ML ?
      },
    )
    work-entry(
        theme: (
            space-above: 20pt,
        ),
        timeframe: "February 2021 - August 2021",
        title: "Artificial Intelligence Intern",
        organization: "BeTomorrow",
        location: "Bordeaux, France",
        {
            project(
               "Détection automatique de l'apnée du sommeil",
               [
                   Développement fullstack d'une application mobile exploitant des algorithmes de Machine Learning pour determiner si une personne est atteinte d'apnée du sommeil, à partir d'une photo du visage.
               ],
               technologies: ("Python", "Tensorflow", "Scikit Learn", "React Native", "AWS"),
            )

            project(
                "Recommendation de contenu par IA",
                [
                    Développement fullstack d'une application mobile permettant d'intéragir avec du contenu vidéo, puis d'en recommander en se basant sur ces intéractions.
                    Rédaction d'une suite d'articles sur le sujet, disponibles sur ce #link("https://medium.com/betomorrow")[Médium].
                ],
                technologies: ("Python", "AWS", "Flutter")
            )
        }
    )
  },
)

#section(
  theme: (
    space-above: 20pt,
  ),
  "Education",
  grid(
    columns: 2,
    column-gutter: default-theme.margin,
    education-entry(
      title: "Prep school",
      institution: "La Prépa de INP, Bordeaux, France",
      timeframe: "2016 - 2018",
      [In-depth maths, physics, chemistry, etc.],
    ),
    education-entry(
      title: "Master Degree in Computer Science",
      institution: "ENSEIRB-MATMECA, Bordeaux, France",
      timeframe: "2018 - 2021",
      [Specialized in Artificial Intelligence.],
    ),
  ),
)
