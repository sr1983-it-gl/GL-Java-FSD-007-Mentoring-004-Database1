# Procedure Definition

CREATE DEFINER=`root`@`localhost` PROCEDURE `PriceOfCurrentMonth`(I_MONTH VARCHAR(100), I_YEAR INT)
BEGIN

select * from Pricing WHERE MONTH = I_MONTH AND YEAR = I_YEAR;

END

# To run the procedure

call PriceOfCurrentMonth('January', '2022');


