-- Prática 02 de Haskell
-- Nome: Iuri Bernardo Picolini Moro

verificaFebre:: Float -> Bool
verificaFebre x = x > 37.8

comFebre :: [Float] -> [Float]
comFebre list = filter verificaFebre list


comFebre' :: [Float] -> [Float]
comFebre' list = filter (\temp -> temp > 37.8) list


itemize :: [String] -> [String]
itemize list = map (\string -> "<li>" ++ string ++ "</li>") list


bigCircles :: Float -> [Float] -> [Float]
bigCircles num list = filter (\r -> (pi * (r^2)) > num) list


quarentena :: [(String,Float)] -> [(String,Float)]
quarentena list = filter (\element -> snd element > 37.8) list


idadesEm :: [Int] -> Int -> [Int] 
idadesEm list num = map (\ano -> num - ano) list


changeNames :: [String] -> [String]
changeNames list = map (\nome -> (if head nome == 'A' then "Super " ++ nome else nome)) list


onlyShorts :: [String] -> [String]
onlyShorts list = filter (\string -> length (string) < 5) list