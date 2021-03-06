//
//  ParserCLI.swift
//  swiftgen
//
//  Created by Olivier Halligon on 01/10/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import SwiftGenKit

/// Describes the Command-Line Interface for each parser subcommands
public struct ParserCLI {
  public let parserType: Parser.Type
  public let name: String
  public let templateFolder: String
  public let description: String
  public let pathDescription: String
}

extension ParserCLI {
  init(parserType: Parser.Type, name: String, description: String, pathDescription: String) {
    self.init(
      parserType: parserType,
      name: name,
      templateFolder: name,
      description: description,
      pathDescription: pathDescription
    )
  }
}

// MARK: - All Parser Commands

let allParserCommands: [ParserCLI] = [
  .init(
    parserType: AssetsCatalog.Parser.self,
    name: "xcassets",
    description: "generate code for items in your Assets Catalog(s)",
    pathDescription: "Asset Catalog file(s)."
  ),
  .init(
    parserType: Colors.Parser.self,
    name: "colors",
    description: "generate code for color palettes",
    pathDescription: "Colors.txt|.clr|.xml|.json file(s) to parse."
  ),
  .init(
    parserType: Fonts.Parser.self,
    name: "fonts",
    description: "generate code for your fonts",
    pathDescription: "Directory(ies) to parse."
  ),
  .init(
    parserType: InterfaceBuilder.Parser.self,
    name: "ib",
    description: "generate code for your storyboard scenes and segues",
    pathDescription: "Directory to scan for .storyboard files. Can also be a path to a single .storyboard"
  ),
  .init(
    parserType: Strings.Parser.self,
    name: "strings",
    description: "generate code for your Localizable.strings file(s)",
    pathDescription: "Strings file(s) to parse."
  ),

  // Deprecated
  .init(
    parserType: InterfaceBuilder.Parser.self,
    name: "storyboards",
    templateFolder: "ib",
    description: "DEPRECATED, please use 'ib' instead",
    pathDescription: "Directory to scan for .storyboard files. Can also be a path to a single .storyboard"
  )
]
