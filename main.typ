#import "package.typ": *

#show: resume.with(
  theme: (
    margin: 28pt,
    font: "Libre Baskerville",
    font-size: 8pt,
    font-secondary: "Roboto",
    font-tertiary: "Montserrat",
    text-color: rgb("#3f454d"),
    main-width: 6fr,
    aside-width: 3fr,
    profile-picture-width: 70%,
  ),
  first-name: "Johan",
  last-name: "Chataigner",
  profession: "Fullstack Software Engineer",
  bio: [
    Curious full-stack engineer who enjoys learning new tools and tackling diverse challenges. Looking for an environment to apply and grow my skill set.
  ],
  profile-picture: {
     box(image("./images/profile.jpg", fit: "cover"), inset: (top: 0%, bottom: -10%, left: -10%, right: -10%), clip: true, radius: 100%)
  },
  aside: {
    section(
      theme: (
        space-above: 10pt,
      ),
      "Contact",
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
            )
        )

      },
    )

    section(
        theme: (
          space-above: 10pt,
        ),
      "Technical Skills",
      {
        set text(font: "Roboto", size: 8pt)

        subsection(
            "Languages & Frameworks",
            10pt,
            5pt,
            {
                stack(
                    dir: ttb,
                    spacing: inter-soft-skill-spacing,
                    skill-entry(
                    "Kotlin",
                    5,
                    5,
                    ),
                    skill-entry(
                    "Terraform",
                    5,
                    5,
                    ),
                    skill-entry(
                    "Python",
                    5,
                    4,
                    ),
                    skill-entry(
                    "Spring",
                    5,
                    4,
                    ),
                    skill-entry(
                    "React & React Native",
                    5,
                    3,
                    ),
                    skill-entry(
                    "Flutter",
                    5,
                    2,
                    )
                )

            }
        )

        subsection(
            "Cloud providers",
            10pt,
            0pt,
            {
                stack(
                    dir: ttb,
                    spacing: inter-soft-skill-spacing,
                    skill-entry(
                    "AWS",
                    5,
                    4,
                    ),
                    skill-entry(
                    "Azure",
                    5,
                    4,
                    ),
                    skill-entry(
                    "Scaleway",
                    5,
                    2,
                    ),
                    skill-entry(
                    "Oracle (OCI)",
                    5,
                    1,
                    )
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
            "Languages",
            10pt,
            5pt,
            {
                stack(
                    spacing: inter-soft-skill-spacing,
                    soft-skill-entry("French", level: "Native"),
                    soft-skill-entry("English", level: "TOEIC 975 pts"),
                    soft-skill-entry("Spanish", level: "B2 level"),
                )
            }
        )

        subsection(
            "Hobbies",
            10pt,
            0pt,
            {
                stack(
                  spacing: inter-soft-skill-spacing,
                  soft-skill-entry("Competitive volleyball", level: "Pré-Nationale"),
                  soft-skill-entry("Running"),
                  soft-skill-entry("Video games"),
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
        subsection(
            "Backend & Cloud Infrastructure",
            15pt,
            10pt,
            {
                stack(
                    spacing: inter-project-spacing,
                    project(
                       "TBM Mobile App Revamp",
                       [
                           Developed a backend-for-frontend and its associated infrastructure. Managed connections to numerous external dependencies in a high-load infrastructure context.
                       ],
                       technologies: ("Kotlin", "Spring", "Terraform", "Azure", "Redis"),
                    ),
                    project(
                       "Development and Maintenance of Cleo and Physio.me Applications (Biogen)",
                       [
                           Web and mobile applications deployed in multiple countries, with cloud infrastructures across several global regions, within an HDS-compliant environment.
                       ],
                       technologies: ("Kotlin", "Spring", "Terraform", "AWS", "React", "React Native"),
                    )
                )
            }
        )

        subsection(
            "Fullstack Development for Generative AI Solutions",
            15pt,
            0pt,
            {
                stack(
                    spacing: inter-project-spacing,
                    project(
                       "Mobility Assistant",
                       [
                            Developed a mobility chatbot leveraging public transportation data (GTFS, GTFS-RT).
                            Designed a multi-agent LLM architecture with real-time streaming to a mobile application.
                       ],
                       technologies: ("Python", "FastAPI", "LangGraph", "Terraform", "Azure", "SSE"),
                    ),
                    project(
                       "Local Urban development Plan Assistant (PLU)",
                       [
                            Built an LLM-powered agent capable of answering questions about the Bordeaux Metropole urban plan (PLU) with clear, sourced responses.
                            Implemented search (RAG) tools and real-time streaming to a web interface.
                       ],
                       technologies: ("Python", "FastAPI", "LangGraph", "Terraform", "Azure", "Scaleway", "SSE"),
                    ),
                    project(
                       "Tailored Travel Experience Assistant",
                       [
                            Developed an LLM agent for creating personalized travel experiences in the luxury hospitality sector.
                            Agent with integrated tools for searching experiences and availability, with real-time streaming to web and mobile applications.
                       ],
                       technologies: ("Python", "FastAPI", "LangGraph", "Terraform", "AWS", "OpenSearch", "SSE"),
                    )
                )
            }
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
            stack(
                dir: ttb,
                spacing: inter-project-spacing,
                project(
                   "Automatic Sleep Apnea Detection",
                   [
                       Full-stack development of a mobile application using machine learning algorithms to determine whether a person suffers from sleep apnea based on a facial photo.
                   ],
                   technologies: ("Python", "Tensorflow", "Scikit Learn", "React Native", "AWS"),
                ),
                project(
                    "AI-Powered Content Recommendation",
                    [
                        Full-stack development of a mobile application enabling users to interact with video content and receive personalized recommendations based on their interactions.
                        Authored a series of articles on the topic, available on #link("https://medium.com/betomorrow")[Médium].
                    ],
                    technologies: ("Python", "AWS", "Flutter")
                ),
                project(
                    "Mobile Outdoor Augmented-Reality",
                    [
                        Developed a native Android application to experiment with live tracking and labeling of outdoor structures (buildings, trees, etc.) through the device camera, aimed at enhancing tourism experiences.
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
      title: "Ingénieur en informatique",
      institution: "ENSEIRB-MATMECA, Bordeaux, France",
      timeframe: "2018 - 2021",
      [Specialized in Artificial Intelligence.],
    ),
  ),
)
