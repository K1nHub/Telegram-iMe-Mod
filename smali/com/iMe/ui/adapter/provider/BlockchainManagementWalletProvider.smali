.class public final Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "BlockchainManagementWalletProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemElevation$delegate:Lkotlin/Lazy;

.field private final itemViewType:I

.field private final layoutId:I

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 23
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BLOCKCHAIN_WALLET:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;->itemViewType:I

    .line 24
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_blockchain_wallet:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;->layoutId:I

    .line 26
    new-instance p1, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider$itemElevation$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider$itemElevation$2;-><init>(Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;->itemElevation$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getItemElevation(Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;)F
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;->getItemElevation()F

    move-result p0

    return p0
.end method

.method private final getItemElevation()F
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;->itemElevation$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;)V
    .locals 7

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget v0, Lorg/telegram/messenger/R$id;->constraint_root:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v1, 0x0

    .line 33
    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 35
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 36
    sget v4, Lorg/telegram/messenger/R$id;->text_name:I

    aput v4, v3, v1

    .line 37
    sget v5, Lorg/telegram/messenger/R$id;->text_address:I

    const/4 v6, 0x1

    aput v5, v3, v6

    .line 34
    invoke-static {p1, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v2, v6, [I

    aput v4, v2, v1

    .line 39
    invoke-static {p1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->getTitleResId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    invoke-virtual {p2}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 42
    sget v1, Lorg/telegram/messenger/R$id;->image_icon:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->getIconResId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 43
    sget v1, Lorg/telegram/messenger/R$id;->image_info:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {p1, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 44
    invoke-static {p1, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setCircleRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 45
    sget v1, Lorg/telegram/messenger/R$id;->view_divider:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->isLastItem()Z

    move-result p2

    xor-int/2addr p2, v6

    invoke-static {p1, v1, p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 46
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {p1, v1, p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider$convert$1;

    invoke-direct {p2, p0}, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider$convert$1;-><init>(Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;)V

    invoke-static {p1, v0, p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementWalletProvider;->layoutId:I

    return v0
.end method
