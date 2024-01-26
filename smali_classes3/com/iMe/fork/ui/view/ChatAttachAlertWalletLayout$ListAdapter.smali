.class final Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlertWalletLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;


# direct methods
.method public static synthetic $r8$lambda$Rkcb2dq9LHOswGnJSZb3XBRcQvA(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/iMe/model/wallet/ActionItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->onCreateViewHolder$lambda$10$lambda$8$lambda$7$lambda$6$lambda$5(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/iMe/model/wallet/ActionItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l6r-XJ_ausjJX8gkVFeDm4Yq7uo(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->onCreateViewHolder$lambda$10$lambda$8$lambda$7$lambda$6(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uAOvAlWW4GCOvjSFjRzp-Opo2Ro(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->onBindViewHolder$lambda$2$lambda$1(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static final onBindViewHolder$lambda$2$lambda$1(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    invoke-static {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getPresenter(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->startChooseNetworkDialog()V

    return-void
.end method

.method private static final onCreateViewHolder$lambda$10$lambda$8$lambda$7$lambda$6(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    invoke-static {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionAdapter(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 679
    instance-of p2, p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    if-eqz p2, :cond_1

    .line 680
    check-cast p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->isUnsupported()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 683
    :cond_0
    sget-object p2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;

    .line 684
    invoke-static {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getParentAlert$p$s-1876542046(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    const-string v0, "parentAlert.baseFragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    new-instance v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-direct {v0, p1}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;-><init>(Lcom/iMe/model/wallet/transaction/TransactionItem;)V

    .line 683
    new-instance p1, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-virtual {p2, p3, v0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p1

    .line 682
    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$setActiveDialog$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/app/Dialog;)V

    .line 693
    invoke-static {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getActiveDialog$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private static final onCreateViewHolder$lambda$10$lambda$8$lambda$7$lambda$6$lambda$5(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/iMe/model/wallet/ActionItem;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    instance-of p1, p1, Lcom/iMe/model/wallet/transaction/TransactionActionItem$Copy;

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getParentAlert$p$s-1876542046(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getRowCount$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 718
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getSendHeaderRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getAccountsHeaderRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionsHeaderRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_6

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getSendSectionRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_5

    :goto_4
    move v0, v2

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getAccountsSectionRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_5
    if-eqz v0, :cond_7

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    goto :goto_6

    .line 720
    :cond_7
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesStartRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    iget-object v3, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v3}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesEndRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v3

    if-gt p1, v3, :cond_8

    if-gt v0, p1, :cond_8

    move v1, v2

    :cond_8
    if-eqz v1, :cond_9

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->IMAGE_RADIO:I

    goto :goto_6

    .line 721
    :cond_9
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getChooseAccountHintRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_a

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_NETWORK_SWITCHER:I

    goto :goto_6

    .line 722
    :cond_a
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getPaddingRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p1, v0, :cond_b

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOP_PADDING:I

    goto :goto_6

    .line 723
    :cond_b
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TRANSACTION:I

    :goto_6
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesStartRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {v1}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesEndRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

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

    .line 569
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 570
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne v0, v1, :cond_3

    .line 571
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type org.telegram.ui.Cells.HeaderCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 572
    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getSendHeaderRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 573
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 574
    sget p2, Lorg/telegram/messenger/R$string;->transfer_via_wallet_transfer_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 576
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 577
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    :goto_0
    or-int/lit8 v2, v2, 0x10

    .line 576
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 578
    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getAccountsHeaderRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 579
    sget p2, Lorg/telegram/messenger/R$string;->transfer_via_wallet_my_accounts_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 580
    :cond_2
    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionsHeaderRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 581
    sget p2, Lorg/telegram/messenger/R$string;->transfer_via_wallet_transaction_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 587
    :cond_3
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_NETWORK_SWITCHER:I

    if-ne v0, v1, :cond_4

    .line 588
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type com.iMe.fork.ui.view.TextNetworkSwitcherCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 589
    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getChooseAccountHintRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v1

    if-ne p2, v1, :cond_8

    .line 590
    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getPresenter(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getCurrentNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->setNetworkType(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    .line 591
    new-instance p2, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->setNetworkTypeClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    sget p2, Lorg/telegram/messenger/R$string;->transfer_via_wallet_choose_account_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getInternalString(R.stri\u2026llet_choose_account_hint)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->setText(Ljava/lang/String;)V

    .line 593
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;->setTextColor(I)V

    goto/16 :goto_3

    .line 598
    :cond_4
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->IMAGE_RADIO:I

    if-ne v0, v1, :cond_7

    .line 599
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type com.iMe.fork.ui.view.ImageRadioCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/view/ImageRadioCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 600
    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesStartRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v1

    sub-int v1, p2, v1

    .line 601
    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalances$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v2, :cond_8

    .line 605
    invoke-static {v2}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v3

    .line 606
    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalances$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getSelectedBalance$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v1, :cond_5

    move v1, v5

    goto :goto_1

    :cond_5
    move v1, v6

    .line 607
    :goto_1
    invoke-static {v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getBalancesEndRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)I

    move-result v0

    if-ne p2, v0, :cond_6

    goto :goto_2

    :cond_6
    move v5, v6

    .line 604
    :goto_2
    invoke-virtual {p1, v3, v1, v5}, Lcom/iMe/fork/ui/view/ImageRadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 609
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/view/ImageRadioCell;->setImageUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 614
    :cond_7
    sget p2, Lcom/iMe/common/IdFabric$ViewTypes;->TRANSACTION:I

    if-ne v0, p2, :cond_8

    .line 615
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lorg/telegram/messenger/R$id;->global_state_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/custom/state/GlobalStateLayout;

    .line 616
    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionState$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/iMe/model/state/GlobalState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setInternalState(Lcom/iMe/model/state/GlobalState;)V

    .line 617
    iget-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionState$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/iMe/model/state/GlobalState;

    move-result-object p1

    sget-object p2, Lcom/iMe/model/state/GlobalState$Content;->INSTANCE:Lcom/iMe/model/state/GlobalState$Content;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 618
    iget-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionAdapter(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactions$p(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Ljava/util/List;

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

    .line 630
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne p2, v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 631
    iget-object v2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    .line 632
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v4, 0x15

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v1, p1

    .line 630
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    goto/16 :goto_0

    .line 638
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-ne p2, v0, :cond_1

    .line 639
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 641
    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    .line 642
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    .line 643
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 640
    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 645
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    .line 646
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 645
    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 649
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 650
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 654
    :cond_1
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_NETWORK_SWITCHER:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    new-instance p1, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v0, v2}, Lcom/iMe/fork/ui/view/TextNetworkSwitcherCell;-><init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    .line 655
    :cond_2
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TOP_PADDING:I

    if-ne p2, v0, :cond_3

    .line 656
    iget-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$2;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-direct {p2, v0, p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$2;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/content/Context;)V

    move-object p1, p2

    goto :goto_0

    .line 666
    :cond_3
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TRANSACTION:I

    if-ne p2, v0, :cond_4

    .line 667
    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-static {p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getParentAlert$p$s-1876542046(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 668
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_attach_transactions:I

    .line 667
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 671
    iget-object p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 672
    sget v0, Lorg/telegram/messenger/R$id;->recycle_transactions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 673
    invoke-static {p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;->access$getTransactionAdapter(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v2

    .line 674
    invoke-virtual {v2}, Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->getHeaderProvider()Lcom/iMe/ui/adapter/provider/HeaderProvider;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v3, v4}, Lcom/iMe/ui/adapter/provider/HeaderProvider;->setExtraPadding(F)V

    .line 675
    invoke-virtual {v2}, Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->getTokenTransactionProvider()Lcom/iMe/ui/adapter/provider/TokenTransactionProvider;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/iMe/ui/adapter/provider/TokenTransactionProvider;->setExtraPadding(F)V

    .line 676
    new-instance v3, Lcom/iMe/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;

    invoke-direct {v3}, Lcom/iMe/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;-><init>()V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 677
    new-instance v3, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 673
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 698
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 699
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 701
    sget v0, Lorg/telegram/messenger/R$id;->global_state_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/state/GlobalStateLayout;

    .line 702
    new-instance v1, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$3$2$1;

    invoke-direct {v1, p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$3$2$1;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setRetryButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 707
    :cond_4
    new-instance p1, Lcom/iMe/fork/ui/view/ImageRadioCell;

    iget-object v3, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/iMe/fork/ui/view/ImageRadioCell;-><init>(Landroid/content/Context;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 709
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
