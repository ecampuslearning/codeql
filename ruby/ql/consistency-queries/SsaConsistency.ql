import codeql.ruby.dataflow.SSA
import codeql.ruby.dataflow.internal.SsaImpl
import Consistency

class MyRelevantDefinition extends RelevantDefinition, Ssa::Definition {
  override predicate hasLocationInfo(
    string filepath, int startline, int startcolumn, int endline, int endcolumn
  ) {
    this.getLocation().hasLocationInfo(filepath, startline, startcolumn, endline, endcolumn)
  }
}

class MyRelevantDefinitionExt extends RelevantDefinitionExt, DefinitionExt {
  override predicate hasLocationInfo(
    string filepath, int startline, int startcolumn, int endline, int endcolumn
  ) {
    this.getLocation().hasLocationInfo(filepath, startline, startcolumn, endline, endcolumn)
  }
}
