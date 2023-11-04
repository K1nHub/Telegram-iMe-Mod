.class public final Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BannersRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/iMe/model/wallet/home/SlideItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private currentAnimatedBanner:I

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 3

    const-string/jumbo v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_banner_slide:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method

.method public static final synthetic access$getCurrentAnimatedBanner$p(Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->currentAnimatedBanner:I

    return p0
.end method


# virtual methods
.method public final animateNewBanner(I)V
    .locals 2

    .line 26
    iget v0, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->currentAnimatedBanner:I

    if-ne p1, v0, :cond_0

    return-void

    .line 28
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 30
    iput p1, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->currentAnimatedBanner:I

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SlideItem;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget v0, Lorg/telegram/messenger/R$id;->card_banner_slide:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v2

    .line 69
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2, v0, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 71
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 72
    sget v4, Lorg/telegram/messenger/R$id;->text_banner_title:I

    aput v4, v3, v1

    .line 73
    sget v5, Lorg/telegram/messenger/R$id;->text_banner_description:I

    const/4 v6, 0x1

    aput v5, v3, v6

    .line 70
    invoke-static {v0, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    new-array v2, v6, [I

    aput v4, v2, v1

    .line 75
    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/SlideItem;->getSlide()Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/BannerSlide;->getTitle()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/SlideItem;->getSlide()Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/BannerSlide;->getShortDescription()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v5, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 81
    sget v1, Lorg/telegram/messenger/R$id;->image_banner_image:I

    new-instance v2, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$2;

    invoke-direct {v2, p2, p1, p0}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$2;-><init>(Lcom/iMe/model/wallet/home/SlideItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;)V

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SlideItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/wallet/home/SlideItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "payloads"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    .line 55
    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_0

    .line 58
    sget p3, Lorg/telegram/messenger/R$id;->image_banner_image:I

    new-instance v0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$1$1;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$1$1;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_0
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/iMe/model/wallet/home/SlideItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SlideItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/iMe/model/wallet/home/SlideItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SlideItem;Ljava/util/List;)V

    return-void
.end method

.method public final pauseAnimation()V
    .locals 2

    .line 34
    iget v0, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->currentAnimatedBanner:I

    sget v1, Lorg/telegram/messenger/R$id;->image_banner_image:I

    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getViewByPosition(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v1, :cond_0

    .line 36
    check-cast v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public final resumeAnimation()V
    .locals 2

    .line 42
    iget v0, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->currentAnimatedBanner:I

    sget v1, Lorg/telegram/messenger/R$id;->image_banner_image:I

    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getViewByPosition(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method
