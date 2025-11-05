#import "package.typ": *

#show: resume.with(
  first-name: "Johan",
  last-name: "Chataigner",
  profession: "Ingénieur Logiciel Fullstack",
  bio: [
    Ingénieur fullstack passionné, toujours enthousiaste à l'idée d’apprendre de nouveaux outils et de relever des défis variés. À la recherche d’un environnement stimulant pour mettre en pratique et développer mes compétences.
  ],
  profile-picture: {
     box(image("./images/profile.jpg", fit: "cover"), inset: (top: 0%, bottom: -10%, left: -10%, right: -10%), clip: true, radius: 100%)
  },
  aside: {
    section(
      theme: (
        space-above: 10pt,
      ),
      "Coordonnées",
      {
        set image(width: 8pt)
        stack(
            dir: ttb,
            spacing: 6pt,
            contact-entry(
            email-icon,
            link("mailto:jchataigner.pro@gmail.com", "jchataigner.pro@gmail.com"),
            ),
            line(stroke: 0.1pt, length: 100%),
            contact-entry(
              phone-icon,
              link("tel:+33 7 86 38 35 69", "+33 7 86 38 35 69"),
            ),
            line(stroke: 0.1pt, length: 100%),
            contact-entry(
              github-icon,
              link("https://github.com/JohanChataigne", "JohanChataigne"),
            ),
            line(stroke: 0.1pt, length: 100%),
            contact-entry(
              linkedin-icon,
              link("https://www.linkedin.com/in/johan-chataigner-b9970a151", "Johan Chataigner"),
            ),
            line(stroke: 0.1pt, length: 100%),
            contact-entry(
                location-icon,
                "3 chemin de Jean d'Arsac,\nLe Taillan-Médoc (33320)",
            )
        )
      },
    )

    section(
        theme: (
          space-above: 10pt,
        ),
      "Compétences techniques",
      {
        subsection(
            "Langages & Frameworks",
            10pt,
            5pt,
            {
                stack(
                    dir: ttb,
                    spacing: inter-soft-skill-spacing,
                    skill-entry(
                    "Kotlin",
                    90%,
                    ),
                    skill-entry(
                    "Terraform",
                    90%,
                    ),
                    skill-entry(
                    "Python",
                    85%,
                    ),
                    skill-entry(
                    "Spring",
                    80%,
                    ),
                    skill-entry(
                    "TypeScript",
                    60%,
                    ),
                )
            }
        )

        subsection(
            "Certifications Cloud",
            10pt,
            0pt,
            {
                set image(width: 8pt)
                stack(
                    dir: ttb,
                    spacing: inter-soft-skill-spacing,
                    stack(
                        dir: ltr,
                        spacing: 4pt,
                        link("https://learn.microsoft.com/api/credentials/share/en-us/JohanChataigner-4686/68E0B40A282F5A00?sharingId=34DC214C8A2B6B04")[Microsoft Azure Fundamentals],
                        certified-icon,
                    ),
                    stack(
                        dir: ltr,
                        spacing: 4pt,
                        link("https://catalog-education.oracle.com/pls/certview/sharebadge?id=3DD9CEF71434FDB0D50EB397B2E04A228CA45A834A4E5005511CC1455997FDE8")[OCI Certified AI Foundations Associate],
                        certified-icon,
                    ),
                )
            }
        )
      }
    )

    section(
        theme: (
          space-above: 10pt,
        ),
      "Soft Skills",
      {

        subsection(
            "Langages",
            10pt,
            5pt,
            {
                stack(
                    spacing: inter-soft-skill-spacing,
                    soft-skill-entry("Français", level: "Natif"),
                    soft-skill-entry("Anglais", level: "TOEIC 975 pts"),
                    soft-skill-entry("Espagnol", level: "Niveau B2"),
                )
            }
        )

        subsection(
            "Loisirs",
            10pt,
            0pt,
            {
                stack(
                  spacing: inter-soft-skill-spacing,
                  soft-skill-entry("Volleyball en compétition", level: "Pré-Nationale"),
                  soft-skill-entry("Course à pied"),
                  soft-skill-entry("Jeux vidéo"),
                )
            }
        )
      },
    )
  },
)


