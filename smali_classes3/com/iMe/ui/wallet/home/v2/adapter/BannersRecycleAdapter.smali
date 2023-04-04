.class public final Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BannersRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter$Companion;
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

    new-instance v0, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 3

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_banner_slide:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method

.method public static final synthetic access$getCurrentAnimatedBanner$p(Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->currentAnimatedBanner:I

    return p0
.end method


# virtual methods
.method public final animateNewBanner(I)V
    .locals 2

    .line 22
    iget v0, p0, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->currentAnimatedBanner:I

    if-ne p1, v0, :cond_0

    return-void

    .line 24
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 26
    iput p1, p0, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->currentAnimatedBanner:I

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SlideItem;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget v0, Lorg/telegram/messenger/R$id;->card_banner_slide:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v2

    const-string v3, "windowBackgroundWhite"

    .line 65
    invoke-static {v2, v0, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 66
    sget v3, Lorg/telegram/messenger/R$id;->text_banner_title:I

    aput v3, v2, v1

    sget v4, Lorg/telegram/messenger/R$id;->text_banner_description:I

    const/4 v5, 0x1

    aput v4, v2, v5

    const-string v6, "chat_messagePanelText"

    invoke-static {v0, v6, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    new-array v2, v5, [I

    aput v3, v2, v1

    .line 67
    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/SlideItem;->getSlide()Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/BannerSlide;->getTitle()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/SlideItem;->getSlide()Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/BannerSlide;->getShortDescription()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 70
    sget v1, Lorg/telegram/messenger/R$id;->image_banner_image:I

    new-instance v2, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter$convert$2;

    invoke-direct {v2, p2, p1, p0}, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter$convert$2;-><init>(Lcom/iMe/model/wallet/home/SlideItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;)V

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

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "payloads"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    .line 51
    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_0

    .line 54
    sget p3, Lorg/telegram/messenger/R$id;->image_banner_image:I

    new-instance v0, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter$convert$1$1;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter$convert$1$1;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_0
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/iMe/model/wallet/home/SlideItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SlideItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/iMe/model/wallet/home/SlideItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SlideItem;Ljava/util/List;)V

    return-void
.end method

.method public final pauseAnimation()V
    .locals 2

    .line 30
    iget v0, p0, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->currentAnimatedBanner:I

    sget v1, Lorg/telegram/messenger/R$id;->image_banner_image:I

    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getViewByPosition(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public final resumeAnimation()V
    .locals 2

    .line 38
    iget v0, p0, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->currentAnimatedBanner:I

    sget v1, Lorg/telegram/messenger/R$id;->image_banner_image:I

    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getViewByPosition(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method
