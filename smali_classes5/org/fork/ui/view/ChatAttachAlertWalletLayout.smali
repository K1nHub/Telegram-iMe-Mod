.class public final Lorg/fork/ui/view/ChatAttachAlertWalletLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "ChatAttachAlertWalletLayout.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatAttachAlertWalletLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatAttachAlertWalletLayout.kt\norg/fork/ui/view/ChatAttachAlertWalletLayout\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,544:1\n13#2,4:545\n56#3,6:549\n56#3,6:555\n56#3,6:561\n1#4:567\n*S KotlinDebug\n*F\n+ 1 ChatAttachAlertWalletLayout.kt\norg/fork/ui/view/ChatAttachAlertWalletLayout\n*L\n72#1:545,4\n73#1:549,6\n74#1:555,6\n75#1:561,6\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountsHeaderRow:I

.field private accountsSectionRow:I

.field private activeDialog:Landroid/app/Dialog;

.field private balances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;"
        }
    .end annotation
.end field

.field private balancesEndRow:I

.field private balancesStartRow:I

.field private chooseAccountHintRow:I

.field private ignoreLayout:Z

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private listLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private paddingRow:I

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final progressDialog$delegate:Lkotlin/Lazy;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private rowCount:I

.field private selectedBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

.field private sendHeaderRow:I

.field private sendSectionRow:I

.field private topPadding:I

.field private final transactionAdapter$delegate:Lkotlin/Lazy;

.field private transactionState:Lcom/smedialink/model/state/GlobalState;

.field private transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field

.field private transactionsHeaderRow:I

.field private transactionsRow:I

