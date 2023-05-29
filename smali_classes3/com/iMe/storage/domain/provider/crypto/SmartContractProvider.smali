.class public final Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;
.super Ljava/lang/Object;
.source "SmartContractProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;

.field private static final mainnetBEP20Contracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainnetERC20Contracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainnetPolygonContracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainnetTronContracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mumbaiPolygonContracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final nileTronContracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ropstenBEP20Contracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ropstenERC20Contracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 99

    new-instance v0, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;

    invoke-direct {v0}, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->INSTANCE:Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;

    const/16 v0, 0x1c

    new-array v0, v0, [Lkotlin/Pair;

    .line 11
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FIL:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v2, "0x0D8Ce2A99Bb6e3B7Db580eD848240e4a0F9aE153"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 12
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v4, "0x2170Ed0880ac9A755fd29B2688956BD959F933F8"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    .line 13
    sget-object v4, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v6, "0x55d398326f99059fF775485246999027B3197955"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v0, v7

    .line 14
    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v8, "0x7bC75e291E656E8658D66Be1cc8154A3769A35Dd"

    invoke-static {v6, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v0, v9

    .line 15
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LANC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v10, "0xDd848E0CbFD3771dC7845B10072d973C375271e2"

    invoke-static {v8, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v0, v11

    .line 16
    sget-object v10, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LINK:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v12, "0xF8A0BF9cF54Bb92F17374d9e9A321E6a111a51bD"

    invoke-static {v10, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/4 v13, 0x5

    aput-object v12, v0, v13

    .line 17
    sget-object v12, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UFI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v14, "0xe2a59D5E33c6540E18aAA46BF98917aC3158Db0D"

    invoke-static {v12, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const/4 v15, 0x6

    aput-object v14, v0, v15

    .line 18
    sget-object v14, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PCNT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v15, "0xe9b9c1c38Dab5EAB3B7E2AD295425e89bD8db066"

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    const/16 v17, 0x7

    aput-object v15, v0, v17

    .line 19
    sget-object v15, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BUSD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v13, "0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56"

    invoke-static {v15, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/16 v19, 0x8

    aput-object v13, v0, v19

    .line 20
    sget-object v13, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DEGO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v11, "0x3FdA9383A84C05eC8f7630Fe10AdF1fAC13241CC"

    invoke-static {v13, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v21, 0x9

    aput-object v11, v0, v21

    .line 21
    sget-object v11, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->EQX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v9, "0x436C52A8ceE41D5e9c5E6f4Cb146e66D552Fb700"

    invoke-static {v11, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v23, 0xa

    aput-object v9, v0, v23

    .line 22
    sget-object v9, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FLURRY:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v7, "0x47c9BcEf4fE2dBcdf3Abf508f147f1bBE8d4fEf2"

    invoke-static {v9, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v25, 0xb

    aput-object v7, v0, v25

    .line 23
    sget-object v7, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GFX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v5, "0x65ad6A2288b2Dd23E466226397c8F5D1794e58fC"

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/16 v27, 0xc

    aput-object v5, v0, v27

    .line 24
    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CTSI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v3, "0x8dA443F84fEA710266C8eB6bC34B71702d033EF2"

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v29, 0xd

    aput-object v3, v0, v29

    .line 25
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CEEK:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v30, v8

    const-string v8, "0xe0F94Ac5462997D2BC57287Ac3a3aE4C31345D66"

    invoke-static {v3, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v31, 0xe

    aput-object v8, v0, v31

    .line 26
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SKILL:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v32, v1

    const-string v1, "0x154A9F9cbd3449AD22FDaE23044319D6eF2a1Fab"

    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    move-object/from16 v33, v8

    const/16 v8, 0xf

    aput-object v1, v0, v8

    .line 27
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->XEND:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v8, "0x4a080377f83D669D7bB83B3184a8A5E61B500608"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v35, 0x10

    aput-object v8, v0, v35

    .line 28
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->YAY:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v36, v2

    const-string v2, "0x524dF384BFFB18C0C8f3f43d012011F8F9795579"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v37, 0x11

    aput-object v2, v0, v37

    .line 29
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KABY:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v38, v8

    const-string v8, "0x02A40C048eE2607B5f5606e445CFc3633Fb20b58"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v39, 0x12

    aput-object v8, v0, v39

    .line 30
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KFT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v40, v2

    const-string v2, "0x1b41a1BA7722E6431b1A782327DBe466Fe1Ee9F9"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v41, 0x13

    aput-object v2, v0, v41

    .line 31
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->OM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v42, v8

    const-string v8, "0xF78D2e7936F5Fe18308A3B2951A93b6c4a41F5e2"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v43, 0x14

    aput-object v8, v0, v43

    .line 32
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v44, v2

    const-string v2, "0x5801D0e1C7D977D78E4890880B8E579eb4943276"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v45, 0x15

    aput-object v2, v0, v45

    .line 33
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FUSE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v46, v8

    const-string v8, "0x5857c96DaE9cF8511B08Cb07f85753C472D36Ea3"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v47, 0x16

    aput-object v8, v0, v47

    .line 34
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v47, v2

    const-string v2, "0x76A797A59Ba2C17726896976B7B3747BfD1d220f"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v48, 0x17

    aput-object v2, v0, v48

    .line 35
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->INF:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v48, v8

    const-string v8, "0x000000ef379eE7F4C051f4B9aF901A9219d9ec5C"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v49, 0x18

    aput-object v8, v0, v49

    .line 36
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PPM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v49, v2

    const-string v2, "0xEE246AA7e2ecF136466c6FE4808f395861C6a04e"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v50, 0x19

    aput-object v2, v0, v50

    .line 37
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SIN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v50, v8

    const-string v8, "0x6397de0f9aedc0f7a8fa8b438dde883b9c201010"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v51, 0x1a

    aput-object v8, v0, v51

    .line 38
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BTCMT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v51, v2

    const-string v2, "0x410a56541bD912F9B60943fcB344f1E3D6F09567"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v8, 0x1b

    aput-object v2, v0, v8

    .line 10
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->mainnetBEP20Contracts:Ljava/util/HashMap;

    const/16 v0, 0x35

    new-array v0, v0, [Lkotlin/Pair;

    .line 42
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UFT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v8, "0x0202Be363B8a4820f3F4DE7FaF5224fF05943AB1"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v28, 0x0

    aput-object v8, v0, v28

    .line 43
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BCUG:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v52, v2

    const-string v2, "0x14Da7b27b2E0FedEfe0a664118b0c9bc68e2E9AF"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v26, 0x1

    aput-object v2, v0, v26

    .line 44
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->WBTC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v53, v8

    const-string v8, "0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v24, 0x2

    aput-object v8, v0, v24

    .line 45
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PRQ:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v54, v2

    const-string v2, "0x362bc847A3a9637d3af6624EeC853618a43ed7D2"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v22, 0x3

    aput-object v2, v0, v22

    .line 46
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TRU:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v55, v8

    const-string v8, "0x4C19596f5aAfF459fA38B0f7eD92F11AE6543784"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v20, 0x4

    aput-object v8, v0, v20

    const-string v8, "0x4Fabb145d64652a948d72533023f6E7A623C7C53"

    .line 47
    invoke-static {v15, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v18, 0x5

    aput-object v8, v0, v18

    const-string v8, "0x514910771AF9Ca656af840dff83E8264EcF986CA"

    .line 48
    invoke-static {v10, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v16, 0x6

    aput-object v8, v0, v16

    .line 49
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DHV:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v56, v2

    const-string v2, "0x62Dc4817588d53a056cBbD18231d91ffCcd34b2A"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v17

    const-string v2, "0x657B83A0336561C8f64389a6f5aDE675C04b0C3b"

    .line 50
    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v19

    .line 51
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->OKB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v57, v8

    const-string v8, "0x75231F58b43240C9718Dd58B4967c5114342a86c"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v0, v21

    .line 52
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SIG:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v58, v2

    const-string v2, "0x7777777777697cFEECF846A76326dA79CC606517"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v23

    .line 53
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v59, v8

    const-string v8, "0x7D1AfA7B718fb893dB30A3aBc0Cfc608AaCfeBB0"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v0, v25

    .line 54
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ATD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v60, v2

    const-string v2, "0x8052327F1BAF94A9DC8B26b9100f211eE3774f54"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v27

    const-string v2, "0x9D0B65a76274645B29e4cc41B8f23081fA09f4A3"

    .line 55
    invoke-static {v6, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v29

    .line 56
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v61, v8

    const-string v8, "0xB8c77482e45F1F44dE1745F52C74426C631bDD52"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v0, v31

    .line 57
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->HAPI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v62, v2

    const-string v2, "0xD9c2D319Cd7e6177336b0a9c93c21cb48d84Fb54"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v34, 0xf

    aput-object v2, v0, v34

    .line 58
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v63, v8

    const-string v8, "0xE66747a101bFF2dBA3697199DCcE5b743b454759"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v0, v35

    .line 59
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->OLCF:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v64, v2

    const-string v2, "0xEEaa34aF95b034BaDa4baF565063132C765b1fA5"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v37

    .line 60
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TARA:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v65, v8

    const-string v8, "0xF001937650bb4f62b57521824B2c20f5b91bEa05"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v0, v39

    .line 61
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v66, v2

    const-string v2, "0xb59490aB09A0f526Cc7305822aC65f2Ab12f9723"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v41

    const-string v2, "0xcDa4e840411C00a614aD9205CAEC807c7458a0E3"

    .line 62
    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v43

    const-string v2, "0xdAC17F958D2ee523a2206206994597C13D831ec7"

    .line 63
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v45

    const-string v2, "0x88EF27e69108B2633F8E1C184CC37940A075cC02"

    .line 64
    invoke-static {v13, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v67, 0x16

    aput-object v2, v0, v67

    .line 65
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->PRE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v67, v8

    const-string v8, "0xEC213F83defB583af3A000B1c0ada660b1902A0F"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v68, 0x17

    aput-object v8, v0, v68

    const-string v8, "0xBd3de9a069648c84d27d74d701C9fa3253098B15"

    .line 66
    invoke-static {v11, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v68, 0x18

    aput-object v8, v0, v68

    .line 67
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LSS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v68, v2

    const-string v2, "0x3B9BE07d622aCcAEd78f479BC0EDabFd6397E320"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v69, 0x19

    aput-object v2, v0, v69

    .line 68
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GAINS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v69, v8

    const-string v8, "0xd9b312D77Bc7BEd9B9CecB56636300bED4Fe5Ce9"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v70, 0x1a

    aput-object v8, v0, v70

    .line 69
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UNN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v70, v2

    const-string v2, "0x226f7b842E0F0120b7E194D05432b3fd14773a9D"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v71, 0x1b

    aput-object v2, v0, v71

    .line 70
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DEXT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v71, v8

    const-string v8, "0xfB7B4564402E5500dB5bB6d63Ae671302777C75a"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v72, 0x1c

    aput-object v8, v0, v72

    .line 71
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TOMOE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v72, v2

    const-string v2, "0x05D3606d5c81EB9b7B18530995eC9B29da05FaBa"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v73, 0x1d

    aput-object v2, v0, v73

    const-string v2, "0x60F63B76E2Fc1649E57a3489162732A90ACf59FE"

    .line 72
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v73, 0x1e

    aput-object v2, v0, v73

    .line 73
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FRM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v73, v8

    const-string v8, "0xE5CAeF4Af8780E59Df925470b050Fb23C43CA68C"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v74, 0x1f

    aput-object v8, v0, v74

    .line 74
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DOP:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v74, v2

    const-string v2, "0x6bB61215298F296C55b19Ad842D3Df69021DA2ef"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v75, 0x20

    aput-object v2, v0, v75

    const-string v2, "0x65ad6A2288b2Dd23E466226397c8F5D1794e58fC"

    .line 75
    invoke-static {v7, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v75, 0x21

    aput-object v2, v0, v75

    .line 76
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->D11:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v75, v8

    const-string v8, "0x9bf02cF6B0435A0523E6f6e0D2f35A920144F5FA"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v76, 0x22

    aput-object v8, v0, v76

    .line 77
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DVD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v76, v2

    const-string v2, "0x77dcE26c03a9B833fc2D7C31C22Da4f42e9d9582"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v77, 0x23

    aput-object v2, v0, v77

    .line 78
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->METIS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v77, v8

    const-string v8, "0x9E32b13ce7f2E80A01932B42553652E053D6ed8e"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v78, 0x24

    aput-object v8, v0, v78

    const-string v8, "0x491604c0FDF08347Dd1fa4Ee062a822A5DD06B5D"

    .line 79
    invoke-static {v5, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v78, 0x25

    aput-object v8, v0, v78

    .line 80
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SAITO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v78, v2

    const-string v2, "0xFa14Fa6958401314851A17d6C5360cA29f74B57B"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v79, 0x26

    aput-object v2, v0, v79

    .line 81
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ZCX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v79, v8

    const-string v8, "0xC52C326331E9Ce41F04484d3B5E5648158028804"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v80, 0x27

    aput-object v8, v0, v80

    const-string v8, "0xb056c38f6b7Dc4064367403E26424CD2c60655e1"

    .line 82
    invoke-static {v3, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v80, 0x28

    aput-object v8, v0, v80

    const-string v8, "0xE4CFE9eAa8Cdb0942A80B7bC68fD8Ab0F6D44903"

    .line 83
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v80, 0x29

    aput-object v8, v0, v80

    .line 84
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SHR:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v80, v2

    const-string v2, "0xd98F75b1A3261dab9eEd4956c93F33749027a964"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v81, 0x2a

    aput-object v2, v0, v81

    .line 85
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BOSON:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v81, v8

    const-string v8, "0xC477D038d5420C6A9e0b031712f61c5120090de9"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v82, 0x2b

    aput-object v8, v0, v82

    .line 86
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KONO:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v82, v2

    const-string v2, "0x850aAB69f0e0171A9a49dB8BE3E71351c8247Df4"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v83, 0x2c

    aput-object v2, v0, v83

    const-string v2, "0xEF53462838000184F35f7D991452e5f25110b207"

    move-object/from16 v83, v8

    move-object/from16 v8, v42

    .line 87
    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v42, 0x2d

    aput-object v2, v0, v42

    const-string v2, "0x3593D125a4f7849a1B059E64F4517A86Dd60c95d"

    move-object/from16 v42, v8

    move-object/from16 v8, v44

    .line 88
    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v44, 0x2e

    aput-object v2, v0, v44

    .line 89
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ROYA:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v44, v8

    const-string v8, "0x7eaF9C89037e4814DC0d9952Ac7F888C784548DB"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v84, 0x2f

    aput-object v8, v0, v84

    .line 90
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->CVR:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v84, v2

    const-string v2, "0x3C03b4EC9477809072FF9CC9292C9B25d4A8e6c6"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v85, 0x30

    aput-object v2, v0, v85

    const-string v2, "0x970B9bB2C0444F5E81e9d0eFb84C8ccdcdcAf84d"

    move-object/from16 v85, v8

    move-object/from16 v8, v47

    .line 91
    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v47, 0x31

    aput-object v2, v0, v47

    const-string v2, "0x582d872A1B094FC48F5DE31D3B73F2D9bE47def1"

    move-object/from16 v47, v8

    move-object/from16 v8, v48

    .line 92
    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v48, 0x32

    aput-object v2, v0, v48

    .line 93
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SHIB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v48, v8

    const-string v8, "0x95aD61b0a150d79219dCF64E1E6Cc01f0B64C4cE"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v86, 0x33

    aput-object v8, v0, v86

    .line 94
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->HT:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v86, v2

    const-string v2, "0x6f259637dcD74C767781E37Bc6133cd6A68aa161"

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v87, 0x34

    aput-object v2, v0, v87

    .line 41
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->mainnetERC20Contracts:Ljava/util/HashMap;

    const/16 v0, 0xf

    new-array v2, v0, [Lkotlin/Pair;

    const-string v0, "0xc2132D05D31c914a87C6611C10748AEb04B58e8F"

    .line 97
    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v28, 0x0

    aput-object v0, v2, v28

    .line 98
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USDC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v87, v1

    const-string v1, "0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v26, 0x1

    aput-object v1, v2, v26

    const-string v1, "0x1BFD67037B42Cf73acF2047067bd4F2C47D9BfD6"

    move-object/from16 v88, v3

    move-object/from16 v3, v54

    .line 99
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v24, 0x2

    aput-object v1, v2, v24

    .line 100
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->SAND:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v3, "0xBbba073C31bF03b8ACf7c28EF0738DeCF3695683"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v22, 0x3

    aput-object v3, v2, v22

    .line 101
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->DAI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v89, v1

    const-string v1, "0x8f3Cf7ad23Cd3CaDbD9735AFf958023239c6A063"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v20, 0x4

    aput-object v1, v2, v20

    .line 102
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->QUICK:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v90, v3

    const-string v3, "0x831753DD7087CaC61aB5644b308642cc1c33Dc13"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v18, 0x5

    aput-object v3, v2, v18

    .line 103
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->AAVE:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v91, v1

    const-string v1, "0xD6DF932A45C0f255f85145f286eA0b292B21C90B"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v16, 0x6

    aput-object v1, v2, v16

    .line 104
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GNS:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v92, v3

    const-string v3, "0xE5417Af564e4bFDA1c483642db72007871397896"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v17

    .line 105
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->MANA:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v93, v1

    const-string v1, "0xA1c57f48F0Deb89f569dFbE6E2B7f46D33606fD4"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v19

    const-string v1, "0x53E0bca35eC356BD5ddDFebbD1Fc0fD03FaBad39"

    .line 106
    invoke-static {v10, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v21

    .line 107
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->GHST:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v94, v3

    const-string v3, "0x385Eeac5cB85A38A9a07A70c73e0a3271CfB54A7"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v23

    .line 108
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UNI:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v95, v1

    const-string v1, "0xb33EaAd8d922B1083446DC23f610c2567fB5180f"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v25

    const-string v1, "0x7f67639ffc8c93dd558d452b8920b28815638c44"

    .line 109
    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v27

    const-string v1, "0x000000ef379eE7F4C051f4B9aF901A9219d9ec5C"

    move-object/from16 v96, v3

    move-object/from16 v3, v49

    .line 110
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v29

    .line 111
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->KOM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v3, "0xC004e2318722EA2b15499D6375905d75Ee5390B8"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v31

    .line 96
    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    sput-object v2, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->mainnetPolygonContracts:Ljava/util/HashMap;

    const/4 v2, 0x5

    new-array v3, v2, [Lkotlin/Pair;

    const-string v2, "TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t"

    .line 115
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v28, 0x0

    aput-object v2, v3, v28

    const-string v2, "THb4CqiFdwNHsWsQCs4JhzwjMWys4aqCbF"

    move-object/from16 v97, v1

    move-object/from16 v1, v36

    .line 116
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v26, 0x1

    aput-object v2, v3, v26

    const-string v2, "TEkxiTehnzSmSe2XqrBj4w32RUN966rdz8"

    .line 117
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v24, 0x2

    aput-object v2, v3, v24

    .line 118
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TUSD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v36, v0

    const-string v0, "TUpMhErZL2fhh4sVNULAbNKLokS4GjC1F4"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v22, 0x3

    aput-object v0, v3, v22

    const-string v0, "TDyvndWuvX5xTBwHPYJi7J3Yq8pq8yh62h"

    .line 119
    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v20, 0x4

    aput-object v0, v3, v20

    .line 114
    invoke-static {v3}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->mainnetTronContracts:Ljava/util/HashMap;

    const/16 v0, 0x1b

    new-array v0, v0, [Lkotlin/Pair;

    const-string v3, "0x9f13dD5B7Ecf6504D74A136532061c6BB513EC66"

    move-object/from16 v98, v2

    move-object/from16 v2, v32

    .line 123
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "0xd66c6B4F0be8CE5b39D52E0Fd1344c389929B378"

    .line 124
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "0x7964ae80601C555d3797429f57a41C0E255Fd2bd"

    .line 125
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6"

    .line 126
    invoke-static {v6, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "0x2C2d1C3CaAe8DCF2559f4b0665860caBC1beCB06"

    move-object/from16 v3, v30

    .line 127
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string v2, "0xd992CdEA5B16EaF7681fe85b4d537Efb64a1B0F1"

    .line 128
    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "0x46b2fe826bCB0Bc6A61fc663DFEBf6bEc79F6e1E"

    .line 129
    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string v2, "0xBF3fc87e4Be58b1784f79207Ee51442EDd9D452c"

    .line 130
    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v17

    const-string v2, "0xeD24FC36d5Ee211Ea25A80239Fb8C4Cfd80f12Ee"

    .line 131
    invoke-static {v15, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v19

    const-string v2, "0x0c90037E98c1A7b699e2063Cc224e782D3c0dCd5"

    .line 132
    invoke-static {v13, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v21

    const-string v2, "0x24250B993264c08f2BAC75b0bBDF305FF516B225"

    .line 133
    invoke-static {v11, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v23

    const-string v2, "0xe85d1a496ce30c3B456Bf4a21C1FfFb7fa4591Fd"

    .line 134
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v25

    const-string v2, "0x9A6593E4A7E76CdF69D6128990906a40bed9f0Ea"

    .line 135
    invoke-static {v7, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v27

    const-string v2, "0x2254a90a68F47bc4271689fb0C233BEEF5039FFD"

    .line 136
    invoke-static {v5, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v29

    const-string v2, "0xfbe6aA7Ed7AC67465D5636C8a57D9Edd4ed417E1"

    move-object/from16 v3, v88

    .line 137
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v31

    const-string v2, "0xe83710cA62BE24883dADe5Ae73Eb6A6047c0a65F"

    move-object/from16 v30, v1

    move-object/from16 v1, v33

    .line 138
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "0x539791A2F6aAD604a0192063E068BF075eE1FC0a"

    move-object/from16 v2, v87

    .line 139
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v35

    const-string v1, "0xA01D18AF85e6ba90a97901C1835A3261d166F255"

    move-object/from16 v32, v8

    move-object/from16 v8, v38

    .line 140
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v37

    const-string v1, "0xbeb4b62C35647A1E2EEB79A46F37C7FAC1c5B864"

    move-object/from16 v8, v40

    .line 141
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v39

    const-string v1, "0xfE6bcdde5b97F10fB9f06e258Fc2796E72E11497"

    move-object/from16 v8, v42

    .line 142
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v41

    const-string v1, "0x6dC5C29D6dA8e9DdE5256F6cF179FC28dAaE0E7a"

    move-object/from16 v8, v44

    .line 143
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v43

    const-string v1, "0xFC78Af94ee9D6bf18E3D14D8641208066De42E45"

    move-object/from16 v8, v46

    .line 144
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v45

    const-string v1, "0xEe8a8Aea642B6ad9F81F785DC0ad4DbE08b7B830"

    move-object/from16 v8, v47

    .line 145
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v33, 0x16

    aput-object v1, v0, v33

    const-string v1, "0x89f702b31Cad3BE1e1A83B2Cb349A93edd692eA0"

    move-object/from16 v8, v48

    .line 146
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v33, 0x17

    aput-object v1, v0, v33

    const-string v1, "0x41032B20201862CF693531942Ff57204dff6637e"

    move-object/from16 v8, v49

    .line 147
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v33, 0x18

    aput-object v1, v0, v33

    const-string v1, "0x3Bf41252CB9cBC4678F14ecae502B17cdC5aC746"

    move-object/from16 v8, v50

    .line 148
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x19

    aput-object v1, v0, v8

    const-string v1, "0x8B4e283D6f626E20ff1cf5612FB5914aA515c7f8"

    move-object/from16 v8, v51

    .line 149
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x1a

    aput-object v1, v0, v8

    .line 122
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->ropstenBEP20Contracts:Ljava/util/HashMap;

    const/16 v0, 0x35

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "0x343b4049C7adE11DA2890114258C68a12E1a40A3"

    move-object/from16 v8, v52

    .line 153
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v0, v8

    const-string v1, "0xE92ED5c5CF07dbA509cDCfa56537809dF65d8d79"

    move-object/from16 v8, v53

    .line 154
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v0, v8

    const-string v1, "0xd992CdEA5B16EaF7681fe85b4d537Efb64a1B0F1"

    move-object/from16 v8, v54

    .line 155
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v24, 0x2

    aput-object v1, v0, v24

    const-string v1, "0x2ab22d5ba4D727bFe28fB648397382d6Ad6998A9"

    move-object/from16 v8, v55

    .line 156
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x3

    aput-object v1, v0, v8

    const-string v1, "0x58b99f3E0d3eD5bA235Ab98BFAC8ef22029B7A18"

    move-object/from16 v8, v56

    .line 157
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x4

    aput-object v1, v0, v8

    const-string v1, "0x32b2886d66789D7401192Bd50c98Ed2A659D95eF"

    .line 158
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x5

    aput-object v1, v0, v8

    const-string v1, "0x7af4472903133e4dE802d4b96f95C32c95476FE5"

    .line 159
    invoke-static {v10, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "0xF68cC9E8B07F0A8EC676531d7ED40547d9c978e9"

    move-object/from16 v8, v57

    .line 160
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v17

    const-string v1, "0x20475fb3bC62eF6F1B8E78B9E3CA98428654Fa2D"

    .line 161
    invoke-static {v14, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v19

    const-string v1, "0x236ad1e443E466663DEc849Fc76eBE1FD732cEF9"

    move-object/from16 v8, v58

    .line 162
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v21

    const-string v1, "0x96bd2dE90dED4dc0eAE22f32CAaD84DCd17556D7"

    move-object/from16 v8, v59

    .line 163
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v23

    const-string v1, "0x9f13dD5B7Ecf6504D74A136532061c6BB513EC66"

    move-object/from16 v8, v60

    .line 164
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v25

    const-string v1, "0xEf3551cc33ffe7cF52707fe6F92BbbF968d96eDe"

    move-object/from16 v8, v61

    .line 165
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v27

    const-string v1, "0x98B3C321F619d8D87c54a46b7ce9495E43d6F7Ef"

    .line 166
    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v29

    const-string v1, "0x8393f01e813392A536271982D5b410E61f7Ea730"

    move-object/from16 v8, v62

    .line 167
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v31

    const-string v1, "0x4025490C89E8Ec784818c9D9eD9c47f4dd64D763"

    move-object/from16 v8, v63

    .line 168
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0xf

    aput-object v1, v0, v8

    const-string v1, "0xBF3fc87e4Be58b1784f79207Ee51442EDd9D452c"

    move-object/from16 v8, v64

    .line 169
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v35

    const-string v1, "0x7f67639Ffc8C93dD558d452b8920b28815638c44"

    move-object/from16 v8, v65

    .line 170
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v37

    const-string v1, "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6"

    move-object/from16 v8, v66

    .line 171
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v39

    const-string v1, "0x2C2d1C3CaAe8DCF2559f4b0665860caBC1beCB06"

    move-object/from16 v8, v67

    .line 172
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v41

    const-string v1, "0x6904b6d54252Dc73caA4DdA865bc13E55D09Aba0"

    .line 173
    invoke-static {v12, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v43

    const-string v1, "0xF62E58827567F32972EC0cb35f4a450b7B3a2E45"

    .line 174
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v45

    const-string v1, "0x17C447e5e51e2b068c9D53FCfA906b4aBFfd82C2"

    .line 175
    invoke-static {v13, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x16

    aput-object v1, v0, v8

    const-string v1, "0xA8d9E43c6a12c47aed96c3564Ec6c22E2bAfd5b9"

    move-object/from16 v8, v68

    .line 176
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x17

    aput-object v1, v0, v8

    const-string v1, "0xC8Ce83FfbBB10272C17215b17cAA046292791815"

    .line 177
    invoke-static {v11, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x18

    aput-object v1, v0, v8

    const-string v1, "0x00f8eD2A3D17f59674f1FC536D40880FA943a915"

    move-object/from16 v8, v69

    .line 178
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x19

    aput-object v1, v0, v8

    const-string v1, "0xd0c9Fb2121938BFfbf84A88BCCb109970EF17228"

    move-object/from16 v8, v70

    .line 179
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x1a

    aput-object v1, v0, v8

    const-string v1, "0x84DEAA17658EA056b7d1Db8Aceae0DE324772c39"

    move-object/from16 v8, v71

    .line 180
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x1b

    aput-object v1, v0, v8

    const-string v1, "0xF82f2e1F93bd42907EB614079d2a78ee9D9e9c69"

    move-object/from16 v8, v72

    .line 181
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x1c

    aput-object v1, v0, v8

    const-string v1, "0x0a2A001A82270d51B7E534004f56733e63BcAeB5"

    move-object/from16 v8, v73

    .line 182
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x1d

    aput-object v1, v0, v8

    const-string v1, "0x1c8C62bDfbe462Deba49c0BA6399A81fD3Eb9E3f"

    .line 183
    invoke-static {v9, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x1e

    aput-object v1, v0, v8

    const-string v1, "0x568d1F9E5ab394741dC1Eb0d9517453A64Cf1C8a"

    move-object/from16 v8, v74

    .line 184
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x1f

    aput-object v1, v0, v8

    const-string v1, "0x2322d46a28D74556Fb28Bec2fFf45dD6563a9921"

    move-object/from16 v8, v75

    .line 185
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v8, 0x20

    aput-object v1, v0, v8

    const-string v1, "0xDCaf07c1136abf78D4d95bc6727Ab0256349e23F"

    .line 186
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v7, 0x21

    aput-object v1, v0, v7

    const-string v1, "0xae6E4D6D088987841Fe6D8891bB24E143712E297"

    move-object/from16 v7, v76

    .line 187
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v7, 0x22

    aput-object v1, v0, v7

    const-string v1, "0x177D893C713B8B2a680a56a38C0447b529f85054"

    move-object/from16 v7, v77

    .line 188
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v7, 0x23

    aput-object v1, v0, v7

    const-string v1, "0xD0750A59DB3C5E36466a30c807e3EcE008978b4b"

    move-object/from16 v7, v78

    .line 189
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v7, 0x24

    aput-object v1, v0, v7

    const-string v1, "0xe55fec0508AeE7a660a72b90A17bE98e236b83d8"

    .line 190
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v5, 0x25

    aput-object v1, v0, v5

    const-string v1, "0xba7684EB0Dbc143a2431C033d52f1797eC9e6E73"

    move-object/from16 v5, v79

    .line 191
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v5, 0x26

    aput-object v1, v0, v5

    const-string v1, "0x773d49D6F90ace1e1D23a678dD87f718cc1A1970"

    move-object/from16 v5, v80

    .line 192
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v5, 0x27

    aput-object v1, v0, v5

    const-string v1, "0x673E0708fD2bB14F09921eAE825cc80689D5D544"

    .line 193
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x28

    aput-object v1, v0, v3

    const-string v1, "0xdE3E0Deaf721cc8e3a4049A596f993739c5870cF"

    .line 194
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "0xA19E01459bC2BcE96aAEe42C2425394135D68A3b"

    move-object/from16 v2, v81

    .line 195
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "0x102eF9cFACF5CcB3947A1863E79b52d1b61F417F"

    move-object/from16 v2, v82

    .line 196
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "0x0fA71eB6487c54903d9E3d8A0F3bC13460DDBDfE"

    move-object/from16 v2, v83

    .line 197
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "0x3181D3e02C5DaD8101470BD7E03eC3e08d79E678"

    move-object/from16 v2, v42

    .line 198
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "0x31903d5891d2Accb50B4de05A318D354DFCa74b7"

    move-object/from16 v2, v44

    .line 199
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "0x04cfbe588C3Faa3e8C5A2499582a14C9b2CCEc31"

    move-object/from16 v2, v84

    .line 200
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "0xE76AFaA6AB2B7A491E49E585C8F1e490640e259d"

    move-object/from16 v2, v85

    .line 201
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "0xD59D27021E938E5e45226e18317c3fFFbbC7b896"

    move-object/from16 v2, v47

    .line 202
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "0x712d4957BA8bC52572Bc0301B6e0a40d89279Db6"

    move-object/from16 v2, v48

    .line 203
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "0x0154E2CE89d9a0348b4451B901Bc207f4B72267E"

    move-object/from16 v2, v86

    .line 204
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "0x58B82Ea7111A9E85D0803845FD9D38B205cf8f23"

    move-object/from16 v2, v32

    .line 205
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x34

    aput-object v1, v0, v3

    .line 152
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->ropstenERC20Contracts:Ljava/util/HashMap;

    const/16 v0, 0xf

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "0x96bd2dE90dED4dc0eAE22f32CAaD84DCd17556D7"

    .line 209
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "0xFB6e4aD97a0edf551d293e4a4569D303D00d71F3"

    move-object/from16 v3, v36

    .line 210
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v0, v5

    const-string v1, "0x236ad1e443E466663DEc849Fc76eBE1FD732cEF9"

    move-object/from16 v5, v54

    .line 211
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    const-string v1, "0xBF3fc87e4Be58b1784f79207Ee51442EDd9D452c"

    move-object/from16 v5, v89

    .line 212
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "0x2C2d1C3CaAe8DCF2559f4b0665860caBC1beCB06"

    move-object/from16 v5, v90

    .line 213
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "0x2ab22d5ba4D727bFe28fB648397382d6Ad6998A9"

    move-object/from16 v5, v91

    .line 214
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const-string v1, "0x343b4049C7adE11DA2890114258C68a12E1a40A3"

    move-object/from16 v5, v92

    .line 215
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    const-string v1, "0x58b99f3E0d3eD5bA235Ab98BFAC8ef22029B7A18"

    move-object/from16 v5, v93

    .line 216
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v17

    const-string v1, "0x4025490C89E8Ec784818c9D9eD9c47f4dd64D763"

    move-object/from16 v5, v94

    .line 217
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v19

    const-string v1, "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6"

    .line 218
    invoke-static {v10, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v21

    const-string v1, "0xE92ED5c5CF07dbA509cDCfa56537809dF65d8d79"

    move-object/from16 v5, v95

    .line 219
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v23

    const-string v1, "0x20475fb3bC62eF6F1B8E78B9E3CA98428654Fa2D"

    move-object/from16 v5, v96

    .line 220
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v25

    const-string v1, "0xf7909CBC21E95000E3d0e14004aADdea2bb1796d"

    .line 221
    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v27

    const-string v1, "0xE22219FE81cca8Ce0bda1B59Edd6F8d0f7ce9c41"

    move-object/from16 v5, v49

    .line 222
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v29

    const-string v1, "0x3EF1a2E073c4999930f212Cf13DB1391Eb4E7F47"

    move-object/from16 v5, v97

    .line 223
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v31

    .line 208
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->mumbaiPolygonContracts:Ljava/util/HashMap;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "TGJE4Er8hp55z99954oLcNYteu9z8SNFxu"

    .line 227
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const-string v1, "TUPokNzSio5QAbEMpHczFU55vqLHkgr1EX"

    move-object/from16 v4, v30

    .line 228
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "TAaLmkqVRxjUxAMn4P1jtP65mdnawsHeiz"

    .line 229
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "TVQzRfPCEg7XJQnqBHUb1GC3Sa5cuga7TW"

    move-object/from16 v3, v98

    .line 230
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "THiqSHjFJPfnBDYKfEkiEUw4xFqoWPkYtk"

    .line 231
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 226
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->nileTronContracts:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContract(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironment()Lcom/iMe/storage/domain/model/common/Environment;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/Environment;->isDevelopment()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/Environment;->isStage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 239
    :goto_1
    sget-object v1, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v2, :cond_8

    const/4 v1, 0x2

    if-eq p2, v1, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_6

    :cond_2
    if-eqz v0, :cond_3

    .line 243
    sget-object p2, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->nileTronContracts:Ljava/util/HashMap;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->mainnetTronContracts:Ljava/util/HashMap;

    :goto_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_6

    :cond_4
    if-eqz v0, :cond_5

    .line 242
    sget-object p2, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->mumbaiPolygonContracts:Ljava/util/HashMap;

    goto :goto_3

    :cond_5
    sget-object p2, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->mainnetPolygonContracts:Ljava/util/HashMap;

    :goto_3
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_7

    .line 241
    sget-object p2, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->ropstenERC20Contracts:Ljava/util/HashMap;

    goto :goto_4

    :cond_7
    sget-object p2, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->mainnetERC20Contracts:Ljava/util/HashMap;

    :goto_4
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_6

    :cond_8
    if-eqz v0, :cond_9

    .line 240
    sget-object p2, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->ropstenBEP20Contracts:Ljava/util/HashMap;

    goto :goto_5

    :cond_9
    sget-object p2, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->mainnetBEP20Contracts:Ljava/util/HashMap;

    :goto_5
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_6
    return-object p1
.end method
