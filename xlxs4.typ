#import "cv.typ/cv.typ": *

// Load CV data from YAML
#let cvdata = yaml("xlxs4.yml")

#let uservars = (
    headingfont: "Linux Libertine",
    bodyfont: "Linux Libertine",
    fontsize: 10pt,
    linespacing: 6pt,
    showAddress: true,
    showNumber: true,
)

#let customrules(doc) = {

    doc
}

#let cvinit(doc) = {
    doc = setrules(uservars, doc)
    doc = showrules(uservars, doc)
    doc = customrules(doc)

    doc
}

#show: doc => cvinit(doc)

#cvheading(cvdata, uservars)

#cvwork(cvdata)
#cvexperience(cvdata)
#cveducation(cvdata)
#cvskills(cvdata)
#cvconferences(cvdata)

#endnote
