.class public abstract Lcom/iMe/model/wallet/home/BannerSlide$Binance;
.super Lcom/iMe/model/wallet/home/BannerSlide;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/BannerSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Binance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/home/BannerSlide$Binance$Companion;,
        Lcom/iMe/model/wallet/home/BannerSlide$Binance$FAQ;,
        Lcom/iMe/model/wallet/home/BannerSlide$Binance$Information;,
        Lcom/iMe/model/wallet/home/BannerSlide$Binance$Marketplace;,
        Lcom/iMe/model/wallet/home/BannerSlide$Binance$OperationWithoutFee;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/model/wallet/home/BannerSlide$Binance$Companion;


# instance fields
.field private final actionTextResId:I

.field private final animatedIconResId:I

.field private final longDescriptionResId:I

.field private final shortDescriptionResId:I

.field private final titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/home/BannerSlide$Binance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->Companion:Lcom/iMe/model/wallet/home/BannerSlide$Binance$Companion;

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

    .line 135
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    iput p1, p0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->titleResId:I

    .line 131
    iput p2, p0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->shortDescriptionResId:I

    .line 132
    iput p3, p0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->longDescriptionResId:I

    .line 133
    iput p4, p0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->actionTextResId:I

    .line 134
    iput p5, p0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->animatedIconResId:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/iMe/model/wallet/home/BannerSlide$Binance;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public getActionTextResId()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->actionTextResId:I

    return v0
.end method

.method public getAnimatedIconResId()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->animatedIconResId:I

    return v0
.end method

.method public getLongDescriptionResId()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->longDescriptionResId:I

    return v0
.end method

.method public getShortDescriptionResId()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->shortDescriptionResId:I

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide$Binance;->titleResId:I

    return v0
.end method
