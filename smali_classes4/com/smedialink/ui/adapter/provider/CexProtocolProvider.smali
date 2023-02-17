.class public final Lcom/smedialink/ui/adapter/provider/CexProtocolProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CexProtocolProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/wallet/swap/CexProtocolItem;",
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
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/CexProtocolProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 20
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->CENTRALIZED_EXCHANGES:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/CexProtocolProvider;->itemViewType:I

    .line 21
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_card_icon_title_subtitle:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/CexProtocolProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/swap/CexProtocolItem;)V
    .locals 4

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget v0, Lorg/telegram/messenger/R$id;->card_root:I

    const-string v1, "windowBackgroundWhite"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 28
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    const-string v1, "chat_messagePanelText"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    sget v1, Lorg/telegram/messenger/R$id;->text_subtitle:I

    const-string v2, "windowBackgroundWhiteGrayText2"

    invoke-static {p1, v1, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    sget v2, Lorg/telegram/messenger/R$id;->image_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/swap/CexProtocolItem;->getInfo()Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->getLogo()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 31
    invoke-static {p1, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 32
    iget-object v2, p0, Lcom/smedialink/ui/adapter/provider/CexProtocolProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/swap/CexProtocolItem;->getInfo()Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->getName()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/CexProtocolProvider;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/swap/CexProtocolItem;->getInfo()Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->getDescription()I

    move-result p2

    invoke-interface {v0, p2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/smedialink/model/wallet/swap/CexProtocolItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/CexProtocolProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/swap/CexProtocolItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/CexProtocolProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/CexProtocolProvider;->layoutId:I

    return v0
.end method
