module Main where

import Options.Applicative
import GHC.Float

type ItemIndex = Int

itemIndexParser :: Parser ItemIndex
itemIndexParser = argument auto (metavar "ITEMINDEX" <> help "index of item")

defaultDataPath :: FilePath
defaultDataPath = "~/.to-do.yaml"

dataPathParser :: Parser FilePath
dataPathParser = strOption $ 
    value defaultDataPath
    <> long "data-path"
    <> short 'p'
    <> metavar "DATAPATH"
    <> help  ("path to data file (default: "++ defaultDataPath ++ ")")




main :: IO ()
main = do
    dataPath <- execParser (info (dataPathParser) (progDesc "To-Do CLI"))
    putStrLn $ "Data path: " ++ dataPath