.field private final walletFlowCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$D2Z4SsFWUS0LVzhcL1UJtwlrEjM(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->lambda-1$lambda-0(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KKXJ5uSrh_dHHNqK1pCj0c2IwKw(Lkotlin/jvm/functions/Function1;Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->showChooseNetworkDialog$lambda-3(Lkotlin/jvm/functions/Function1;Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o7t_8XJNeRJ50UedYszUEwk_Dg4(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;ZZLio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->showLoadingDialog$lambda-11(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qXUb1Ze0sraUJzP_Infi_8EICvc(Lio/reactivex/disposables/Disposable;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->showLoadingDialog$lambda-11$lambda-10$lambda-9(Lio/reactivex/disposables/Disposable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 72
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    const-string v0, "alert"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourcesProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 72
    new-instance p2, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$presenter$2;

    invoke-direct {p2, p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$presenter$2;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 72
    iput-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionAdapter$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$special$$inlined$inject$default$2;

    invoke-direct {v1, p0, v2, v2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 74
    iput-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$special$$inlined$inject$default$3;

    invoke-direct {v0, p0, v2, v2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 75
    iput-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->resourceManager$delegate:Lkotlin/Lazy;

    .line 78
    new-instance p2, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$progressDialog$2;

    invoke-direct {p2, p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$progressDialog$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->progressDialog$delegate:Lkotlin/Lazy;

    .line 80
    new-instance p2, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$listAdapter$2;

    invoke-direct {p2, p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$listAdapter$2;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listAdapter$delegate:Lkotlin/Lazy;

    .line 85
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactions:Ljava/util/List;

    .line 86
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balances:Ljava/util/List;

    .line 88
    sget-object p2, Lcom/smedialink/model/state/GlobalState$Progress;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Progress;

    iput-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionState:Lcom/smedialink/model/state/GlobalState;

    .line 102
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/view/MvpFrameLayout;->onCreateMvpView()V

    .line 103
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->updateRows()V

    .line 105
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$1;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$1;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 114
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 115
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 116
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 117
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x1

    .line 118
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 119
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda3;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 132
    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;

    invoke-direct {p1, p0, p2}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$1$3;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 151
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/16 p1, 0x33

    const/4 v0, -0x1

    invoke-static {v0, v0, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iput-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method

.method public static final synthetic access$getAccountsHeaderRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->accountsHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getAccountsSectionRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->accountsSectionRow:I

    return p0
.end method

.method public static final synthetic access$getActiveDialog$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Landroid/app/Dialog;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->activeDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static final synthetic access$getBalances$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balances:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getBalancesEndRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesEndRow:I

    return p0
.end method

.method public static final synthetic access$getBalancesStartRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesStartRow:I

    return p0
.end method

.method public static final synthetic access$getChooseAccountHintRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->chooseAccountHintRow:I

    return p0
.end method

.method public static final synthetic access$getPaddingRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->paddingRow:I

    return p0
.end method

.method public static final synthetic access$getParentAlert$p$s-1876542046(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getPresenter()Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSelectedBalance$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->selectedBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-object p0
.end method

.method public static final synthetic access$getSendHeaderRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->sendHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getSendSectionRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->sendSectionRow:I

    return p0
.end method

.method public static final synthetic access$getTopPadding$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->topPadding:I

    return p0
.end method

.method public static final synthetic access$getTransactionAdapter(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTransactionState$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Lcom/smedialink/model/state/GlobalState;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionState:Lcom/smedialink/model/state/GlobalState;

    return-object p0
.end method

.method public static final synthetic access$getTransactions$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactions:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTransactionsHeaderRow$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionsHeaderRow:I

    return p0
.end method

.method public static final synthetic access$setActiveDialog$p(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/app/Dialog;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->activeDialog:Landroid/app/Dialog;

    return-void
.end method

.method private final getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;
    .locals 3

    .line 72
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    return-object v0
.end method

.method private final getProgressDialog()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->progressDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    return-object v0
.end method

.method private final getWalletFlowCoordinator()Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    return-object v0
.end method

.method private static final lambda-1$lambda-0(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Landroid/view/View;I)V
    .locals 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesStartRow:I

    iget v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesEndRow:I

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    if-gt p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    sub-int/2addr p2, p1

    .line 123
    iget-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balances:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 125
    iget-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->selectedBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 126
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getPresenter()Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->selectBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V

    .line 127
    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->selectedBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 128
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object p1

    iget p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesStartRow:I

    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesEndRow:I

    invoke-virtual {p1, p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method

.method private static final showChooseNetworkDialog$lambda-3(Lkotlin/jvm/functions/Function1;Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedNetworkType"

    .line 177
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct {p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object p0

    iget p1, p1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->chooseAccountHintRow:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static final showLoadingDialog$lambda-11(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;ZZLio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getProgressDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 266
    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/disposables/Disposable;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 267
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private static final showLoadingDialog$lambda-11$lambda-10$lambda-9(Lio/reactivex/disposables/Disposable;Landroid/content/DialogInterface;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :goto_0
    return-void
.end method

.method private final updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 397
    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 398
    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->paddingRow:I

    add-int/lit8 v0, v1, 0x1

    .line 399
    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->sendHeaderRow:I

    add-int/lit8 v1, v0, 0x1

    .line 400
    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->chooseAccountHintRow:I

    add-int/lit8 v0, v1, 0x1

    .line 401
    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->sendSectionRow:I

    add-int/lit8 v1, v0, 0x1

    .line 402
    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->accountsHeaderRow:I

    .line 403
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 404
    iget v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesStartRow:I

    .line 405
    iget-object v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    .line 406
    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesEndRow:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 408
    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesStartRow:I

    .line 409
    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesEndRow:I

    .line 411
    :goto_0
    iget v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->accountsSectionRow:I

    add-int/lit8 v0, v1, 0x1

    .line 412
    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionsHeaderRow:I

    add-int/lit8 v1, v0, 0x1

    .line 414
    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->rowCount:I

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionsRow:I

    return-void
.end method


# virtual methods
.method public getButtonsHideOffset()I
    .locals 1

    const/high16 v0, 0x428c0000    # 70.0f

    .line 341
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 4

    .line 293
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x7fffffff

    if-gtz v0, :cond_0

    return v1

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 297
    :cond_1
    iget-object v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_2

    if-eqz v1, :cond_2

    .line 299
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_3

    if-eqz v1, :cond_3

    .line 300
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    const/high16 v1, 0x41c80000    # 25.0f

    .line 303
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 306
    invoke-virtual {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 313
    iget v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->topPadding:I

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0xc

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 378
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "dialogScrollGlow"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 379
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string/jumbo v18, "windowBackgroundGrayShadow"

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v3, v1, v4

    .line 380
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v21, v6, v7

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v7, v6, v2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string/jumbo v26, "windowBackgroundGray"

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 381
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v9, v2

    const-string/jumbo v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string/jumbo v14, "windowBackgroundWhiteBlueHeader"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 382
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v10, v2

    const-string/jumbo v6, "textView2"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const-string/jumbo v15, "windowBackgroundWhiteRedText5"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 383
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    const-string/jumbo v16, "windowBackgroundWhiteGrayText3"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x5

    aput-object v3, v1, v6

    .line 384
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-string/jumbo v15, "switchTrackChecked"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x6

    aput-object v3, v1, v6

    .line 385
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v14, "listSelectorSDK21"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x7

    aput-object v3, v1, v6

    .line 386
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v10, v2

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const-string v14, "divider"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x8

    aput-object v3, v1, v6

    .line 387
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const-string/jumbo v15, "windowBackgroundWhiteBlueText4"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 388
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v9, v2

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string/jumbo v14, "switchTrackChecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xa

    aput-object v3, v1, v6

    .line 389
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v4, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCell;

    aput-object v4, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v14, 0x0

    const-string v15, "checkboxCheck"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v3, v1, v2

    .line 377
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 351
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    .line 352
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getProgressDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 353
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->activeDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 354
    :goto_0
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/view/MvpFrameLayout;->onDestroyMvpView()V

    return-void
.end method

.method public onEmptyState()V
    .locals 2

    .line 231
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Common;

    iput-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionState:Lcom/smedialink/model/state/GlobalState;

    .line 232
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object v0

    iget v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionsRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onHide()V
    .locals 3

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, ""

    .line 372
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->invisible(Landroid/view/View;)V

    .line 373
    sget v1, Lorg/telegram/messenger/R$string;->Create:I

    const-string v2, "Create"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"Create\", R.string.Create)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLoadingState()V
    .locals 2

    .line 236
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Progress;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Progress;

    iput-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionState:Lcom/smedialink/model/state/GlobalState;

    .line 237
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object v0

    iget v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionsRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 4

    const/16 v0, 0x28

    if-ne p1, v0, :cond_1

    .line 283
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.telegram.ui.ChatActivity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 284
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->selectedBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getPresenter()Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    move-result-object v0

    iget-object v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->selectedBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->resolveTokenAction(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->transfer_via_wallet_transfer_empty_selected_account:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNoInternetErrorState()V
    .locals 2

    .line 221
    sget-object v0, Lcom/smedialink/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/smedialink/model/state/GlobalState$NoInternet;

    iput-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionState:Lcom/smedialink/model/state/GlobalState;

    .line 222
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object v0

    iget v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionsRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onPreMeasure(II)V
    .locals 3

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    const/high16 p1, 0x42500000    # 52.0f

    .line 318
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 319
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_1

    .line 321
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 324
    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_0
    const/high16 p2, 0x41500000    # 13.0f

    .line 326
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 330
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 332
    :goto_1
    iput-boolean v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->ignoreLayout:Z

    .line 333
    iget p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->topPadding:I

    if-eq p2, p1, :cond_3

    .line 334
    iput p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->topPadding:I

    .line 335
    iget-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 336
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object p1

    iget p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->paddingRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 338
    :cond_3
    iput-boolean v2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->ignoreLayout:Z

    return-void
.end method

.method public onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    const-string p3, "id"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "address"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getWalletFlowCoordinator()Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    move-result-object v0

    .line 185
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    const-string p3, "parentAlert.baseFragment.parentLayout"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance p3, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    .line 188
    iget-object v2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->selectedBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    .line 190
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v2, p3

    move-object v4, p2

    .line 187
    invoke-direct/range {v2 .. v9}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 186
    invoke-static {p3}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForWalletTransfer(Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v2

    const-string p1, "newInstanceForWalletTran\u2026      )\n                )"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 184
    invoke-static/range {v0 .. v5}, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;->start$default(Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/ui/base/WalletAuthFragment;ZILjava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 278
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 2

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->transfer_via_wallet_toolbar_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v0, ""

    .line 364
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 365
    sget v0, Lorg/telegram/messenger/R$string;->transfer_via_wallet_action_item:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026r_via_wallet_action_item)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public onUnexpectedErrorState()V
    .locals 2

    .line 226
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Unexpected;

    iput-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionState:Lcom/smedialink/model/state/GlobalState;

    .line 227
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object v0

    iget v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionsRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public openChatScreen(J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 241
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "user_id"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 242
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 344
    iget-boolean v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 347
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 309
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public showBalances(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;)V"
        }
    .end annotation

    const-string v0, "balances"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balances:Ljava/util/List;

    .line 158
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->selectedBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 159
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->updateRows()V

    .line 160
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object p1

    iget v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesStartRow:I

    iget v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->balancesEndRow:I

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentAlert.baseFragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3, p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V

    invoke-static {v0, p2, p1, v1}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createSelectNetworkTypeDialog(Landroid/content/Context;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback1;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->activeDialog:Landroid/app/Dialog;

    if-nez p1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 262
    new-instance v0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;ZZLio/reactivex/disposables/Disposable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showRecipientEthWalletNotActivatedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "btnText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    const-string v0, "parentAlert.baseFragment"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->activeDialog:Landroid/app/Dialog;

    return-void
.end method

.method public showRecipientWalletNotActivatedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    const-string v0, "parentAlert.baseFragment"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->activeDialog:Landroid/app/Dialog;

    return-void
.end method

.method public showRequestPermissionDialog(Ljava/lang/String;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 6

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "model"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "action"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string p1, "parentAlert.baseFragment.parentActivity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 200
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 198
    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->activeDialog:Landroid/app/Dialog;

    return-void
.end method

.method public showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 9

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    const-string v0, "parentAlert.baseFragment"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 212
    invoke-static/range {v1 .. v8}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 212
    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->activeDialog:Landroid/app/Dialog;

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTransactions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "transactions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/smedialink/model/state/GlobalState$Content;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Content;

    iput-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionState:Lcom/smedialink/model/state/GlobalState;

    .line 165
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 166
    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactions:Ljava/util/List;

    .line 167
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertWalletLayout$ListAdapter;

    move-result-object p1

    iget v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->transactionsRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
