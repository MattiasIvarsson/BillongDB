{{ config(tags=["football_staging"])}}


SELECT
		ROW_NUMBER () OVER ( ORDER By date )				AS 'GameNumber'
		,IIF(ROW_NUMBER () OVER ( ORDER By date ) <11,1,LEFT (ROW_NUMBER () OVER ( ORDER By date )-1,	LEN(ROW_NUMBER () OVER ( ORDER By date ))-1)+1)		 AS 'GameWeek'
		,Date												AS 'MatchDay'
		,'2018/2019'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'									AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,HS													AS 'HomeShots'				
		,[AS]												AS 'AwayShots'
		,HST												AS 'HomeShotTarget'
		,AST												AS 'AwayShotTarget'
		,HFKC												AS 'HomeFoulsConceded'	
		,AFKC												AS 'AwayFoulsConceded'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,HR 												AS 'HomeRed'
		,AR 												AS 'AwayRed'
		,NULL												AS 'Referee'
        ,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,NULL AS LBH
        ,NULL AS LBD
        ,NULL AS LBA
        ,PSH
        ,PSD
        ,PSA
        ,WHH
        ,WHD
        ,WHA
        ,NULL AS SJH
        ,NULL AS SJD
        ,NULL AS SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,PSCH
        ,PSCD
        ,PSCA
	FROM {{source('Belgium','s_1819')}}

	
-------------------------Jupiler League 17/18---------------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'								
		,'2017/2018'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'											AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,HS													AS 'HomeShots'				
		,[AS]												AS 'AwayShots'
		,HST												AS 'HomeShotTarget'
		,AST												AS 'AwayShotTarget'
		,HFKC													AS 'HomeFouls'	
		,AFKC													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,HR													AS 'HomeRed'
		,AR													AS 'AwayRed'
		,NULL												AS 'Referee'
        ,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,PSH
        ,PSD
        ,PSA
        ,WHH
        ,WHD
        ,WHA
        ,NULL AS SJH
        ,NULL AS SJD
        ,NULL AS SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,PSCH
        ,PSCD
        ,PSCA

	FROM {{source('Belgium','s_1718')}}

-------------------------Jupiler League 16/17-------------------------------------------------------------------------------------
UNION ALL
SELECT  
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2016/2017'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'											AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,null												AS 'HomeShots'				
		,null												AS 'AwayShots'
		,null												AS 'HomeShotTarget'
		,null												AS 'AwayShotTarget'
		,null												AS 'HomeFouls'	
		,null												AS 'AwayFouls'
		,null												AS 'HomeCorners'
		,null												AS 'AwayCorners'
		,null												AS 'HomeYellow'
		,null												AS 'AwayYellow'
		,null												AS 'HomeRed'
		,null												AS 'AwayRed'
		,NULL												AS 'Referee'
         ,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,PSH
        ,PSD
        ,PSA
        ,WHH
        ,WHD
        ,WHA
        ,NULL AS SJH
        ,NULL AS SJD
        ,NULL AS SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,PSCH
        ,PSCD
        ,PSCA


	FROM {{source('Belgium','s_1617')}}


-------------------------Jupiler League 15/16-------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2015/2016'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'									AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,null												AS 'HomeShots'				
		,null												AS 'AwayShots'
		,null												AS 'HomeShotTarget'
		,null												AS 'AwayShotTarget'
		,null												AS 'HomeFouls'	
		,null												AS 'AwayFouls'
		,null												AS 'HomeCorners'
		,null												AS 'AwayCorners'
		,null												AS 'HomeYellow'
		,null												AS 'AwayYellow'
		,null										 		AS 'HomeRed'
		,null										 		AS 'AwayRed'
		,NULL												AS 'Referee'
        ,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,PSH
        ,PSD
        ,PSA
        ,WHH
        ,WHD
        ,WHA
        ,NULL AS SJH
        ,NULL AS SJD
        ,NULL AS SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,PSCH
        ,PSCD
        ,PSCA


	FROM {{source('Belgium','s_1516')}}


