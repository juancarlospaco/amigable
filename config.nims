from std/strutils import multiReplace

# https://nim-lang.github.io/Nim/manual.html#lexical-analysis-identifiers-amp-keywords
const reemplazos = [
  ("_ensamblador", "asm"),
  ("_direccion"  , "addr"),
  ("_como"       , "as"),
  ("_bloque:"    , "block:"),
  ("_cortar"     , "break"),
  ("_elegir"     , "case"),
  ("_constante"  , "const"),
  ("_variable"   , "var"),
  ("_inmutable"  , "let"),
  ("_continuar"  , "continue"),
  ("_diferir:"    , "defer:"),
  ("_descartar"  , "discard"),
  ("_dividir"    , "div"),
  ("_sies"       , "if"),
  ("_osi"        , "elif"),
  ("_deultima:"  , "else:"),
  ("_enumeracion", "enum"),
  ("_excepto"    , "except"),
  ("_exportar"   , "export"),
  ("_finalmente:" , "finally:"),
  ("_bucle"      , "for"),
  ("_desde"      , "from"),
  ("_importar"   , "import"),
  ("_enel"       , "in"),
  ("_esun"       , "is"),
  ("_noes"       , "isnot"),
  ("_iterador"   , "iterator"),
  ("_modulo"     , "mod"),
  ("_noen"       , "notin"),
  ("_objeto"     , "object"),
  ("_deel"       , "of"),
  ("_funcion"    , "proc"),
  ("_elevar"     , "raise"),
  ("_retornar"   , "return"),
  ("_estatico"   , "static"),
  ("_plantilla"  , "template"),
  ("_intentar"   , "try"),
  ("_tupla"      , "tuple"),
  ("_tipos"       , "type"),
  ("_usando"     , "using"),
  ("_cuando"     , "when"),
  ("_mientras"   , "while"),
  ("_imprimir"   , "debugEcho"),
  ("_chequear"   , "doAssert"),
  ("_verdadero"  , "true"),
  ("_falso"      , "false"),
  ("_entero"     , "int"),
  ("_flotante"   , "float"),
  ("_booleano"   , "bool"),
  ("_texto"      , "string"),
  ("_resultado"  , "result"),
  ("_principal"  , "isMainModule"),
]

task ejecuta, "Compilar y ejecutar":
  var o = "r -f --hints:off --verbosity:0 --warnings:off"
  for s in ["os", "math", "times", "sugar", "tables", "sequtils", "strutils", "strformat", "lenientops"]:
    o.add " --import:std/" & s
  o.add ' '
  let archivo = paramStr(2)
  cpFile(archivo, archivo & ".txt")
  writeFile(archivo, archivo.readFile.multiReplace reemplazos)
  selfExec o & archivo
  mvFile(archivo & ".txt", archivo)
