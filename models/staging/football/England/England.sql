{{ config(tags=["football_staging"])}}


-------------------------PREMIER LEAUGE 19/20-----------------------------


    SELECT
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,7),2),'-',LEFT(Date,2))		AS DATE) )				AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By		CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,7),2),'-',LEFT(Date,2))	AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By	CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,7),2),'-',LEFT(Date,2))	AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By	CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,7),2),'-',LEFT(Date,2))	AS DATE)))-1)+1)	AS 'GameWeek'

		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,7),2),'-',LEFT(Date,2))	AS DATE)										AS 'MatchDay'
		,'2019/2020'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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
        ,NULL AS Bb1X2
        ,NULL AS BbMxH
        ,NULL AS BbAvH
        ,NULL AS BbMxD
        ,NULL AS BbAvD
        ,NULL AS BbMxA
        ,NULL AS BbAvA
        ,NULL AS BbOU
        ,NULL AS BbMx_2_5
        ,NULL AS BbAv_2_5
        ,NULL AS BbMx_2_5_2
        ,NULL AS BbAv_2_5_2
        ,NULL AS BbAH
        ,NULL AS BbAHh
        ,NULL AS BbMxAHH
        ,NULL AS BbAvAHH
        ,NULL AS BbMxAHA
        ,NULL AS BbAvAHA
        ,NULL AS PSCH
        ,NULL AS PSCD
        ,NULL AS PSCA


	FROM {{source('England','s_1920')}}


-------------------------PREMIER LEAUGE 18/19-----------------------------
UNION ALL

SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,7),2),'-',LEFT(Date,2))		AS DATE) )				AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By		CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,7),2),'-',LEFT(Date,2))	AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By	CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,7),2),'-',LEFT(Date,2))	AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By	CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,7),2),'-',LEFT(Date,2))	AS DATE)))-1)+1)	AS 'GameWeek'

		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,7),2),'-',LEFT(Date,2))	AS DATE)										AS 'MatchDay'
		,'2018/2019'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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
,BbMx_2_5_1
,BbAv_2_5_1
,BbAH
,BbAHh
,BbMxAHH
,BbAvAHH
,BbMxAHA
,BbAvAHA
,PSCH
,PSCD
,PSCA


	FROM {{source('England','s_1819')}}


	
-------------------------PREMIER LEAUGE 17/18---------------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'						
		,'2017/2018'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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

	FROM {{source('England','s_1718')}}


-------------------------PREMIER LEAUGE 16/17-------------------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2016/2017'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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

	FROM {{source('England','s_1617')}}



-------------------------PREMIER LEAUGE 15/16-------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2015/2016'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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

	FROM {{source('England','s_1516')}}



-------------------------PREMIER LEAUGE 14/15-------------------------------------------------------------------------
UNION ALL
SELECT  
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'			
		,'2014/2015'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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

	FROM {{source('England','s_1415')}}


-------------------------PREMIER LEAUGE 13/14----------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2013/2014'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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

	FROM {{source('England','s_1314')}}


-------------------------PREMIER LEAUGE 12/13---------------------------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2012/2013'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL


	FROM {{source('England','s_1213')}}


-------------------------PREMIER LEAUGE 11/12----------------------------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2011/2012'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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

	FROM {{source('England','s_1112')}}



-------------------------PREMIER LEAUGE 10/11--------------------------------------------------------------------------------------------
UNION ALL
SELECT  
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2010/2011'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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

	FROM {{source('England','s_1011')}}


-------------------------PREMIER LEAUGE 09/10------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By date )				AS 'GameNumber'
		,IIF(ROW_NUMBER () OVER ( ORDER By date ) <11,1,LEFT (ROW_NUMBER () OVER ( ORDER By date )-1,	LEN(ROW_NUMBER () OVER ( ORDER By date ))-1)+1)		 AS 'GameWeek'
		,Date												AS 'MatchDay'
		  ,'2009/2010'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 'True' THEN 1 ELSE 0	END			AS 'HomeRed'
		,CASE WHEN AR = 'True' THEN 1 ELSE 0	END			AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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

	FROM {{source('England','s_0910')}}


-------------------------PREMIER LEAUGE 08/09-----------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2008/2009'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 1 THEN 1 ELSE 0	END					AS 'HomeRed'
		,CASE WHEN AR = 1 THEN 1 ELSE 0	END					AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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

 
	FROM {{source('England','s_0809')}}



---------------------------PREMIER LEAUGE 07/08---------------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2007/2008'										AS 'Season'	
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 1 THEN 1 ELSE 0	END					AS 'HomeRed'
		,CASE WHEN AR = 1 THEN 1 ELSE 0	END					AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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

 
	FROM {{source('England','s_0708')}}

-------------------------PREMIER LEAUGE 06/07---------------------------------------------------------------------------------

UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2006/2007'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 1 THEN 1 ELSE 0	END					AS 'HomeRed'
		,CASE WHEN AR = 1 THEN 1 ELSE 0	END					AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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

	FROM {{source('England','s_0607')}}


