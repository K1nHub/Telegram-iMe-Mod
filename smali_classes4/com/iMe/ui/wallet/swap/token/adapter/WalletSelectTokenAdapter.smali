.class public final Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "WalletSelectTokenAdapter.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
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

    .line 38
    sget v0, Lorg/telegram/messenger/R$id;->constraint_root:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 39
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 40
    sget v0, Lorg/telegram/messenger/R$id;->text_token_title:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    sget v2, Lorg/telegram/messenger/R$id;->text_token_balance_in_dollars:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p1, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 42
    sget v3, Lorg/telegram/messenger/R$id;->text_token_balance:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {p1, v3, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v1

    const/4 v1, 0x1

    aput v2, v4, v1

    .line 43
    invoke-static {p1, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 44
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

    .line 45
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 46
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getBalance()Lcom/iMe/model/wallet/select/SelectableTokenBalance;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/model/wallet/select/SelectableTokenBalance;->getTotalInDollars()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p1, v2, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 47
    sget v0, Lorg/telegram/messenger/R$id;->text_token_ticker:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 48
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->isWithBalance()Z

    move-result v0

    invoke-static {p1, v2, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->isWithBalance()Z

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 50
    sget v0, Lorg/telegram/messenger/R$id;->image_token_logo:I

    new-instance v1, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$2$1;

    invoke-direct {v1, p2, p2}, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$2$1;-><init>(Lcom/iMe/model/wallet/select/SelectableTokenItem;Lcom/iMe/model/wallet/select/SelectableTokenItem;)V

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

    const-string/jumbo v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
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

    .line 27
    sget v0, Lorg/telegram/messenger/R$id;->text_token_title:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 28
    sget v0, Lorg/telegram/messenger/R$id;->text_token_balance_in_dollars:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getBalance()Lcom/iMe/model/wallet/select/SelectableTokenBalance;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iMe/model/wallet/select/SelectableTokenBalance;->getTotalInDollars()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 29
    sget v1, Lorg/telegram/messenger/R$id;->text_coin_ticker:I

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->isWithBalance()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 31
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->isWithBalance()Z

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/select/SelectableTokenItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/select/SelectableTokenItem;Ljava/util/List;)V

    return-void
.end method
