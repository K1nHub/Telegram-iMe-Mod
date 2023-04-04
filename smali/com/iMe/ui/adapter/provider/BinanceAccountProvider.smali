.class public final Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "BinanceAccountProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;",
        ">;"
    }
.end annotation


# instance fields
.field private actionBarMenuItemDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

.field private final itemViewType:I

.field private final layoutId:I

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 26
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->BINANCE_ACCOUNT:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->itemViewType:I

    .line 27
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_account:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->layoutId:I

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V
    .locals 7

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget v0, Lorg/telegram/messenger/R$id;->card_crypto_account:I

    const-string v1, "windowBackgroundWhite"

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 34
    sget v0, Lorg/telegram/messenger/R$id;->text_account_id:I

    const-string v1, "chat_messagePanelText"

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 35
    sget v1, Lorg/telegram/messenger/R$id;->text_account_name:I

    const-string v2, "chats_actionBackground"

    invoke-static {p1, v1, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 36
    sget v4, Lorg/telegram/messenger/R$id;->image_copy:I

    const/4 v5, 0x0

    aput v4, v3, v5

    const-string v6, "dialogIcon"

    invoke-static {p1, v6, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 37
    invoke-static {p1, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setCircleRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 38
    sget v3, Lorg/telegram/messenger/R$id;->image_verified:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->isVerified()Z

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 39
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_id:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->getShortId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-interface {v1, v3, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    sget v0, Lorg/telegram/messenger/R$id;->item_more_options:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider$convert$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider$convert$1;-><init>(Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 57
    sget v0, Lorg/telegram/messenger/R$id;->image_account_avatar:I

    sget-object v1, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider$convert$2;->INSTANCE:Lcom/iMe/ui/adapter/provider/BinanceAccountProvider$convert$2;

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 58
    sget v0, Lorg/telegram/messenger/R$id;->horizontal_action_buttons:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider$convert$3;

    invoke-direct {v1, p2}, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider$convert$3;-><init>(Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;",
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

    .line 63
    sget p3, Lorg/telegram/messenger/R$id;->text_account_id:I

    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_binance_pay_id:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->getShortId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 64
    sget p3, Lorg/telegram/messenger/R$id;->text_account_name:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 65
    sget p3, Lorg/telegram/messenger/R$id;->image_account_avatar:I

    sget-object v0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider$convert$4;->INSTANCE:Lcom/iMe/ui/adapter/provider/BinanceAccountProvider$convert$4;

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 66
    sget p3, Lorg/telegram/messenger/R$id;->horizontal_action_buttons:I

    new-instance v0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider$convert$5;

    invoke-direct {v0, p2}, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider$convert$5;-><init>(Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;Ljava/util/List;)V

    return-void
.end method

.method public final getActionBarMenuItemDelegate()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->actionBarMenuItemDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    return-object v0
.end method

.method public getItemViewType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->layoutId:I

    return v0
.end method

.method public final setActionBarMenuItemDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->actionBarMenuItemDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    return-void
.end method
