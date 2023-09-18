.class public final Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CategoryWithCampaignsProvider.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/catalog/CategoryWithCampaignsItem;",
        ">;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation


# instance fields
.field private final channelsAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final channelsDiffCallback:Lcom/iMe/ui/catalog/tabs/all/adapter/diff/ChannelsDiffCallback;

.field private channelsRecyclersScrollStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final itemViewType:I

.field private final layoutId:I

.field private onChannelItemClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/catalog/CampaignItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onLoadMoreChannels:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 29
    sget-object v0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$onChannelItemClick$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$onChannelItemClick$1;

    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->onChannelItemClick:Lkotlin/jvm/functions/Function1;

    .line 30
    sget-object v0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$onLoadMoreChannels$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$onLoadMoreChannels$1;

    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->onLoadMoreChannels:Lkotlin/jvm/functions/Function1;

    .line 33
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->CATALOG_CATEGORY_WITH_CAMPAIGNS:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->itemViewType:I

    .line 34
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_catalog_category_preview:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->layoutId:I

    .line 37
    new-instance v0, Lcom/iMe/ui/catalog/tabs/all/adapter/diff/ChannelsDiffCallback;

    invoke-direct {v0}, Lcom/iMe/ui/catalog/tabs/all/adapter/diff/ChannelsDiffCallback;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->channelsDiffCallback:Lcom/iMe/ui/catalog/tabs/all/adapter/diff/ChannelsDiffCallback;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->channelsRecyclersScrollStates:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->channelsAdapters:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getChannelsAdapters$p(Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->channelsAdapters:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getChannelsDiffCallback$p(Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;)Lcom/iMe/ui/catalog/tabs/all/adapter/diff/ChannelsDiffCallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->channelsDiffCallback:Lcom/iMe/ui/catalog/tabs/all/adapter/diff/ChannelsDiffCallback;

    return-object p0
.end method

.method public static final synthetic access$getChannelsRecyclersScrollStates$p(Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->channelsRecyclersScrollStates:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final clearAdaptersMap()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->channelsAdapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/catalog/CategoryWithCampaignsItem;)V
    .locals 4

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->getCategory()Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/catalog/CatalogCategory;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 69
    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 70
    sget v1, Lorg/telegram/messenger/R$id;->recycle_channels:I

    new-instance v2, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;-><init>(Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/catalog/CategoryWithCampaignsItem;)V

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/catalog/CategoryWithCampaignsItem;)V

    return-void
.end method

.method public final getChannelsAdapter(J)Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->channelsAdapters:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;

    return-object p1
.end method

.method public getItemViewType()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->itemViewType:I

    return v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 26
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->layoutId:I

    return v0
.end method

.method public final getOnChannelItemClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/iMe/model/catalog/CampaignItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->onChannelItemClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnLoadMoreChannels()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->onLoadMoreChannels:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->getItemViewType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->isViewType(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->channelsRecyclersScrollStates:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 47
    sget v2, Lorg/telegram/messenger/R$id;->recycle_channels:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final setOnChannelItemClick(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/catalog/CampaignItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->onChannelItemClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnLoadMoreChannels(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->onLoadMoreChannels:Lkotlin/jvm/functions/Function1;

    return-void
.end method
