.class public final Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;
.super Lcom/smedialink/ui/wallet/common/WalletTabFragment;
.source "WalletTransactionsFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;,
        Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTransactionsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTransactionsFragment.kt\ncom/smedialink/ui/wallet/transaction/WalletTransactionsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,269:1\n13#2,4:270\n56#3,6:274\n162#4,8:280\n*S KotlinDebug\n*F\n+ 1 WalletTransactionsFragment.kt\ncom/smedialink/ui/wallet/transaction/WalletTransactionsFragment\n*L\n44#1:270,4\n45#1:274,6\n130#1:280,8\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private networkTypeView:Lcom/smedialink/ui/custom/NetworkTypeView;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final screenType:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final transactionAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$LYCsxplNN3BuCHsdJGAd1Mnta84(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->setupListeners$lambda$13$lambda$12(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ME4__sMbOd548-IHy2mBiLzCxhw(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->setupListeners$lambda$15$lambda$14(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TX7PbGIbYtA_1P2nDPaQPZ7AwqA(Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->setupLoadMore$lambda$10$lambda$9$lambda$8(Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V0seCw4S8TxKRXL0W7Iw9kC-P9k(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getThemeDescriptions$lambda$2(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8Ue264HzAiVN_leGIsYn7fxiAM(Lkotlin/jvm/functions/Function1;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->showChooseNetworkDialog$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 44
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 48
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 3

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletTabFragment;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    .line 40
    iput-object p2, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 44
    new-instance p1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string v1, "mvpDelegate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "presenter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 44
    iput-object p2, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->transactionAdapter$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V

    const/4 p2, 0x1

    invoke-static {p0, v0, p1, p2, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    return-object p0
.end method

.method public static final synthetic access$getTokenCode$p(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$2(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->transactionAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 8

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 156
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 157
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_transactions_toolbar_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 158
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 159
    new-instance v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$setupActionBar$1$1;-><init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 167
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 168
    new-instance v7, Lcom/smedialink/ui/custom/NetworkTypeView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v1, "parentActivity"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->networkTypeView:Lcom/smedialink/ui/custom/NetworkTypeView;

    .line 169
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->NETWORK_SWITCH:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, "setupActionBar$lambda$5$lambda$4$lambda$3"

    .line 170
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 171
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->networkTypeView:Lcom/smedialink/ui/custom/NetworkTypeView;

    const v2, 0x800015

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 209
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const-string v1, "windowBackgroundWhite"

    .line 210
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const-string v2, "chats_actionBackground"

    .line 211
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 216
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 219
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->getGlobalStateProvider()Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$setupListeners$2$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$setupListeners$2$1;-><init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V

    invoke-virtual {v1, v2}, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 221
    new-instance v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$13$lambda$12(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupListeners$lambda$15$lambda$14(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 223
    instance-of p2, p1, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    if-eqz p2, :cond_1

    .line 224
    check-cast p1, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->isUnsupported()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 226
    :cond_0
    sget-object v0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;

    .line 228
    new-instance v2, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-direct {v2, p1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;-><init>(Lcom/smedialink/model/wallet/transaction/TransactionItem;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    .line 226
    invoke-static/range {v0 .. v5}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;->newInstance$default(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;Lorg/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 232
    :cond_1
    instance-of p2, p1, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object p0

    check-cast p1, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->onStakingOperationClick(Lcom/smedialink/model/wallet/transaction/StakingOperationItem;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final setupLoadMore(Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;)V
    .locals 2

    .line 195
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x5

    .line 196
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 197
    new-instance v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0, v0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    return-void
.end method

.method private static final setupLoadMore$lambda$10$lambda$9$lambda$8(Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 7

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    if-nez p0, :cond_0

    return-void

    .line 199
    :cond_0
    instance-of v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    if-eqz v0, :cond_1

    invoke-direct {p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    check-cast p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_1
    instance-of p0, p0, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    if-eqz p0, :cond_2

    invoke-direct {p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    :goto_0
    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 178
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->recycleTransactions:Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/smedialink/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;

    invoke-direct {v2}, Lcom/smedialink/ui/wallet/transaction/adapter/diff/TransactionDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 182
    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->setupLoadMore(Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;)V

    .line 179
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 185
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupRootView()V
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    instance-of v2, v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedNetworkType"

    .line 79
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 143
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "actionBarDefault"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 144
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 145
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "actionBarDefaultTitle"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 146
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 147
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 142
    new-instance v10, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;)V

    const-string v11, "windowBackgroundWhite"

    move-object v4, v2

    .line 147
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 142
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 130
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

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

    .line 57
    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    sget-object v0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;->INSTANCE:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->setupActionBar()V

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->setupColors()V

    .line 61
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->setupListeners()V

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->setupRecycleView()V

    .line 63
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->setupRootView()V

    .line 65
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

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

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 113
    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getPresenter()Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->showChangeNetworkHintIfNeeded()V

    .line 95
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    return-void
.end method

.method public onViewCreated()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onViewCreated()V

    .line 70
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->setupColors()V

    return-void
.end method

.method public openStakingOperationDetails(Lcom/smedialink/model/wallet/transaction/StakingOperationItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;

    .line 137
    new-instance v3, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    invoke-direct {v3, p1, p2}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;-><init>(Lcom/smedialink/model/wallet/transaction/StakingOperationItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    .line 135
    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;->newInstance$default(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;Lorg/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p1

    .line 134
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

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

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

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public resetLoadMore()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getTransactionAdapter()Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->reset$TMessagesProj_release()V

    return-void
.end method

.method public setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->networkTypeView:Lcom/smedialink/ui/custom/NetworkTypeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/smedialink/ui/custom/NetworkTypeView;->setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    :goto_0
    return-void
.end method

.method public shouldAskPinCode()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->screenType:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    sget-object v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;->INSTANCE:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/smedialink/utils/hints/HintUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/utils/hints/HintUtils;->showChangeNetworkHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

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

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p2, p1, v1}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createSelectNetworkTypeDialog(Landroid/content/Context;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback1;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTransactionsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
