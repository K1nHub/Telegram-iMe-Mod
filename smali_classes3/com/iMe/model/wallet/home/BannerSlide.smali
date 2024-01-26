.class public abstract Lcom/iMe/model/wallet/home/BannerSlide;
.super Ljava/lang/Object;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/home/BannerSlide$Binance;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
    }
.end annotation


# instance fields
.field private final actionTextResId:I

.field private final animatedIconResId:I

.field private final longDescriptionResId:I

.field private final shortDescriptionResId:I

.field private final titleResId:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/iMe/model/wallet/home/BannerSlide;->titleResId:I

    .line 10
    iput p2, p0, Lcom/iMe/model/wallet/home/BannerSlide;->shortDescriptionResId:I

    .line 11
    iput p3, p0, Lcom/iMe/model/wallet/home/BannerSlide;->longDescriptionResId:I

    .line 12
    iput p4, p0, Lcom/iMe/model/wallet/home/BannerSlide;->actionTextResId:I

    .line 13
    iput p5, p0, Lcom/iMe/model/wallet/home/BannerSlide;->animatedIconResId:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public final getActionButtonText(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;)I
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;->INSTANCE:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/BannerSlide;->getActionTextResId()I

    move-result p1

    goto :goto_0

    .line 190
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->common_ok:I

    :goto_0
    return p1
.end method

.method public getActionTextResId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide;->actionTextResId:I

    return v0
.end method

.method public getAnimatedIconResId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide;->animatedIconResId:I

    return v0
.end method

.method public getLongDescriptionResId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide;->longDescriptionResId:I

    return v0
.end method

.method public getShortDescriptionResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide;->shortDescriptionResId:I

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide;->titleResId:I

    return v0
.end method
