.class public final enum Lcom/iMe/storage/domain/model/crypto/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;,
        Lcom/iMe/storage/domain/model/crypto/NetworkType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field public static final enum BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

.field public static final enum ETHEREUM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field public static final enum FANTOM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field public static final enum POLYGON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field public static final enum THE_OPEN_NETWORK:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field public static final enum TRON:Lcom/iMe/storage/domain/model/crypto/NetworkType;


# instance fields
.field private final backgroundColor:I

.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field private final logo:I

.field private final nativeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field private final scannerIcon:I

.field private final scannerName:I

.field private final shortName:I

.field private final smallIcon:I

.field private final textColor:I

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/NetworkType;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->FANTOM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->TRON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->THE_OPEN_NETWORK:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 37

    .line 24
    new-instance v13, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 25
    sget v3, Lcom/iMe/storage/R$drawable;->fork_ic_bnb_logo:I

    .line 26
    sget v4, Lcom/iMe/storage/R$drawable;->fork_ic_bnp_small_logo:I

    .line 27
    sget v5, Lcom/iMe/storage/R$string;->wallet_network_type_bep20:I

    .line 28
    sget v6, Lcom/iMe/storage/R$string;->wallet_network_type_bsc_short_name:I

    .line 29
    sget v7, Lcom/iMe/storage/R$string;->wallet_network_scanner_bsc:I

    .line 30
    sget v22, Lcom/iMe/storage/R$drawable;->fork_ic_etherscan:I

    .line 31
    sget v9, Lcom/iMe/storage/R$color;->wallet_network_type_bep20:I

    .line 33
    sget-object v11, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 34
    sget-object v36, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const-string v1, "BINANCE_SMART_CHAIN"

    const/4 v2, 0x0

    const v10, 0x106000b

    move-object v0, v13

    move/from16 v8, v22

    move-object/from16 v12, v36

    .line 24
    invoke-direct/range {v0 .. v12}, Lcom/iMe/storage/domain/model/crypto/NetworkType;-><init>(Ljava/lang/String;IIIIIIIIILcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    sput-object v13, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 37
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 38
    sget v17, Lcom/iMe/storage/R$drawable;->fork_ic_eth_logo:I

    .line 39
    sget v18, Lcom/iMe/storage/R$drawable;->fork_ic_erc_small_logo:I

    .line 40
    sget v19, Lcom/iMe/storage/R$string;->wallet_network_type_erc20:I

    .line 41
    sget v20, Lcom/iMe/storage/R$string;->wallet_network_type_eth_short_name:I

    .line 42
    sget v21, Lcom/iMe/storage/R$string;->wallet_network_scanner_eth:I

    .line 44
    sget v23, Lcom/iMe/storage/R$color;->wallet_network_type_erc20:I

    .line 46
    sget-object v25, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v15, "ETHEREUM"

    const/16 v16, 0x1

    const v24, 0x106000b

    move-object v14, v0

    move-object/from16 v26, v36

    .line 37
    invoke-direct/range {v14 .. v26}, Lcom/iMe/storage/domain/model/crypto/NetworkType;-><init>(Ljava/lang/String;IIIIIIIIILcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 50
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 51
    sget v26, Lcom/iMe/storage/R$drawable;->fork_ic_polygon_logo:I

    .line 52
    sget v27, Lcom/iMe/storage/R$drawable;->fork_ic_polygon_small_logo:I

    .line 53
    sget v28, Lcom/iMe/storage/R$string;->wallet_network_type_polygon:I

    .line 54
    sget v29, Lcom/iMe/storage/R$string;->wallet_network_type_polygon_short_name:I

    .line 55
    sget v30, Lcom/iMe/storage/R$string;->wallet_network_scanner_polygon:I

    .line 56
    sget v31, Lcom/iMe/storage/R$drawable;->fork_ic_polygon_26:I

    .line 57
    sget v32, Lcom/iMe/storage/R$color;->wallet_network_type_polygon:I

    .line 59
    sget-object v34, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v24, "POLYGON"

    const/16 v25, 0x2

    const v33, 0x106000b

    move-object/from16 v23, v0

    move-object/from16 v35, v36

    .line 50
    invoke-direct/range {v23 .. v35}, Lcom/iMe/storage/domain/model/crypto/NetworkType;-><init>(Ljava/lang/String;IIIIIIIIILcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 63
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 64
    sget v26, Lcom/iMe/storage/R$drawable;->fork_ic_fantom_logo:I

    .line 65
    sget v27, Lcom/iMe/storage/R$drawable;->fork_ic_fantom_small_logo:I

    .line 66
    sget v28, Lcom/iMe/storage/R$string;->wallet_network_type_fantom:I

    .line 67
    sget v29, Lcom/iMe/storage/R$string;->wallet_network_type_fantom_short_name:I

    .line 68
    sget v30, Lcom/iMe/storage/R$string;->wallet_network_scanner_fantom:I

    .line 69
    sget v31, Lcom/iMe/storage/R$drawable;->fork_ic_ftmscan:I

    .line 70
    sget v32, Lcom/iMe/storage/R$color;->wallet_network_type_fantom:I

    .line 72
    sget-object v34, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->FTM:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const-string v24, "FANTOM"

    const/16 v25, 0x3

    move-object/from16 v23, v0

    .line 63
    invoke-direct/range {v23 .. v35}, Lcom/iMe/storage/domain/model/crypto/NetworkType;-><init>(Ljava/lang/String;IIIIIIIIILcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->FANTOM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 76
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 77
    sget v4, Lcom/iMe/storage/R$drawable;->fork_ic_tron_logo:I

    .line 78
    sget v5, Lcom/iMe/storage/R$drawable;->fork_ic_tron_small_logo:I

    .line 79
    sget v6, Lcom/iMe/storage/R$string;->wallet_network_type_tron:I

    .line 80
    sget v7, Lcom/iMe/storage/R$string;->wallet_network_type_tron_short_name:I

    .line 81
    sget v8, Lcom/iMe/storage/R$string;->wallet_network_scanner_tron:I

    .line 82
    sget v9, Lcom/iMe/storage/R$drawable;->fork_ic_tronscan:I

    .line 83
    sget v10, Lcom/iMe/storage/R$color;->wallet_network_type_tron:I

    .line 85
    sget-object v12, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TRX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 86
    sget-object v13, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TRON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const-string v2, "TRON"

    const/4 v3, 0x4

    const v11, 0x106000b

    move-object v1, v0

    .line 76
    invoke-direct/range {v1 .. v13}, Lcom/iMe/storage/domain/model/crypto/NetworkType;-><init>(Ljava/lang/String;IIIIIIIIILcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->TRON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 89
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 90
    sget v17, Lcom/iMe/storage/R$drawable;->fork_ic_ton_logo:I

    .line 91
    sget v18, Lcom/iMe/storage/R$drawable;->fork_ic_ton_small_logo:I

    .line 92
    sget v19, Lcom/iMe/storage/R$string;->wallet_network_type_ton:I

    .line 93
    sget v20, Lcom/iMe/storage/R$string;->wallet_network_type_ton_short_name:I

    .line 94
    sget v21, Lcom/iMe/storage/R$string;->wallet_network_scanner_ton:I

    .line 95
    sget v22, Lcom/iMe/storage/R$drawable;->fork_ic_tonscan:I

    .line 96
    sget v23, Lcom/iMe/storage/R$color;->wallet_network_type_ton:I

    .line 98
    sget-object v25, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 99
    sget-object v26, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const-string v15, "THE_OPEN_NETWORK"

    const/16 v16, 0x5

    const v24, 0x106000b

    move-object v14, v0

    .line 89
    invoke-direct/range {v14 .. v26}, Lcom/iMe/storage/domain/model/crypto/NetworkType;-><init>(Ljava/lang/String;IIIIIIIIILcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->THE_OPEN_NETWORK:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->$values()[Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/NetworkType;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIILcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIII",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->logo:I

    .line 13
    iput p4, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->smallIcon:I

    .line 14
    iput p5, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->titleResId:I

    .line 15
    iput p6, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->shortName:I

    .line 16
    iput p7, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->scannerName:I

    .line 17
    iput p8, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->scannerIcon:I

    .line 18
    iput p9, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->backgroundColor:I

    .line 19
    iput p10, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->textColor:I

    .line 20
    iput-object p11, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->nativeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 21
    iput-object p12, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-void
.end method

.method public static final map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->backgroundColor:I

    return v0
.end method

.method public final getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public final getChainId()J
    .locals 5

    .line 109
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/iMe/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/storage/domain/model/common/EnvironmentInformation$Production;

    .line 110
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 123
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/Chain$Unknown;

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/iMe/storage/domain/model/crypto/Chain$Unknown;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain$Fantom$Main;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/Chain$Fantom$Main;

    goto :goto_0

    .line 122
    :cond_1
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain$Fantom$Testnet;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/Chain$Fantom$Testnet;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 118
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain$Polygon$Main;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/Chain$Polygon$Main;

    goto :goto_0

    .line 119
    :cond_3
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain$Polygon$Testnet;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/Chain$Polygon$Testnet;

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 115
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain$BSC$Main;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/Chain$BSC$Main;

    goto :goto_0

    .line 116
    :cond_5
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain$BSC$Testnet;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/Chain$BSC$Testnet;

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 112
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain$Ethereum$Main;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/Chain$Ethereum$Main;

    goto :goto_0

    .line 113
    :cond_7
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain$Ethereum$Ropsten;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/Chain$Ethereum$Ropsten;

    .line 124
    :goto_0
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Chain;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLogo()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->logo:I

    return v0
.end method

.method public final getNativeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->nativeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final getScannerIcon()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->scannerIcon:I

    return v0
.end method

.method public final getScannerName()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->scannerName:I

    return v0
.end method

.method public final getShortName()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->shortName:I

    return v0
.end method

.method public final getSmallIcon()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->smallIcon:I

    return v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->textColor:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->titleResId:I

    return v0
.end method

.method public final isBSC()Z
    .locals 1

    .line 103
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEVM()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEthereum()Z
    .locals 1

    .line 102
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPolygon()Z
    .locals 1

    .line 104
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
