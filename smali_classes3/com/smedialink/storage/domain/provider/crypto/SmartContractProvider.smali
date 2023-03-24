.class public final Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;
.super Ljava/lang/Object;
.source "SmartContractProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;

.field private static final mainnetBEP20Contracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainnetERC20Contracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainnetPolygonContracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainnetTronContracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mumbaiPolygonContracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final nileTronContracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ropstenBEP20Contracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ropstenERC20Contracts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 99

    new-instance v0, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->INSTANCE:Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;

    const/16 v0, 0x1b

    new-array v1, v0, [Lkotlin/Pair;

    .line 11
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FIL:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v3, "0x0D8Ce2A99Bb6e3B7Db580eD848240e4a0F9aE153"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 12
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v5, "0x2170Ed0880ac9A755fd29B2688956BD959F933F8"

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 13
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v7, "0x55d398326f99059fF775485246999027B3197955"

    invoke-static {v5, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    .line 14
    sget-object v7, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v9, "0x7bC75e291E656E8658D66Be1cc8154A3769A35Dd"

    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v1, v10

    .line 15
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LANC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v11, "0xDd848E0CbFD3771dC7845B10072d973C375271e2"

    invoke-static {v9, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v1, v12

    .line 16
    sget-object v11, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LINK:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v13, "0xF8A0BF9cF54Bb92F17374d9e9A321E6a111a51bD"

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v14, 0x5

    aput-object v13, v1, v14

    .line 17
    sget-object v13, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UFI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v15, "0xe2a59D5E33c6540E18aAA46BF98917aC3158Db0D"

    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    const/16 v16, 0x6

    aput-object v15, v1, v16

    .line 18
    sget-object v15, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->PCNT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v0, "0xe9b9c1c38Dab5EAB3B7E2AD295425e89bD8db066"

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v18, 0x7

    aput-object v0, v1, v18

    .line 19
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BUSD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v14, "0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56"

    invoke-static {v0, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const/16 v20, 0x8

    aput-object v14, v1, v20

    .line 20
    sget-object v14, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DEGO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v12, "0x3FdA9383A84C05eC8f7630Fe10AdF1fAC13241CC"

    invoke-static {v14, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/16 v22, 0x9

    aput-object v12, v1, v22

    .line 21
    sget-object v12, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->EQX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v10, "0x436C52A8ceE41D5e9c5E6f4Cb146e66D552Fb700"

    invoke-static {v12, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/16 v24, 0xa

    aput-object v10, v1, v24

    .line 22
    sget-object v10, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FLURRY:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v8, "0x47c9BcEf4fE2dBcdf3Abf508f147f1bBE8d4fEf2"

    invoke-static {v10, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v26, 0xb

    aput-object v8, v1, v26

    .line 23
    sget-object v8, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GFX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v6, "0x65ad6A2288b2Dd23E466226397c8F5D1794e58fC"

    invoke-static {v8, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v28, 0xc

    aput-object v6, v1, v28

    .line 24
    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CTSI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v4, "0x8dA443F84fEA710266C8eB6bC34B71702d033EF2"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v30, 0xd

    aput-object v4, v1, v30

    .line 25
    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CEEK:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v31, v9

    const-string v9, "0xe0F94Ac5462997D2BC57287Ac3a3aE4C31345D66"

    invoke-static {v4, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v32, 0xe

    aput-object v9, v1, v32

    .line 26
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SKILL:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v33, v2

    const-string v2, "0x154A9F9cbd3449AD22FDaE23044319D6eF2a1Fab"

    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    move-object/from16 v34, v9

    const/16 v9, 0xf

    aput-object v2, v1, v9

    .line 27
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->XEND:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v9, "0x4a080377f83D669D7bB83B3184a8A5E61B500608"

    invoke-static {v2, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v36, 0x10

    aput-object v9, v1, v36

    .line 28
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->YAY:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v37, v3

    const-string v3, "0x524dF384BFFB18C0C8f3f43d012011F8F9795579"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v38, 0x11

    aput-object v3, v1, v38

    .line 29
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KABY:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v39, v9

    const-string v9, "0x02A40C048eE2607B5f5606e445CFc3633Fb20b58"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v40, 0x12

    aput-object v9, v1, v40

    .line 30
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KFT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v41, v3

    const-string v3, "0x1b41a1BA7722E6431b1A782327DBe466Fe1Ee9F9"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v42, 0x13

    aput-object v3, v1, v42

    .line 31
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->OM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v43, v9

    const-string v9, "0xF78D2e7936F5Fe18308A3B2951A93b6c4a41F5e2"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v44, 0x14

    aput-object v9, v1, v44

    .line 32
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USDO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v45, v3

    const-string v3, "0x5801D0e1C7D977D78E4890880B8E579eb4943276"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v46, 0x15

    aput-object v3, v1, v46

    .line 33
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FUSE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v46, v9

    const-string v9, "0x5857c96DaE9cF8511B08Cb07f85753C472D36Ea3"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v47, 0x16

    aput-object v9, v1, v47

    .line 34
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v47, v3

    const-string v3, "0x76A797A59Ba2C17726896976B7B3747BfD1d220f"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v48, 0x17

    aput-object v3, v1, v48

    .line 35
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->INF:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v48, v9

    const-string v9, "0x000000ef379eE7F4C051f4B9aF901A9219d9ec5C"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v49, 0x18

    aput-object v9, v1, v49

    .line 36
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->PPM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v49, v3

    const-string v3, "0xEE246AA7e2ecF136466c6FE4808f395861C6a04e"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v50, 0x19

    aput-object v3, v1, v50

    .line 37
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SIN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v50, v9

    const-string v9, "0x6397de0f9aedc0f7a8fa8b438dde883b9c201010"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v51, 0x1a

    aput-object v9, v1, v51

    .line 10
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->mainnetBEP20Contracts:Ljava/util/HashMap;

    const/16 v1, 0x35

    new-array v1, v1, [Lkotlin/Pair;

    .line 41
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UFT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v51, v3

    const-string v3, "0x0202Be363B8a4820f3F4DE7FaF5224fF05943AB1"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v29, 0x0

    aput-object v3, v1, v29

    .line 42
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BCUG:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v52, v9

    const-string v9, "0x14Da7b27b2E0FedEfe0a664118b0c9bc68e2E9AF"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v27, 0x1

    aput-object v9, v1, v27

    .line 43
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->WBTC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v53, v3

    const-string v3, "0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v25, 0x2

    aput-object v3, v1, v25

    .line 44
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->PRQ:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v54, v9

    const-string v9, "0x362bc847A3a9637d3af6624EeC853618a43ed7D2"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v23, 0x3

    aput-object v9, v1, v23

    .line 45
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TRU:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v55, v3

    const-string v3, "0x4C19596f5aAfF459fA38B0f7eD92F11AE6543784"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v21, 0x4

    aput-object v3, v1, v21

    const-string v3, "0x4Fabb145d64652a948d72533023f6E7A623C7C53"

    .line 46
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v19, 0x5

    aput-object v3, v1, v19

    const-string v3, "0x514910771AF9Ca656af840dff83E8264EcF986CA"

    .line 47
    invoke-static {v11, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v16

    .line 48
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DHV:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v56, v9

    const-string v9, "0x62Dc4817588d53a056cBbD18231d91ffCcd34b2A"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v1, v18

    const-string v9, "0x657B83A0336561C8f64389a6f5aDE675C04b0C3b"

    .line 49
    invoke-static {v15, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v1, v20

    .line 50
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->OKB:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v57, v3

    const-string v3, "0x75231F58b43240C9718Dd58B4967c5114342a86c"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v22

    .line 51
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SIG:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v58, v9

    const-string v9, "0x7777777777697cFEECF846A76326dA79CC606517"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v1, v24

    .line 52
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v59, v3

    const-string v3, "0x7D1AfA7B718fb893dB30A3aBc0Cfc608AaCfeBB0"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v26

    .line 53
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ATD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v60, v9

    const-string v9, "0x8052327F1BAF94A9DC8B26b9100f211eE3774f54"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v1, v28

    const-string v9, "0x9D0B65a76274645B29e4cc41B8f23081fA09f4A3"

    .line 54
    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v1, v30

    .line 55
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v61, v3

    const-string v3, "0xB8c77482e45F1F44dE1745F52C74426C631bDD52"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v32

    .line 56
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->HAPI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v62, v9

    const-string v9, "0xD9c2D319Cd7e6177336b0a9c93c21cb48d84Fb54"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v35, 0xf

    aput-object v9, v1, v35

    .line 57
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v63, v3

    const-string v3, "0xE66747a101bFF2dBA3697199DCcE5b743b454759"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v36

    .line 58
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->OLCF:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v64, v9

    const-string v9, "0xEEaa34aF95b034BaDa4baF565063132C765b1fA5"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v1, v38

    .line 59
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TARA:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v65, v3

    const-string v3, "0xF001937650bb4f62b57521824B2c20f5b91bEa05"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v40

    .line 60
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LIT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v66, v9

    const-string v9, "0xb59490aB09A0f526Cc7305822aC65f2Ab12f9723"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v1, v42

    const-string v9, "0xcDa4e840411C00a614aD9205CAEC807c7458a0E3"

    .line 61
    invoke-static {v13, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v1, v44

    const-string v9, "0xdAC17F958D2ee523a2206206994597C13D831ec7"

    .line 62
    invoke-static {v5, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v67, 0x15

    aput-object v9, v1, v67

    const-string v9, "0x88EF27e69108B2633F8E1C184CC37940A075cC02"

    .line 63
    invoke-static {v14, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v67, 0x16

    aput-object v9, v1, v67

    .line 64
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->PRE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v67, v3

    const-string v3, "0xEC213F83defB583af3A000B1c0ada660b1902A0F"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v68, 0x17

    aput-object v3, v1, v68

    const-string v3, "0xBd3de9a069648c84d27d74d701C9fa3253098B15"

    .line 65
    invoke-static {v12, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v68, 0x18

    aput-object v3, v1, v68

    .line 66
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LSS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v68, v9

    const-string v9, "0x3B9BE07d622aCcAEd78f479BC0EDabFd6397E320"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v69, 0x19

    aput-object v9, v1, v69

    .line 67
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GAINS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v69, v3

    const-string v3, "0xd9b312D77Bc7BEd9B9CecB56636300bED4Fe5Ce9"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v70, 0x1a

    aput-object v3, v1, v70

    .line 68
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v70, v9

    const-string v9, "0x226f7b842E0F0120b7E194D05432b3fd14773a9D"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v17, 0x1b

    aput-object v9, v1, v17

    .line 69
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DEXT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v71, v3

    const-string v3, "0xfB7B4564402E5500dB5bB6d63Ae671302777C75a"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v72, 0x1c

    aput-object v3, v1, v72

    .line 70
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TOMOE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v72, v9

    const-string v9, "0x05D3606d5c81EB9b7B18530995eC9B29da05FaBa"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v73, 0x1d

    aput-object v9, v1, v73

    const-string v9, "0x60F63B76E2Fc1649E57a3489162732A90ACf59FE"

    .line 71
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v73, 0x1e

    aput-object v9, v1, v73

    .line 72
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FRM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v73, v3

    const-string v3, "0xE5CAeF4Af8780E59Df925470b050Fb23C43CA68C"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v74, 0x1f

    aput-object v3, v1, v74

    .line 73
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DOP:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v74, v9

    const-string v9, "0x6bB61215298F296C55b19Ad842D3Df69021DA2ef"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v75, 0x20

    aput-object v9, v1, v75

    const-string v9, "0x65ad6A2288b2Dd23E466226397c8F5D1794e58fC"

    .line 74
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v75, 0x21

    aput-object v9, v1, v75

    .line 75
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->D11:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v75, v3

    const-string v3, "0x9bf02cF6B0435A0523E6f6e0D2f35A920144F5FA"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v76, 0x22

    aput-object v3, v1, v76

    .line 76
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DVD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v76, v9

    const-string v9, "0x77dcE26c03a9B833fc2D7C31C22Da4f42e9d9582"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v77, 0x23

    aput-object v9, v1, v77

    .line 77
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->METIS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v77, v3

    const-string v3, "0x9E32b13ce7f2E80A01932B42553652E053D6ed8e"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v78, 0x24

    aput-object v3, v1, v78

    const-string v3, "0x491604c0FDF08347Dd1fa4Ee062a822A5DD06B5D"

    .line 78
    invoke-static {v6, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v78, 0x25

    aput-object v3, v1, v78

    .line 79
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SAITO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v78, v9

    const-string v9, "0xFa14Fa6958401314851A17d6C5360cA29f74B57B"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v79, 0x26

    aput-object v9, v1, v79

    .line 80
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ZCX:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v79, v3

    const-string v3, "0xC52C326331E9Ce41F04484d3B5E5648158028804"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v80, 0x27

    aput-object v3, v1, v80

    const-string v3, "0xb056c38f6b7Dc4064367403E26424CD2c60655e1"

    .line 81
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v80, 0x28

    aput-object v3, v1, v80

    const-string v3, "0xE4CFE9eAa8Cdb0942A80B7bC68fD8Ab0F6D44903"

    .line 82
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v80, 0x29

    aput-object v3, v1, v80

    .line 83
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SHR:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v80, v9

    const-string v9, "0xd98F75b1A3261dab9eEd4956c93F33749027a964"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v81, 0x2a

    aput-object v9, v1, v81

    .line 84
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BOSON:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v81, v3

    const-string v3, "0xC477D038d5420C6A9e0b031712f61c5120090de9"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v82, 0x2b

    aput-object v3, v1, v82

    .line 85
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KONO:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v82, v9

    const-string v9, "0x850aAB69f0e0171A9a49dB8BE3E71351c8247Df4"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v83, 0x2c

    aput-object v9, v1, v83

    const-string v9, "0xEF53462838000184F35f7D991452e5f25110b207"

    move-object/from16 v83, v3

    move-object/from16 v3, v43

    .line 86
    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v43, 0x2d

    aput-object v9, v1, v43

    const-string v9, "0x3593D125a4f7849a1B059E64F4517A86Dd60c95d"

    move-object/from16 v43, v3

    move-object/from16 v3, v45

    .line 87
    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v45, 0x2e

    aput-object v9, v1, v45

    .line 88
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ROYA:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v45, v3

    const-string v3, "0x7eaF9C89037e4814DC0d9952Ac7F888C784548DB"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v84, 0x2f

    aput-object v3, v1, v84

    .line 89
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->CVR:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v84, v9

    const-string v9, "0x3C03b4EC9477809072FF9CC9292C9B25d4A8e6c6"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v85, 0x30

    aput-object v9, v1, v85

    const-string v9, "0x970B9bB2C0444F5E81e9d0eFb84C8ccdcdcAf84d"

    move-object/from16 v85, v3

    move-object/from16 v3, v47

    .line 90
    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v47, 0x31

    aput-object v9, v1, v47

    const-string v9, "0x582d872A1B094FC48F5DE31D3B73F2D9bE47def1"

    move-object/from16 v47, v3

    move-object/from16 v3, v48

    .line 91
    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v48, 0x32

    aput-object v9, v1, v48

    .line 92
    sget-object v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SHIB:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v48, v3

    const-string v3, "0x95aD61b0a150d79219dCF64E1E6Cc01f0B64C4cE"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v86, 0x33

    aput-object v3, v1, v86

    .line 93
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->HT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v86, v9

    const-string v9, "0x6f259637dcD74C767781E37Bc6133cd6A68aa161"

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v87, 0x34

    aput-object v9, v1, v87

    .line 40
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->mainnetERC20Contracts:Ljava/util/HashMap;

    const/16 v1, 0xf

    new-array v9, v1, [Lkotlin/Pair;

    const-string v1, "0xc2132D05D31c914a87C6611C10748AEb04B58e8F"

    .line 96
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v29, 0x0

    aput-object v1, v9, v29

    .line 97
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USDC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v87, v2

    const-string v2, "0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v27, 0x1

    aput-object v2, v9, v27

    const-string v2, "0x1BFD67037B42Cf73acF2047067bd4F2C47D9BfD6"

    move-object/from16 v88, v4

    move-object/from16 v4, v54

    .line 98
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v25, 0x2

    aput-object v2, v9, v25

    .line 99
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->SAND:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v4, "0xBbba073C31bF03b8ACf7c28EF0738DeCF3695683"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v23, 0x3

    aput-object v4, v9, v23

    .line 100
    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->DAI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v89, v2

    const-string v2, "0x8f3Cf7ad23Cd3CaDbD9735AFf958023239c6A063"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v21, 0x4

    aput-object v2, v9, v21

    .line 101
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->QUICK:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v90, v4

    const-string v4, "0x831753DD7087CaC61aB5644b308642cc1c33Dc13"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v19, 0x5

    aput-object v4, v9, v19

    .line 102
    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->AAVE:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v91, v2

    const-string v2, "0xD6DF932A45C0f255f85145f286eA0b292B21C90B"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v9, v16

    .line 103
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GNS:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v92, v4

    const-string v4, "0xE5417Af564e4bFDA1c483642db72007871397896"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v9, v18

    .line 104
    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->MANA:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v93, v2

    const-string v2, "0xA1c57f48F0Deb89f569dFbE6E2B7f46D33606fD4"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v9, v20

    const-string v2, "0x53E0bca35eC356BD5ddDFebbD1Fc0fD03FaBad39"

    .line 105
    invoke-static {v11, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v9, v22

    .line 106
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->GHST:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v94, v4

    const-string v4, "0x385Eeac5cB85A38A9a07A70c73e0a3271CfB54A7"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v9, v24

    .line 107
    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNI:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v95, v2

    const-string v2, "0xb33EaAd8d922B1083446DC23f610c2567fB5180f"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v9, v26

    const-string v2, "0x7f67639ffc8c93dd558d452b8920b28815638c44"

    .line 108
    invoke-static {v7, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v9, v28

    const-string v2, "0x000000ef379eE7F4C051f4B9aF901A9219d9ec5C"

    move-object/from16 v96, v4

    move-object/from16 v4, v49

    .line 109
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v9, v30

    .line 110
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->KOM:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const-string v4, "0xC004e2318722EA2b15499D6375905d75Ee5390B8"

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v9, v32

    .line 95
    invoke-static {v9}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->mainnetPolygonContracts:Ljava/util/HashMap;

    const/4 v4, 0x5

    new-array v9, v4, [Lkotlin/Pair;

    const-string v4, "TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t"

    .line 114
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v29, 0x0

    aput-object v4, v9, v29

    const-string v4, "THb4CqiFdwNHsWsQCs4JhzwjMWys4aqCbF"

    move-object/from16 v97, v2

    move-object/from16 v2, v37

    .line 115
    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v27, 0x1

    aput-object v4, v9, v27

    const-string v4, "TEkxiTehnzSmSe2XqrBj4w32RUN966rdz8"

    .line 116
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v25, 0x2

    aput-object v4, v9, v25

    .line 117
    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TUSD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v37, v1

    const-string v1, "TUpMhErZL2fhh4sVNULAbNKLokS4GjC1F4"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v23, 0x3

    aput-object v1, v9, v23

    const-string v1, "TDyvndWuvX5xTBwHPYJi7J3Yq8pq8yh62h"

    .line 118
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v21, 0x4

    aput-object v1, v9, v21

    .line 113
    invoke-static {v9}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->mainnetTronContracts:Ljava/util/HashMap;

    const/16 v1, 0x1b

    new-array v9, v1, [Lkotlin/Pair;

    const-string v1, "0x9f13dD5B7Ecf6504D74A136532061c6BB513EC66"

    move-object/from16 v98, v4

    move-object/from16 v4, v33

    .line 122
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v9, v4

    const-string v1, "0xd66c6B4F0be8CE5b39D52E0Fd1344c389929B378"

    .line 123
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v9, v4

    const-string v1, "0x7964ae80601C555d3797429f57a41C0E255Fd2bd"

    .line 124
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v9, v4

    const-string v1, "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6"

    .line 125
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v9, v4

    const-string v1, "0x2C2d1C3CaAe8DCF2559f4b0665860caBC1beCB06"

    move-object/from16 v4, v31

    .line 126
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v9, v4

    const-string v1, "0xd992CdEA5B16EaF7681fe85b4d537Efb64a1B0F1"

    .line 127
    invoke-static {v11, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v9, v4

    const-string v1, "0x46b2fe826bCB0Bc6A61fc663DFEBf6bEc79F6e1E"

    .line 128
    invoke-static {v13, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v16

    const-string v1, "0xBF3fc87e4Be58b1784f79207Ee51442EDd9D452c"

    .line 129
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v18

    const-string v1, "0xeD24FC36d5Ee211Ea25A80239Fb8C4Cfd80f12Ee"

    .line 130
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v20

    const-string v1, "0x0c90037E98c1A7b699e2063Cc224e782D3c0dCd5"

    .line 131
    invoke-static {v14, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v22

    const-string v1, "0x24250B993264c08f2BAC75b0bBDF305FF516B225"

    .line 132
    invoke-static {v12, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v24

    const-string v1, "0xe85d1a496ce30c3B456Bf4a21C1FfFb7fa4591Fd"

    .line 133
    invoke-static {v10, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v26

    const-string v1, "0x9A6593E4A7E76CdF69D6128990906a40bed9f0Ea"

    .line 134
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v28

    const-string v1, "0x2254a90a68F47bc4271689fb0C233BEEF5039FFD"

    .line 135
    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v30

    const-string v1, "0xfbe6aA7Ed7AC67465D5636C8a57D9Edd4ed417E1"

    move-object/from16 v4, v88

    .line 136
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v32

    const-string v1, "0xe83710cA62BE24883dADe5Ae73Eb6A6047c0a65F"

    move-object/from16 v31, v2

    move-object/from16 v2, v34

    .line 137
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v9, v2

    const-string v1, "0x539791A2F6aAD604a0192063E068BF075eE1FC0a"

    move-object/from16 v2, v87

    .line 138
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v36

    const-string v1, "0xA01D18AF85e6ba90a97901C1835A3261d166F255"

    move-object/from16 v33, v3

    move-object/from16 v3, v39

    .line 139
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v38

    const-string v1, "0xbeb4b62C35647A1E2EEB79A46F37C7FAC1c5B864"

    move-object/from16 v3, v41

    .line 140
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v40

    const-string v1, "0xfE6bcdde5b97F10fB9f06e258Fc2796E72E11497"

    move-object/from16 v3, v43

    .line 141
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v42

    const-string v1, "0x6dC5C29D6dA8e9DdE5256F6cF179FC28dAaE0E7a"

    move-object/from16 v3, v45

    .line 142
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v44

    const-string v1, "0xFC78Af94ee9D6bf18E3D14D8641208066De42E45"

    move-object/from16 v3, v46

    .line 143
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v9, v3

    const-string v1, "0xEe8a8Aea642B6ad9F81F785DC0ad4DbE08b7B830"

    move-object/from16 v3, v47

    .line 144
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v34, 0x16

    aput-object v1, v9, v34

    const-string v1, "0x89f702b31Cad3BE1e1A83B2Cb349A93edd692eA0"

    move-object/from16 v3, v48

    .line 145
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v34, 0x17

    aput-object v1, v9, v34

    const-string v1, "0x41032B20201862CF693531942Ff57204dff6637e"

    move-object/from16 v3, v49

    .line 146
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v34, 0x18

    aput-object v1, v9, v34

    const-string v1, "0x3Bf41252CB9cBC4678F14ecae502B17cdC5aC746"

    move-object/from16 v3, v50

    .line 147
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x19

    aput-object v1, v9, v3

    const-string v1, "0x8B4e283D6f626E20ff1cf5612FB5914aA515c7f8"

    move-object/from16 v3, v51

    .line 148
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x1a

    aput-object v1, v9, v3

    .line 121
    invoke-static {v9}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->ropstenBEP20Contracts:Ljava/util/HashMap;

    const/16 v1, 0x35

    new-array v1, v1, [Lkotlin/Pair;

    const-string v3, "0x343b4049C7adE11DA2890114258C68a12E1a40A3"

    move-object/from16 v9, v52

    .line 152
    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v1, v9

    const-string v3, "0xE92ED5c5CF07dbA509cDCfa56537809dF65d8d79"

    move-object/from16 v9, v53

    .line 153
    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v9, 0x1

    aput-object v3, v1, v9

    const-string v3, "0xd992CdEA5B16EaF7681fe85b4d537Efb64a1B0F1"

    move-object/from16 v9, v54

    .line 154
    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v25, 0x2

    aput-object v3, v1, v25

    const-string v3, "0x2ab22d5ba4D727bFe28fB648397382d6Ad6998A9"

    move-object/from16 v9, v55

    .line 155
    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v9, 0x3

    aput-object v3, v1, v9

    const-string v3, "0x58b99f3E0d3eD5bA235Ab98BFAC8ef22029B7A18"

    move-object/from16 v9, v56

    .line 156
    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v9, 0x4

    aput-object v3, v1, v9

    const-string v3, "0x32b2886d66789D7401192Bd50c98Ed2A659D95eF"

    .line 157
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v1, v3

    const-string v0, "0x7af4472903133e4dE802d4b96f95C32c95476FE5"

    .line 158
    invoke-static {v11, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v16

    const-string v0, "0xF68cC9E8B07F0A8EC676531d7ED40547d9c978e9"

    move-object/from16 v3, v57

    .line 159
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v18

    const-string v0, "0x20475fb3bC62eF6F1B8E78B9E3CA98428654Fa2D"

    .line 160
    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v20

    const-string v0, "0x236ad1e443E466663DEc849Fc76eBE1FD732cEF9"

    move-object/from16 v3, v58

    .line 161
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v22

    const-string v0, "0x96bd2dE90dED4dc0eAE22f32CAaD84DCd17556D7"

    move-object/from16 v3, v59

    .line 162
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v24

    const-string v0, "0x9f13dD5B7Ecf6504D74A136532061c6BB513EC66"

    move-object/from16 v3, v60

    .line 163
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v26

    const-string v0, "0xEf3551cc33ffe7cF52707fe6F92BbbF968d96eDe"

    move-object/from16 v3, v61

    .line 164
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v28

    const-string v0, "0x98B3C321F619d8D87c54a46b7ce9495E43d6F7Ef"

    .line 165
    invoke-static {v7, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v30

    const-string v0, "0x8393f01e813392A536271982D5b410E61f7Ea730"

    move-object/from16 v3, v62

    .line 166
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v32

    const-string v0, "0x4025490C89E8Ec784818c9D9eD9c47f4dd64D763"

    move-object/from16 v3, v63

    .line 167
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0xf

    aput-object v0, v1, v3

    const-string v0, "0xBF3fc87e4Be58b1784f79207Ee51442EDd9D452c"

    move-object/from16 v3, v64

    .line 168
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v36

    const-string v0, "0x7f67639Ffc8C93dD558d452b8920b28815638c44"

    move-object/from16 v3, v65

    .line 169
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v38

    const-string v0, "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6"

    move-object/from16 v3, v66

    .line 170
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v40

    const-string v0, "0x2C2d1C3CaAe8DCF2559f4b0665860caBC1beCB06"

    move-object/from16 v3, v67

    .line 171
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v42

    const-string v0, "0x6904b6d54252Dc73caA4DdA865bc13E55D09Aba0"

    .line 172
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v44

    const-string v0, "0xF62E58827567F32972EC0cb35f4a450b7B3a2E45"

    .line 173
    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x15

    aput-object v0, v1, v3

    const-string v0, "0x17C447e5e51e2b068c9D53FCfA906b4aBFfd82C2"

    .line 174
    invoke-static {v14, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x16

    aput-object v0, v1, v3

    const-string v0, "0xA8d9E43c6a12c47aed96c3564Ec6c22E2bAfd5b9"

    move-object/from16 v3, v68

    .line 175
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x17

    aput-object v0, v1, v3

    const-string v0, "0xC8Ce83FfbBB10272C17215b17cAA046292791815"

    .line 176
    invoke-static {v12, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x18

    aput-object v0, v1, v3

    const-string v0, "0x00f8eD2A3D17f59674f1FC536D40880FA943a915"

    move-object/from16 v3, v69

    .line 177
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x19

    aput-object v0, v1, v3

    const-string v0, "0xd0c9Fb2121938BFfbf84A88BCCb109970EF17228"

    move-object/from16 v3, v70

    .line 178
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1a

    aput-object v0, v1, v3

    const-string v0, "0x84DEAA17658EA056b7d1Db8Aceae0DE324772c39"

    move-object/from16 v3, v71

    .line 179
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1b

    aput-object v0, v1, v3

    const-string v0, "0xF82f2e1F93bd42907EB614079d2a78ee9D9e9c69"

    move-object/from16 v3, v72

    .line 180
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1c

    aput-object v0, v1, v3

    const-string v0, "0x0a2A001A82270d51B7E534004f56733e63BcAeB5"

    move-object/from16 v3, v73

    .line 181
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1d

    aput-object v0, v1, v3

    const-string v0, "0x1c8C62bDfbe462Deba49c0BA6399A81fD3Eb9E3f"

    .line 182
    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1e

    aput-object v0, v1, v3

    const-string v0, "0x568d1F9E5ab394741dC1Eb0d9517453A64Cf1C8a"

    move-object/from16 v3, v74

    .line 183
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x1f

    aput-object v0, v1, v3

    const-string v0, "0x2322d46a28D74556Fb28Bec2fFf45dD6563a9921"

    move-object/from16 v3, v75

    .line 184
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x20

    aput-object v0, v1, v3

    const-string v0, "0xDCaf07c1136abf78D4d95bc6727Ab0256349e23F"

    .line 185
    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x21

    aput-object v0, v1, v3

    const-string v0, "0xae6E4D6D088987841Fe6D8891bB24E143712E297"

    move-object/from16 v3, v76

    .line 186
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x22

    aput-object v0, v1, v3

    const-string v0, "0x177D893C713B8B2a680a56a38C0447b529f85054"

    move-object/from16 v3, v77

    .line 187
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x23

    aput-object v0, v1, v3

    const-string v0, "0xD0750A59DB3C5E36466a30c807e3EcE008978b4b"

    move-object/from16 v3, v78

    .line 188
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x24

    aput-object v0, v1, v3

    const-string v0, "0xe55fec0508AeE7a660a72b90A17bE98e236b83d8"

    .line 189
    invoke-static {v6, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x25

    aput-object v0, v1, v3

    const-string v0, "0xba7684EB0Dbc143a2431C033d52f1797eC9e6E73"

    move-object/from16 v3, v79

    .line 190
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x26

    aput-object v0, v1, v3

    const-string v0, "0x773d49D6F90ace1e1D23a678dD87f718cc1A1970"

    move-object/from16 v3, v80

    .line 191
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x27

    aput-object v0, v1, v3

    const-string v0, "0x673E0708fD2bB14F09921eAE825cc80689D5D544"

    .line 192
    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x28

    aput-object v0, v1, v3

    const-string v0, "0xdE3E0Deaf721cc8e3a4049A596f993739c5870cF"

    .line 193
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const-string v0, "0xA19E01459bC2BcE96aAEe42C2425394135D68A3b"

    move-object/from16 v2, v81

    .line 194
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const-string v0, "0x102eF9cFACF5CcB3947A1863E79b52d1b61F417F"

    move-object/from16 v2, v82

    .line 195
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const-string v0, "0x0fA71eB6487c54903d9E3d8A0F3bC13460DDBDfE"

    move-object/from16 v2, v83

    .line 196
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const-string v0, "0x3181D3e02C5DaD8101470BD7E03eC3e08d79E678"

    move-object/from16 v2, v43

    .line 197
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const-string v0, "0x31903d5891d2Accb50B4de05A318D354DFCa74b7"

    move-object/from16 v2, v45

    .line 198
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const-string v0, "0x04cfbe588C3Faa3e8C5A2499582a14C9b2CCEc31"

    move-object/from16 v2, v84

    .line 199
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const-string v0, "0xE76AFaA6AB2B7A491E49E585C8F1e490640e259d"

    move-object/from16 v2, v85

    .line 200
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const-string v0, "0xD59D27021E938E5e45226e18317c3fFFbbC7b896"

    move-object/from16 v2, v47

    .line 201
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const-string v0, "0x712d4957BA8bC52572Bc0301B6e0a40d89279Db6"

    move-object/from16 v2, v48

    .line 202
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const-string v0, "0x0154E2CE89d9a0348b4451B901Bc207f4B72267E"

    move-object/from16 v2, v86

    .line 203
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const-string v0, "0x58B82Ea7111A9E85D0803845FD9D38B205cf8f23"

    move-object/from16 v2, v33

    .line 204
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v3, 0x34

    aput-object v0, v1, v3

    .line 151
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->ropstenERC20Contracts:Ljava/util/HashMap;

    const/16 v0, 0xf

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "0x96bd2dE90dED4dc0eAE22f32CAaD84DCd17556D7"

    .line 208
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "0xFB6e4aD97a0edf551d293e4a4569D303D00d71F3"

    move-object/from16 v3, v37

    .line 209
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "0x236ad1e443E466663DEc849Fc76eBE1FD732cEF9"

    move-object/from16 v4, v54

    .line 210
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "0xBF3fc87e4Be58b1784f79207Ee51442EDd9D452c"

    move-object/from16 v4, v89

    .line 211
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "0x2C2d1C3CaAe8DCF2559f4b0665860caBC1beCB06"

    move-object/from16 v4, v90

    .line 212
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "0x2ab22d5ba4D727bFe28fB648397382d6Ad6998A9"

    move-object/from16 v4, v91

    .line 213
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "0x343b4049C7adE11DA2890114258C68a12E1a40A3"

    move-object/from16 v4, v92

    .line 214
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v16

    const-string v1, "0x58b99f3E0d3eD5bA235Ab98BFAC8ef22029B7A18"

    move-object/from16 v4, v93

    .line 215
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v18

    const-string v1, "0x4025490C89E8Ec784818c9D9eD9c47f4dd64D763"

    move-object/from16 v4, v94

    .line 216
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v20

    const-string v1, "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6"

    .line 217
    invoke-static {v11, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v22

    const-string v1, "0xE92ED5c5CF07dbA509cDCfa56537809dF65d8d79"

    move-object/from16 v4, v95

    .line 218
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v24

    const-string v1, "0x20475fb3bC62eF6F1B8E78B9E3CA98428654Fa2D"

    move-object/from16 v4, v96

    .line 219
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v26

    const-string v1, "0xf7909CBC21E95000E3d0e14004aADdea2bb1796d"

    .line 220
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v28

    const-string v1, "0xE22219FE81cca8Ce0bda1B59Edd6F8d0f7ce9c41"

    move-object/from16 v4, v49

    .line 221
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v30

    const-string v1, "0x3EF1a2E073c4999930f212Cf13DB1391Eb4E7F47"

    move-object/from16 v4, v97

    .line 222
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v32

    .line 207
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->mumbaiPolygonContracts:Ljava/util/HashMap;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "TGJE4Er8hp55z99954oLcNYteu9z8SNFxu"

    .line 226
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const-string v1, "TUPokNzSio5QAbEMpHczFU55vqLHkgr1EX"

    move-object/from16 v4, v31

    .line 227
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "TAaLmkqVRxjUxAMn4P1jtP65mdnawsHeiz"

    .line 228
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "TVQzRfPCEg7XJQnqBHUb1GC3Sa5cuga7TW"

    move-object/from16 v3, v98

    .line 229
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "THiqSHjFJPfnBDYKfEkiEUw4xFqoWPkYtk"

    .line 230
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 225
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->nileTronContracts:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContract(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironment()Lcom/smedialink/storage/domain/model/common/Environment;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/common/Environment;->isDevelopment()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/common/Environment;->isStage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 238
    :goto_1
    sget-object v1, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider$WhenMappings;->$EnumSwitchMapping$0:[I

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

    .line 242
    sget-object p2, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->nileTronContracts:Ljava/util/HashMap;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->mainnetTronContracts:Ljava/util/HashMap;

    :goto_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_6

    :cond_4
    if-eqz v0, :cond_5

    .line 241
    sget-object p2, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->mumbaiPolygonContracts:Ljava/util/HashMap;

    goto :goto_3

    :cond_5
    sget-object p2, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->mainnetPolygonContracts:Ljava/util/HashMap;

    :goto_3
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_7

    .line 240
    sget-object p2, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->ropstenERC20Contracts:Ljava/util/HashMap;

    goto :goto_4

    :cond_7
    sget-object p2, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->mainnetERC20Contracts:Ljava/util/HashMap;

    :goto_4
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_6

    :cond_8
    if-eqz v0, :cond_9

    .line 239
    sget-object p2, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->ropstenBEP20Contracts:Ljava/util/HashMap;

    goto :goto_5

    :cond_9
    sget-object p2, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->mainnetBEP20Contracts:Ljava/util/HashMap;

    :goto_5
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_6
    return-object p1
.end method
