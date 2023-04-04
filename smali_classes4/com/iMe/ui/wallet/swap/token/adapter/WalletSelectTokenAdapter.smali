.class public final Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "WalletSelectTokenAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_select_token:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/select/SelectableTokenItem;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget v0, Lorg/telegram/messenger/R$id;->constraint_root:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const-string/jumbo v2, "windowBackgroundWhite"

    .line 29
    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    sget v0, Lorg/telegram/messenger/R$id;->text_token_title:I

    const-string v2, "chats_actionBackground"

    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 31
    sget v2, Lorg/telegram/messenger/R$id;->text_token_balance_in_dollars:I

    const-string/jumbo v3, "windowBackgroundWhiteGrayText2"

    invoke-static {p1, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 32
    sget v3, Lorg/telegram/messenger/R$id;->text_token_balance:I

    const-string v4, "chat_messagePanelText"

    invoke-static {p1, v3, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v1

    const/4 v1, 0x1

    aput v2, v4, v1

    .line 33
    invoke-static {p1, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 34
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getBalance()Lcom/iMe/model/wallet/select/SelectableTokenBalance;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/model/wallet/select/SelectableTokenBalance;->getTotal()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 35
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/model/wallet/select/SelectableToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/select/SelectableToken;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getBalance()Lcom/iMe/model/wallet/select/SelectableTokenBalance;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/model/wallet/select/SelectableTokenBalance;->getTotalInDollars()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p1, v2, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->isWithBalance()Z

    move-result v0

    invoke-static {p1, v2, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 38
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->isWithBalance()Z

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 39
    sget v0, Lorg/telegram/messenger/R$id;->text_token_ticker:I

    new-instance v1, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$2;

    invoke-direct {v1, p2}, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$2;-><init>(Lcom/iMe/model/wallet/select/SelectableTokenItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 40
    sget v0, Lorg/telegram/messenger/R$id;->image_token_logo:I

    new-instance v1, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$3;

    invoke-direct {v1, p2}, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$3;-><init>(Lcom/iMe/model/wallet/select/SelectableTokenItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/select/SelectableTokenItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
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

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget p3, Lorg/telegram/messenger/R$id;->text_token_balance:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getBalance()Lcom/iMe/model/wallet/select/SelectableTokenBalance;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/select/SelectableTokenBalance;->getTotal()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 19
    sget v0, Lorg/telegram/messenger/R$id;->text_token_title:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/model/wallet/select/SelectableToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/select/SelectableToken;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 20
    sget v0, Lorg/telegram/messenger/R$id;->text_token_balance_in_dollars:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getBalance()Lcom/iMe/model/wallet/select/SelectableTokenBalance;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iMe/model/wallet/select/SelectableTokenBalance;->getTotalInDollars()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 21
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->isWithBalance()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->isWithBalance()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 23
    sget p3, Lorg/telegram/messenger/R$id;->text_token_ticker:I

    new-instance v0, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$1;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$1;-><init>(Lcom/iMe/model/wallet/select/SelectableTokenItem;)V

    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/select/SelectableTokenItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/select/SelectableTokenItem;Ljava/util/List;)V

    return-void
.end method
