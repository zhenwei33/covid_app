
        let data_date = ['13/3', '14/3', '15/3', '16/3', '17/3',
        '18/3', '19/3', '20/3', '21/3', '22/3', '23/3', '24/3', '25/3', '26/3', '27/3', '28/3', '29/3', '30/3', '31/3', '1/4', '2/4', '3/4',
        '4/4', '5/4', '6/4', '7/4', '8/4', '9/4', '10/4', '11/4', '12/4', '13/4', '14/4', '15/4', '16/4', '17/4', '18/4', '19/4', '20/4', '21/4',
        '22/4', '23/4', '24/4', '25/4', '26/4', '27/4', '28/4', '29/4', '30/4', '1/5', '2/5', '3/5', '4/5', '5/5', '6/5', '7/5', '8/5', '9/5', '10/5',
        '11/5', '12/5', '13/5', '14/5', '15/5', '16/5', '17/5', '18/5', '19/5', '20/5', '21/5', '22/5', '23/5',
        '24/5', '25/5', '26/5','27/5', '28/5', '29/5', '30/5', '31/5', '1/6', '2/6', '3/6', '4/6', '5/6', '6/6',
        '7/6', '8/6', '9/6', '10/6', '11/6', '12/6', '13/6', '14/6', '15/6', '16/6', '17/6', '18/6',
        '19/6', '20/6', '21/6', '22/6', '23/6', '24/6','25/6','26/6','27/6','28/6','29/6', '30/6', '1/7', '2/7', '3/7', '4/7', '5/7', '6/7', '7/7', '8/7', '9/7', '10/7', '11/7', '12/7', '13/7', '14/7', '15/7','16/7',
        '17/7','18/7','19/7','20/7','21/7','22/7','23/7','24/7','25/7','26/7','27/7','28/7','29/7','30/7','31/7',
        '1/8','2/8','3/8','4/8','5/8','6/8','7/8','8/8','9/8','10/8','11/8','12/8','13/8',
        '14/8','15/8','16/8','17/8','18/8','19/8','20/8','21/8','22/8','23/8','24/8','25/8','26/8','27/8',
        '28/8','29/8','30/8','31/8','1/9','2/9','3/9','4/9','5/9','6/9','7/9','8/9','9/9','10/9','11/9','12/9','13/9','14/9','15/9','16/9','17/9','18/9','19/9','20/9','21/9','22/9','23/9','24/9','25/9','26/9','27/9','28/9','29/9',
        '30/9','1/10','2/10','3/10','4/10','5/10','6/10','7/10','8/10','9/10',
    ];

    
                    
        chartOptionsState_1 = {
        title: {
            text: 'Sabah',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [15,26,57,57,82,103,112,119,136,158,169,170,170,172,182,197,197,201,206,209,210,215,225,238,240,241,248,248,250,260,266,280,285,285,288,293,303,306,308,308,308,309,311,311,311,312,313,315,315,315,315,316,316,316,316,317,317,317,317,327,328,330,330,330,331,331,331,337,338,338,340,341,343,343,343,344,344,346,346,346,347,348,348,348,351,352,354,356,356,356,356,357,359,359,360,360,362,363,363,364,365,365,366,366,366,366,368,370,371,372,372,373,375,376,378,378,378,378,378,378,379,380,380,380,380,380,381,381,382,382,383,383,384,384,384,385,389,392,393,397,398,398,400,400,400,402,406,410,410,410,410,411,415,415,415,415,416,416,416,416,416,416,417,417,417,417,417,417,417,417,417,417,426,426,432,432,433,435,486,548,552,592,759,808,839,864,877,937,945,1036,1044,1080,1129,1189,1323,1386,1483,1547,1671,1769,1842,1877,1995,2108,2263,2378,2519,2738,3020,3291,3565],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_1 = echarts.init(document.getElementById('chartState_1'));
    chartState_1.setOption(chartOptionsState_1);
                
        chartOptionsState_2 = {
        title: {
            text: 'Kuala Lumpur',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [26,43,70,106,113,119,123,139,166,183,242,257,270,321,337,344,372,396,430,455,488,543,595,622,640,671,685,699,713,759,803,830,899,926,952,971,985,1004,1008,1021,1037,1066,1115,1154,1170,1200,1214,1222,1232,1264,1278,1308,1333,1356,1378,1398,1404,1414,1423,1458,1470,1475,1493,1508,1515,1528,1566,1588,1598,1637,1676,1681,1692,1807,1984,1990,1997,2007,2020,2028,2039,2044,2099,2370,2374,2389,2393,2394,2398,2398,2399,2409,2410,2414,2417,2418,2422,2430,2430,2430,2430,2430,00,2687,2691,2694,2701,2707,2711,2723,2733],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_2 = echarts.init(document.getElementById('chartState_2'));
    chartState_2.setOption(chartOptionsState_2);
                
        chartOptionsState_3 = {
        title: {
            text: 'Selangor',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [0,87,92,144,161,192,223,263,292,309,354,381,435,510,546,579,612,672,704,726,800,863,890,943,970,1020,1078,1118,1148,1183,1236,1249,1299,1316,1329,1338,1340,1343,1345,1356,1357,1369,1387,1388,1394,1398,1403,1404,1431,1455,1518,1529,1550,1555,1564,1580,1586,1596,1604,1607,1610,1612,1613,1627,1628,1636,1644,1650,1665,1673,1693,1730,1776,1829,1838,1843,1845,1873,1878,1909,1920,1926,1928,1930,1939,1953,1965,1968,1971,1971,1974,1987,1994,1996,1998,1999,2004,2006,2009,2021,2025,2027,2027,2032,2034,2036,2039,2044,2046,2047,2048,2048,2051,2058,2060,2062,2065,2066,2070,2076,2079,2088,2092,2093,2094,2094,2098,2099,2103,2107,2109,2112,2112,2115,2118,2118,2119,2119,2121,2122,2123,2129,2130,2130,2130,2130,2130,2132,2133,2134,2138,2139,2139,2142,2144,2144,2149,2150,2150,2150,2151,2153,2153,2155,2155,2158,2159,2161,2164,2166,2167,2171,2174,2175,2175,2177,2177,2177,2179,2188,2189,2190,2191,2193,2194,2194,2199,2199,2202,2205,2206,2210,2214,2215,2217,2220,2222,2224,2235,2246,2261,2271,2284,00,2315,2389,2412,2451,2471,2507,2531],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_3 = echarts.init(document.getElementById('chartState_3'));
    chartState_3.setOption(chartOptionsState_3);
                
        chartOptionsState_4 = {
        title: {
            text: 'Kedah',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [5,5,26,31,31,36,40,41,47,52,59,64,69,72,73,74,75,77,77,79,80,81,81,82,85,90,91,93,93,93,93,93,93,94,94,94,94,94,94,94,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,97,97,97,97,97,97,97,97,97,97,97,97,97,97,98,98,98,99,99,99,99,99,99,99,100,100,100,100,100,100,100,100,106,106,107,109,110,121,122,122,125,131,132,132,132,132,132,134,143,155,169,174,180,183,190,190,193,198,200,200,207,212,212,213,213,214,216,218,218,222,223,224,224,228,250,266,270,284,289,303,304,304,305,312,312,321,324,325,335,340,344,352,352,352,353,354,367,465,594,696,809,1050,1447,1600,1616,1026],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_4 = echarts.init(document.getElementById('chartState_4'));
    chartState_4.setOption(chartOptionsState_4);
                
        chartOptionsState_5 = {
        title: {
            text: 'Negeri Sembilan',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [11,19,30,42,45,45,56,65,70,78,94,109,123,132,138,153,162,172,181,189,207,211,220,231,239,261,270,281,292,309,318,360,362,363,389,402,405,405,408,409,411,431,433,433,434,435,436,508,513,513,521,592,598,598,600,600,653,681,726,742,742,764,775,776,776,776,776,776,776,778,791,792,792,792,793,793,793,852,856,858,860,866,902,905,905,910,911,911,911,911,927,931,957,957,993,994,994,996,1002,1014,1015,1015,1052,1054,1055,1062,1063,1065,1069],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_5 = echarts.init(document.getElementById('chartState_5'));
    chartState_5.setOption(chartOptionsState_5);
                
        chartOptionsState_6 = {
        title: {
            text: 'Johor',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [16,22,22,52,77,88,101,114,129,145,158,162,196,239,259,285,309,333,349,368,395,416,422,438,468,478,496,503,523,544,558,579,587,601,614,623,639,642,644,645,648,651,655,655,659,659,660,660,663,666,667,667,667,667,667,667,667,667,667,667,667,667,668,668,668,668,668,669,669,669,669,670,671,671,671,671,671,674,675,675,675,676,676,676,676,676,676,676,676,677,677,678,680,683,684,684,686,686,687,688,668,669,669,669,669,670,671,671,671,671,671,674,675,675,675,676,676,676,676,676,676,676,676,677,677,678,680,680,683,684,684,686,686,686,687,688,688,688,689,691,691,691,691,691,691,692,692,692,692,693,694,694,696,697,699,699,699,701,701,701,701,701,702,716,716,717,718,720,730,737,737,737,738,739,742,742,742,742,742,743,743,744,744,744,746,747,749,749,749,750,750,750,750,751,751,751,751,751,751,751,751,751,751,751,751,751,751,751,752,752,752,752,752,752,752,752,752,752,752,752,752,752,752,752,752,752,752,752,752,753,754,755,757,757,759,767,772,773,777,785,787,793,799,804,809],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_6 = echarts.init(document.getElementById('chartState_6'));
    chartState_6.setOption(chartOptionsState_6);
                
        chartOptionsState_7 = {
        title: {
            text: 'Sarawak',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [0,6,18,21,29,49,51,58,68,76,78,83,85,95,110,118,129,135,156,188,211,239,246,261,273,288,306,312,327,334,342,348,363,371,387,397,403,408,414,436,455,459,468,478,485,488,496,502,507,509,518,523,523,525,536,537,538,542,543,543,543,544,544,544,544,544,544,544,544,544,545,545,545,549,549,552,552,552,552,552,552,552,552,552,553,555,555,555,555,556,556,556,557,557,560,561,565,566,569,569,570,570,570,570,571,571,571,571,571,571,571,571,572,572,573,573,575,577,579,580,580,583,584,594,601,607,608,619,628,632,641,649,650,650,675,677,677,678,678,678,678,678,678,678,679,680,681,681,681,681,681,682,682,682,682,682,682,686,687,688,691,696,696,696,696,697,698,699,699,699,699,699,699,699,699,699,699,700,700,700,713,716,717,718,721,724,732,742],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_7 = echarts.init(document.getElementById('chartState_7'));
    chartState_7.setOption(chartOptionsState_7);
                
        chartOptionsState_8 = {
        title: {
            text: 'Pahang',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [2,2,19,19,28,29,32,36,37,40,56,56,64,66,70,84,96,99,102,111,114,127,151,158,161,166,169,183,187,214,225,225,236,253,261,262,264,269,271,279,285,286,287,288,288,288,288,293,294,297,305,305,305,305,305,305,306,306,308,312,312,315,323,328,335,336,336,338,338,339,341,344,344,344,344,344,345,346,346,361,361,361,361,362,363,363,363,363,363,363,363,363,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,365,366,369,369,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,370,371,371,371,371,371,371,371,371,371,371,371,371,371,371,371,371,371,371,371,371,371,371,371,372,373,377,377,377,379,380,381,381,381,382,382,384,385,385],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_8 = echarts.init(document.getElementById('chartState_8'));
    chartState_8.setOption(chartOptionsState_8);
                
        chartOptionsState_9 = {
        title: {
            text: 'Perak',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [2,2,18,18,23,28,35,45,55,66,81,98,128,151,159,165,176,184,189,194,200,205,207,213,219,233,237,241,242,243,244,247,250,250,251,252,252,252,252,252,252,252,252,252,252,253,253,253,253,253,253,253,253,253,253,253,253,253,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,256,256,256,256,256,256,256,256,256,256,256,256,256,256,257,257,257,257,257,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,260,260,260,261,261,262,262,262,262,262,262,262,262,264,264,264,264,264,264,266,266,266,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,269,270,271,271,274,274,276,278,286,290,295,296],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_9 = echarts.init(document.getElementById('chartState_9'));
    chartState_9.setOption(chartOptionsState_9);
                
        chartOptionsState_10 = {
        title: {
            text: 'Melaka',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [1,6,13,14,17,18,20,22,22,23,25,31,33,33,33,42,43,50,52,63,70,73,75,89,99,103,116,119,133,141,144,144,147,147,147,148,148,185,187,188,189,189,192,192,193,193,193,193,198,199,201,204,207,207,208,209,209,210,210,211,211,213,214,215,215,215,215,215,215,215,216,216,216,216,216,216,216,216,218,219,232,233,233,233,234,234,234,234,234,234,245,249,251,251,253,253,253,253,253,253,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,254,255,256,256,256,256,256,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,258,259,259,259,259,259,259,259,259,259,259,259,259,259,259,259,259,259,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,262,263,263,264,265,265,266,267,267,267,268,268,268,269,269],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_10 = echarts.init(document.getElementById('chartState_10'));
    chartState_10.setOption(chartOptionsState_10);
                
        chartOptionsState_11 = {
        title: {
            text: 'Kelantan',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [3,3,16,18,25,30,44,51,61,63,71,78,84,94,98,108,123,127,131,134,137,137,139,141,142,147,147,148,149,151,152,154,154,154,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,155,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,157,157,157,157,157,157,157,157,157,157,157,157,157,157,157,157,157,157,157,157,157,157,157,158,158,158,158,158,159,159,159,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,160,161,161,161,161,161,161,162,164,164,166,168,169,170,170,171,171,171],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_11 = echarts.init(document.getElementById('chartState_11'));
    chartState_11.setOption(chartOptionsState_11);
                
        chartOptionsState_12 = {
        title: {
            text: 'Penang',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [7,7,13,15,23,30,32,37,50,58,66,68,70,74,80,86,87,88,94,96,98,98,99,101,101,102,108,108,109,114,116,116,119,119,119,119,119,119,119,119,119,119,119,119,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,121,122,122,125,125,125,125,125,126,128,129,132,132,136,136,136,136,136,136,136,136,136,136,136,136,136,136,136,136,136,136,137,138,138,138,138,138,138,138,138,138,139,141,141,141,142,142,142,142,142,142,142,142,142,143,144,145,145,148,149,149,152,159,160,168],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_12 = echarts.init(document.getElementById('chartState_12'));
    chartState_12.setOption(chartOptionsState_12);
                
        chartOptionsState_13 = {
        title: {
            text: 'Terengganu',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [0,0,4,4,7,10,11,20,27,32,38,38,38,39,41,45,47,47,47,48,50,68,74,84,90,90,93,98,101,102,102,106,106,106,108,108,109,109,109,109,109,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,110,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,112,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,116,116,117,117,120,122,125,134,134,139,140,144,149.154],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_13 = echarts.init(document.getElementById('chartState_13'));
    chartState_13.setOption(chartOptionsState_13);
                
        chartOptionsState_14 = {
        title: {
            text: 'Putrajaya',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [1,1,1,1,1,1,6,6,9,9,13,15,16,18,20,20,22,24,26,26,34,35,36,37,41,43,45,47,49,51,52,54,54,54,55,55,55,64,77,77,78,78,78,78,79,79,80,80,81,85,85,86,86,86,86,86,87,88,88,89,89,89,89,89,90,90,91,91,93,93,93,93,93,93,93,93,93,93,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,00,107,107,109,110,112,114,116],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_14 = echarts.init(document.getElementById('chartState_14'));
    chartState_14.setOption(chartOptionsState_14);
                
        chartOptionsState_15 = {
        title: {
            text: 'Labuan',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [2,2,4,4,4,5,5,5,5,5,5,5,5,5,5,10,10,10,10,10,10,10,11,11,12,13,13,13,13,15,15,15,15,15,15,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,18,18,18,19,19,19,19,19,19,20,20,20,21,21,22,22,22,22,22,22,22,22,22,22,22,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,23,25,25,25,25,25,25,26,26,27,27,28,28,29,34,38,39,39,49,50],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_15 = echarts.init(document.getElementById('chartState_15'));
    chartState_15.setOption(chartOptionsState_15);
                
        chartOptionsState_16 = {
        title: {
            text: 'Perlis',
            left: 'center',
        },
        grid: {
            x: 45,
            y: 35,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'log',
            min: 1,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [{
            name: 'Cases',
            // don't forget to credit to us too :) , not easy to collect all this
            data: [1,2,7,8,8,8,9,9,9,9,9,9,10,10,10,10,10,11,12,12,12,12,12,13,13,17,17,17,17,17,17,17,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,19,19,19,19,19,19,20,20,20,30,30,30,30,30,30,30,30,31,31,31,31,31,31,31,31,31,31,32,32,32,32,32,32,32,32,32,32,32,32,32,32,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,34,36,38,38,38,38,38,38,38,38],
            type: 'line',
            itemStyle: {
                color: '#d81d1b'
            },
        }]
    };

    let chartState_16 = echarts.init(document.getElementById('chartState_16'));
    chartState_16.setOption(chartOptionsState_16);
    

        chartOptionsState_all = {
        title: {
            text: 'Cases by States',
            subtext: '9 Oct 2020 - www.outbreak.my',
            left: 'center',
        },
        grid: {

            y: 55,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        xAxis: {
            type: 'value'
        },
        yAxis: {
            type: 'category',
            data: [
                                                                'Sabah',
                                                                'Kuala Lumpur',
                                                                'Selangor',
                                                                'Kedah',
                                                                'Negeri Sembilan',
                                                                'Johor',
                                                                'Sarawak',
                                                                'Pahang',
                                                                'Perak',
                                                                'Melaka',
                                                                'Kelantan',
                                                                'Penang',
                                                                'Terengganu',
                                                                'Putrajaya',
                                                                'Labuan',
                                                                'Perlis',
                                ]
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [
            {
                name: 'Confirmed',
                type: 'bar',
                label: {
                    show: true,
                    position: 'inside'
                },
                // don't forget to credit to us too :) , not easy to collect all this
                data: [
                                        '3291',
                                        '2733',
                                        '2507',
                                        '1626',
                                        '1069',
                                        '809',
                                        '742',
                                        '385',
                                        '296',
                                        '269',
                                        '171',
                                        '168',
                                        '154',
                                        '116',
                                        '50',
                                        '38',
                                    ],
            },
        ]
    };

    let chartState_all = echarts.init(document.getElementById('chartState_all'));
    chartState_all.setOption(chartOptionsState_all);

    chartOptionsState_top = {
        title: {
            text: 'Top Cases by States',
            subtext: '9 Oct 2020 - www.outbreak.my',
            left: 'center',
        },
        grid: {
            x: 29,
            y: 80,
            x2: 0,
            y2: 20,
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                animation: true
            }
        },
        legend: {
            left: 'right',
            y: 45,
            data: [
                                                                                                'Sabah',
                                                                    'Kuala Lumpur',
                                                                    'Selangor',
                                                                    'Kedah',
                                                                    'Negeri Sembilan',
                                                        ],
            textStyle: {
                color: '#000'
            }
        },
        xAxis: {
            type: 'category',
            data: data_date,

        },
        yAxis: {
            type: 'value',
            min: 0,
        },
        graphic: [{
            type: 'image',
            id: 'logo',
            left: 'center',
            bottom: 'center',
            z: 1000,
            style: {
                image: "https://www.outbreak.my/assets/images/logo/watermark.png",
                width: 188,
                height: 50
            }
        }],
        series: [
                                                                    {
                name: 'Sabah',
                type: 'line',
                // don't forget to credit to us too :) , not easy to collect all this
                data: [15,26,57,57,82,103,112,119,136,158,169,170,170,172,182,197,197,201,206,209,210,215,225,238,240,241,248,248,250,260,266,280,285,285,288,293,303,306,308,308,308,309,311,311,311,312,313,315,315,315,315,316,316,316,316,317,317,317,317,327,328,330,330,330,331,331,331,337,338,338,340,341,343,343,343,344,344,346,346,346,347,348,348,348,351,352,354,356,356,356,356,357,359,359,360,360,362,363,363,364,365,365,366,366,366,366,368,370,371,372,372,373,375,376,378,378,378,378,378,378,379,380,380,380,380,380,381,381,382,382,383,383,384,384,384,385,389,392,393,397,398,398,400,400,400,402,406,410,410,410,410,411,415,415,415,415,416,416,416,416,416,416,417,417,417,417,417,417,417,417,417,417,426,426,432,432,433,435,486,548,552,592,759,808,839,864,877,937,945,1036,1044,1080,1129,1189,1323,1386,1483,1547,1671,1769,1842,1877,1995,2108,2263,2378,2519,2738,3020,3291,3565],
            },
                                                {
                name: 'Kuala Lumpur',
                type: 'line',
                // don't forget to credit to us too :) , not easy to collect all this
                data: [26,43,70,106,113,119,123,139,166,183,242,257,270,321,337,344,372,396,430,455,488,543,595,622,640,671,685,699,713,759,803,830,899,926,952,971,985,1004,1008,1021,1037,1066,1115,1154,1170,1200,1214,1222,1232,1264,1278,1308,1333,1356,1378,1398,1404,1414,1423,1458,1470,1475,1493,1508,1515,1528,1566,1588,1598,1637,1676,1681,1692,1807,1984,1990,1997,2007,2020,2028,2039,2044,2099,2370,2374,2389,2393,2394,2398,2398,2399,2409,2410,2414,2417,2418,2422,2430,2430,2430,2430,2430,00,2687,2691,2694,2701,2707,2711,2723,2733],
            },
                                                {
                name: 'Selangor',
                type: 'line',
                // don't forget to credit to us too :) , not easy to collect all this
                data: [0,87,92,144,161,192,223,263,292,309,354,381,435,510,546,579,612,672,704,726,800,863,890,943,970,1020,1078,1118,1148,1183,1236,1249,1299,1316,1329,1338,1340,1343,1345,1356,1357,1369,1387,1388,1394,1398,1403,1404,1431,1455,1518,1529,1550,1555,1564,1580,1586,1596,1604,1607,1610,1612,1613,1627,1628,1636,1644,1650,1665,1673,1693,1730,1776,1829,1838,1843,1845,1873,1878,1909,1920,1926,1928,1930,1939,1953,1965,1968,1971,1971,1974,1987,1994,1996,1998,1999,2004,2006,2009,2021,2025,2027,2027,2032,2034,2036,2039,2044,2046,2047,2048,2048,2051,2058,2060,2062,2065,2066,2070,2076,2079,2088,2092,2093,2094,2094,2098,2099,2103,2107,2109,2112,2112,2115,2118,2118,2119,2119,2121,2122,2123,2129,2130,2130,2130,2130,2130,2132,2133,2134,2138,2139,2139,2142,2144,2144,2149,2150,2150,2150,2151,2153,2153,2155,2155,2158,2159,2161,2164,2166,2167,2171,2174,2175,2175,2177,2177,2177,2179,2188,2189,2190,2191,2193,2194,2194,2199,2199,2202,2205,2206,2210,2214,2215,2217,2220,2222,2224,2235,2246,2261,2271,2284,00,2315,2389,2412,2451,2471,2507,2531],
            },
                                                {
                name: 'Kedah',
                type: 'line',
                // don't forget to credit to us too :) , not easy to collect all this
                data: [5,5,26,31,31,36,40,41,47,52,59,64,69,72,73,74,75,77,77,79,80,81,81,82,85,90,91,93,93,93,93,93,93,94,94,94,94,94,94,94,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,95,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,96,97,97,97,97,97,97,97,97,97,97,97,97,97,97,98,98,98,99,99,99,99,99,99,99,100,100,100,100,100,100,100,100,106,106,107,109,110,121,122,122,125,131,132,132,132,132,132,134,143,155,169,174,180,183,190,190,193,198,200,200,207,212,212,213,213,214,216,218,218,222,223,224,224,228,250,266,270,284,289,303,304,304,305,312,312,321,324,325,335,340,344,352,352,352,353,354,367,465,594,696,809,1050,1447,1600,1616,1026],
            },
                                                {
                name: 'Negeri Sembilan',
                type: 'line',
                // don't forget to credit to us too :) , not easy to collect all this
                data: [11,19,30,42,45,45,56,65,70,78,94,109,123,132,138,153,162,172,181,189,207,211,220,231,239,261,270,281,292,309,318,360,362,363,389,402,405,405,408,409,411,431,433,433,434,435,436,508,513,513,521,592,598,598,600,600,653,681,726,742,742,764,775,776,776,776,776,776,776,778,791,792,792,792,793,793,793,852,856,858,860,866,902,905,905,910,911,911,911,911,927,931,957,957,993,994,994,996,1002,1014,1015,1015,1052,1054,1055,1062,1063,1065,1069],
            },
                                            ]
    };

    let chartState_top = echarts.init(document.getElementById('chartState_top'));
    chartState_top.setOption(chartOptionsState_top);
