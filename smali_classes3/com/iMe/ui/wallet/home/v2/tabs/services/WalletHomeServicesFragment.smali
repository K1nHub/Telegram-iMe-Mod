.class public final Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;
.super Lcom/iMe/ui/wallet/home/v2/tabs/WalletHomeTabFragment;
.source "WalletHomeServicesFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$Companion;,
        Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeServicesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeServicesFragment.kt\ncom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,124:1\n13#2,4:125\n56#3,6:129\n*S KotlinDebug\n*F\n+ 1 WalletHomeServicesFragment.kt\ncom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment\n*L\n30#1:125,4\n31#1:129,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$Companion;


# instance fields
.field private final balancesRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$1uDiMESJ-nmt_chbEG4K73PRKG4(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->showRequiredWalletCreatedDialog$lambda$2(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uyt57IIwgAHF2IQMRylrsRmhzno(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->setupListeners$lambda$5$lambda$4(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rdmo93iNfleYFfrDdtAeZ3DZYdw(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 30
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 34
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->Companion:Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 27
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/WalletHomeTabFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 30
    iput-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->balancesRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 34
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method private final getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->balancesRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    .line 88
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$5$lambda$4(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 96
    instance-of p2, p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    if-eqz p2, :cond_5

    .line 97
    check-cast p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/ServicesBasicItem;->getCategory()Lcom/iMe/model/wallet/home/ServicesCategory;

    move-result-object p1

    sget-object p2, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    const/16 p2, 0x6b

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 101
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    const/16 p2, 0x69

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 100
    :cond_2
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    const/16 p2, 0x6a

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 99
    :cond_3
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;->onStakingClick()V

    goto :goto_0

    .line 98
    :cond_4
    sget-object p1, Lcom/iMe/ui/catalog/CatalogRootFragment;->Companion:Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;

    invoke-virtual {p1}, Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;->newInstance()Lcom/iMe/ui/catalog/CatalogRootFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private final setupWalletRecycleView()V
    .locals 3

    .line 110
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->recycleWalletHomeServicesDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v1

    .line 112
    new-instance v2, Lcom/iMe/ui/wallet/home/v2/adapter/diff/BalanceDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/home/v2/adapter/diff/BalanceDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 111
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const-string v1, "setupWalletRecycleView$lambda$7"

    .line 115
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->disableDefaultAnimation(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private static final showRequiredWalletCreatedDialog$lambda$2(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->selectTab(I)V

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

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getBalancesRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 10
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

    .line 47
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 46
    new-instance v7, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundGray"

    move-object v1, v9

    .line 47
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 46
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->recycleWalletHomeServicesDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public loadBalances()V
    .locals 0

    return-void
.end method

.method public loadTabInfo()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->setupColors()V

    .line 40
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->setupListeners()V

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->setupWalletRecycleView()V

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openStakingScreen()V
    .locals 1

    .line 79
    sget-object v0, Lcom/iMe/ui/wallet/staking/StakingFragment;->Companion:Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/staking/StakingFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public showRequiredWalletCreatedDialog()V
    .locals 2

    .line 72
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;)V

    invoke-static {p0, v0, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
