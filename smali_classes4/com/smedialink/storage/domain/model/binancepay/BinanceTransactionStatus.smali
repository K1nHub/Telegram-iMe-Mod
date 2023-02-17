.class public final enum Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;
.super Ljava/lang/Enum;
.source "BinanceTransactionStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

.field public static final Companion:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;

.field public static final enum INITIAL:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

.field public static final enum PAID:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

.field public static final enum PENDING:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;


# instance fields
.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->INITIAL:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->PENDING:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->PAID:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    sget v1, Lcom/smedialink/storage/R$string;->status_pending:I

    const-string v2, "INITIAL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->INITIAL:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    .line 8
    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    const-string v2, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->PENDING:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    .line 9
    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    sget v1, Lcom/smedialink/storage/R$string;->status_ok:I

    const-string v2, "PAID"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->PAID:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    invoke-static {}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->$values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->Companion:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;

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

    iput p3, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->title:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    return-object v0
.end method


# virtual methods
.method public final getTitle()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->title:I

    return v0
.end method
