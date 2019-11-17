using Documenter, AFQMC

makedocs(
    modules = [ AFQMC ],
    sitename="AFQMC.jl",
    authors = "Hao Shi",
    pages = [
        "Home" => "index.md",
        "Getting Started" => "start.md",
        "Tutorial" => "tutorial.md",
        "Manual" => Any[
            "manual/hamiltonian.md",
        ],
        "Library" => Any[
            "General" => Any[
                "Verbose" => "library/general/verbose.md",
            ],
            "Hamiltonian" => Any[
                "library/hamiltonian/H2s.md"
            ],
            "Wavefunction" => Any[
                "library/wavefunction/Sd1s.md",
                "library/wavefunction/Sd2s.md"
            ]
        ],
    ],
)

#Todo: I need to setup TRAVIS to make sure everything is correct
#Following the link: https://juliadocs.github.io/Documenter.jl/stable/man/hosting/
#deploydocs(
#    repo = "github.com/afqmc/afqmc.jl.git",
#    target = "build",
#)
