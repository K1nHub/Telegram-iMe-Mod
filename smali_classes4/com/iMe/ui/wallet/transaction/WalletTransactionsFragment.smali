.class public final Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;
.super Lcom/iMe/ui/wallet/common/WalletTabFragment;
.source "WalletTransactionsFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTransactionsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTransactionsFragment.kt\ncom/iMe/ui/wallet/transaction/WalletTransactionsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,287:1\n13#2,4:288\n56#3,6:292\n162#4,8:298\n*S KotlinDebug\n*F\n+ 1 WalletTransactionsFragment.kt\ncom/iMe/ui/wallet/transaction/WalletTransactionsFragment\n*L\n44#1:288,4\n47#1:292,6\n136#1:298,8\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/Token;

.field private final transactionAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$MIDVjoY9AyBy6owMQFOEkI3kWno(Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupLoadMore$lambda$8$lambda$7$lambda$6(Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s_2-TPxXe3g905N_8LW_hFyzqHg(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupListeners$lambda$14$lambda$13(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tf7jTnn26LKa9KSoayHMFU3hgQ4(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->showChooseNetworkDialog$lambda$0(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vCVz3qZVxCPLmIaIVbn_8we343Y(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupListeners$lambda$11$lambda$10(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 44
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 49
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;Lcom/iMe/storage/domain/model/wallet/token/Token;)V
    .locals 3

    const-string/jumbo v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletTabFragment;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    .line 41
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->token:Lcom/iMe/storage/domain/model/wallet/token/Token;

    .line 44
    new-instance p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string/jumbo v1, "mvpDelegate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "presenter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 44
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->transactionAdapter$delegate:Lkotlin/Lazy;

    .line 49
    new-instance p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V

    const/4 p2, 0x1

    invoke-static {p0, v0, p1, p2, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    return-object p0
.end method

.method public static final synthetic access$getToken$p(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)Lcom/iMe/storage/domain/model/wallet/token/Token;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->token:Lcom/iMe/storage/domain/model/wallet/token/Token;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    return-object v0
.end method

.method private final getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->transactionAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 8

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 184
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 185
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_transactions_toolbar_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 186
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 187
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 195
    new-instance v1, Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v2, "parentActivity"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/iMe/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    .line 196
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 197
    sget v1, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->disableRipple()V

    const-string/jumbo v1, "setupActionBar$lambda$3$lambda$2"

    .line 202
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 204
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    const v2, 0x800015

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 245
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    .line 246
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 247
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 252
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 255
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    move-result-object v1

    .line 257
    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    instance-of v2, v2, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setMatchParentHeight(Z)V

    .line 258
    new-instance v2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$setupListeners$2$1$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$setupListeners$2$1$1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 260
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$11$lambda$10(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupListeners$lambda$14$lambda$13(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 262
    instance-of p2, p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    if-eqz p2, :cond_1

    .line 263
    check-cast p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->isUnsupported()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 265
    :cond_0
    sget-object v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;

    .line 267
    new-instance v2, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-direct {v2, p1}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;-><init>(Lcom/iMe/model/wallet/transaction/TransactionItem;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    .line 265
    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;->newInstance$default(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 272
    :cond_1
    instance-of p2, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object p0

    check-cast p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->onStakingOperationClick(Lcom/iMe/model/wallet/transaction/StakingOperationItem;)V

    goto :goto_0

    .line 274
    :cond_2
    instance-of p2, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object p0

    check-cast p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->onCryptoBoxActionClick(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final setupLoadMore(Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;)V
    .locals 2

    .line 231
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x5

    .line 232
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 233
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0, v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    return-void
.end method

.method private static final setupLoadMore$lambda$8$lambda$7$lambda$6(Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 7

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    if-nez p0, :cond_0

    return-void

    .line 235
    :cond_0
    instance-of v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;

    if-eqz v0, :cond_1

    invoke-direct {p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    check-cast p0, Lcom/iMe/model/wallet/transaction/TransactionItem;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 236
    :cond_1
    instance-of p0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    if-eqz p0, :cond_2

    invoke-direct {p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    :goto_0
    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 214
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->recycleTransactions:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v1

    .line 216
    new-instance v2, Lcom/iMe/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 217
    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupLoadMore(Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;)V

    .line 215
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 219
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 220
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupRootView()V
    .locals 3

    .line 225
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    instance-of v2, v1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingOperationsTab;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 225
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$0(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 158
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 159
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 160
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 161
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 162
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    .line 159
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 164
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 165
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 166
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 167
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    .line 164
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 169
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 170
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 171
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 172
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    .line 169
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 174
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 175
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v2

    .line 176
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 177
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v4

    new-instance v5, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;)V

    .line 178
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 174
    invoke-direct {v1, v2, v3, v5, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 157
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 136
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->recycleTransactions:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.recycleTransactions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 168
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    sget-object v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;->INSTANCE:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupActionBar()V

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupColors()V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupListeners()V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupRecycleView()V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupRootView()V

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreFail()V

    return-void
.end method

.method public onLoadMoreItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 119
    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->showChangeNetworkHintIfNeeded()V

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    return-void
.end method

.method public onViewCreated()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onViewCreated()V

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupColors()V

    return-void
.end method

.method public openCryptoBoxActionDetails(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 7

    const-string/jumbo v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object v1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;

    .line 152
    new-instance v3, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-direct {v3, p1, p2}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;-><init>(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    .line 150
    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;->newInstance$default(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public openStakingOperationDetails(Lcom/iMe/model/wallet/transaction/StakingOperationItem;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 7

    const-string/jumbo v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;

    .line 143
    new-instance v3, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;

    invoke-direct {v3, p1, p2}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$StakingOperationDetails;-><init>(Lcom/iMe/model/wallet/transaction/StakingOperationItem;Lcom/iMe/storage/domain/model/crypto/Network;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    .line 141
    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;->newInstance$default(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public renderInitialItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method public renderItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public resetLoadMore()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->reset$TMessagesProj_HA_public()V

    return-void
.end method

.method public setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 1

    const-string/jumbo v0, "networkItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    :goto_0
    return-void
.end method

.method protected shouldAskPinCode()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;

    sget-object v1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;->INSTANCE:Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$Fullscreen;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/iMe/utils/hints/HintUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/utils/hints/HintUtils;->showChangeNetworkHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    .line 80
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V

    const-string/jumbo v3, "parentActivity"

    .line 80
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;->newInstance(Landroid/content/Context;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
