using FlatGeometry
using Documenter

DocMeta.setdocmeta!(FlatGeometry, :DocTestSetup, :(using FlatGeometry); recursive=true)

makedocs(;
    modules=[FlatGeometry],
    authors="Maarten Pronk <git@evetion.nl> and contributors",
    repo="https://github.com/evetion/FlatGeometry.jl/blob/{commit}{path}#{line}",
    sitename="FlatGeometry.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://evetion.github.io/FlatGeometry.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/evetion/FlatGeometry.jl",
    devbranch="main",
)
