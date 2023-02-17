.class public final enum Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;
.super Ljava/lang/Enum;
.source "BinanceTransactionDirection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

.field public static final Companion:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;

.field public static final enum IN:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

.field public static final enum OUT:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;


# instance fields
.field private title:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->IN:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->OUT:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    sget v1, Lcom/smedialink/storage/R$string;->wallet_binance_pay_transaction_direction_in_title:I

    const-string v2, "IN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->IN:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    .line 8
    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    sget v1, Lcom/smedialink/storage/R$string;->wallet_binance_pay_transaction_direction_out_title:I

    const-string v2, "OUT"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->OUT:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    invoke-static {}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->$values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->$VALUES:[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->Companion:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;

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

    iput p3, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->title:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->$VALUES:[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    return-object v0
.end method


# virtual methods
.method public final getTitle()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->title:I

    return v0
.end method

.method public final setTitle(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;->title:I

    return-void
.end method