-------------------------Jupiler League 14/15-------------------------------------------------------------------------
UNION ALL
SELECT  
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'			
		,'2014/2015'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'									AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,null												AS 'HomeShots'				
		,null												AS 'AwayShots'
		,null												AS 'HomeShotTarget'
		,null												AS 'AwayShotTarget'
		,null												AS 'HomeFouls'	
		,null												AS 'AwayFouls'
		,null												AS 'HomeCorners'
		,null												AS 'AwayCorners'
		,null												AS 'HomeYellow'
		,null												AS 'AwayYellow'
		,null												AS 'HomeRed'
		,null												AS 'AwayRed'
		,NULL												AS 'Referee'
        ,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,PSH
        ,PSD
        ,PSA
        ,WHH
        ,WHD
        ,WHA
        ,SJH
        ,SJD
        ,SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,PSCH
        ,PSCD
        ,PSCA

	FROM {{source('Belgium','s_1415')}}

-------------------------Jupiler League 13/14----------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2013/2014'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'											AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
		,NULL												AS 'Referee'
         ,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,PSH
        ,PSD
        ,PSA
        ,WHH
        ,WHD
        ,WHA
        ,SJH
        ,SJD
        ,SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,PSCH
        ,PSCD
        ,PSCA

	FROM {{source('Belgium','s_1314')}}

-------------------------Jupiler League 12/13---------------------------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2012/2013'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'									AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
		,NULL												AS 'Referee'
,B365H
,B365D
,B365A
,BWH
,BWD
,BWA
,IWH
,IWD
,IWA
,LBH
,LBD
,LBA
,PSH
,PSD
,PSA
,WHH
,WHD
,WHA
,SJH
,SJD
,SJA
,VCH
,VCD
,VCA
,Bb1X2
,BbMxH
,BbAvH
,BbMxD
,BbAvD
,BbMxA
,BbAvA
,BbOU
,BbMx_2_5
,BbAv_2_5
,BbMx_2_5_2
,BbAv_2_5_2
,BbAH
,BbAHh
,BbMxAHH
,BbAvAHH
,BbMxAHA
,BbAvAHA
,PSCH
,PSCD
,PSCA

	FROM {{source('Belgium','s_1213')}}

-------------------------Jupiler League 11/12----------------------------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2011/2012'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'									AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
		,NULL												AS 'Referee'
        ,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,NULL AS PSH
        ,NULL AS PSD
        ,NULL AS PSA
        ,WHH
        ,WHD
        ,WHA
        ,SJH
        ,SJD
        ,SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,NULL
        ,NULL
        ,NULL

	FROM {{source('Belgium','s_1112')}}


-------------------------Jupiler League 10/11--------------------------------------------------------------------------------------------
UNION ALL
SELECT  
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2010/2011'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'									AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
 		,NULL												AS 'Referee'
,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,NULL AS PSH
        ,NULL AS PSD
        ,NULL AS PSA
        ,WHH
        ,WHD
        ,WHA
        ,SJH
        ,SJD
        ,SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,NULL
        ,NULL
        ,NULL
	FROM {{source('Belgium','s_1011')}}

-------------------------Jupiler League 09/10------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'
		  ,'2009/2010'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'									AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
 		,NULL												AS 'Referee'
,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,NULL AS PSH
        ,NULL AS PSD
        ,NULL AS PSA
        ,WHH
        ,WHD
        ,WHA
        ,SJH
        ,SJD
        ,SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,NULL
        ,NULL
        ,NULL
	FROM {{source('Belgium','s_0910')}}

-------------------------Jupiler League 08/09-----------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2008/2009'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'									AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
 		,NULL												AS 'Referee'
,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,NULL AS PSH
        ,NULL AS PSD
        ,NULL AS PSA
        ,WHH
        ,WHD
        ,WHA
        ,SJH
        ,SJD
        ,SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,NULL
        ,NULL
        ,NULL
	FROM {{source('Belgium','s_0809')}}


---------------------------Jupiler League 07/08---------------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2007/2008'										AS 'Season'	
		,'Belgium'											AS 'Country'
		,'Jupiler League'									AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
 		,NULL												AS 'Referee'
,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,NULL AS PSH
        ,NULL AS PSD
        ,NULL AS PSA
        ,WHH
        ,WHD
        ,WHA
        ,SJH
        ,SJD
        ,SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,NULL
        ,NULL
        ,NULL
	FROM {{source('Belgium','s_0708')}}
