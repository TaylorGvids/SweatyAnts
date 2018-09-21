USE rental_database;

DELETE FROM instore;
DELETE FROM central_database;

/*correct*/
INSERT INTO `Instore` (`store_ID`, `Store_Name`, `Store_Address`, `Store_Phone`, `Store_City`, `Store_State_Name`,
 `Order_ID`, `Order_CreateDate`, `Pickup_Or_Return`, `Pickup_Or_Return_Date`, `Customer_ID`, `Customer_Name`,
 `Customer_Phone`, `Customer_Addresss`, `Customer_Birthday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`,
 `Car_MakeName`, `Car_Model`, `Car_Series`, `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`,
 `Car_TankCapacity`, `Car_Power`, `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, 
 `Car_Wheelbase`) VALUES (1, 'Alexandria_stroe', '3761 N. 14th St', '1 (11) 543 535-0162', 'Alexandria', 
 'New South Wales', 21, '2005-07-21', 'Return', '2005-08-10', 11053, 'Ana P', '859-535-011*', 
 '1660 Stonyhill Circle', '10/8/84', 'Labour', 'M  ', 14842, 'BMW', '3', 'E90 20i EXECUTIVE', 
 '2005', '57200', '2.0L', 'MULTI POINT F/INJ', '65L', '110Kw', '5', '6AS', '4D SEDAN', 'RWD', '2760mm');
 
 /*spelling mistake*/
INSERT INTO `Instore` (`store_ID`, `Store_Name`, `Store_Address`, `Store_Phone`, `Store_City`, `Store_State_Name`,
 `Order_ID`, `Order_CreateDate`, `Pickup_Or_Return`, `Pickup_Or_Return_Date`, `Customer_ID`, `Customer_Name`,
 `Customer_Phone`, `Customer_Addresss`, `Customer_Birthday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`,
 `Car_MakeName`, `Car_Model`, `Car_Series`, `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`,
 `Car_TankCapacity`, `Car_Power`, `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, 
 `Car_Wheelbase`) VALUES (1, 'mitastake here', '3761 N. 14th St', '1 (11) 543 535-0162', 'Alexandria', 
 'New South Wales', 21, '2005-07-21', 'Return', '2005-08-10', 11053, 'Ana P', '859-535-011*', 
 '1660 Stonyhill Circle', '10/8/84', 'Labour', 'M  ', 14842, 'BMW', '3', 'E90 20i EXECUTIVE', 
 '2005', '57200', '2.0L', 'MULTI POINT F/INJ', '65L', '110Kw', '5', '6AS', '4D SEDAN', 'RWD', '2760mm');
 
 /*incorrect date format*/
