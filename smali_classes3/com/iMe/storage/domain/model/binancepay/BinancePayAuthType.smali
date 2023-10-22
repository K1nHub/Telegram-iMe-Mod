.class public final enum Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;
.super Ljava/lang/Enum;
.source "BinancePayAuthType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

.field public static final enum CODE:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

.field public static final Companion:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType$Companion;

.field public static final enum REFRESH_TOKEN:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->CODE:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->REFRESH_TOKEN:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    const-string v1, "CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->CODE:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    .line 5
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    const-string v1, "REFRESH_TOKEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->REFRESH_TOKEN:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    invoke-static {}, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->$values()[Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->$VALUES:[Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->$VALUES:[Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    return-object v0
.end method
