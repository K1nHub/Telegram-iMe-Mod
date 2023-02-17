.class public final Lcom/smedialink/ui/adapter/provider/CampaignProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CampaignProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/catalog/CampaignItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 16
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->CATALOG_CAMPAIGN:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/CampaignProvider;->itemViewType:I

    .line 17
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_catalog_channel:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/CampaignProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CampaignItem;)V
    .locals 5

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Lorg/telegram/messenger/R$id;->card_channel:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const-string v2, "windowBackgroundWhite"

    .line 24
    invoke-static {p1, v0, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 25
    sget v0, Lorg/telegram/messenger/R$id;->text_name:I

    const-string v2, "chat_messagePanelText"

    invoke-static {p1, v0, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 26
    sget v2, Lorg/telegram/messenger/R$id;->text_subscribers_count:I

    const-string v3, "windowBackgroundWhiteGrayText2"

    invoke-static {p1, v2, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v3, 0x1

    new-array v4, v3, [I

    aput v0, v4, v1

    .line 27
    invoke-static {p1, v4}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Lcom/smedialink/model/catalog/CampaignItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    invoke-virtual {p2}, Lcom/smedialink/model/catalog/CampaignItem;->getMembersCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatNumber(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    sget v0, Lorg/telegram/messenger/R$id;->image_verified:I

    invoke-virtual {p2}, Lcom/smedialink/model/catalog/CampaignItem;->isVerified()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 31
    sget v0, Lorg/telegram/messenger/R$id;->image_avatar:I

    invoke-virtual {p2}, Lcom/smedialink/model/catalog/CampaignItem;->getPhoto()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1, v3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;Z)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/smedialink/model/catalog/CampaignItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/CampaignProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CampaignItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/CampaignProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/CampaignProvider;->layoutId:I

    return v0
.end method
