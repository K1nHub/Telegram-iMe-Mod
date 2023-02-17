.class public final enum Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;
.super Ljava/lang/Enum;
.source "BinanceVerificationStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

.field public static final Companion:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus$Companion;

.field public static final enum IN_PROGRESS:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

.field public static final enum NONE:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

.field public static final enum PASS:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

.field public static final enum REJECT:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->PASS:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->REJECT:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->NONE:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->IN_PROGRESS:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    const-string v1, "PASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->PASS:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    .line 5
    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    const-string v1, "REJECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->REJECT:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    .line 6
    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->NONE:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->IN_PROGRESS:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    invoke-static {}, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->$values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->Companion:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    return-object v0
.end method


# virtual methods
.method public final isVerified()Z
    .locals 1

    .line 9
    sget-object v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;->PASS:Lcom/smedialink/storage/domain/model/binancepay/BinanceVerificationStatus;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
