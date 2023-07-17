.class public final Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CryptoAccountProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/home/CryptoAccountItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private onMenuItemClickAction:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public static synthetic $r8$lambda$8WUugmkbrViNXRHTLRQriKF8FfI(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->onMenuItemClickAction$lambda$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 33
    sget-object p1, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->onMenuItemClickAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    .line 36
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CRYPTO_ACCOUNT:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->itemViewType:I

    .line 37
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_account:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->layoutId:I

    return-void
.end method

.method public static final synthetic access$setupMenuItems(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->setupMenuItems(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/String;)V

    return-void
.end method

.method private static final onMenuItemClickAction$lambda$0(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method private final setupMenuItems(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/String;)V
    .locals 7

    .line 85
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 86
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "THE_OPEN_NETWORK"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 88
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TON_ADDRESS_V3R2:I

    .line 89
    new-instance v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->TON_ADDRESS_VERSION:I

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->wallet_ton_address_v3r2:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 92
    invoke-static {p3, v5}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 90
    invoke-virtual {v3, v4, p3, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 96
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/16 p3, 0xe1

    .line 97
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    const/16 v4, 0x32

    .line 98
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 87
    invoke-virtual {p1, v0, v3, p3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILandroid/view/View;II)V

    .line 102
    :cond_0
    sget p3, Lcom/iMe/common/IdFabric$Menu;->SCAN_ADDRESS:I

    .line 104
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 105
    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_open_etherscan:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 104
    invoke-interface {v0, v3, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p1, p3, v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    .line 109
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getLogoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoAccountItem;)V
    .locals 8

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget v0, Lorg/telegram/messenger/R$id;->card_crypto_account:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 44
    sget v0, Lorg/telegram/messenger/R$id;->text_account_id:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 45
    sget v1, Lorg/telegram/messenger/R$id;->text_account_name:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {p1, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 46
    sget v2, Lorg/telegram/messenger/R$id;->image_copy:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    invoke-static {p1, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 47
    invoke-static {p1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setCircleRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 48
    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_home_crypto_account_telegram_id:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v2, v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v7, v4, v2}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 50
    sget v0, Lorg/telegram/messenger/R$id;->item_more_options:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;-><init>(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lcom/iMe/model/wallet/home/CryptoAccountItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 65
    sget v0, Lorg/telegram/messenger/R$id;->image_account_avatar:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$2;

    invoke-direct {v1, p2}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$2;-><init>(Lcom/iMe/model/wallet/home/CryptoAccountItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 66
    sget v0, Lorg/telegram/messenger/R$id;->horizontal_action_buttons:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$3;

    invoke-direct {v1, p2}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$3;-><init>(Lcom/iMe/model/wallet/home/CryptoAccountItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoAccountItem;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/wallet/home/CryptoAccountItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget p3, Lorg/telegram/messenger/R$id;->text_account_id:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 72
    sget p3, Lorg/telegram/messenger/R$id;->item_more_options:I

    new-instance v0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$4;

    invoke-direct {v0, p0, p2}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$4;-><init>(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lcom/iMe/model/wallet/home/CryptoAccountItem;)V

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoAccountItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoAccountItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->layoutId:I

    return v0
.end method

.method public final getOnMenuItemClickAction()Lcom/iMe/fork/utils/Callbacks$Callback1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->onMenuItemClickAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-object v0
.end method

.method public final setOnMenuItemClickAction(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->onMenuItemClickAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-void
.end method
