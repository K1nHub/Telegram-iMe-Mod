.class public final Lcom/iMe/storage/domain/model/google/DynamicLinkData$Companion;
.super Ljava/lang/Object;
.source "DynamicLinkData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/google/DynamicLinkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/google/DynamicLinkData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseDynamicLink(Landroid/net/Uri;)Lcom/iMe/storage/domain/model/google/DynamicLinkData;
    .locals 1

    if-eqz p1, :cond_3

    const-string v0, "binance_payment_id"

    .line 15
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$BinancePayment;

    invoke-direct {v0, p1}, Lcom/iMe/storage/domain/model/google/DynamicLinkData$BinancePayment;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_2
    sget-object v0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$NotSupported;->INSTANCE:Lcom/iMe/storage/domain/model/google/DynamicLinkData$NotSupported;

    goto :goto_1

    .line 21
    :cond_3
    sget-object v0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$NotSupported;->INSTANCE:Lcom/iMe/storage/domain/model/google/DynamicLinkData$NotSupported;

    :goto_1
    return-object v0
.end method
