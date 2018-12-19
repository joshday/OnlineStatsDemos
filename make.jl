using Reproducible, Glob

for file in glob("*.md")
    Reproducible.build(file)
end