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

    .line 11
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
    .locals 4

    if-eqz p1, :cond_6

    const-string v0, "binance_payment_id"

    .line 17
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "cryptobox_id"

    .line 18
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    if-eqz p1, :cond_3

    new-instance p1, Lcom/iMe/storage/domain/model/google/DynamicLinkData$BinancePayment;

    invoke-direct {p1, v0}, Lcom/iMe/storage/domain/model/google/DynamicLinkData$BinancePayment;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    new-instance p1, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_5
    sget-object p1, Lcom/iMe/storage/domain/model/google/DynamicLinkData$NotSupported;->INSTANCE:Lcom/iMe/storage/domain/model/google/DynamicLinkData$NotSupported;

    goto :goto_3

    .line 25
    :cond_6
    sget-object p1, Lcom/iMe/storage/domain/model/google/DynamicLinkData$NotSupported;->INSTANCE:Lcom/iMe/storage/domain/model/google/DynamicLinkData$NotSupported;

    :goto_3
    return-object p1
.end method
