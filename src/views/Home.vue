<template lang="pug">
.wrapper
  header.header
    .signup-container
      img.header-icon(
        src="@/assets/images/content/compass_icon.svg"
        width="214"
        height="198"
        alt="AppCompass Icon"
      )
      h1.signup-title AppCompass is coming soon!
      .signup-desc
        p Sign up for product updates and launch notifications.
      form.signup-form(action="https://p3in.us1.list-manage.com/subscribe/post" method="POST")
        input(type="hidden" name="u" value="ded53ce951a1eccdf0287cc29")
        input(type="hidden" name="id" value="b1992416c0")
        input#MERGE0(
          type="email"
          autocapitalize="off"
          autocorrect="off"
          name="MERGE0"
          size="25"
          value=""
          placeholder="Email Address"
        )
        button(type="submit") Sign Up
  main.main
    .app-content-bg
      .app-content-container
        section
          h2 What is AppCompass?
          p
            | Plus 3 Interactive was a small development shop. &nbsp;
            | To save our time and serve our clients better,  we created &nbsp;
            strong AppCompass
            | ,  an open-source Laraval framework platform for building &nbsp;
            | and managing web applications &ndash; and associated &nbsp;
            | websites - that use SQL databases.
        section.section-core
          h2 The core components:
          .core-components
            .core-components-container
              .core-components-box
                .core-component-header
                  img(
                    src="@/assets/images/content/modular_icon.svg"
                    width="30"
                    height="30"
                    alt="Modular Icon"
                  )
                  h3.core-component-title Modular
                p CLI package loading &amp; management module.
            .core-components-container
              .core-components-box
                .core-component-header
                  img(
                    src="@/assets/images/content/formbuilder_icon.svg"
                    width="30"
                    height="30"
                    alt="Modular Icon"
                  )
                  h3.core-component-title FormBuilder
                p Data structure management for building forms.
            .core-components-container
              .core-components-box
                .core-component-header
                  img(
                    src="@/assets/images/content/resourcebuilder_icon.svg"
                    width="30"
                    height="30"
                    alt="Modular Icon"
                  )
                  h3.core-component-title ResourceBuilder
                p API structure management to establish end-points.
            .core-components-container
              .core-components-box
                .core-component-header
                  img(
                    src="@/assets/images/content/pilotcp_icon.svg"
                    width="30"
                    height="30"
                    alt="Modular Icon"
                  )
                  h3.core-component-title PilotCP
                p Front-end control panel for visual control over data.
        section
          h2 And more...
          p
            | Other components we&rsquo;ve built for AppCompass include &nbsp;
            strong Slingshot
            |  for auto deployment of apps and sites;  a modern full-featured &nbsp;
            strong PilotCMS
            | ;  a geographic information management package, &nbsp;
            strong Geo
            | ;  and a convenient bonus, &nbsp;
            strong Blogger
            | .
          p
            | AppCompass is designed for Laravel developers, development shops, &nbsp;
            | and companies managing multiple websites with complex web applications.
    .signup-container
      h1.signup-title Get Early Access!
      .signup-desc
        p Sign up for product updates and launch notifications.
      form.signup-form(action="https://p3in.us1.list-manage.com/subscribe/post" method="POST")
        input(type="hidden" name="u" value="ded53ce951a1eccdf0287cc29")
        input(type="hidden" name="id" value="b1992416c0")
        input#MERGE0(
          type="email"
          autocapitalize="off"
          autocorrect="off"
          name="MERGE0"
          size="25"
          value=""
          placeholder="Email Address"
        )
        button(type="submit") Sign Up
  footer.footer
    p.p3-logo
      a(href="https://www.plus3interactive.com/")
        img(
          src="@/assets/images/content/compass_icon.svg"
          width="24"
          height="30"
          alt="Plus 3 Interactive"
        )
    p.copyright &copy; 2017 Plus 3 Interactive, LLC All Rights Reserved
</template>
