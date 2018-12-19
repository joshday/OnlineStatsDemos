using Reproducible, Glob

for file in glob("*.jl")
    Reproducible.build(file; toc = true)
end