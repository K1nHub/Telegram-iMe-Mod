.class public final Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BlockchainsWalletsRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 3

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_blockchain_wallet:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 16
    sget v0, Lorg/telegram/messenger/R$id;->image_info:I

    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addChildClickViewIds([I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Lorg/telegram/messenger/R$id;->constraint_root:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 24
    sget v2, Lorg/telegram/messenger/R$id;->text_name:I

    aput v2, v0, v1

    sget v3, Lorg/telegram/messenger/R$id;->text_address:I

    const/4 v4, 0x1

    aput v3, v0, v4

    const-string v5, "windowBackgroundWhiteBlackText"

    invoke-static {p1, v5, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v0, v4, [I

    aput v2, v0, v1

    .line 25
    invoke-static {p1, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->getTitleResId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 27
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 28
    sget v0, Lorg/telegram/messenger/R$id;->image_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->getIconResId()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    sget p2, Lorg/telegram/messenger/R$id;->image_info:I

    const-string v0, "actionBarActionModeDefaultIcon"

    invoke-static {p1, p2, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    sget p2, Lorg/telegram/messenger/R$id;->view_divider:I

    const-string v0, "divider"

    invoke-static {p1, p2, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/adapter/BlockchainsWalletsRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;)V

    return-void
.end method
