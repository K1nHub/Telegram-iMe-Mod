.class Lorg/telegram/ui/ManageLinksActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ManageLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ManageLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ManageLinksActivity;


# direct methods
.method public static synthetic $r8$lambda$0wbjSHxr-q2EaXEsqF8jdBBNLBg(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onBindViewHolder$11(Lorg/telegram/ui/Components/LinkActionView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4VtwtMed5XpxCPkMMUQ1NoI8YUU(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onBindViewHolder$9(Lorg/telegram/ui/Components/LinkActionView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8dsQ_Mx8JugntYmNfx38-Vui6kI(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lcom/iMe/model/staking/StakingDetailsItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onBindViewHolder$3(Lcom/iMe/model/staking/StakingDetailsItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HiltpMuXXL2NvvktDjXrNRwsoUw(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onCreateViewHolder$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$S_q-J2GzcR_NcNXnJA49vqkj_JY(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onBindViewHolder$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TDq7hYBqOAEmLHOz6-_jRUhfn74(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onBindViewHolder$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$beBdJhQ_QxO-ldwP_zTRrA8h5pY(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onBindViewHolder$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$co_hV3_Yt1b1Mkf8ScU2qaUkG9U(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/ManageLinksActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f43VSCOJaqkJz7XMelr408OAOf0(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onBindViewHolder$6(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9DavpF2PPT5Mx9pc1kDtP0n1k0(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onBindViewHolder$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$nAwKXbCuPnnkq04d1V8MDdkqE00(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onBindViewHolder$10(Lorg/telegram/ui/Components/LinkActionView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJ0adbBnxR_TKCzq14AcK9oufdY(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->lambda$onBindViewHolder$8(Lorg/telegram/ui/Components/LinkActionView;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V
    .locals 0

    .line 1387
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1388
    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$10(Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 1

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ManageLinksActivity;->access$7400(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$11(Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 1

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ManageLinksActivity;->access$7400(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2()V
    .locals 4

    .line 1576
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    .line 1577
    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_information_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    .line 1578
    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->staking_replenishment_percentage_info_alert:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1576
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ManageLinksActivity;->access$600(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lcom/iMe/model/staking/StakingDetailsItem;Landroid/view/View;)V
    .locals 0

    .line 1610
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1, p2}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->newInstance(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$4(Landroid/view/View;)V
    .locals 0

    .line 1632
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$7800(Lorg/telegram/ui/ManageLinksActivity;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$5(Landroid/view/View;)V
    .locals 0

    .line 1652
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$7700(Lorg/telegram/ui/ManageLinksActivity;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$6(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 1663
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ManageLinksActivity;->access$7600(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$7(Landroid/view/View;)V
    .locals 2

    .line 1674
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v0, p1, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V

    invoke-static {v1}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->newInstance(Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$8(Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 1

    .line 1712
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ManageLinksActivity;->access$7500(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$9(Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 1

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ManageLinksActivity;->access$7500(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0()V
    .locals 4

    .line 1537
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Bots;->getAuthBotUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 1539
    invoke-static {p0}, Lorg/telegram/ui/ManageLinksActivity;->access$7900(Lorg/telegram/ui/ManageLinksActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1873
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1874
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CHOOSE_RECIPIENT_OPTIONS:I

    return p1

    .line 1876
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1877
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_PROGNOSIS:I

    return p1

    .line 1879
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1880
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_INFO:I

    return p1

    .line 1882
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1883
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_ACTIONS:I

    return p1

    .line 1885
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 1886
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_SAFE_WITHDRAWAL:I

    return p1

    .line 1888
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 1889
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_WITHDRAWAL_FEE:I

    return p1

    .line 1891
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 1892
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL_WITH_IMAGE_VIEW_BUTTON:I

    return p1

    .line 1894
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto/16 :goto_5

    .line 1897
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 1898
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CHOOSE_FEE:I

    return p1

    .line 1900
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 1901
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->DONATION_SEE_MORE:I

    return p1

    .line 1903
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 1904
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN_BALANCE:I

    return p1

    .line 1906
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 1907
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TRANSACTION:I

    return p1

    .line 1910
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 1912
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    goto/16 :goto_4

    .line 1914
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_e

    goto/16 :goto_3

    .line 1916
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f

    const/4 p1, 0x3

    return p1

    .line 1918
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_10

    goto/16 :goto_2

    .line 1920
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p1, v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p1, v0, :cond_12

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p1, v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p1, v0, :cond_13

    :cond_12
    const/4 p1, 0x5

    return p1

    .line 1922
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_14

    const/4 p1, 0x6

    return p1

    .line 1924
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_15

    const/4 p1, 0x7

    return p1

    .line 1926
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_16

    const/16 p1, 0x8

    return p1

    .line 1928
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_17

    goto :goto_1

    .line 1930
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p1, v0, :cond_18

    goto :goto_0

    :cond_18
    return v1

    :cond_19
    :goto_0
    const/16 p1, 0xa

    return p1

    :cond_1a
    :goto_1
    const/16 p1, 0x9

    return p1

    :cond_1b
    :goto_2
    const/4 p1, 0x4

    return p1

    :cond_1c
    :goto_3
    const/4 p1, 0x2

    return p1

    :cond_1d
    :goto_4
    return v1

    .line 1895
    :cond_1e
    :goto_5
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL_WITH_NETWORK:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1393
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1395
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    return v1

    .line 1399
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne v0, p1, :cond_1

    return v1

    .line 1401
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne v0, p1, :cond_2

    return v1

    .line 1403
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p1, v0, :cond_3

    return v1

    .line 1405
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p1, v0, :cond_4

    return v1

    .line 1407
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    return v1

    .line 1409
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p1, v0, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1558
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_PROGNOSIS:I

    if-ne v3, v4, :cond_0

    .line 1559
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v1

    check-cast v2, Lcom/iMe/ui/custom/StakingPrognosisView;

    .line 1560
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    if-eqz v1, :cond_31

    .line 1562
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getDatesText()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    .line 1563
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getPercentageText()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    .line 1564
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getModeText()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    .line 1565
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getTokenProfitText()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    .line 1566
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getChartViewData()Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v7

    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    .line 1567
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v8, v1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V

    .line 1561
    invoke-virtual/range {v2 .. v8}, Lcom/iMe/ui/custom/StakingPrognosisView;->setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ChartViewData;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_7

    .line 1570
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_INFO:I

    if-ne v3, v4, :cond_1

    .line 1571
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/iMe/ui/custom/StakingPercentageView;

    .line 1572
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    if-eqz v2, :cond_31

    .line 1573
    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getCompoundThresholdProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/StakingPercentageView;->updateProgress(F)V

    .line 1574
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    .line 1575
    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getStakingAnnualPercentageData()Lcom/iMe/model/staking/StakingAnnualPercentageData;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;)V

    .line 1574
    invoke-virtual {v1, v2, v3}, Lcom/iMe/ui/custom/StakingPercentageView;->setupViewData(Lcom/iMe/model/staking/StakingAnnualPercentageData;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_7

    .line 1582
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->CHOOSE_FEE:I

    const/16 v5, 0x8

    if-ne v3, v4, :cond_2

    .line 1583
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/iMe/ui/custom/FeeView;

    .line 1584
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 1585
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL_WITH_NETWORK:I

    const/16 v6, 0xf

    const/4 v7, 0x0

    if-ne v3, v4, :cond_4

    .line 1586
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;

    .line 1587
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$2800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1588
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->getHeaderCell()Lorg/telegram/ui/Cells/HeaderCell;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(I)V

    .line 1589
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->getHeaderCell()Lorg/telegram/ui/Cells/HeaderCell;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_receive_choose_contact_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1590
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 1591
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$2900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 1592
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->getHeaderCell()Lorg/telegram/ui/Cells/HeaderCell;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(I)V

    .line 1593
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->getHeaderCell()Lorg/telegram/ui/Cells/HeaderCell;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->channel_donations_latest_donations_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1594
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1595
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v1

    .line 1596
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v2

    .line 1595
    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    goto/16 :goto_7

    .line 1599
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL_WITH_IMAGE_VIEW_BUTTON:I

    if-ne v3, v4, :cond_6

    .line 1600
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;

    .line 1601
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    if-eqz v2, :cond_31

    .line 1602
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->getHeaderCell()Lorg/telegram/ui/Cells/HeaderCell;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(I)V

    .line 1603
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->getHeaderCell()Lorg/telegram/ui/Cells/HeaderCell;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->staking_calculator_programme:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedStakingProgramme()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1606
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1608
    :cond_5
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1609
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lcom/iMe/model/staking/StakingDetailsItem;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 1614
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->TRANSACTION:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v3, v4, :cond_a

    .line 1615
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/iMe/ui/custom/donation/DonationTransactionView;

    .line 1617
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-lt v2, v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1618
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$3000(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v4}, Lorg/telegram/ui/ManageLinksActivity;->access$1000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/iMe/model/wallet/transaction/TransactionItem;

    :cond_7
    if-eqz v8, :cond_8

    .line 1621
    invoke-virtual {v1, v8}, Lcom/iMe/ui/custom/donation/DonationTransactionView;->setTransaction(Lcom/iMe/model/wallet/transaction/TransactionItem;)V

    .line 1623
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    sub-int/2addr v3, v9

    if-eq v2, v3, :cond_9

    move v7, v9

    :cond_9
    invoke-virtual {v1, v7}, Lcom/iMe/ui/custom/donation/DonationTransactionView;->showDivider(Z)V

    goto/16 :goto_7

    .line 1624
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN_BALANCE:I

    if-ne v3, v4, :cond_b

    .line 1625
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/iMe/ui/custom/donation/DonationBalanceView;

    .line 1626
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getDonationBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1627
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getDonationBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/donation/DonationBalanceView;->setBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    goto/16 :goto_7

    .line 1629
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->DONATION_SEE_MORE:I

    if-ne v3, v4, :cond_c

    .line 1630
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;

    .line 1631
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_open_etherscan:I

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;->setText(Ljava/lang/String;)V

    .line 1632
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 1634
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const-string v4, ""

    const/4 v10, 0x3

    const/4 v11, 0x5

    if-eq v3, v9, :cond_24

    const/4 v12, 0x2

    if-eq v3, v12, :cond_14

    if-eq v3, v10, :cond_13

    if-eq v3, v11, :cond_10

    const/16 v4, 0xa

    if-eq v3, v4, :cond_d

    goto/16 :goto_7

    .line 1839
    :cond_d
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 1843
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_e

    .line 1844
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$3100(Lorg/telegram/ui/ManageLinksActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1845
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$5100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    :goto_0
    move v9, v7

    goto :goto_1

    .line 1848
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    sub-int v3, v2, v3

    .line 1849
    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v4}, Lorg/telegram/ui/ManageLinksActivity;->access$5200(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;

    .line 1850
    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v4}, Lorg/telegram/ui/ManageLinksActivity;->access$2700(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->admin_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 1851
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->invites_count:I

    .line 1852
    iget-object v5, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v5}, Lorg/telegram/ui/ManageLinksActivity;->access$2000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v5

    sub-int/2addr v5, v9

    if-ne v2, v5, :cond_f

    move-object v2, v4

    goto :goto_0

    :cond_f
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_31

    .line 1858
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "InviteLinkCount"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3, v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_7

    .line 1823
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-lt v2, v3, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 1824
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$4900(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v4}, Lorg/telegram/ui/ManageLinksActivity;->access$1400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1825
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    sub-int/2addr v3, v9

    if-ne v2, v3, :cond_12

    goto :goto_2

    .line 1828
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-lt v2, v3, :cond_12

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 1829
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$5000(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v4}, Lorg/telegram/ui/ManageLinksActivity;->access$1600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1830
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    sub-int/2addr v3, v9

    if-ne v2, v3, :cond_12

    goto :goto_2

    :cond_12
    move v7, v9

    .line 1834
    :goto_2
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ManageLinksActivity$LinkCell;

    .line 1835
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$1400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v8, v2}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->setLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;I)V

    .line 1836
    iput-boolean v7, v1, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->drawDivider:Z

    goto/16 :goto_7

    .line 1811
    :cond_13
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/CreationTextCell;

    .line 1812
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1813
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1814
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1815
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1816
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v4, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1818
    sget v2, Lorg/telegram/messenger/R$string;->CreateNewLink:I

    const-string v3, "CreateNewLink"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$4900(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v9

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/ui/Cells/CreationTextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_7

    .line 1636
    :cond_14
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/LinkActionView;

    .line 1638
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$200(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_4

    .line 1641
    :cond_15
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$3100(Lorg/telegram/ui/ManageLinksActivity;)J

    move-result-wide v13

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v11, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v3, v13, v11

    if-nez v3, :cond_16

    move v3, v9

    goto :goto_3

    :cond_16
    move v3, v7

    :goto_3
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LinkActionView;->setCanEdit(Z)V

    goto :goto_5

    .line 1639
    :cond_17
    :goto_4
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/LinkActionView;->setCanEdit(Z)V

    .line 1643
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$100(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1644
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption(Z)V

    .line 1645
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$2200(Lorg/telegram/ui/ManageLinksActivity;)J

    move-result-wide v10

    invoke-virtual {v1, v8, v10, v11}, Lorg/telegram/ui/Components/LinkActionView;->loadUsers(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;J)V

    .line 1646
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$3200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_18

    .line 1647
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/LinkActionView;->setMode(Z)V

    .line 1648
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getActionsLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1649
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_search_contact_24:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setOptionsViewIcon(I)V

    .line 1650
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_receive_choose_contact_hint:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 1651
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$200(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1652
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setFieldClickListener(Landroid/view/View$OnClickListener;)V

    .line 1653
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1654
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/utils/extentions/model/telegram/UserExtKt;->getFullName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    .line 1655
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setAvatar(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_7

    .line 1658
    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$3300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 1659
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/LinkActionView;->setMode(Z)V

    .line 1660
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getActionsLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1661
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_select_token_24:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setOptionsViewIcon(I)V

    .line 1662
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_receive_select_token_hint:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 1663
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setFieldClickListener(Landroid/view/View$OnClickListener;)V

    .line 1664
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$200(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1665
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    if-eqz v2, :cond_31

    .line 1666
    invoke-virtual {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->getSelectedToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1668
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_common_token_name_with_ticker:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    .line 1669
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-static {v3, v2, v4}, Lcom/iMe/utils/helper/GlideHelper;->loadBinanceImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto/16 :goto_7

    .line 1672
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1673
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_select_programme:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 1674
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setFieldClickListener(Landroid/view/View$OnClickListener;)V

    .line 1675
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedStakingProgramme()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1676
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedStakingProgramme()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v2

    .line 1677
    invoke-virtual {v2}, Lcom/iMe/model/staking/StakingDetailsItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    .line 1678
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/model/wallet/crypto/TokenItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-static {v3, v4, v5, v9}, Lcom/iMe/utils/helper/GlideHelper;->loadImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    .line 1679
    invoke-virtual {v2}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/TokenItem;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setNetworkImage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1682
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$3400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 1683
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/LinkActionView;->setMode(Z)V

    .line 1684
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getActionsLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1685
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->hideAllActionButtons(Z)V

    .line 1686
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/LinkActionView;->showOptions(Z)V

    .line 1687
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1689
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 1690
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1691
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1692
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1693
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    if-eqz v2, :cond_31

    .line 1694
    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->checkAmountReset()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1695
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1697
    :cond_1b
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1698
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v3, v3, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedStakingProgramme()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v3

    if-eqz v3, :cond_1c

    move v7, v9

    :cond_1c
    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1699
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 1701
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v3, v2, v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->limitInputLength(Landroid/widget/EditText;II)V

    .line 1703
    :cond_1d
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_7

    .line 1710
    :cond_1e
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$200(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1711
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    const/16 v4, 0x3002

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 1712
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-static {v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->onAction(Landroid/widget/EditText;ILcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 1713
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_create:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setActionButtonText(Ljava/lang/String;)V

    .line 1714
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setActionButtonListener(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_7

    .line 1715
    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$300(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1716
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 1717
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->channel_donations_address_field_hint:I

    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 1718
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_save:I

    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setActionButtonText(Ljava/lang/String;)V

    .line 1719
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v2, :cond_31

    .line 1720
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v4, v4, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v4}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/ManageLinksActivity;->access$3500(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    .line 1722
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/ManageLinksActivity;->access$3600(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1723
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v9

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/LinkActionView;->showOptions(Z)V

    .line 1724
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setOptionsItems(Ljava/util/ArrayList;)V

    .line 1725
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-static {v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->onAction(Landroid/widget/EditText;ILcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 1726
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setActionButtonListener(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 1727
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$3;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$3;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_7

    .line 1735
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$3700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 1736
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/LinkActionView;->setCanEdit(Z)V

    .line 1737
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/LinkActionView;->setMode(Z)V

    .line 1738
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getActionsLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1739
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/LinkActionView;->hideAllActionButtons(Z)V

    .line 1740
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/LinkActionView;->showOptions(Z)V

    .line 1741
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transfer_comment_hint:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setEditHint(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1743
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 1744
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_7

    .line 1747
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$3800(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$3100(Lorg/telegram/ui/ManageLinksActivity;)J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    .line 1748
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$2600(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://t.me/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$3900(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    .line 1750
    invoke-virtual {v1, v7, v8}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;)V

    .line 1751
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption(Z)V

    goto/16 :goto_7

    .line 1754
    :cond_22
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$4000(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    xor-int/2addr v2, v9

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->hideRevokeOption(Z)V

    .line 1755
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$2500(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1756
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$2500(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object v2

    .line 1757
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    .line 1758
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$2200(Lorg/telegram/ui/ManageLinksActivity;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/LinkActionView;->loadUsers(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;J)V

    goto/16 :goto_7

    .line 1760
    :cond_23
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    .line 1761
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$2200(Lorg/telegram/ui/ManageLinksActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v8, v2, v3}, Lorg/telegram/ui/Components/LinkActionView;->loadUsers(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;J)V

    goto/16 :goto_7

    :cond_24
    move v3, v11

    .line 1766
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1768
    iget-object v5, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v5}, Lorg/telegram/ui/ManageLinksActivity;->access$4100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v5

    if-ne v2, v5, :cond_25

    .line 1769
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/HeaderCell;->removeTopMargin()V

    .line 1770
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transfer_comment_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1771
    :cond_25
    iget-object v5, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v5}, Lorg/telegram/ui/ManageLinksActivity;->access$4200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v5

    if-ne v2, v5, :cond_26

    .line 1772
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_receive_select_token_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1773
    :cond_26
    iget-object v5, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v5}, Lorg/telegram/ui/ManageLinksActivity;->access$4300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v5

    if-ne v2, v5, :cond_2a

    .line 1774
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    if-eqz v2, :cond_28

    .line 1775
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/HeaderCell;->removeTopMargin()V

    .line 1776
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/HeaderCell;->removeText2TopMargin()V

    .line 1777
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_receive_amount_title:I

    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v2, v2, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1780
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText2Color(I)V

    .line 1781
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_27

    goto :goto_6

    :cond_27
    move v10, v3

    :goto_6
    or-int/lit8 v3, v10, 0x10

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText2Gravity(I)V

    .line 1782
    invoke-static {v2}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText2(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1784
    :cond_28
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$200(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1785
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/HeaderCell;->removeTopMargin()V

    .line 1786
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_receive_amount_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1787
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText2(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1788
    :cond_29
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$300(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1789
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->channel_donations_address_field_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1791
    :cond_2a
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$4400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 1792
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_send_balance_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1794
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$4500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2e

    .line 1795
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$3800(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$3100(Lorg/telegram/ui/ManageLinksActivity;)J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2c

    .line 1796
    sget v2, Lorg/telegram/messenger/R$string;->PublicLink:I

    const-string v3, "PublicLink"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1797
    :cond_2c
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$3100(Lorg/telegram/ui/ManageLinksActivity;)J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    .line 1798
    sget v2, Lorg/telegram/messenger/R$string;->ChannelInviteLinkTitle:I

    const-string v3, "ChannelInviteLinkTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1800
    :cond_2d
    sget v2, Lorg/telegram/messenger/R$string;->PermanentLinkForThisAdmin:I

    const-string v3, "PermanentLinkForThisAdmin"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1802
    :cond_2e
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$4600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 1803
    sget v2, Lorg/telegram/messenger/R$string;->RevokedLinks:I

    const-string v3, "RevokedLinks"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1804
    :cond_2f
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$4700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_30

    .line 1805
    sget v2, Lorg/telegram/messenger/R$string;->LinksCreatedByThisAdmin:I

    const-string v3, "LinksCreatedByThisAdmin"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1806
    :cond_30
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$4800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 1807
    sget v2, Lorg/telegram/messenger/R$string;->LinksCreatedByOtherAdmins:I

    const-string v3, "LinksCreatedByOtherAdmins"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_31
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1424
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_PROGNOSIS:I

    const/4 v3, -0x1

    if-ne v1, v2, :cond_0

    .line 1425
    new-instance v1, Lcom/iMe/ui/custom/StakingPrognosisView;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iMe/ui/custom/StakingPrognosisView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_8

    .line 1426
    :cond_0
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_INFO:I

    const/16 v4, 0xc

    const/16 v5, 0x19

    const/16 v6, 0x17

    const/4 v7, 0x0

    if-ne v1, v2, :cond_1

    .line 1427
    new-instance v1, Lcom/iMe/ui/custom/StakingPercentageView;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iMe/ui/custom/StakingPercentageView;-><init>(Landroid/content/Context;)V

    .line 1428
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1429
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v2, v7, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    .line 1430
    :cond_1
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_ACTIONS:I

    if-ne v1, v2, :cond_2

    .line 1431
    new-instance v1, Lcom/iMe/ui/custom/TransactionActionButtonsView;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iMe/ui/custom/TransactionActionButtonsView;-><init>(Landroid/content/Context;)V

    .line 1432
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1433
    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    .line 1434
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v2, v7, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    .line 1435
    :cond_2
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_SAFE_WITHDRAWAL:I

    if-ne v1, v2, :cond_3

    .line 1436
    new-instance v1, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;-><init>(Landroid/content/Context;)V

    .line 1437
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1438
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v2, v7, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    .line 1439
    :cond_3
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_WITHDRAWAL_FEE:I

    if-ne v1, v2, :cond_5

    .line 1440
    new-instance v1, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;-><init>(Landroid/content/Context;)V

    .line 1441
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1442
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v6}, Lorg/telegram/ui/ManageLinksActivity;->access$2100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v6

    if-ne v6, v3, :cond_4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v7

    :goto_0
    invoke-virtual {v1, v2, v7, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    .line 1443
    :cond_5
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->CHOOSE_FEE:I

    if-ne v1, v2, :cond_6

    .line 1444
    new-instance v1, Lcom/iMe/ui/custom/FeeView;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iMe/ui/custom/FeeView;-><init>(Landroid/content/Context;)V

    .line 1445
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1446
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v2, v7, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    .line 1447
    :cond_6
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL_WITH_NETWORK:I

    if-ne v1, v2, :cond_7

    .line 1448
    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    .line 1449
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1450
    new-instance v2, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;

    invoke-direct {v2, v1}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;-><init>(Lorg/telegram/ui/Cells/HeaderCell;)V

    :goto_1
    move-object v1, v2

    goto/16 :goto_8

    .line 1451
    :cond_7
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL_WITH_IMAGE_VIEW_BUTTON:I

    if-ne v1, v2, :cond_8

    .line 1452
    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    .line 1453
    new-instance v2, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;

    invoke-direct {v2, v1}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;-><init>(Lorg/telegram/ui/Cells/HeaderCell;)V

    .line 1454
    invoke-virtual {v2}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_1

    .line 1456
    :cond_8
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TRANSACTION:I

    if-ne v1, v2, :cond_9

    .line 1457
    new-instance v1, Lcom/iMe/ui/custom/donation/DonationTransactionView;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iMe/ui/custom/donation/DonationTransactionView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_8

    .line 1458
    :cond_9
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TOKEN_BALANCE:I

    const/4 v4, 0x6

    const/16 v5, 0xf

    if-ne v1, v2, :cond_a

    .line 1459
    new-instance v1, Lcom/iMe/ui/custom/donation/DonationBalanceView;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iMe/ui/custom/donation/DonationBalanceView;-><init>(Landroid/content/Context;)V

    .line 1460
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    .line 1461
    :cond_a
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->DONATION_SEE_MORE:I

    const/16 v8, 0x8

    if-ne v1, v2, :cond_b

    .line 1462
    new-instance v1, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;-><init>(Landroid/content/Context;)V

    .line 1463
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    :cond_b
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1468
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V

    .line 1469
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 1546
    :pswitch_0
    new-instance v1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v8, v4, v7}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 1547
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_8

    .line 1532
    :pswitch_1
    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 1534
    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v4}, Lorg/telegram/ui/ManageLinksActivity;->access$300(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1535
    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v4}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->channel_donations_admin_bot_information:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Bots;->getAuthBotUsernameWithAT()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-interface {v4, v5, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Bots;->getAuthBotUsernameWithAT()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;)V

    invoke-static {v2, v4, v7, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSubstringClickListener(Landroid/widget/TextView;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 1539
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v4}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->channel_donations_admin_bot_link_key:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    new-instance v6, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v6, v5}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-static {v2, v4, v7, v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSubstringClickListener(Landroid/widget/TextView;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_2

    .line 1541
    :cond_c
    sget v2, Lorg/telegram/messenger/R$string;->CreateNewLinkHelp:I

    const-string v4, "CreateNewLinkHelp"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1542
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 1525
    :pswitch_2
    new-instance v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1526
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1527
    sget v2, Lorg/telegram/messenger/R$string;->DeleteAllRevokedLinks:I

    const-string v4, "DeleteAllRevokedLinks"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1528
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_8

    .line 1521
    :pswitch_3
    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1522
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 1513
    :pswitch_4
    new-instance v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 1514
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 v2, 0x9

    .line 1515
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 1516
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 1518
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_8

    .line 1510
    :pswitch_5
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$LinkCell;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V

    goto/16 :goto_8

    .line 1507
    :pswitch_6
    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_8

    .line 1503
    :pswitch_7
    new-instance v1, Lorg/telegram/ui/Cells/CreationTextCell;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/CreationTextCell;-><init>(Landroid/content/Context;)V

    .line 1504
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_8

    .line 1481
    :pswitch_8
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$100(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v16

    .line 1482
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$200(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    move/from16 v17, v7

    goto :goto_4

    :cond_e
    :goto_3
    move/from16 v17, v2

    .line 1483
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$300(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$100(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_5

    :cond_f
    move/from16 v18, v7

    goto :goto_6

    :cond_10
    :goto_5
    move/from16 v18, v2

    .line 1485
    :goto_6
    new-instance v1, Lorg/telegram/ui/Components/LinkActionView;

    iget-object v9, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    const/4 v11, 0x0

    invoke-static {v10}, Lorg/telegram/ui/ManageLinksActivity;->access$2200(Lorg/telegram/ui/ManageLinksActivity;)J

    move-result-wide v12

    const/4 v14, 0x1

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v4}, Lorg/telegram/ui/ManageLinksActivity;->access$900(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v15

    move-object v8, v1

    invoke-direct/range {v8 .. v18}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZZZZ)V

    .line 1486
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setPermanent(Z)V

    .line 1487
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LinkActionView;->setDelegate(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V

    .line 1500
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_8

    .line 1473
    :pswitch_9
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$100(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1474
    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v8, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v10, 0x17

    const/16 v11, 0xf

    const/4 v12, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    goto :goto_7

    .line 1476
    :cond_11
    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    .line 1477
    :goto_7
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1551
    :goto_8
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1865
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 1866
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    :cond_0
    return-void
.end method
