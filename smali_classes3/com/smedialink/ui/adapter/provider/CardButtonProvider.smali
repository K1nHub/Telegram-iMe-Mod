.class public final Lcom/smedialink/ui/adapter/provider/CardButtonProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CardButtonProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/wallet/home/CardButtonItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/CardButtonProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 20
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->CARD_BUTTON:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/CardButtonProvider;->itemViewType:I

    .line 21
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_single_create_action:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/CardButtonProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/CardButtonItem;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget v0, Lorg/telegram/messenger/R$id;->card_empty_account:I

    const-string v1, "windowBackgroundWhite"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v1, 0x0

    .line 28
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILandroid/graphics/drawable/Drawable;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    sget v0, Lorg/telegram/messenger/R$id;->text_empty_title:I

    const-string v1, "chats_actionBackground"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/CardButtonProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/CardButtonItem;->getTitleResId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 31
    sget v0, Lorg/telegram/messenger/R$id;->image_empty_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/home/CardButtonItem;->getIcon()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/smedialink/model/wallet/home/CardButtonItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/CardButtonProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/CardButtonItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/CardButtonProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/CardButtonProvider;->layoutId:I

    return v0
.end method