INSERT INTO `Instore` (`store_ID`, `Store_Name`, `Store_Address`, `Store_Phone`, `Store_City`, `Store_State_Name`,
 `Order_ID`, `Order_CreateDate`, `Pickup_Or_Return`, `Pickup_Or_Return_Date`, `Customer_ID`, `Customer_Name`,
 `Customer_Phone`, `Customer_Addresss`, `Customer_Birthday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`,
 `Car_MakeName`, `Car_Model`, `Car_Series`, `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`,
 `Car_TankCapacity`, `Car_Power`, `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, 
 `Car_Wheelbase`) VALUES (1, 'Alexandria_stroe', '3761 N. 14th St', '1 (11) 543 535-0162', 'Alexandria', 
 'New South Wales', 21, '202205-07-21', 'Return', '2005-08-10', 11053, 'Ana P', '859-535-011*', 
 '1660 Stonyhill Circle', '10/8/84', 'Labour', 'M  ', 14842, 'BMW', '3', 'E90 20i EXECUTIVE', 
 '2005', '57200', '2.0L', 'MULTI POINT F/INJ', '65L', '110Kw', '5', '6AS', '4D SEDAN', 'RWD', '2760mm');
 
 
 /*only numbers*/
 INSERT INTO `Instore` (`store_ID`, `Store_Name`, `Store_Address`, `Store_Phone`, `Store_City`, `Store_State_Name`,
 `Order_ID`, `Order_CreateDate`, `Pickup_Or_Return`, `Pickup_Or_Return_Date`, `Customer_ID`, `Customer_Name`,
 `Customer_Phone`, `Customer_Addresss`, `Customer_Birthday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`,
 `Car_MakeName`, `Car_Model`, `Car_Series`, `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`,
 `Car_TankCapacity`, `Car_Power`, `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, 
 `Car_Wheelbase`) VALUES (1, '12345', '000000000000000', '12332335234', '12323445', 
 '12345', 132345, '23452543', '234235', '324235', 253335, '23562334', '876543', 
 '345345234', '2435526', '53245', '245542', 24524842, '2345256', '456476', '8976543', 
 '20054325', '5247200', '223452345', '245245', '652435', '1105432', '2455', '65435', '4143345', '234556', '3452345');
 
 /*no number values*/
 INSERT INTO `Instore` (`store_ID`, `Store_Name`, `Store_Address`, `Store_Phone`, `Store_City`, `Store_State_Name`,
 `Order_ID`, `Order_CreateDate`, `Pickup_Or_Return`, `Pickup_Or_Return_Date`, `Customer_ID`, `Customer_Name`,
 `Customer_Phone`, `Customer_Addresss`, `Customer_Birthday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`,
 `Car_MakeName`, `Car_Model`, `Car_Series`, `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`,
 `Car_TankCapacity`, `Car_Power`, `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, 
 `Car_Wheelbase`) VALUES ('a', '', '', '', '', 
 '', 'a', '', '', '', 'a', '', '', 
 '', '', '', '', 'a', '', '', '', 
 '', '', '', '', '', '', '', '', '', '', '');
 
 /*all text is null values*/
 INSERT INTO `Instore` (`store_ID`, `Store_Name`, `Store_Address`, `Store_Phone`, `Store_City`, `Store_State_Name`,
 `Order_ID`, `Order_CreateDate`, `Pickup_Or_Return`, `Pickup_Or_Return_Date`, `Customer_ID`, `Customer_Name`,
 `Customer_Phone`, `Customer_Addresss`, `Customer_Birthday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`,
 `Car_MakeName`, `Car_Model`, `Car_Series`, `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`,
 `Car_TankCapacity`, `Car_Power`, `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, 
 `Car_Wheelbase`) VALUES (a, '', '', '', '', 
 '', a, '', '', '', , '', '', 
 '', '', '', '', a, '', '', '', 
 '', '', '', '', '', '', '', '', '', '', '');
 
 /*random number and letter combination*/
 INSERT INTO `Instore` (`store_ID`, `Store_Name`, `Store_Address`, `Store_Phone`, `Store_City`, `Store_State_Name`,
 `Order_ID`, `Order_CreateDate`, `Pickup_Or_Return`, `Pickup_Or_Return_Date`, `Customer_ID`, `Customer_Name`,
 `Customer_Phone`, `Customer_Addresss`, `Customer_Birthday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`,
 `Car_MakeName`, `Car_Model`, `Car_Series`, `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`,
 `Car_TankCapacity`, `Car_Power`, `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, 
 `Car_Wheelbase`) VALUES (1asd, '12asd345', '000000000sdasd000000', '123dsaf32335234', '12323sasddffd445', 
 '123sdfg45', 132sdf345, '2345254asdfg3', '234235', '324gfdg235', 253sdf335, '2356gfdg2334', '8765sdfg43', 
 '345asdfg345234', '243fgsa5526', '5324asdfg5', '245fas542', 24cds524842, '234dfgg5256', '45dgfs6476', '897dfg6543', 
 '2005dfg4325', '524sadfg7200', '22345asdfg2345', '24dgd5245', '652435', '11gfdg05432', '24gfsdg55', '654sdfg35', 
 '41433sdf45', '23llkm4556', '34sdf52345');
 
 /*nulls*/
 INSERT INTO `Instore` (`store_ID`, `Store_Name`, `Store_Address`, `Store_Phone`, `Store_City`, `Store_State_Name`,
 `Order_ID`, `Order_CreateDate`, `Pickup_Or_Return`, `Pickup_Or_Return_Date`, `Customer_ID`, `Customer_Name`,
 `Customer_Phone`, `Customer_Addresss`, `Customer_Birthday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`,
 `Car_MakeName`, `Car_Model`, `Car_Series`, `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`,
 `Car_TankCapacity`, `Car_Power`, `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, 
 `Car_Wheelbase`) VALUES ('', '', '', '', '', 
 '', 'a', '', '', '', 'a', '', '', 
 '', '', '', '', 'a', '', '', '', 
 '', '', '', '', '', '', '', '', '', '', '');
 
 /*no values*/
  INSERT INTO `Instore` (`store_ID`, `Store_Name`, `Store_Address`, `Store_Phone`, `Store_City`, `Store_State_Name`,
 `Order_ID`, `Order_CreateDate`, `Pickup_Or_Return`, `Pickup_Or_Return_Date`, `Customer_ID`, `Customer_Name`,
 `Customer_Phone`, `Customer_Addresss`, `Customer_Birthday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`,
 `Car_MakeName`, `Car_Model`, `Car_Series`, `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`,
 `Car_TankCapacity`, `Car_Power`, `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, 
 `Car_Wheelbase`) VALUES ();
 
 /*too many values*/
  INSERT INTO `Instore` (`store_ID`, `Store_Name`, `Store_Address`, `Store_Phone`, `Store_City`, `Store_State_Name`,
 `Order_ID`, `Order_CreateDate`, `Pickup_Or_Return`, `Pickup_Or_Return_Date`, `Customer_ID`, `Customer_Name`,
 `Customer_Phone`, `Customer_Addresss`, `Customer_Birthday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`,
 `Car_MakeName`, `Car_Model`, `Car_Series`, `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`,
 `Car_TankCapacity`, `Car_Power`, `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, 
 `Car_Wheelbase`) VALUES(1, 'Alexandria_stroe', '3761 N. 14th St', '1 (11) 543 535-0162', 'Alexandria', 
 'New South Wales', 21, '2005-07-21', 'Return', '2005-08-10', 11053, 'Ana P', '859-535-011*', 
 '1660 Stonyhill Circle', '10/8/84', 'Labour', 'M  ', 14842, 'BMW', '3', 'E90 20i EXECUTIVE', 
 '2005', '57200', '2.0L', 'MULTI POINT F/INJ', '65L', '110Kw', '5', '6AS', '4D SEDAN', 'RWD', '2760mm',  
 '10/8/84', 'Labour', 'M  ', 14842, 'BMW', '3', 'E90 20i EXECUTIVE',  '2005', '57200', '2.0L', 
 'MULTI POINT F/INJ', '65L', '110Kw', '5', '6AS', '4D SEDAN', 'RWD', '2760mm');
 
  /*correct*/
  INSERT INTO `Central_Database` (`order_ID`, `Order_CreateDate`, `Order_PickupDate`, `Order_PickupStore`, 
 `Pickup_Store_Name`, `Pickup_Store_Address`, `Pickup_Store_Phone`, `Pickup_Store_City`, `Pickup_Store_State_Name`,
 `Order_ReturnDate`, `Order_ReturnStore`, `Return_Store_Name`, `Return_Store_Address`, `Return_Store_Phone`, 
 `Return_Store_City`, `Return_Store_State`, `Customer_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Addresss`, 
 `Customer_Brithday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`, `Car_MakeName`, `Car_Model`, `Car_Series`,
 `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`, `Car_TankCapacity`, `Car_Power`, 
 `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, `Car_Wheelbase`) 
 VALUES(3, '2005-07-03', '2005-07-03', 3, 'Darlinghurst_store', '5844 Linden Land', '1 (11) 543 535-0184',
 'Darlinghurst', 'New South Wales', 20050711, 16, 'Springwood_store', '244 Willow Pass Road',
 '208-535-0142', 'Springwood', 'New South Wales', 11014, 'Sydney B', '431-535-015*', 
 '7011 Tank Drive', '08/05/1972', 'Labour', 'M  ', 14806, 'LAND ROVER', 'DISCOVERY 3', 'HSE', '2006', '83650', 
 '2.7L', 'DIESEL TURBO F/INJ', '82L', '140Kw', '7', '6A', '4D WAGON', '4WD', '2885mm');
 
 /*to many values*/
 INSERT INTO `Central_Database` (`order_ID`, `Order_CreateDate`, `Order_PickupDate`, `Order_PickupStore`, 
 `Pickup_Store_Name`, `Pickup_Store_Address`, `Pickup_Store_Phone`, `Pickup_Store_City`, `Pickup_Store_State_Name`,
 `Order_ReturnDate`, `Order_ReturnStore`, `Return_Store_Name`, `Return_Store_Address`, `Return_Store_Phone`, 
 `Return_Store_City`, `Return_Store_State`, `Customer_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Addresss`, 
 `Customer_Brithday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`, `Car_MakeName`, `Car_Model`, `Car_Series`,
 `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`, `Car_TankCapacity`, `Car_Power`, 
 `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, `Car_Wheelbase`) 
 VALUES(3, '2005-07-03', '2005-07-03', 3, 'Darlinghurst_store', '5844 Linden Land', '1 (11) 543 535-0184',
 'Darlinghurst', 'New South Wales', 20050711, 16, 'Springwood_store', '244 Willow Pass Road',
 '208-535-0142', 'Springwood', 'New South Wales', 11014, 'Sydney B', '431-535-015*', 
 '7011 Tank Drive', '08/05/1972', 'Labour', 'M  ', 14806, 'LAND ROVER', 'DISCOVERY 3', 'HSE', '2006', '83650', 
 '2.7L', 'DIESEL TURBO F/INJ', '82L', '140Kw', '7', '6A', '4D WAGON', '4WD', '2885mm',4, '2005-07-04', 
 '2005-07-04', 12, 'North Sydney_store', '1224 Shoenic', '1 (11) 543 535-0117', 'North Sydney 
', 'New South Wales', 20050709, 8, 'Matraville_store', '942 Brook Street', '1 (11) 543 535-0126', 'Matraville', 
'New South Wales', 11012, 'Lauren W', '717-535-016*', '785 Scott Street', '07/01/1972', 'Labour', 'F  ', 14816, 
'LAND ROVER', 'DISCOVERY', 'SERIES II S 4x4', '2003', '55450', '4.0L', 'MULTI POINT F/INJ', '93L', '136Kw', '7', 
'4A', '4D WAGON', '4WD', '2540mm');

 /*nulls*/
   INSERT INTO `Central_Database` (`order_ID`, `Order_CreateDate`, `Order_PickupDate`, `Order_PickupStore`, 
 `Pickup_Store_Name`, `Pickup_Store_Address`, `Pickup_Store_Phone`, `Pickup_Store_City`, `Pickup_Store_State_Name`,
 `Order_ReturnDate`, `Order_ReturnStore`, `Return_Store_Name`, `Return_Store_Address`, `Return_Store_Phone`, 
 `Return_Store_City`, `Return_Store_State`, `Customer_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Addresss`, 
 `Customer_Brithday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`, `Car_MakeName`, `Car_Model`, `Car_Series`,
 `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`, `Car_TankCapacity`, `Car_Power`, 
 `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, `Car_Wheelbase`) 
 VALUES(3, '', '', 3, '', '', '', '', '', 20050711, 16, '', '', '', '', '', 11014, '', '*', 
 '', '', '', '', 14806, '', '', '', '', '', '', '', '', '', '', '', '', '', '');
 
 /*no values*/
    INSERT INTO `Central_Database` (`order_ID`, `Order_CreateDate`, `Order_PickupDate`, `Order_PickupStore`, 
 `Pickup_Store_Name`, `Pickup_Store_Address`, `Pickup_Store_Phone`, `Pickup_Store_City`, `Pickup_Store_State_Name`,
 `Order_ReturnDate`, `Order_ReturnStore`, `Return_Store_Name`, `Return_Store_Address`, `Return_Store_Phone`, 
 `Return_Store_City`, `Return_Store_State`, `Customer_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Addresss`, 
 `Customer_Brithday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`, `Car_MakeName`, `Car_Model`, `Car_Series`,
 `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`, `Car_TankCapacity`, `Car_Power`, 
 `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, `Car_Wheelbase`) 
 VALUES('');
 
 /*spelling mistake*/
  INSERT INTO `Central_Database` (`order_ID`, `Order_CreateDate`, `Order_PickupDate`, `Order_PickupStore`, 
 `Pickup_Store_Name`, `Pickup_Store_Address`, `Pickup_Store_Phone`, `Pickup_Store_City`, `Pickup_Store_State_Name`,
 `Order_ReturnDate`, `Order_ReturnStore`, `Return_Store_Name`, `Return_Store_Address`, `Return_Store_Phone`, 
 `Return_Store_City`, `Return_Store_State`, `Customer_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Addresss`, 
 `Customer_Brithday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`, `Car_MakeName`, `Car_Model`, `Car_Series`,
 `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`, `Car_TankCapacity`, `Car_Power`, 
 `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, `Car_Wheelbase`) 
 VALUES(3, '2005-07-03', '2005-07-03', 3, 'Darlinghurst_store', '5844 Linden Land', '1 (11) 543 535-0184',
 'sepellingg mistakere hereea', 'New South Wales', 20050711, 16, 'Springwood_store', '244 Willow Pass Road',
 '208-535-0142', 'Springwood', 'New South Wales', 11014, 'Sydney B', '431-535-015*', 
 '7011 Tank Drive', '08/05/1972', 'Labour', 'M  ', 14806, 'LAND ROVER', 'DISCOVERY 3', 'HSE', '2006', '83650', 
 '2.7L', 'DIESEL TURBO F/INJ', '82L', '140Kw', '7', '6A', '4D WAGON', '4WD', '2885mm');
 
  /*incorrect date*/
   INSERT INTO `Central_Database` (`order_ID`, `Order_CreateDate`, `Order_PickupDate`, `Order_PickupStore`, 
 `Pickup_Store_Name`, `Pickup_Store_Address`, `Pickup_Store_Phone`, `Pickup_Store_City`, `Pickup_Store_State_Name`,
 `Order_ReturnDate`, `Order_ReturnStore`, `Return_Store_Name`, `Return_Store_Address`, `Return_Store_Phone`, 
 `Return_Store_City`, `Return_Store_State`, `Customer_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Addresss`, 
 `Customer_Brithday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`, `Car_MakeName`, `Car_Model`, `Car_Series`,
 `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`, `Car_TankCapacity`, `Car_Power`, 
 `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, `Car_Wheelbase`) 
 VALUES(3, '2005-07-033333', '2005-07-03', 3, 'Darlinghurst_store', '5844 Linden Land', '1 (11) 543 535-0184',
 'Darlinghurst', 'New South Wales', 20050711, 16, 'Springwood_store', '244 Willow Pass Road',
 '208-535-0142', 'Springwood', 'New South Wales', 11014, 'Sydney B', '431-535-015*', 
 '7011 Tank Drive', '08/05/1972', 'Labour', 'M  ', 14806, 'LAND ROVER', 'DISCOVERY 3', 'HSE', '2006', '83650', 
 '2.7L', 'DIESEL TURBO F/INJ', '82L', '140Kw', '7', '6A', '4D WAGON', '4WD', '2885mm');
 
 
 /*null value*/
    INSERT INTO `Central_Database` (`order_ID`, `Order_CreateDate`, `Order_PickupDate`, `Order_PickupStore`, 
 `Pickup_Store_Name`, `Pickup_Store_Address`, `Pickup_Store_Phone`, `Pickup_Store_City`, `Pickup_Store_State_Name`,
 `Order_ReturnDate`, `Order_ReturnStore`, `Return_Store_Name`, `Return_Store_Address`, `Return_Store_Phone`, 
 `Return_Store_City`, `Return_Store_State`, `Customer_ID`, `Customer_Name`, `Customer_Phone`, `Customer_Addresss`, 
 `Customer_Brithday`, `Customer_Occupation`, `Customer_Gender`, `Car_ID`, `Car_MakeName`, `Car_Model`, `Car_Series`,
 `Car_SeriesYear`, `Car_PriceNew`, `Car_EngineSize`, `Car_FuelSystem`, `Car_TankCapacity`, `Car_Power`, 
 `Car_SeatingCapacity`, `Car_StandardTransmission`, `Car_BodyType`, `Car_Drive`, `Car_Wheelbase`) 
 VALUES(3, '2005-07-03', '2005-07-03', 3, 'Darlinghurst_store', '5844 Linden Land', '1 (11) 543 535-0184',
 'Darlinghurst', 'New South Wales', , 16, 'Springwood_store', '244 Willow Pass Road',
 '208-535-0142', 'Springwood', 'New South Wales', 11014, 'Sydney B', '431-535-015*', 
 '7011 Tank Drive', '08/05/1972', 'Labour', 'M  ', 14806, 'LAND ROVER', 'DISCOVERY 3', 'HSE', '2006', '83650', 
 '2.7L', 'DIESEL TURBO F/INJ', '82L', '140Kw', '7', '6A', '4D WAGON', '4WD', '2885mm');