-------------------------Jupiler League 06/07---------------------------------------------------------------------------------

UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2006/2007'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'											AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
		,NULL												AS 'Referee'
,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,NULL AS PSH
        ,NULL AS PSD
        ,NULL AS PSA
        ,WHH
        ,WHD
        ,WHA
        ,SJH
        ,SJD
        ,SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,NULL
        ,NULL
        ,NULL
	FROM {{source('Belgium','s_0607')}}

-------------------------Jupiler League 05/06---------------------------------------------------------------------

UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2005/2006'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'									AS 'League'	
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
 		,NULL												AS 'Referee'
,B365H
        ,B365D
        ,B365A
        ,BWH
        ,BWD
        ,BWA
        ,IWH
        ,IWD
        ,IWA
        ,LBH
        ,LBD
        ,LBA
        ,NULL AS PSH
        ,NULL AS PSD
        ,NULL AS PSA
        ,WHH
        ,WHD
        ,WHA
        ,SJH
        ,SJD
        ,SJA
        ,VCH
        ,VCD
        ,VCA
        ,Bb1X2
        ,BbMxH
        ,BbAvH
        ,BbMxD
        ,BbAvD
        ,BbMxA
        ,BbAvA
        ,BbOU
        ,BbMx_2_5
        ,BbAv_2_5
        ,BbMx_2_5_2
        ,BbAv_2_5_2
        ,BbAH
        ,BbAHh
        ,BbMxAHH
        ,BbAvAHH
        ,BbMxAHA
        ,BbAvAHA
        ,NULL
        ,NULL
        ,NULL
	FROM {{source('Belgium','s_0506')}}




-------------------------Jupiler League 04/05---------------------------------------------------------------------------
--UNION ALL
--SELECT 
--		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
--		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
--				,1,
--				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
--				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
--		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
--	,'2004/2005'										AS 'Season'
--		,'Belgium'											AS 'Country'
--		,'Jupiler League'									AS 'League'
--		,1													AS 'Division'
--		,HomeTeam											AS 'HomeTeam'
--		,AwayTeam											AS 'AwayTeam'
--		,FTHG												AS 'FullTimeHomeGoal'
--		,FTAG												AS 'FullTimeAwayGoal'
--		,FTR												AS 'FullTimeResult'
--		,HTHG												AS 'HalfTimeHomeGoal'
--		,HTAG												AS 'HalfTimeAwayGoal'
--		,HTR												AS 'HalfTimeResult'
--		,NULL												AS 'HomeShots'				
--		,NULL												AS 'AwayShots'
--		,NULL												AS 'HomeShotTarget'
--		,NULL												AS 'AwayShotTarget'
--		,NULL												AS 'HomeFouls'	
--		,NULL												AS 'AwayFouls'
--		,NULL												AS 'HomeCorners'
--		,NULL												AS 'AwayCorners'
--		,NULL												AS 'HomeYellow'
--		,NULL												AS 'AwayYellow'
--		,NULL												AS 'HomeRed'
--		,NULL												AS 'AwayRed'
-- 		,NULL												AS 'Referee'

--	FROM {{source('Belgium','s_0405')}}


-------------------------Jupiler League 03/04-----------------------------
----UNION ALL

--SELECT 
--		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
--		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
--				,1,
--				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
--				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
--		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'			
--	,'2004/2005'										AS 'Season'
--		,'Belgium'											AS 'Country'
--		,'Jupiler League'									AS 'League'
--		,1													AS 'Division'
--		,HomeTeam											AS 'HomeTeam'
--		,AwayTeam											AS 'AwayTeam'
--		,FTHG												AS 'FullTimeHomeGoal'
--		,FTAG												AS 'FullTimeAwayGoal'
--		,FTR												AS 'FullTimeResult'
--		,HTHG												AS 'HalfTimeHomeGoal'
--		,HTAG												AS 'HalfTimeAwayGoal'
--		,HTR												AS 'HalfTimeResult'
--		,HS													AS 'HomeShots'				
--		,[AS]												AS 'AwayShots'
--		,HST												AS 'HomeShotTarget'
--		,AST												AS 'AwayShotTarget'
--		,HF													AS 'HomeFouls'	
--		,AF													AS 'AwayFouls'
--		,HC													AS 'HomeCorners'
--		,AC													AS 'AwayCorners'
--		,HY													AS 'HomeYellow'
--		,AY													AS 'AwayYellow'
--		,HR													AS 'HomeRed'
--		,AR													AS 'AwayRed'
--				,NULL												AS 'Referee'
-- 	FROM {{source('Belgium','s_0304')}}


