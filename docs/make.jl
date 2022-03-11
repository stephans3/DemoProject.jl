using DemoProject
using Documenter

DocMeta.setdocmeta!(DemoProject, :DocTestSetup, :(using DemoProject); recursive=true)

makedocs(;
    modules=[DemoProject],
    authors="Stephan Scholz <stephan.scholz@rwu.de> and contributors",
    repo="https://github.com/stephans3/DemoProject.jl/blob/{commit}{path}#{line}",
    sitename="DemoProject.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://stephans3.github.io/DemoProject.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/stephans3/DemoProject.jl",
    devbranch="main",
)
