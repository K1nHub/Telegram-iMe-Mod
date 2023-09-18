.class public final enum Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;
.super Ljava/lang/Enum;
.source "TransactionProcessingType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum BITCOIN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

.field public static final enum ETHEREUM:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum FANTOM:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum ONEINCH:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum PANCAKESWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum POLYGON:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum SIMPLEX:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum THE_OPEN_NETWORK:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum TRON:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum UNISWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum UNISWAP_V3:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum UNKNOWN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;


# instance fields
.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->SIMPLEX:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->ETHEREUM:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNISWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNISWAP_V3:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->PANCAKESWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->POLYGON:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->THE_OPEN_NETWORK:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->FANTOM:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->TRON:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->BITCOIN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_simplex:I

    const-string v2, "SIMPLEX"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->SIMPLEX:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_eth:I

    const-string v2, "ETHEREUM"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->ETHEREUM:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_uniswap_v2:I

    const-string v2, "UNISWAP_V2"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNISWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_uniswap_v3:I

    const-string v2, "UNISWAP_V3"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNISWAP_V3:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 11
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_1inch:I

    const-string v2, "ONEINCH"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 12
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_1inch_fusion:I

    const-string v2, "ONEINCH_FUSION"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 13
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_symbiosis:I

    const-string v2, "SYMBIOSIS"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 14
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_pancakeswap_v2:I

    const-string v2, "PANCAKESWAP_V2"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->PANCAKESWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 15
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_bsc:I

    const-string v2, "BINANCE_SMART_CHAIN"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_polygon:I

    const-string v2, "POLYGON"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->POLYGON:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 17
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_ton:I

    const-string v2, "THE_OPEN_NETWORK"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->THE_OPEN_NETWORK:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 18
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->wallet_network_type_fantom:I

    const-string v2, "FANTOM"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->FANTOM:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 19
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->wallet_network_type_tron:I

    const-string v2, "TRON"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->TRON:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 20
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->wallet_network_type_bitcoin:I

    const-string v2, "BITCOIN"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->BITCOIN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 21
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget v1, Lcom/iMe/storage/R$string;->processing_type_unknown:I

    const-string v2, "UNKNOWN"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->$values()[Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->title:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object v0
.end method


# virtual methods
.method public final getTitle()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->title:I

    return v0
.end method
