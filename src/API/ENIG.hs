{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module API.ENIG where

import           Data.Aeson
import           Data.Proxy
import           Data.Text
import           Data.Text.ENIG
import           GHC.Generics
import           Servant
import           Servant.API

type ENIGAPI = "auto" :> ReqBody '[JSON] Str :> Post '[JSON] Str

newtype Str = Str { _str :: Text } deriving (Generic, Show)

instance FromJSON Str
instance ToJSON Str

enigAPI :: Proxy ENIGAPI
enigAPI = Proxy

enigServer :: Server ENIGAPI
enigServer = postGreetH
    where postGreetH arg = return . Str . enigAuto . _str $ arg