-------------------------PREMIER LEAUGE 05/06---------------------------------------------------------------------

UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
		,'2005/2006'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'	
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 1 THEN 1 ELSE 0	END					AS 'HomeRed'
		,CASE WHEN AR = 1 THEN 1 ELSE 0	END					AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
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

	FROM {{source('England','s_0506')}}





-------------------------PREMIER LEAUGE 04/05---------------------------------------------------------------------------
UNION ALL
SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'		
	,'2004/2005'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 1 THEN 1 ELSE 0	END					AS 'HomeRed'
		,CASE WHEN AR = 1 THEN 1 ELSE 0	END					AS 'AwayRed'
		,Referee											AS 'Referee'
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
,NULL
,NULL
,NULL
,WHH
,WHD
,WHA
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

	FROM {{source('England','s_0405')}}



-------------------------PREMIER LEAUGE 03/04-----------------------------
UNION ALL

SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'			
		,'2003/2004'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 1 THEN 1 ELSE 0	END					AS 'HomeRed'
		,CASE WHEN AR = 1 THEN 1 ELSE 0	END					AS 'AwayRed'
		,Referee											AS 'Referee'
,B365H
,B365D
,B365A
,NULL
,NULL
,NULL
,IWH
,IWD
,IWA
,LBH
,LBD
,LBA
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

	FROM {{source('England','s_0304')}}


-------------------------PREMIER LEAUGE 02/03-----------------------------
--UNION ALL

--	SELECT 
--	CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)		AS 'MatchDay'	
	--	,'2003/2004'										AS 'Season'
		--,'England'											AS 'Country'
		--,'PremierLeague'									AS 'League'
--		,1													AS 'Division'
		--,HomeTeam											AS 'HomeTeam'
		--,AwayTeam											AS 'AwayTeam'
		--,FTHG												AS 'FullTimeHomeGoal'
		--,FTAG												AS 'FullTimeAwayGoal'
		--,FTR												AS 'FullTimeResult'
		--,HTHG												AS 'HalfTimeHomeGoal'
		--,HTAG												AS 'HalfTimeAwayGoal'
		--,HTR												AS 'HalfTimeResult'
		--,HS													AS 'HomeShots'				
		--,[AS]												AS 'AwayShots'
		--,HST												AS 'HomeShotTarget'
		--,AST												AS 'AwayShotTarget'
		--,HF													AS 'HomeFouls'	
		--,AF													AS 'AwayFouls'
		--,HC													AS 'HomeCorners'
		--,AC													AS 'AwayCorners'
		--,HY													AS 'HomeYellow'
		--,AY													AS 'AwayYellow'
		--,CASE WHEN HR = 1 THEN 1 ELSE 0	END					AS 'HomeRed'
		--,CASE WHEN AR = 1 THEN 1 ELSE 0	END					AS 'AwayRed'
		--,Referee											AS 'Referee'
 
--	FROM {{source('England','s_0203')}}

-------------------------PREMIER LEAUGE 01/02-----------------------------
UNION ALL

	SELECT 
		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 )						AS 'GameNumber'
		,IIF(		ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)	 ) <11
				,1,
				LEFT (	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE))-1
				,LEN(	ROW_NUMBER () OVER ( ORDER By CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)))-1)+1)	AS 'GameWeek'		
		,CAST(CONCAT('20',RIGHT(Date,2),'-',LEFT(RIGHT(Date,5),2),'-',LEFT(RIGHT(Date,8),2)) AS DATE)														AS 'MatchDay'			
		,'2001/2002'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'	
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 1 THEN 1 ELSE 0	END					AS 'HomeRed'
		,CASE WHEN AR = 1 THEN 1 ELSE 0	END					AS 'AwayRed'
		,Referee											AS 'Referee'
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


	FROM {{source('England','s_0102')}}



-------------------------PREMIER LEAUGE 00/01-----------------------------
UNION ALL

	SELECT  
		ROW_NUMBER () OVER ( ORDER By date )				AS 'GameNumber'
		,IIF(ROW_NUMBER () OVER ( ORDER By date ) <11,1,LEFT (ROW_NUMBER () OVER ( ORDER By date )-1,	LEN(ROW_NUMBER () OVER ( ORDER By date ))-1)+1)		 AS 'GameWeek'
		,Date												AS 'MatchDay'
		,'2000/2001'										AS 'Season'
		,'England'											AS 'Country'
		,'PremierLeague'									AS 'League'
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
		,HF													AS 'HomeFouls'	
		,AF													AS 'AwayFouls'
		,HC													AS 'HomeCorners'
		,AC													AS 'AwayCorners'
		,HY													AS 'HomeYellow'
		,AY													AS 'AwayYellow'
		,CASE WHEN HR = 1 THEN 1 ELSE 0	END					AS 'HomeRed'
		,CASE WHEN AR = 1 THEN 1 ELSE 0	END					AS 'AwayRed'
		,Referee											AS 'Referee'
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

	FROM {{source('England','s_0001')}}






