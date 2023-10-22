.class public final Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;
.super Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;
.source "WalletHomeServicesFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeServicesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeServicesFragment.kt\ncom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,128:1\n13#2,4:129\n56#3,6:133\n162#4,8:139\n*S KotlinDebug\n*F\n+ 1 WalletHomeServicesFragment.kt\ncom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment\n*L\n32#1:129,4\n33#1:133,6\n64#1:139,8\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$Companion;


# instance fields
.field private final balancesAdapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$QsdoeiaV03dEPf340iU4c60iH_w(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->showRequiredWalletCreatedDialog$lambda$0(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uHe8PdIQXl6QBPefwfcqt043vu8(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->setupListeners$lambda$3$lambda$2(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 32
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 35
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->Companion:Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string/jumbo v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 32
    iput-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->balancesAdapter$delegate:Lkotlin/Lazy;

    .line 35
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method private final getBalancesAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->balancesAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;

    return-object v0
.end method

.method private final setupColors()V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 101
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getBalancesAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$3$lambda$2(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getBalancesAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 109
    instance-of p2, p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;

    move-result-object p0

    check-cast p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/ServicesBasicItem;->getCategory()Lcom/iMe/model/wallet/home/ServicesCategory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->onCategoryClick(Lcom/iMe/model/wallet/home/ServicesCategory;)V

    :cond_0
    return-void
.end method

.method private final setupWalletRecycleView()V
    .locals 3

    .line 116
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->recycleWalletHomeServicesDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getBalancesAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v1

    .line 118
    new-instance v2, Lcom/iMe/ui/wallet/home/adapter/diff/BalanceDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/home/adapter/diff/BalanceDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 117
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const-string/jumbo v1, "setupWalletRecycleView$lambda$5"

    .line 121
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->disableDefaultAnimation(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private static final showRequiredWalletCreatedDialog$lambda$0(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->selectTab(I)V

    return-void
.end method


# virtual methods
.method public firstScreenInitWithItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dashboardUiItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getBalancesAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

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

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 51
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 53
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getBalancesAdapter()Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object v4

    new-instance v5, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;)V

    .line 55
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 51
    invoke-direct {v1, v2, v3, v5, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->recycleWalletHomeServicesDashboard:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.recycleWalletHomeServicesDashboard"

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

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->setupColors()V

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->setupListeners()V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->setupWalletRecycleView()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openActionIntroScreen(I)V
    .locals 1

    .line 96
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openChannelsCatalogScreen()V
    .locals 1

    .line 84
    sget-object v0, Lcom/iMe/ui/catalog/CatalogRootFragment;->Companion:Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;->newInstance()Lcom/iMe/ui/catalog/CatalogRootFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openCryptoBoxesScreen()V
    .locals 3

    .line 76
    sget-object v0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->Companion:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;->newInstance$default(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$Companion;Lorg/telegram/tgnet/TLRPC$Chat;ILjava/lang/Object;)Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingScreen()V
    .locals 1

    .line 80
    sget-object v0, Lcom/iMe/ui/wallet/staking/StakingFragment;->Companion:Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/staking/StakingFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openTelegramPremiumScreen()V
    .locals 1

    .line 92
    sget-object v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->Companion:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openTelegramUsernamesScreen()V
    .locals 1

    .line 88
    sget-object v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;->Companion:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public showRequiredWalletCreatedDialog(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;)V

    invoke-static {p0, p1, v0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
