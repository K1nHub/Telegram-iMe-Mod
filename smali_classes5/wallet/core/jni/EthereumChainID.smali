.class public final enum Lwallet/core/jni/EthereumChainID;
.super Ljava/lang/Enum;
.source "EthereumChainID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/EthereumChainID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/EthereumChainID;

.field public static final enum ARBITRUM:Lwallet/core/jni/EthereumChainID;

.field public static final enum AURORA:Lwallet/core/jni/EthereumChainID;

.field public static final enum AVALANCHEC:Lwallet/core/jni/EthereumChainID;

.field public static final enum BOBA:Lwallet/core/jni/EthereumChainID;

.field public static final enum CALLISTO:Lwallet/core/jni/EthereumChainID;

.field public static final enum CELO:Lwallet/core/jni/EthereumChainID;

.field public static final enum CLASSIC:Lwallet/core/jni/EthereumChainID;

.field public static final enum CRONOS:Lwallet/core/jni/EthereumChainID;

.field public static final enum ETHEREUM:Lwallet/core/jni/EthereumChainID;

.field public static final enum EVMOS:Lwallet/core/jni/EthereumChainID;

.field public static final enum FANTOM:Lwallet/core/jni/EthereumChainID;

.field public static final enum GOCHAIN:Lwallet/core/jni/EthereumChainID;

.field public static final enum HECO:Lwallet/core/jni/EthereumChainID;

.field public static final enum KAVAEVM:Lwallet/core/jni/EthereumChainID;

.field public static final enum KCC:Lwallet/core/jni/EthereumChainID;

.field public static final enum KLAYTN:Lwallet/core/jni/EthereumChainID;

.field public static final enum METER:Lwallet/core/jni/EthereumChainID;

.field public static final enum METIS:Lwallet/core/jni/EthereumChainID;

.field public static final enum MOONBEAM:Lwallet/core/jni/EthereumChainID;

.field public static final enum MOONRIVER:Lwallet/core/jni/EthereumChainID;

.field public static final enum OKC:Lwallet/core/jni/EthereumChainID;

.field public static final enum OPTIMISM:Lwallet/core/jni/EthereumChainID;

.field public static final enum POA:Lwallet/core/jni/EthereumChainID;

.field public static final enum POLYGON:Lwallet/core/jni/EthereumChainID;

.field public static final enum POLYGONZKEVM:Lwallet/core/jni/EthereumChainID;

.field public static final enum RONIN:Lwallet/core/jni/EthereumChainID;

.field public static final enum SMARTBCH:Lwallet/core/jni/EthereumChainID;

.field public static final enum SMARTCHAIN:Lwallet/core/jni/EthereumChainID;

.field public static final enum THUNDERTOKEN:Lwallet/core/jni/EthereumChainID;

.field public static final enum TOMOCHAIN:Lwallet/core/jni/EthereumChainID;

.field public static final enum VECHAIN:Lwallet/core/jni/EthereumChainID;

.field public static final enum WANCHAIN:Lwallet/core/jni/EthereumChainID;

.field public static final enum XDAI:Lwallet/core/jni/EthereumChainID;