-------------------------Jupiler League 02/03-----------------------------
--UNION ALL

	--SELECT 
	--CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)		AS 'MatchDay'	
	--	,'2003/2004'										AS 'Season'
	--	,'Belgium'											AS 'Country'
	--	,'Jupiler League'									AS 'League'
--		,1													AS 'Division'
	--	,HomeTeam											AS 'HomeTeam'
	--	,AwayTeam											AS 'AwayTeam'
	--	,FTHG												AS 'FullTimeHomeGoal'
	--	,FTAG												AS 'FullTimeAwayGoal'
	--	,FTR												AS 'FullTimeResult'
	--	,HTHG												AS 'HalfTimeHomeGoal'
	--	,HTAG												AS 'HalfTimeAwayGoal'
	--	,HTR												AS 'HalfTimeResult'
	--	,HS													AS 'HomeShots'				
	--	,[AS]												AS 'AwayShots'
	--	,HST												AS 'HomeShotTarget'
	--	,AST												AS 'AwayShotTarget'
	--	,HF													AS 'HomeFouls'	
	--	,AF													AS 'AwayFouls'
	--	,HC													AS 'HomeCorners'
	--	,AC													AS 'AwayCorners'
	--	,HY													AS 'HomeYellow'
	--	,AY													AS 'AwayYellow'
	--	,HR													AS 'HomeRed'
	--	,AR													AS 'AwayRed'
	--	,NULL												AS 'Referee'

--	FROM {{source('Belgium','s_0203')}}


-------------------------Jupiler League 01/02-----------------------------
UNION ALL

	SELECT 
		ROW_NUMBER () OVER ( ORDER By CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) 	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2))	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) )-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) ))-1)+1)	AS 'GameWeek'		
		,CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) 														AS 'MatchDay'		
		,'2001/2002'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'											AS 'League'	
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
		,NULL												AS 'Referee'
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL

	FROM {{source('Belgium','s_0102')}}

-------------------------Jupiler League 00/01-----------------------------
UNION ALL

	SELECT  
		ROW_NUMBER () OVER ( ORDER By date )				AS 'GameNumber'
		,IIF(ROW_NUMBER () OVER ( ORDER By date ) <11,1,LEFT (ROW_NUMBER () OVER ( ORDER By date )-1,	LEN(ROW_NUMBER () OVER ( ORDER By date ))-1)+1)		 AS 'GameWeek'
		,Date												AS 'MatchDay'
		,'2000/2001'										AS 'Season'
		,'Belgium'											AS 'Country'
		,'Jupiler League'											AS 'League'
		,1													AS 'Division'
		,HomeTeam											AS 'HomeTeam'
		,AwayTeam											AS 'AwayTeam'
		,FTHG												AS 'FullTimeHomeGoal'
		,FTAG												AS 'FullTimeAwayGoal'
		,FTR												AS 'FullTimeResult'
		,HTHG												AS 'HalfTimeHomeGoal'
		,HTAG												AS 'HalfTimeAwayGoal'
		,HTR												AS 'HalfTimeResult'
		,NULL												AS 'HomeShots'				
		,NULL												AS 'AwayShots'
		,NULL												AS 'HomeShotTarget'
		,NULL												AS 'AwayShotTarget'
		,NULL												AS 'HomeFouls'	
		,NULL												AS 'AwayFouls'
		,NULL												AS 'HomeCorners'
		,NULL												AS 'AwayCorners'
		,NULL												AS 'HomeYellow'
		,NULL												AS 'AwayYellow'
		,NULL												AS 'HomeRed'
		,NULL												AS 'AwayRed'
		,NULL												AS 'Referee'
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL
,NULL

	FROM {{source('Belgium','s_0001')}}


