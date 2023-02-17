.class public final Lcom/smedialink/ui/adapter/provider/BannerProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "BannerProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/wallet/home/BannerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private bannerOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

.field private bannerScrollState:Landroid/os/Parcelable;

.field private final bannerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

.field private final bannersDiffCallback:Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BannerSlideDiffCallback;

.field private final bannersRecycleAdapter:Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;)V
    .locals 1

    const-string v0, "bannersRecycleAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->bannersRecycleAdapter:Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

    .line 31
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->BANNERS:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->itemViewType:I

    .line 32
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_banners:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->layoutId:I

    .line 35
    new-instance p1, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {p1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->bannerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 36
    new-instance p1, Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BannerSlideDiffCallback;

    invoke-direct {p1}, Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BannerSlideDiffCallback;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->bannersDiffCallback:Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BannerSlideDiffCallback;

    return-void
.end method

.method public static final synthetic access$getBannerScrollState$p(Lcom/smedialink/ui/adapter/provider/BannerProvider;)Landroid/os/Parcelable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->bannerScrollState:Landroid/os/Parcelable;

    return-object p0
.end method

.method public static final synthetic access$getBannerSnapHelper$p(Lcom/smedialink/ui/adapter/provider/BannerProvider;)Landroidx/recyclerview/widget/PagerSnapHelper;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->bannerSnapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    return-object p0
.end method

.method public static final synthetic access$getBannersDiffCallback$p(Lcom/smedialink/ui/adapter/provider/BannerProvider;)Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BannerSlideDiffCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->bannersDiffCallback:Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BannerSlideDiffCallback;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/BannerItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget v0, Lorg/telegram/messenger/R$id;->recycle_banners:I

    new-instance v1, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;

    invoke-direct {v1, p0, p2}, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;-><init>(Lcom/smedialink/ui/adapter/provider/BannerProvider;Lcom/smedialink/model/wallet/home/BannerItem;)V

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p2

    .line 70
    sget v0, Lorg/telegram/messenger/R$id;->banner_slide_indicator:I

    new-instance v1, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$2;

    invoke-direct {v1, p1}, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$2;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-static {p2, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/smedialink/model/wallet/home/BannerItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/BannerItem;)V

    return-void
.end method

.method public final getBannerOnItemClickListener()Lcom/chad/library/adapter/base/listener/OnItemClickListener;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->bannerOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    return-object v0
.end method

.method public final getBannersRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->bannersRecycleAdapter:Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

    return-object v0
.end method

.method public getItemViewType()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->layoutId:I

    return v0
.end method

.method public final onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->getItemViewType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->isViewType(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget v0, Lorg/telegram/messenger/R$id;->recycle_banners:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->bannerScrollState:Landroid/os/Parcelable;

    :cond_1
    return-void
.end method

.method public final setBannerOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider;->bannerOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    return-void
.end method
