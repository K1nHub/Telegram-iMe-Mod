.class final Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlertWalletLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/view/ChatAttachAlertWalletLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;


# direct methods
.method public static synthetic $r8$lambda$W0UD7wrutZApay0tcYBo4fYKVPs(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/smedialink/model/wallet/ActionItem;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->onCreateViewHolder$lambda-10$lambda-8$lambda-7$lambda-6$lambda-5(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/smedialink/model/wallet/ActionItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eLBD2pEML8KlaXLkPcmslSoKDq8(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->onBindViewHolder$lambda-2$lambda-1(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lldQvJ9zOXDdCSQMCVtpD4dfdFg(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->onCreateViewHolder$lambda-10$lambda-8$lambda-7$lambda-6(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static final onBindViewHolder$lambda-2$lambda-1(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    invoke-static {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getPresenter(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->startChooseNetworkDialog()V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-10$lambda-8$lambda-7$lambda-6(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$noName_1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    invoke-static {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionAdapter(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 503
    instance-of p2, p1, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    if-eqz p2, :cond_2

    .line 504
    check-cast p1, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->isUnsupported()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 506
    :cond_0
    sget-object p2, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;

    .line 507
    invoke-static {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getParentAlert$p$s-1876542046(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    const-string v0, "parentAlert.baseFragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    new-instance v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-direct {v0, p1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;-><init>(Lcom/smedialink/model/wallet/transaction/TransactionItem;)V

    .line 506
    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-virtual {p2, p3, v0, p1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;Lorg/fork/utils/Callbacks$Callback1;)Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$setActiveDialog$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/app/Dialog;)V

    .line 514
    invoke-static {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getActiveDialog$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Landroid/app/Dialog;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final onCreateViewHolder$lambda-10$lambda-8$lambda-7$lambda-6$lambda-5(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/smedialink/model/wallet/ActionItem;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    instance-of p1, p1, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Copy;

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getParentAlert$p$s-1876542046(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getRowCount$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 535
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getSendHeaderRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getAccountsHeaderRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionsHeaderRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    goto :goto_6

    .line 536
    :cond_4
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getSendSectionRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_5

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getAccountsSectionRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_7

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    goto :goto_6

    .line 537
    :cond_7
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesStartRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    iget-object v3, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v3}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesEndRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v3

    if-gt p1, v3, :cond_8

    if-gt v0, p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_9

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->IMAGE_RADIO:I

    goto :goto_6

    .line 538
    :cond_9
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getChooseAccountHintRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_a

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_NETWORK_SWITCHER:I

    goto :goto_6

    .line 539
    :cond_a
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getPaddingRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_b

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->CHAT_ATTACH_HEADER:I

    goto :goto_6

    .line 540
    :cond_b
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TRANSACTION:I

    :goto_6
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesStartRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    iget-object v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesEndRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v2, 0x0

    if-gt v0, p1, :cond_0

    if-ge p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 426
    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    if-ne v0, v1, :cond_3

    .line 427
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 428
    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getSendHeaderRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 429
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 430
    sget p2, Lorg/telegram/messenger/R$string;->transfer_via_wallet_transfer_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 432
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    :goto_0
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 433
    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getAccountsHeaderRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 434
    sget p2, Lorg/telegram/messenger/R$string;->transfer_via_wallet_my_accounts_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 435
    :cond_2
    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionsHeaderRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 436
    sget p2, Lorg/telegram/messenger/R$string;->transfer_via_wallet_transaction_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 441
    :cond_3
    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_NETWORK_SWITCHER:I

    if-ne v0, v1, :cond_4

    .line 442
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/fork/ui/view/TextNetworkSwitcherCell;

    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 443
    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getChooseAccountHintRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v1

    if-ne p2, v1, :cond_8

    .line 444
    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getPresenter(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/TextNetworkSwitcherCell;->setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 445
    new-instance p2, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/TextNetworkSwitcherCell;->setNetworkTypeClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    sget p2, Lorg/telegram/messenger/R$string;->transfer_via_wallet_choose_account_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getInternalString(R.stri\u2026llet_choose_account_hint)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/TextNetworkSwitcherCell;->setText(Ljava/lang/String;)V

    const-string/jumbo p2, "windowBackgroundWhiteHintText"

    .line 447
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/TextNetworkSwitcherCell;->setTextColor(I)V

    goto/16 :goto_3

    .line 451
    :cond_4
    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->IMAGE_RADIO:I

    if-ne v0, v1, :cond_7

    .line 452
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/fork/ui/view/ImageRadioCell;

    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 453
    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesStartRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v1

    sub-int v1, p2, v1

    .line 454
    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalances$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v2, :cond_8

    .line 457
    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getResourceManager(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalances$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getSelectedBalance$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesEndRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v4

    if-ne p2, v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p1, v3, v1, v5}, Lorg/fork/ui/view/ImageRadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 458
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p2

    invoke-static {v0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getPresenter(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/ImageRadioCell;->setImage(Ljava/lang/Integer;)V

    goto :goto_3

    .line 462
    :cond_7
    sget p2, Lcom/smedialink/common/IdFabric$ViewTypes;->TRANSACTION:I

    if-ne v0, p2, :cond_8

    .line 463
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lorg/telegram/messenger/R$id;->global_state_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/custom/state/GlobalStateLayout;

    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionState$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/model/state/GlobalState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/smedialink/model/state/GlobalState;)V

    .line 464
    iget-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionState$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/model/state/GlobalState;

    move-result-object p1

    sget-object p2, Lcom/smedialink/model/state/GlobalState$Content;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Content;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 465
    iget-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionAdapter(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactions$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    if-ne p2, v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x15

    const/16 v5, 0xf

    const/4 v6, 0x0

    const-string/jumbo v3, "windowBackgroundWhiteBlueHeader"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    .line 478
    :cond_0
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-ne p2, v0, :cond_1

    .line 479
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 480
    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    const-string/jumbo v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 481
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v2, "windowBackgroundGray"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 482
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 483
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 484
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_0

    .line 486
    :cond_1
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_NETWORK_SWITCHER:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    new-instance p1, Lorg/fork/ui/view/TextNetworkSwitcherCell;

    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v0, v2}, Lorg/fork/ui/view/TextNetworkSwitcherCell;-><init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    .line 487
    :cond_2
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->CHAT_ATTACH_HEADER:I

    if-ne p2, v0, :cond_3

    .line 488
    iget-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    new-instance p2, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$2;

    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-direct {p2, v0, p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$2;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/content/Context;)V

    move-object p1, p2

    goto/16 :goto_0

    .line 494
    :cond_3
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TRANSACTION:I

    if-ne p2, v0, :cond_4

    .line 495
    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getParentAlert$p$s-1876542046(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_attach_transactions:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 496
    sget v0, Lorg/telegram/messenger/R$id;->recycle_transactions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 497
    invoke-static {p2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionAdapter(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v2

    .line 498
    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->getHeaderProvider()Lcom/smedialink/ui/adapter/provider/HeaderProvider;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v3, v4}, Lcom/smedialink/ui/adapter/provider/HeaderProvider;->setExtraPadding(F)V

    .line 499
    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->getTokenTransactionProvider()Lcom/smedialink/ui/adapter/provider/TokenTransactionProvider;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smedialink/ui/adapter/provider/TokenTransactionProvider;->setExtraPadding(F)V

    .line 500
    new-instance v3, Lcom/smedialink/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;

    invoke-direct {v3}, Lcom/smedialink/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;-><init>()V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 501
    new-instance v3, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 518
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 497
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 519
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 520
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 522
    sget v0, Lorg/telegram/messenger/R$id;->global_state_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/custom/state/GlobalStateLayout;

    .line 523
    new-instance v1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$3$2$1;

    invoke-direct {v1, p2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$3$2$1;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/custom/state/GlobalStateLayout;->setRetryButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 527
    :cond_4
    new-instance p1, Lorg/fork/ui/view/ImageRadioCell;

    iget-object v3, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/fork/ui/view/ImageRadioCell;-><init>(Landroid/content/Context;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 529
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 476
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