#section(
  theme: (
    space-above: 30pt,
  ),
  "Expériences Professionnelles",
  {
    work-entry(
      theme: (
        space-above: 0pt,
      ),
      timeframe: "Septembre 2021 - Aujourd'hui",
      title: "Ingénieur Logiciel Fullstack",
      organization: "BeTomorrow",
      location: "Bordeaux, France",
      {
        stack(
            spacing: inter-project-spacing,
            project(
               "Refonte de l’application mobile TBM",
               [
                   Développement d’un Backend-for-Frontend et de son infrastructure associée. Gestion des connexions à de multiples dépendances externes dans un contexte de charge importante.
               ],
               technologies: ("Kotlin", "Spring", "Terraform", "Azure", "Redis"),
            ),
            project(
               "Développement et maintenance des applications Cleo et Physio.me (Biogen)",
               [
                   Applications web et mobiles déployées dans plusieurs pays, avec des infrastructures cloud réparties sur différentes régions mondiales, dans un environnement conforme HDS.
               ],
               technologies: ("Kotlin", "Spring", "Terraform", "AWS", "React", "React Native"),
            ),
            project(
               "Assistant Mobilité",
               [
                   Création d’un chatbot de mobilité utilisant des données au format GTFS/GTFS-RT, et architecture multi-agents LLM avec streaming temps réel vers une application mobile.
               ],
               technologies: ("Python", "FastAPI", "LangGraph", "Terraform", "Azure", "SSE"),
            ),
            project(
               "Assistant Plan Local d'Urbanisme (PLU)",
               [
                    Conception d’un agent LLM pour l’analyse et l’explication du PLU de Bordeaux Métropole, intégrant des outils RAG et un streaming temps réel vers une interface web.
               ],
               technologies: ("Python", "FastAPI", "LangGraph", "Terraform", "Azure", "Scaleway", "SSE"),
            ),
            project(
               "Assistant de création d'expériences de voyage personnalisées",
               [
                    Développement d’un agent LLM pour la création d’expériences de voyage personnalisées dans le secteur de l’hôtellerie de luxe.
                    Agent doté d’outils intégrés pour la recherche d’expériences et de disponibilités, avec streaming en temps réel vers des applications web et mobiles.
               ],
               technologies: ("Python", "FastAPI", "LangGraph", "Terraform", "AWS", "OpenSearch", "SSE"),
            ),
        )
      },
    )
    work-entry(
        theme: (
            space-above: 20pt,
        ),
        timeframe: "Février 2021 - Août 2021",
        title: "Stagiaire en Intelligence Artificielle",
        organization: "BeTomorrow",
        location: "Bordeaux, France",
        {
            stack(
                dir: ttb,
                spacing: inter-project-spacing,
                project(
                   "Détection automatique de l'apnée du sommeil",
                   [
                       Développement fullstack d’une application mobile utilisant des algorithmes d’apprentissage automatique pour déterminer si une personne souffre d’apnée du sommeil à partir d’une photo de son visage.
                   ],
                   technologies: ("Python", "Tensorflow", "Scikit Learn", "React Native", "AWS"),
                ),
                project(
                    "Recommendation de contenu par IA",
                    [
                        Développement fullstack d’une application mobile permettant aux utilisateurs d’interagir avec du contenu vidéo et de recevoir des recommandations personnalisées basées sur leurs interactions.
                        Rédaction d’une série d’articles sur le sujet, disponibles sur #link("https://medium.com/betomorrow")[Médium].
                    ],
                    technologies: ("Python", "AWS", "Flutter")
                ),
                project(
                    "Réalité augmentée en extérieur intégrée sur mobile",
                    [
                        Développement d’une application Android native visant à expérimenter le suivi et l’étiquetage en temps réel des structures extérieures (bâtiments, arbres, etc.) via la caméra de l’appareil, dans le but d’enrichir l’expérience touristique.
                    ],
                    technologies: ("Python", "Kotlin", "Android")
                )
            )
        }
    )
  },
)

#section(
  theme: (
    space-above: 20pt,
  ),
  "Formation",
  grid(
    columns: 2,
    column-gutter: default-theme.margin,
    education-entry(
      title: "Classe préparatoire",
      institution: "La Prépa des INP, Bordeaux, France",
      timeframe: "2016 - 2018",
      [Approfondissement en mathématiques, physique, chimie, etc.],
    ),
    education-entry(
      title: "Ingénieur en informatique",
      institution: "ENSEIRB-MATMECA, Bordeaux, France",
      timeframe: "2018 - 2021",
      [Spécialisé en Intelligence Artificielle.],
    ),
  ),
)
