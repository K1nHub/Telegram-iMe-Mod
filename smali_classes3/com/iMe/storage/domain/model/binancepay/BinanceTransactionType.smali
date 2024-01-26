.class public final enum Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;
.super Ljava/lang/Enum;
.source "BinanceTransactionType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

.field public static final enum BINANCE_PAY_TRANSFER:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

.field public static final enum CONVERT_COINS:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

.field public static final Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType$Companion;

.field public static final enum UNKNOWN:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->BINANCE_PAY_TRANSFER:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->CONVERT_COINS:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->UNKNOWN:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    const-string v1, "BINANCE_PAY_TRANSFER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->BINANCE_PAY_TRANSFER:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    .line 5
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    const-string v1, "CONVERT_COINS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->CONVERT_COINS:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    .line 6
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->UNKNOWN:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    invoke-static {}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->$values()[Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->$VALUES:[Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->$VALUES:[Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    return-object v0
.end method
