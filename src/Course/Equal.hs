-- -- type-class
-- -- only put type signature
-- class Equal a where
--  (===) :: a -> a -> Bool
 
-- data Boolean = Tru | Fals


-- -- Substitute a for Boolean in the instance
-- instance Equal Boolean where
-- -- Boolean -> Boolean -> Bool
--  (===) Tru Tru = True
--  (===) Fals Fals = Tru
--  (===) _ _ = False

-- -- All things that have an equal should also have a not equal
-- (/==) :: Equal a => a -> a -> Bool
-- (/==) a1 a2 = not (a1 === a2)

-- Result = LT | GT | EQ
-- -- Make sure that whatever has an Order also has an Equal
-- class Equal a => Order a where
--  comp :: a -> a -> Result

-- -- Purpose of this is so that for any new data type we can reuse the Equal property and all the derived properties (e.g. not equals)