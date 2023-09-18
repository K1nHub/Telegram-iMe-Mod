.class public final Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;
.super Ljava/lang/Object;
.source "FiatValue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/FiatValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createUSDValue$default(Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;DILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue(D)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createUSDValue(D)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;
    .locals 3

    .line 13
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    .line 15
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-direct {v0, p1, p2, v2, v1}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
