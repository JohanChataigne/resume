#import "package.typ": *

#show: resume.with(
  first-name: "Johan",
  last-name: "Chataigner",
  profession: "Fullstack Software Engineer",
  bio: [
    Fullstack Software Engineer with a core focus on Backend Architecture and Cloud Infrastructure.
    Specialized in Kotlin Spring and Python FastAPI for high-availability distributed systems, with expertise in building production-grade Generative AI solutions.
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
      "Technical Skills",
      {
            stack(
                dir: ttb,
                spacing: inter-skill-spacing,
                skill-entry(
                    "Backend & APIs",
                    keywords: ("Kotlin Spring", "Python FastAPI"),
                ),
                skill-entry(
                    "Cloud Platforms",
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
      "Languages",
      {
            stack(
                spacing: inter-skill-spacing,
                soft-skill-entry("French", level: "Native"),
                soft-skill-entry("English", level: "TOEIC 975 pts"),
                soft-skill-entry("Spanish", level: "B2 level"),
            )
        }
    )

    section(
        theme: (
          space-above: 10pt,
        ),
      "Hobbies",
      {
            stack(
                spacing: inter-skill-spacing,
                soft-skill-entry("Competitive volleyball", level: "Pré-Nationale"),
                soft-skill-entry("Running"),
                soft-skill-entry("Video games"),
            )
        }
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
                   Developed a backend-for-frontend and its associated infrastructure for an app with 500k monthly active users. Integrated and managed connections to 15+ external dependencies in a high-load infrastructure context.
               ],
               technologies: ("Kotlin", "Spring", "Terraform", "Azure", "Redis"),
            ),
            project(
               "Development and Maintenance of Cleo and Physio.me Applications (Biogen)",
               [
                   Web and mobile applications deployed in 10+ countries, with cloud infrastructures across multiple AWS regions, within an HDS-compliant environment.
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
                    Implemented RAG pipeline, to provide grounded answers, and real-time streaming to a web interface.
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
