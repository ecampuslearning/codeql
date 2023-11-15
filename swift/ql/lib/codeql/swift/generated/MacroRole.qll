// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `MacroRole`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.AstNode
import codeql.swift.elements.expr.TypeExpr

module Generated {
  /**
   * The role of a macro.
   * INTERNAL: Do not reference the `Generated::MacroRole` class directly.
   * Use the subclass `MacroRole`, where the following predicates are available.
   */
  class MacroRole extends Synth::TMacroRole, AstNode {
    override string getAPrimaryQlClass() { result = "MacroRole" }

    /**
     * Gets the kind of this macro role (declaration, expression, member, etc.).
     */
    int getKind() { result = Synth::convertMacroRoleToRaw(this).(Raw::MacroRole).getKind() }

    /**
     * Gets the #freestanding or @attached.
     */
    int getMacroSyntax() {
      result = Synth::convertMacroRoleToRaw(this).(Raw::MacroRole).getMacroSyntax()
    }

    /**
     * Gets the `index`th conformance of this macro role (0-based).
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    TypeExpr getImmediateConformance(int index) {
      result =
        Synth::convertTypeExprFromRaw(Synth::convertMacroRoleToRaw(this)
              .(Raw::MacroRole)
              .getConformance(index))
    }

    /**
     * Gets the `index`th conformance of this macro role (0-based).
     */
    final TypeExpr getConformance(int index) {
      exists(TypeExpr immediate |
        immediate = this.getImmediateConformance(index) and
        result = immediate.resolve()
      )
    }

    /**
     * Gets any of the conformances of this macro role.
     */
    final TypeExpr getAConformance() { result = this.getConformance(_) }

    /**
     * Gets the number of conformances of this macro role.
     */
    final int getNumberOfConformances() { result = count(int i | exists(this.getConformance(i))) }

    /**
     * Gets the `index`th name of this macro role (0-based).
     */
    string getName(int index) {
      result = Synth::convertMacroRoleToRaw(this).(Raw::MacroRole).getName(index)
    }

    /**
     * Gets any of the names of this macro role.
     */
    final string getAName() { result = this.getName(_) }

    /**
     * Gets the number of names of this macro role.
     */
    final int getNumberOfNames() { result = count(int i | exists(this.getName(i))) }
  }
}
