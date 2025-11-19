#import "package.typ": *

#show: resume.with(
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
      "Technical Skills",
      {
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
            "Cloud certifications",
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
            ),
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
            ),
        )
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
      institution: "La Prépa des INP, Bordeaux, France",
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
