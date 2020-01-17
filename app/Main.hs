  module Main where


import           API.ENIG
import           Servant
import           Network.Wai.Handler.Warp
import           System.Environment             ( getArgs )


enig :: Application
enig = serve enigAPI enigServer

runENIGServer :: Port -> IO ()
runENIGServer port = run port enig

main :: IO ()
main = do
  port <- getPortNum
  putStrLn "Start ENIG-Server"
  runENIGServer port

getPortNum :: IO Int
getPortNum = do
  args <- getArgs
  if null args
    then do
      putStrLn $ "Set server port as " ++ show defaultPort
      return defaultPort
    else do
      let lPort = reads . head $ args :: [(Int, String)]
      if null lPort
        then do
          putStrLn "Given number is not readable"
          putStrLn $ "Set server port as " ++ show defaultPort
          return defaultPort
        else do
          let port = fst . head $ lPort
          if port < 0
            then do
              putStrLn $ "Give positive number for port: " ++ show port
              putStrLn $ "Set server port as " ++ show defaultPort
              return defaultPort
            else return port
  where defaultPort = 8000
