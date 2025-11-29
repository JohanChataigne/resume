#import "package.typ": *

#show: resume.with(
  first-name: "Johan",
  last-name: "Chataigner",
  profession: "Ingénieur Logiciel Fullstack",
  bio: [
    Ingénieur Logiciel Fullstack spécialisé dans l'architecture Backend et les infrastructures Cloud. Mon expertise se concentre sur la conception de systèmes distribués à haute disponibilité (Kotlin Spring et Python FastAPI), et je possède une forte compétence dans la création et le déploiement de solutions d'Intelligence Artificielle Générative en production.
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
            spacing: inter-skill-spacing,
            contact-entry(
            email-icon,
            link("mailto:jchataigner.pro@gmail.com", "jchataigner.pro@gmail.com"),
            ),
            contact-entry(
              phone-icon,
              link("tel:+33 7 86 38 35 69", "+33 7 86 38 35 69"),
            ),
            contact-entry(
              github-icon,
              link("https://github.com/JohanChataigne", "JohanChataigne"),
            ),

            contact-entry(
              linkedin-icon,
              link("https://www.linkedin.com/in/johan-chataigner-b9970a151", "Johan Chataigner"),
            ),
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
            stack(
                dir: ttb,
                spacing: inter-skill-spacing,
                skill-entry(
                    "Backend & APIs",
                    keywords: ("Kotlin Spring", "Python FastAPI"),
                ),
                skill-entry(
                    "Plateformes Cloud",
                    keywords: ("Azure", "AWS", "Scaleway"),
                ),
                skill-entry(
                    "DevOps",
                    keywords: ("Terraform", "Gitlab", "Azure DevOps"),
                ),
                skill-entry(
                    "GenAI",
                    keywords: ("LangChain", "LangGraph", "RAG"),
                ),
                skill-entry(
                    "LLMOps",
                    keywords: ("Langfuse", "Opik"),
                ),
            )
      }
    )

    section(
        theme: (
          space-above: 10pt,
        ),
      "Certifications",
      {
            set image(width: 8pt)
            stack(
                dir: ttb,
                spacing: inter-skill-spacing,
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

    section(
        theme: (
          space-above: 10pt,
        ),
      "Langues",
      {
            stack(
                spacing: inter-skill-spacing,
                soft-skill-entry("Français", level: "Natif"),
                soft-skill-entry("Anglais", level: "TOEIC 975 pts"),
                soft-skill-entry("Espagnol", level: "Niveau B2"),
            )
        }
    )

    section(
        theme: (
          space-above: 10pt,
        ),
      "Loisirs",
      {
            stack(
                spacing: inter-skill-spacing,
                soft-skill-entry("Volleyball en compétition", level: "Pré-Nationale"),
                soft-skill-entry("Running"),
                soft-skill-entry("Jeux vidéo"),
            )
        }
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
                   Développement et déploiement d'un Backend-for-Frontend (BFF) et de son infrastructure associée, assurant le support d'une application comptant 500 000 utilisateurs actifs mensuels. Gestion de l'intégration de plus de 15 dépendances externes dans un contexte d'infrastructure à forte charge.
               ],
               technologies: ("Kotlin", "Spring", "Terraform", "Azure", "Redis"),
            ),
            project(
               "Développement et maintenance des applications Cleo et Physio.me (Biogen)",
               [
                   Déploiement d'applications web et mobiles dans plus de 10 pays, avec des infrastructures Cloud multi-régions (AWS) opérant dans un environnement conforme HDS
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
                    Conception et développement d'un agent LLM capable de répondre aux questions sur le Plan Local d'Urbanisme (PLU) de Bordeaux Métropole, en fournissant des réponses claires et sourcées. Mise en œuvre d'un pipeline RAG pour garantir des réponses factuelles, avec intégration du streaming en temps réel vers l'interface web.
               ],
               technologies: ("Python", "FastAPI", "LangGraph", "Terraform", "Azure", "Scaleway", "SSE"),
            ),
            project(
               "Assistant de création d'expériences de voyage personnalisées",
               [
                    Conception et développement d’un agent LLM pour la création d’expériences de voyage personnalisées dans le secteur de l’hôtellerie de luxe.
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
