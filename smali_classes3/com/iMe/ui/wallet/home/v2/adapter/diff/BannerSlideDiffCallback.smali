.class public final Lcom/iMe/ui/wallet/home/v2/adapter/diff/BannerSlideDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "BannerSlideDiffCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/iMe/model/wallet/home/SlideItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/iMe/model/wallet/home/SlideItem;Lcom/iMe/model/wallet/home/SlideItem;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/iMe/model/wallet/home/SlideItem;

    check-cast p2, Lcom/iMe/model/wallet/home/SlideItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/adapter/diff/BannerSlideDiffCallback;->areContentsTheSame(Lcom/iMe/model/wallet/home/SlideItem;Lcom/iMe/model/wallet/home/SlideItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/iMe/model/wallet/home/SlideItem;Lcom/iMe/model/wallet/home/SlideItem;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/SlideItem;->getSlide()Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/BannerSlide;->getTitle()I

    move-result p1

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/SlideItem;->getSlide()Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/BannerSlide;->getTitle()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/iMe/model/wallet/home/SlideItem;

    check-cast p2, Lcom/iMe/model/wallet/home/SlideItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/adapter/diff/BannerSlideDiffCallback;->areItemsTheSame(Lcom/iMe/model/wallet/home/SlideItem;Lcom/iMe/model/wallet/home/SlideItem;)Z

    move-result p1

    return p1
.end method
