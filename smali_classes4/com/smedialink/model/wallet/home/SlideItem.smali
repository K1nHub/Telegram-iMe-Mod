.class public final Lcom/smedialink/model/wallet/home/SlideItem;
.super Ljava/lang/Object;
.source "SlideItem.kt"


# instance fields
.field private final itemType:I

.field private final slide:Lcom/smedialink/model/wallet/home/BannerSlide;


# direct methods
.method public constructor <init>(Lcom/smedialink/model/wallet/home/BannerSlide;)V
    .locals 1

    const-string v0, "slide"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/smedialink/model/wallet/home/SlideItem;->slide:Lcom/smedialink/model/wallet/home/BannerSlide;

    .line 10
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SLIDE:I

    iput p1, p0, Lcom/smedialink/model/wallet/home/SlideItem;->itemType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/home/SlideItem;Lcom/smedialink/model/wallet/home/BannerSlide;ILjava/lang/Object;)Lcom/smedialink/model/wallet/home/SlideItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/smedialink/model/wallet/home/SlideItem;->slide:Lcom/smedialink/model/wallet/home/BannerSlide;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/model/wallet/home/SlideItem;->copy(Lcom/smedialink/model/wallet/home/BannerSlide;)Lcom/smedialink/model/wallet/home/SlideItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/model/wallet/home/BannerSlide;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/SlideItem;->slide:Lcom/smedialink/model/wallet/home/BannerSlide;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/model/wallet/home/BannerSlide;)Lcom/smedialink/model/wallet/home/SlideItem;
    .locals 1

    const-string v0, "slide"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/home/SlideItem;

    invoke-direct {v0, p1}, Lcom/smedialink/model/wallet/home/SlideItem;-><init>(Lcom/smedialink/model/wallet/home/BannerSlide;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/home/SlideItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/home/SlideItem;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/SlideItem;->slide:Lcom/smedialink/model/wallet/home/BannerSlide;

    iget-object p1, p1, Lcom/smedialink/model/wallet/home/SlideItem;->slide:Lcom/smedialink/model/wallet/home/BannerSlide;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getItemType()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/model/wallet/home/SlideItem;->itemType:I

    return v0
.end method

.method public final getSlide()Lcom/smedialink/model/wallet/home/BannerSlide;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/SlideItem;->slide:Lcom/smedialink/model/wallet/home/BannerSlide;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/SlideItem;->slide:Lcom/smedialink/model/wallet/home/BannerSlide;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlideItem(slide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/SlideItem;->slide:Lcom/smedialink/model/wallet/home/BannerSlide;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
