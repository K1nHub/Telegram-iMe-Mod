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

.field public static final Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

.field public static final enum ONEINCH:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum PANCAKESWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum UNISWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum UNISWAP_V3:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field public static final enum UNKNOWN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNISWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNISWAP_V3:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->PANCAKESWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const-string v1, "UNISWAP_V2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNISWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 5
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const-string v1, "UNISWAP_V3"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->UNISWAP_V3:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 6
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const-string v1, "ONEINCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const-string v1, "ONEINCH_FUSION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const-string v1, "SYMBIOSIS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const-string v1, "PANCAKESWAP_V2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->PANCAKESWAP_V2:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;-><init>(Ljava/lang/String;I)V

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

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

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
