using DataFrames, OpenML
table= OpenML.load(42638)
df0=DataFrame(table)
describe(df0)