.field public static final enum ZKSYNC:Lwallet/core/jni/EthereumChainID;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 18
    new-instance v0, Lwallet/core/jni/EthereumChainID;

    const-string v1, "ETHEREUM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/EthereumChainID;->ETHEREUM:Lwallet/core/jni/EthereumChainID;

    .line 19
    new-instance v1, Lwallet/core/jni/EthereumChainID;

    const-string v4, "CLASSIC"

    const/16 v5, 0x3d

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/EthereumChainID;->CLASSIC:Lwallet/core/jni/EthereumChainID;

    .line 20
    new-instance v4, Lwallet/core/jni/EthereumChainID;

    const-string v5, "POA"

    const/4 v6, 0x2

    const/16 v7, 0x63

    invoke-direct {v4, v5, v6, v7}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/EthereumChainID;->POA:Lwallet/core/jni/EthereumChainID;

    .line 21
    new-instance v5, Lwallet/core/jni/EthereumChainID;

    const-string v7, "VECHAIN"

    const/4 v8, 0x3

    const/16 v9, 0x4a

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/EthereumChainID;->VECHAIN:Lwallet/core/jni/EthereumChainID;

    .line 22
    new-instance v7, Lwallet/core/jni/EthereumChainID;

    const-string v9, "CALLISTO"

    const/4 v10, 0x4

    const/16 v11, 0x334

    invoke-direct {v7, v9, v10, v11}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/EthereumChainID;->CALLISTO:Lwallet/core/jni/EthereumChainID;

    .line 23
    new-instance v9, Lwallet/core/jni/EthereumChainID;

    const-string v11, "TOMOCHAIN"

    const/4 v12, 0x5

    const/16 v13, 0x58

    invoke-direct {v9, v11, v12, v13}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/EthereumChainID;->TOMOCHAIN:Lwallet/core/jni/EthereumChainID;

    .line 24
    new-instance v11, Lwallet/core/jni/EthereumChainID;

    const-string v13, "POLYGON"

    const/4 v14, 0x6

    const/16 v15, 0x89

    invoke-direct {v11, v13, v14, v15}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/EthereumChainID;->POLYGON:Lwallet/core/jni/EthereumChainID;

    .line 25
    new-instance v13, Lwallet/core/jni/EthereumChainID;

    const-string v15, "OKC"

    const/4 v14, 0x7

    const/16 v12, 0x42

    invoke-direct {v13, v15, v14, v12}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/EthereumChainID;->OKC:Lwallet/core/jni/EthereumChainID;

    .line 26
    new-instance v12, Lwallet/core/jni/EthereumChainID;

    const-string v15, "THUNDERTOKEN"

    const/16 v14, 0x8

    const/16 v10, 0x6c

    invoke-direct {v12, v15, v14, v10}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/EthereumChainID;->THUNDERTOKEN:Lwallet/core/jni/EthereumChainID;

    .line 27
    new-instance v10, Lwallet/core/jni/EthereumChainID;

    const-string v15, "GOCHAIN"

    const/16 v14, 0x9

    const/16 v8, 0x3c

    invoke-direct {v10, v15, v14, v8}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/EthereumChainID;->GOCHAIN:Lwallet/core/jni/EthereumChainID;

    .line 28
    new-instance v8, Lwallet/core/jni/EthereumChainID;

    const-string v15, "METER"

    const/16 v14, 0xa

    const/16 v6, 0x52

    invoke-direct {v8, v15, v14, v6}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/EthereumChainID;->METER:Lwallet/core/jni/EthereumChainID;

    .line 29
    new-instance v6, Lwallet/core/jni/EthereumChainID;

    const-string v15, "CELO"

    const/16 v3, 0xb

    const v2, 0xa4ec

    invoke-direct {v6, v15, v3, v2}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/EthereumChainID;->CELO:Lwallet/core/jni/EthereumChainID;

    .line 30
    new-instance v2, Lwallet/core/jni/EthereumChainID;

    const-string v15, "WANCHAIN"

    const/16 v3, 0xc

    const/16 v14, 0x378

    invoke-direct {v2, v15, v3, v14}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/EthereumChainID;->WANCHAIN:Lwallet/core/jni/EthereumChainID;

    .line 31
    new-instance v14, Lwallet/core/jni/EthereumChainID;

    const-string v15, "CRONOS"

    const/16 v3, 0xd

    move-object/from16 v16, v2

    const/16 v2, 0x19

    invoke-direct {v14, v15, v3, v2}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/EthereumChainID;->CRONOS:Lwallet/core/jni/EthereumChainID;

    .line 32
    new-instance v15, Lwallet/core/jni/EthereumChainID;

    const-string v3, "OPTIMISM"

    const/16 v2, 0xe

    move-object/from16 v17, v14

    const/16 v14, 0xa

    invoke-direct {v15, v3, v2, v14}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lwallet/core/jni/EthereumChainID;->OPTIMISM:Lwallet/core/jni/EthereumChainID;

    .line 33
    new-instance v3, Lwallet/core/jni/EthereumChainID;

    const-string v14, "XDAI"

    const/16 v2, 0xf

    move-object/from16 v18, v15

    const/16 v15, 0x64

    invoke-direct {v3, v14, v2, v15}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/EthereumChainID;->XDAI:Lwallet/core/jni/EthereumChainID;

    .line 34
    new-instance v14, Lwallet/core/jni/EthereumChainID;

    const-string v15, "SMARTBCH"

    const/16 v2, 0x10

    move-object/from16 v19, v3

    const/16 v3, 0x2710

    invoke-direct {v14, v15, v2, v3}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/EthereumChainID;->SMARTBCH:Lwallet/core/jni/EthereumChainID;

    .line 35
    new-instance v3, Lwallet/core/jni/EthereumChainID;

    const-string v15, "FANTOM"

    const/16 v2, 0x11

    move-object/from16 v20, v14

    const/16 v14, 0xfa

    invoke-direct {v3, v15, v2, v14}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/EthereumChainID;->FANTOM:Lwallet/core/jni/EthereumChainID;

    .line 36
    new-instance v14, Lwallet/core/jni/EthereumChainID;

    const-string v15, "BOBA"

    const/16 v2, 0x12

    move-object/from16 v21, v3

    const/16 v3, 0x120

    invoke-direct {v14, v15, v2, v3}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/EthereumChainID;->BOBA:Lwallet/core/jni/EthereumChainID;

    .line 37
    new-instance v3, Lwallet/core/jni/EthereumChainID;

    const-string v15, "KCC"

    const/16 v2, 0x13

    move-object/from16 v22, v14

    const/16 v14, 0x141

    invoke-direct {v3, v15, v2, v14}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/EthereumChainID;->KCC:Lwallet/core/jni/EthereumChainID;

    .line 38
    new-instance v14, Lwallet/core/jni/EthereumChainID;

    const-string v15, "ZKSYNC"

    const/16 v2, 0x14

    move-object/from16 v23, v3

    const/16 v3, 0x144

    invoke-direct {v14, v15, v2, v3}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/EthereumChainID;->ZKSYNC:Lwallet/core/jni/EthereumChainID;

    .line 39
    new-instance v3, Lwallet/core/jni/EthereumChainID;

    const-string v15, "HECO"

    const/16 v2, 0x15

    move-object/from16 v24, v14

    const/16 v14, 0x80

    invoke-direct {v3, v15, v2, v14}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/EthereumChainID;->HECO:Lwallet/core/jni/EthereumChainID;

    .line 40
    new-instance v2, Lwallet/core/jni/EthereumChainID;

    const-string v14, "METIS"

    const/16 v15, 0x16

    move-object/from16 v25, v3

    const/16 v3, 0x440

    invoke-direct {v2, v14, v15, v3}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/EthereumChainID;->METIS:Lwallet/core/jni/EthereumChainID;

    .line 41
    new-instance v3, Lwallet/core/jni/EthereumChainID;

    const-string v14, "MOONBEAM"

    const/16 v15, 0x17

    move-object/from16 v26, v2

    const/16 v2, 0x504

    invoke-direct {v3, v14, v15, v2}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/EthereumChainID;->MOONBEAM:Lwallet/core/jni/EthereumChainID;

    .line 42
    new-instance v2, Lwallet/core/jni/EthereumChainID;

    const-string v14, "MOONRIVER"

    const/16 v15, 0x18

    move-object/from16 v27, v3

    const/16 v3, 0x505

    invoke-direct {v2, v14, v15, v3}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/EthereumChainID;->MOONRIVER:Lwallet/core/jni/EthereumChainID;

    .line 43
    new-instance v3, Lwallet/core/jni/EthereumChainID;

    const-string v14, "POLYGONZKEVM"

    const/16 v15, 0x58e

    move-object/from16 v28, v2

    const/16 v2, 0x19

    invoke-direct {v3, v14, v2, v15}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/EthereumChainID;->POLYGONZKEVM:Lwallet/core/jni/EthereumChainID;

    .line 44
    new-instance v2, Lwallet/core/jni/EthereumChainID;

    const-string v14, "RONIN"

    const/16 v15, 0x1a

    move-object/from16 v29, v3

    const/16 v3, 0x7e4

    invoke-direct {v2, v14, v15, v3}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/EthereumChainID;->RONIN:Lwallet/core/jni/EthereumChainID;

    .line 45
    new-instance v3, Lwallet/core/jni/EthereumChainID;

    const-string v14, "KAVAEVM"

    const/16 v15, 0x1b

    move-object/from16 v30, v2

    const/16 v2, 0x8ae

    invoke-direct {v3, v14, v15, v2}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/EthereumChainID;->KAVAEVM:Lwallet/core/jni/EthereumChainID;

    .line 46
    new-instance v2, Lwallet/core/jni/EthereumChainID;

    const-string v14, "KLAYTN"

    const/16 v15, 0x1c

    move-object/from16 v31, v3

    const/16 v3, 0x2019

    invoke-direct {v2, v14, v15, v3}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/EthereumChainID;->KLAYTN:Lwallet/core/jni/EthereumChainID;

    .line 47
    new-instance v3, Lwallet/core/jni/EthereumChainID;

    const-string v14, "AVALANCHEC"

    const/16 v15, 0x1d

    move-object/from16 v32, v2

    const v2, 0xa86a

    invoke-direct {v3, v14, v15, v2}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/EthereumChainID;->AVALANCHEC:Lwallet/core/jni/EthereumChainID;

    .line 48
    new-instance v2, Lwallet/core/jni/EthereumChainID;

    const-string v14, "EVMOS"

    const/16 v15, 0x1e

    move-object/from16 v33, v3

    const/16 v3, 0x2329

    invoke-direct {v2, v14, v15, v3}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/EthereumChainID;->EVMOS:Lwallet/core/jni/EthereumChainID;

    .line 49
    new-instance v3, Lwallet/core/jni/EthereumChainID;

    const-string v14, "ARBITRUM"

    const/16 v15, 0x1f

    move-object/from16 v34, v2

    const v2, 0xa4b1

    invoke-direct {v3, v14, v15, v2}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/EthereumChainID;->ARBITRUM:Lwallet/core/jni/EthereumChainID;

    .line 50
    new-instance v2, Lwallet/core/jni/EthereumChainID;

    const-string v14, "SMARTCHAIN"

    const/16 v15, 0x20

    move-object/from16 v35, v3

    const/16 v3, 0x38

    invoke-direct {v2, v14, v15, v3}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/EthereumChainID;->SMARTCHAIN:Lwallet/core/jni/EthereumChainID;

    .line 51
    new-instance v3, Lwallet/core/jni/EthereumChainID;

    const-string v14, "AURORA"

    const/16 v15, 0x21

    move-object/from16 v36, v2

    const v2, 0x4e454152    # 8.273481E8f

    invoke-direct {v3, v14, v15, v2}, Lwallet/core/jni/EthereumChainID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/EthereumChainID;->AURORA:Lwallet/core/jni/EthereumChainID;

    const/16 v2, 0x22

    new-array v2, v2, [Lwallet/core/jni/EthereumChainID;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v3, v2, v0

    .line 17
    sput-object v2, Lwallet/core/jni/EthereumChainID;->$VALUES:[Lwallet/core/jni/EthereumChainID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lwallet/core/jni/EthereumChainID;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/EthereumChainID;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 94
    :sswitch_0
    sget-object p0, Lwallet/core/jni/EthereumChainID;->AURORA:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 90
    :sswitch_1
    sget-object p0, Lwallet/core/jni/EthereumChainID;->AVALANCHEC:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 72
    :sswitch_2
    sget-object p0, Lwallet/core/jni/EthereumChainID;->CELO:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 92
    :sswitch_3
    sget-object p0, Lwallet/core/jni/EthereumChainID;->ARBITRUM:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 77
    :sswitch_4
    sget-object p0, Lwallet/core/jni/EthereumChainID;->SMARTBCH:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 91
    :sswitch_5
    sget-object p0, Lwallet/core/jni/EthereumChainID;->EVMOS:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 89
    :sswitch_6
    sget-object p0, Lwallet/core/jni/EthereumChainID;->KLAYTN:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 88
    :sswitch_7
    sget-object p0, Lwallet/core/jni/EthereumChainID;->KAVAEVM:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 87
    :sswitch_8
    sget-object p0, Lwallet/core/jni/EthereumChainID;->RONIN:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 86
    :sswitch_9
    sget-object p0, Lwallet/core/jni/EthereumChainID;->POLYGONZKEVM:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 85
    :sswitch_a
    sget-object p0, Lwallet/core/jni/EthereumChainID;->MOONRIVER:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 84
    :sswitch_b
    sget-object p0, Lwallet/core/jni/EthereumChainID;->MOONBEAM:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 83
    :sswitch_c
    sget-object p0, Lwallet/core/jni/EthereumChainID;->METIS:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 73
    :sswitch_d
    sget-object p0, Lwallet/core/jni/EthereumChainID;->WANCHAIN:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 65
    :sswitch_e
    sget-object p0, Lwallet/core/jni/EthereumChainID;->CALLISTO:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 81
    :sswitch_f
    sget-object p0, Lwallet/core/jni/EthereumChainID;->ZKSYNC:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 80
    :sswitch_10
    sget-object p0, Lwallet/core/jni/EthereumChainID;->KCC:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 79
    :sswitch_11
    sget-object p0, Lwallet/core/jni/EthereumChainID;->BOBA:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 78
    :sswitch_12
    sget-object p0, Lwallet/core/jni/EthereumChainID;->FANTOM:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 67
    :sswitch_13
    sget-object p0, Lwallet/core/jni/EthereumChainID;->POLYGON:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 82
    :sswitch_14
    sget-object p0, Lwallet/core/jni/EthereumChainID;->HECO:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 69
    :sswitch_15
    sget-object p0, Lwallet/core/jni/EthereumChainID;->THUNDERTOKEN:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 76
    :sswitch_16
    sget-object p0, Lwallet/core/jni/EthereumChainID;->XDAI:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 63
    :sswitch_17
    sget-object p0, Lwallet/core/jni/EthereumChainID;->POA:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 66
    :sswitch_18
    sget-object p0, Lwallet/core/jni/EthereumChainID;->TOMOCHAIN:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 71
    :sswitch_19
    sget-object p0, Lwallet/core/jni/EthereumChainID;->METER:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 64
    :sswitch_1a
    sget-object p0, Lwallet/core/jni/EthereumChainID;->VECHAIN:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 68
    :sswitch_1b
    sget-object p0, Lwallet/core/jni/EthereumChainID;->OKC:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 62
    :sswitch_1c
    sget-object p0, Lwallet/core/jni/EthereumChainID;->CLASSIC:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 70
    :sswitch_1d
    sget-object p0, Lwallet/core/jni/EthereumChainID;->GOCHAIN:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 93
    :sswitch_1e
    sget-object p0, Lwallet/core/jni/EthereumChainID;->SMARTCHAIN:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 74
    :sswitch_1f
    sget-object p0, Lwallet/core/jni/EthereumChainID;->CRONOS:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 75
    :sswitch_20
    sget-object p0, Lwallet/core/jni/EthereumChainID;->OPTIMISM:Lwallet/core/jni/EthereumChainID;

    return-object p0

    .line 61
    :sswitch_21
    sget-object p0, Lwallet/core/jni/EthereumChainID;->ETHEREUM:Lwallet/core/jni/EthereumChainID;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_21
        0xa -> :sswitch_20
        0x19 -> :sswitch_1f
        0x38 -> :sswitch_1e
        0x3c -> :sswitch_1d
        0x3d -> :sswitch_1c
        0x42 -> :sswitch_1b
        0x4a -> :sswitch_1a
        0x52 -> :sswitch_19
        0x58 -> :sswitch_18
        0x63 -> :sswitch_17
        0x64 -> :sswitch_16
        0x6c -> :sswitch_15
        0x80 -> :sswitch_14
        0x89 -> :sswitch_13
        0xfa -> :sswitch_12
        0x120 -> :sswitch_11
        0x141 -> :sswitch_10
        0x144 -> :sswitch_f
        0x334 -> :sswitch_e
        0x378 -> :sswitch_d
        0x440 -> :sswitch_c
        0x504 -> :sswitch_b
        0x505 -> :sswitch_a
        0x58e -> :sswitch_9
        0x7e4 -> :sswitch_8
        0x8ae -> :sswitch_7
        0x2019 -> :sswitch_6
        0x2329 -> :sswitch_5
        0x2710 -> :sswitch_4
        0xa4b1 -> :sswitch_3
        0xa4ec -> :sswitch_2
        0xa86a -> :sswitch_1
        0x4e454152 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/EthereumChainID;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 17
    const-class v0, Lwallet/core/jni/EthereumChainID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/EthereumChainID;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/EthereumChainID;
    .locals 1

    .line 17
    sget-object v0, Lwallet/core/jni/EthereumChainID;->$VALUES:[Lwallet/core/jni/EthereumChainID;

    invoke-virtual {v0}, [Lwallet/core/jni/EthereumChainID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/EthereumChainID;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 57
    iget v0, p0, Lwallet/core/jni/EthereumChainID;->value:I

    return v0
.end method
