.class public abstract Lcom/iMe/model/wallet/home/BannerSlide$Crypto;
.super Lcom/iMe/model/wallet/home/BannerSlide;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Crypto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AscendeEX;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorGiveaway;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$AttractorTestnet;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Companion;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$CryptoTransfers;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$FAQ;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Gate;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$MultiNetworks;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$NonCustodial;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Safe;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Staking;,
        Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Swap;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Companion;


# instance fields
.field private final actionTextResId:I

.field private final animatedIconResId:I

.field private final longDescriptionResId:I

.field private final shortDescriptionResId:I

.field private final titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->Companion:Lcom/iMe/model/wallet/home/BannerSlide$Crypto$Companion;

    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    iput p1, p0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->titleResId:I

    .line 18
    iput p2, p0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->shortDescriptionResId:I

    .line 19
    iput p3, p0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->longDescriptionResId:I

    .line 20
    iput p4, p0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->actionTextResId:I

    .line 21
    iput p5, p0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->animatedIconResId:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 20
    sget p4, Lorg/telegram/messenger/R$string;->common_next:I

    :cond_0
    move v4, p4

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public getActionTextResId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->actionTextResId:I

    return v0
.end method

.method public getAnimatedIconResId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->animatedIconResId:I

    return v0
.end method

.method public getLongDescriptionResId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->longDescriptionResId:I

    return v0
.end method

.method public getShortDescriptionResId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->shortDescriptionResId:I

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide$Crypto;->titleResId:I

    return v0
.end method
