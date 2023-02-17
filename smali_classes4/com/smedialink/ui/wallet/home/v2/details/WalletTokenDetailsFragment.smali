.class public final Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;
.implements Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;
.implements Lorg/fork/utils/TabbedViewPagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/WalletAuthFragment;",
        "Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;",
        "Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;",
        "Lorg/fork/utils/TabbedViewPagerDelegate<",
        "Lorg/fork/utils/TabbedFragmentPage<",
        "Lcom/smedialink/ui/base/mvp/MvpFragment;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTokenDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTokenDetailsFragment.kt\ncom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,784:1\n13#2,4:785\n56#3,6:789\n56#3,6:795\n1849#4,2:801\n1849#4,2:803\n1849#4,2:805\n1849#4,2:807\n1547#4:811\n1618#4,3:812\n1849#4,2:815\n1547#4:817\n1618#4,3:818\n1547#4:821\n1618#4,3:822\n254#5,2:809\n154#5,8:829\n154#5,8:837\n66#5,2:845\n307#5:847\n321#5,4:848\n308#5:852\n307#5:853\n321#5,4:854\n308#5:858\n371#5,2:859\n69#5:861\n38#5:862\n54#5:863\n73#5:864\n252#5:865\n11328#6:825\n11663#6,3:826\n1#7:866\n*S KotlinDebug\n*F\n+ 1 WalletTokenDetailsFragment.kt\ncom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment\n*L\n93#1:785,4\n94#1:789,6\n95#1:795,6\n125#1:801,2\n134#1:803,2\n140#1:805,2\n144#1:807,2\n379#1:811\n379#1:812,3\n402#1:815,2\n418#1:817\n418#1:818,3\n438#1:821\n438#1:822,3\n323#1:809,2\n632#1:829,8\n634#1:837,8\n635#1:845,2\n636#1:847\n636#1:848,4\n636#1:852\n645#1:853\n645#1:854,4\n645#1:858\n651#1:859,2\n635#1:861\n635#1:862\n635#1:863\n635#1:864\n677#1:865\n452#1:825\n452#1:826,3\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;


# instance fields
.field private final args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private headerMaxTranslationY:F

.field private isAppBarCollapsed:Z

.field private isProfitTextColored:Z

.field private final navigationRouter$delegate:Lkotlin/Lazy;

.field private final pageTabs$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private statusTextColorKey:Ljava/lang/String;

.field private final tokenBuyCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$IhshMTMXVb_FRTxnrIaPETYbnOw(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupListeners$lambda-43$lambda-42(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JX36-tpXJJF4Zwrv6Cng9VHm-cM(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->showLevelRequiredDialog$lambda-13(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NvQQV32011yHrr4b0bs0skKlkmU(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbar$lambda-61$lambda-60$lambda-59$lambda-56(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OQ7NKwZyFdeb2X8s6ue-gRMVBms(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->showAnimatedDialog$lambda-10(Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TvQZUiJGJyHnhntcBSzvXk0DjkU(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbar$lambda-61$lambda-60$lambda-59$lambda-57(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U_bHJeEYPoB_EazEwgDNHqyBWxg(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->showRequiredWalletCreatedDialog$lambda-9(Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$llJrkTesy_LT6r91KESqjYgQcT0(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupActionBar$lambda-39$lambda-38$lambda-37(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pqEUufF9UrJVNSm4lSnOW_Zm11g(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbar$lambda-61$lambda-60(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tL2elHlLVrmT4tRfE_1omc1QIf8(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupActionBar$lambda-39$lambda-38$lambda-36(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ueoHwv1ZjFGPpuvC6ttpCIJNJEg(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$yhEu56fs-R8qODMmaDzU57vXkK4(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupActionBar$lambda-39$lambda-35$lambda-34(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 93
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 98
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V
    .locals 4

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    .line 93
    new-instance p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 93
    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    .line 95
    invoke-static {}, Lcom/smedialink/di/module/NavigationModuleKt;->getCOMMON_TABS_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$navigationRouter$2;->INSTANCE:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$navigationRouter$2;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v3, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$special$$inlined$inject$default$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->navigationRouter$delegate:Lkotlin/Lazy;

    .line 98
    new-instance p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v2, p1, v0, v2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 99
    new-instance p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$pageTabs$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$pageTabs$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->pageTabs$delegate:Lkotlin/Lazy;

    const-string p1, "windowBackgroundWhiteBlueText"

    .line 102
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->statusTextColorKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)Lcom/smedialink/model/wallet/details/TokenDetailsArgs;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    return-object p0
.end method

.method public static final synthetic access$getNavigationRouter(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)Lcom/smedialink/navigation/common/router/base/NavigationRouter;
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPageTabs(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)Ljava/util/List;
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->initPageTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setHeaderMaxTranslationY$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;F)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->headerMaxTranslationY:F

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    return-object v0
.end method

.method private final getNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/smedialink/navigation/common/router/base/NavigationRouter<",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->navigationRouter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    return-object v0
.end method

.method private final getPageTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->pageTabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    return-object v0
.end method

.method private final getTokenBuyCoordinator()Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;

    return-object v0
.end method

.method private final initPageTabs()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    .line 414
    instance-of v1, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    new-array v0, v4, [Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;

    .line 415
    sget-object v1, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$All;->INSTANCE:Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$All;

    aput-object v1, v0, v6

    .line 416
    sget-object v1, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;->INSTANCE:Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;

    aput-object v1, v0, v5

    .line 417
    sget-object v1, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$Outgoing;->INSTANCE:Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup$Outgoing;

    aput-object v1, v0, v3

    .line 414
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;

    .line 419
    new-instance v3, Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 420
    invoke-virtual {v2}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;->getId()I

    move-result v4

    .line 421
    new-instance v12, Lorg/fork/utils/TabbedFragmentPage;

    .line 422
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-virtual {v2}, Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;->getNameResId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 423
    sget-object v5, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;

    .line 424
    new-instance v8, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab;

    invoke-direct {v8, v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab;-><init>(Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;)V

    .line 425
    iget-object v9, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    check-cast v9, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {v9}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAsset()Ljava/lang/String;

    move-result-object v9

    .line 423
    invoke-virtual {v5, v8, v9}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType;Ljava/lang/String;)Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    move-result-object v8

    .line 427
    new-instance v9, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$1$1;

    invoke-direct {v9, p0, v2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$1$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v12

    .line 421
    invoke-direct/range {v5 .. v11}, Lorg/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 419
    invoke-direct {v3, v4, v12}, Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILorg/fork/utils/TabbedFragmentPage;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 432
    :cond_0
    instance-of v1, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/model/wallet/details/TransactionsGroup;

    .line 433
    sget-object v1, Lcom/smedialink/model/wallet/details/TransactionsGroup$All;->INSTANCE:Lcom/smedialink/model/wallet/details/TransactionsGroup$All;

    aput-object v1, v0, v6

    .line 434
    sget-object v1, Lcom/smedialink/model/wallet/details/TransactionsGroup$Incoming;->INSTANCE:Lcom/smedialink/model/wallet/details/TransactionsGroup$Incoming;

    aput-object v1, v0, v5

    .line 435
    sget-object v1, Lcom/smedialink/model/wallet/details/TransactionsGroup$Outgoing;->INSTANCE:Lcom/smedialink/model/wallet/details/TransactionsGroup$Outgoing;

    aput-object v1, v0, v3

    .line 436
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getCryptoPreferenceHelper()Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/smedialink/model/wallet/details/TransactionsGroup$Swap;->INSTANCE:Lcom/smedialink/model/wallet/details/TransactionsGroup$Swap;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    aput-object v1, v0, v4

    .line 432
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/model/wallet/details/TransactionsGroup;

    .line 439
    new-instance v3, Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 440
    invoke-virtual {v2}, Lcom/smedialink/model/wallet/details/TransactionsGroup;->getId()I

    move-result v4

    .line 441
    new-instance v12, Lorg/fork/utils/TabbedFragmentPage;

    .line 442
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-virtual {v2}, Lcom/smedialink/model/wallet/details/TransactionsGroup;->getNameResId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 443
    sget-object v5, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    .line 444
    new-instance v8, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$TokenDetailsTab;

    invoke-direct {v8, v2}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$TokenDetailsTab;-><init>(Lcom/smedialink/model/wallet/details/TransactionsGroup;)V

    .line 445
    iget-object v9, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    check-cast v9, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v9}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/smedialink/model/wallet/home/AccountItem$Token;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    .line 443
    invoke-virtual {v5, v8, v9}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object v8

    .line 447
    new-instance v9, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$2$1;

    invoke-direct {v9, p0, v2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$2$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lcom/smedialink/model/wallet/details/TransactionsGroup;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v12

    .line 441
    invoke-direct/range {v5 .. v11}, Lorg/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 439
    invoke-direct {v3, v4, v12}, Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILorg/fork/utils/TabbedFragmentPage;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 452
    :cond_2
    instance-of v0, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->values()[Lcom/smedialink/model/wallet/details/StakingOperationsGroup;

    move-result-object v0

    .line 11328
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v2, v0

    :goto_3
    if-ge v6, v2, :cond_3

    aget-object v3, v0, v6

    .line 453
    new-instance v4, Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 454
    invoke-virtual {v3}, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->getId()I

    move-result v5

    .line 455
    new-instance v14, Lorg/fork/utils/TabbedFragmentPage;

    .line 456
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    invoke-virtual {v3}, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->getNameResId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 457
    sget-object v7, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    .line 458
    new-instance v10, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;

    .line 459
    iget-object v11, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    check-cast v11, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v11}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object v11

    .line 460
    invoke-virtual {v3}, Lcom/smedialink/model/wallet/details/StakingOperationsGroup;->getStakingOperationType()Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    move-result-object v12

    .line 458
    invoke-direct {v10, v11, v12}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;-><init>(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;)V

    .line 462
    sget-object v11, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v12, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    check-cast v12, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v12}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smedialink/model/staking/StakingDetailsItem;->getTokenTicker()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v11

    .line 457
    invoke-virtual {v7, v10, v11}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object v10

    .line 464
    new-instance v11, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$3$1;

    invoke-direct {v11, p0, v3}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$3$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lcom/smedialink/model/wallet/details/StakingOperationsGroup;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v7, v14

    .line 455
    invoke-direct/range {v7 .. v13}, Lorg/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 453
    invoke-direct {v4, v5, v14}, Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILorg/fork/utils/TabbedFragmentPage;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    return-object v1

    .line 11328
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final onSubItemClick(I)V
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    .line 722
    instance-of v1, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v1, :cond_0

    .line 723
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->TOKEN_STATISTICS:I

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    check-cast v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startTokenDistributionDialog(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    goto/16 :goto_0

    .line 725
    :cond_0
    instance-of v1, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_3

    .line 726
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->TOKEN_SMART_CONTRACT_ADDRESS:I

    if-ne p1, v1, :cond_2

    check-cast v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/smedialink/model/wallet/home/AccountItem$Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    .line 729
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    .line 730
    sget-object v1, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->INSTANCE:Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/smedialink/storage/domain/provider/crypto/SmartContractProvider;->getContract(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    .line 728
    :cond_1
    invoke-static {v0, p1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->formatScanTokenUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 727
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :cond_2
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->TOKEN_SITE:I

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    check-cast v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/smedialink/model/wallet/home/AccountItem$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getSite()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 736
    :cond_3
    instance-of v1, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v1, :cond_5

    .line 737
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->STAKING_CONTRACT:I

    if-ne p1, v1, :cond_4

    check-cast v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object p1

    .line 738
    sget-object v0, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Crypto;

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getContract()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/smedialink/storage/common/AppConfiguration$Crypto;->formatScanAddressUrl(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_4
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->STAKING_WEBSITE:I

    if-ne p1, v1, :cond_5

    check-cast v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getWebsite()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private final openUrl(Ljava/lang/String;)V
    .locals 1

    .line 746
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final setupActionBar()V
    .locals 6

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 544
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 545
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 546
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 547
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string v3, ""

    .line 548
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 549
    new-instance v4, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrGoBack:I

    const-string v5, "AccDescrMoreOptions"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 555
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    const/4 v1, 0x2

    .line 556
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 557
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 558
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 559
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupMenuItems(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    .line 560
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 562
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupActionBar$lambda-39$lambda-35$lambda-34(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static final setupActionBar$lambda-39$lambda-38$lambda-36(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_with"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private static final setupActionBar$lambda-39$lambda-38$lambda-37(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->onSubItemClick(I)V

    return-void
.end method

.method private final setupCollapsingToolbar()V
    .locals 11

    .line 628
    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 629
    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 630
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 631
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v1

    .line 632
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    const-string v3, "toolbar"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    .line 160
    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 633
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v6, ""

    .line 634
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v7, v8

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 160
    invoke-virtual {v0, v8, v7, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 66
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v7

    if-nez v7, :cond_1

    .line 636
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {v3, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 637
    iget v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v9, v10

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 640
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 641
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPivotX()F

    move-result v3

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v3, v9

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 643
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    .line 644
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v9

    const/16 v9, 0xa

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v3, v9

    .line 645
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v3, v3

    .line 648
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 649
    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    .line 651
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v3, "itemBack"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 372
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    .line 651
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 652
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/smedialink/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->access$setHeaderMaxTranslationY$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;F)V

    goto :goto_1

    .line 38
    :cond_1
    new-instance v3, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;

    invoke-direct {v3, v1, v4, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda-61$lambda-50$$inlined$doOnLayout$1;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 655
    :goto_1
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    .line 656
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setPivotX(F)V

    .line 657
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setPivotY(F)V

    .line 659
    iget-object v6, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v7, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v6, v7}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private static final setupCollapsingToolbar$lambda-61$lambda-60(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 6

    const-string p5, "$this_with"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$lastScrollPercent"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "this$0"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$collapsedTranslationX"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$isHeaderUnderlayAnimating"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p5

    int-to-float p5, p5

    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p6}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p5, p6

    .line 662
    iget p6, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpg-float p6, p5, p6

    if-nez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    if-eqz p6, :cond_1

    return-void

    .line 665
    :cond_1
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-static {p6}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p6

    const/4 v2, 0x0

    if-eqz p6, :cond_2

    .line 666
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/smedialink/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {p6, v2}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 667
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {p6, v2}, Landroid/view/View;->setElevation(F)V

    goto :goto_1

    .line 669
    :cond_2
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/smedialink/ui/custom/HorizontalActionButtonsView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p6, v3}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 670
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {p6, v3}, Landroid/view/View;->setElevation(F)V

    .line 672
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p6

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    instance-of v3, v3, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p6, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    const/high16 p6, 0x3f800000    # 1.0f

    cmpg-float v3, p5, p6

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 673
    :goto_3
    iput-boolean v3, p2, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isAppBarCollapsed:Z

    .line 674
    iput p5, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 675
    iget p1, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    mul-float p1, p1, p5

    int-to-float p3, v1

    const/4 v3, 0x3

    int-to-float v3, v3

    div-float v3, p5, v3

    sub-float v3, p3, v3

    .line 677
    iget-object v4, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lorg/fork/ui/view/AccountLevelBadgeView;

    const-string v5, "accountRankBadge"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_6

    .line 678
    iget-object v4, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lorg/fork/ui/view/AccountLevelBadgeView;

    sub-float/2addr p3, p5

    invoke-virtual {v4, p3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 680
    :cond_6
    iget-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 681
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    const/16 v4, 0x20

    .line 682
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p5

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 684
    iget-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    .line 685
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 686
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 687
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    const/16 v4, 0x1e

    .line 688
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p5

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 690
    iget-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 691
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 692
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 693
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    const/16 p1, 0x1c

    .line 694
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p5

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 696
    iget-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p3, p2, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->headerMaxTranslationY:F

    mul-float p3, p3, p5

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 697
    invoke-direct {p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbarColors()V

    .line 698
    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    .line 699
    iget-boolean p1, p2, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isAppBarCollapsed:Z

    const-wide/16 p2, 0x64

    if-eqz p1, :cond_7

    .line 700
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 701
    invoke-virtual {p0, p6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 702
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 703
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 704
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p1

    cmpg-float p1, p1, p6

    if-nez p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_9

    iget-boolean p1, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_9

    .line 705
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 706
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 707
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 708
    new-instance p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, p4}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 709
    new-instance p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1, p4}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 710
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 712
    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    :goto_5
    return-void
.end method

.method private static final setupCollapsingToolbar$lambda-61$lambda-60$lambda-59$lambda-56(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    const-string v0, "$isHeaderUnderlayAnimating"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 708
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private static final setupCollapsingToolbar$lambda-61$lambda-60$lambda-59$lambda-57(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    const-string v0, "$isHeaderUnderlayAnimating"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 709
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private final setupCollapsingToolbarColors()V
    .locals 4

    .line 527
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 528
    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isAppBarCollapsed:Z

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "actionBarActionModeDefaultIcon"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 530
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 531
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "actionBarDefaultIcon"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 535
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 536
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "actionBarDefaultTitle"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private final setupColors()V
    .locals 10

    .line 472
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 473
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    const-string v2, "windowBackgroundWhite"

    .line 474
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const-string v5, "chats_actionBackground"

    .line 475
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-virtual {v1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 477
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerStaking:Landroid/view/View;

    const-string v4, "windowBackgroundGray"

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 478
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 479
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textStakingInfo:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, ""

    .line 480
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const-string v7, "profile_tabSelectedText"

    .line 481
    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageStakingInfo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 484
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v1, v8}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 485
    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 487
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewAnnualPercentageCell:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string v8, "viewAnnualPercentageCell.textView"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 488
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewProfitCell:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 489
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 491
    iget-boolean v8, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isProfitTextColored:Z

    if-eqz v8, :cond_0

    const-string v8, "chat_inDownCall"

    goto :goto_0

    :cond_0
    const-string v8, "windowBackgroundWhiteBlackText"

    .line 490
    :goto_0
    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewFinishedCell:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 496
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 497
    iget-object v8, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->statusTextColorKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v8, "actionBarDefault"

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 501
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 502
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 503
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    const-string v4, "actionBarActionModeDefault"

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 504
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 505
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearHeader:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 506
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/smedialink/ui/custom/HorizontalActionButtonsView;

    .line 507
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 508
    invoke-virtual {v1}, Lcom/smedialink/ui/custom/HorizontalActionButtonsView;->setupColors()V

    .line 510
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "actionBarDefaultSubmenuBackground"

    .line 511
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    const-string v2, "actionBarDefaultSubmenuItem"

    .line 512
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    const-string v2, "actionBarDefaultSubmenuItemIcon"

    .line 513
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    const-string v2, "listSelectorSDK21"

    .line 514
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setupPopupRadialSelectors(I)V

    .line 515
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 517
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "textAccountBalance"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 518
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTransactions:Landroidx/appcompat/widget/AppCompatTextView;

    .line 519
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 520
    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbarColors()V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 608
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 609
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lorg/fork/ui/view/AccountLevelBadgeView;

    const-string v2, "accountRankBadge"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupListeners$1$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 610
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageStakingInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "imageStakingInfo"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupListeners$1$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 611
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupListeners$lambda-43$lambda-42(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->reload()V

    return-void
.end method

.method private final setupMenuItems(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 5

    .line 569
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    .line 570
    instance-of v1, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v1, :cond_0

    .line 571
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->TOKEN_STATISTICS:I

    .line 572
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_token_statistic:I

    .line 573
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_distribution_action:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_0

    .line 575
    :cond_0
    instance-of v1, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/smedialink/model/wallet/home/AccountItem$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    .line 576
    invoke-static {v0}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->isWithSmartContractAddress(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->TOKEN_SMART_CONTRACT_ADDRESS:I

    .line 579
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_etherscan:I

    .line 580
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_view_smart_contract:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 583
    :cond_1
    invoke-static {v0}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->isWithWebsite(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->TOKEN_SITE:I

    .line 586
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_web_26:I

    .line 587
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_site_action:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 575
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 591
    :cond_3
    instance-of v0, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_4

    .line 593
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->STAKING_CONTRACT:I

    .line 594
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_etherscan:I

    .line 595
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_details_contract_action:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 598
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->STAKING_WEBSITE:I

    .line 599
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_web_26:I

    .line 600
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_site_action:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :goto_0
    return-void

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final setupRootView()V
    .locals 4

    .line 621
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 623
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    return-void
.end method

.method private final setupTexts()V
    .locals 3

    .line 616
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTransactions:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final showAnimatedDialog$lambda-10(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-interface {p0}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private static final showLevelRequiredDialog$lambda-13(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->Companion:Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;

    sget-object v1, Lcom/smedialink/model/common/ScreenType;->FULLSCREEN:Lcom/smedialink/model/common/ScreenType;

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;->newInstance(Lcom/smedialink/model/common/ScreenType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final showQrReceiveDialog(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 12

    .line 752
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    .line 754
    invoke-virtual {p3}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/smedialink/utils/helper/wallet/CryptoHelper;->formatAddressQR(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v5

    .line 751
    new-instance v11, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;

    move-object v0, v11

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;-><init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 768
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_btn_text:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 771
    invoke-virtual {p3}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v10

    move-object v5, v11

    move-object v8, p2

    move-object v9, p1

    .line 766
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setupWalletTypeReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    .line 773
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 750
    invoke-virtual {p0, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showRequiredWalletCreatedDialog$lambda-9(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-interface {p0}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method


# virtual methods
.method public synthetic bind(Lorg/fork/utils/AbstractTabbedViewPage;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/utils/TabbedViewPagerDelegate$-CC;->$default$bind(Lorg/fork/utils/TabbedViewPagerDelegate;Lorg/fork/utils/AbstractTabbedViewPage;I)V

    return-void
.end method

.method public getFragmentContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 387
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lorg/fork/ui/view/TabbedViewPager;

    const-string v1, "binding.transactionsPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            ">;>;"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPageTabs()Ljava/util/List;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 379
    invoke-virtual {v2}, Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;->getPage()Lorg/fork/utils/TabbedFragmentPage;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    return-object p0
.end method

.method public synthetic getScrollableHeaderView()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lorg/fork/utils/TabbedViewPagerDelegate$-CC;->$default$getScrollableHeaderView(Lorg/fork/utils/TabbedViewPagerDelegate;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    invoke-static {p0}, Lorg/fork/utils/TabbedViewPagerDelegate$-CC;->$default$getSwipeRefreshLayout(Lorg/fork/utils/TabbedViewPagerDelegate;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 393
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    new-instance v9, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v9, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v10, "windowBackgroundGray"

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v11, v2, v3

    .line 394
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewAnnualPercentageCell:Lorg/telegram/ui/Cells/TextDetailCell;

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v6, v15, v3

    const-string v6, "textView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "windowBackgroundWhiteBlackText"

    move-object v12, v4

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v4, v2, v5

    .line 395
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewAnnualPercentageCell:Lorg/telegram/ui/Cells/TextDetailCell;

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v9, v8, v3

    const-string v9, "valueTextView"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "windowBackgroundWhiteGrayText2"

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    move-object/from16 v24, v8

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x2

    aput-object v4, v2, v7

    .line 396
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewProfitCell:Lorg/telegram/ui/Cells/TextDetailCell;

    new-array v13, v5, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v7, v13, v3

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v18, "windowBackgroundWhiteBlackText"

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x3

    aput-object v4, v2, v7

    .line 397
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewProfitCell:Lorg/telegram/ui/Cells/TextDetailCell;

    new-array v13, v5, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v7, v13, v3

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    const-string v18, "windowBackgroundWhiteGrayText2"

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v4, v2, v7

    .line 398
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewFinishedCell:Lorg/telegram/ui/Cells/TextDetailCell;

    new-array v13, v5, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v7, v13, v3

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    const-string v18, "windowBackgroundWhiteBlackText"

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x5

    aput-object v4, v2, v6

    .line 399
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewFinishedCell:Lorg/telegram/ui/Cells/TextDetailCell;

    new-array v13, v5, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v5, v13, v3

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    iget-object v3, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->statusTextColorKey:Ljava/lang/String;

    move-object v10, v4

    move-object/from16 v18, v3

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v4, v2, v3

    .line 392
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 401
    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lorg/fork/ui/view/TabbedViewPager;

    invoke-virtual {v1}, Lorg/fork/ui/view/TabbedViewPager;->getThemeDescription()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v1

    .line 1849
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/ui/base/mvp/MvpFragment;

    .line 403
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lorg/fork/ui/view/TabbedViewPager;

    invoke-virtual {p1}, Lorg/fork/ui/view/TabbedViewPager;->isSwipeBackEnabled()Z

    move-result p1

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 124
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 125
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/MvpFragment;

    .line 125
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupActionBar()V

    .line 109
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbar()V

    .line 110
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupColors()V

    .line 111
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupListeners()V

    .line 112
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupRootView()V

    .line 113
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupTexts()V

    .line 115
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/MvpFragment;

    .line 134
    invoke-virtual {v1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onDestroyView()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onDestroyView()V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->clean()V

    .line 130
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public bridge synthetic onPageChanged(Lorg/fork/utils/AbstractTabbedViewPage;Lorg/fork/utils/AbstractTabbedViewPage;II)V
    .locals 0

    .line 88
    check-cast p1, Lorg/fork/utils/TabbedFragmentPage;

    check-cast p2, Lorg/fork/utils/TabbedFragmentPage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->onPageChanged(Lorg/fork/utils/TabbedFragmentPage;Lorg/fork/utils/TabbedFragmentPage;II)V

    return-void
.end method

.method public onPageChanged(Lorg/fork/utils/TabbedFragmentPage;Lorg/fork/utils/TabbedFragmentPage;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            ">;",
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            ">;II)V"
        }
    .end annotation

    const-string p4, "newPage"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "oldPage"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Lorg/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/MvpFragment;

    invoke-virtual {p2}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    .line 383
    invoke-virtual {p1}, Lorg/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/base/mvp/MvpFragment;

    invoke-virtual {p1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    .line 384
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->selectTab(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/MvpFragment;

    .line 144
    invoke-virtual {v1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/MvpFragment;

    .line 140
    invoke-virtual {v1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 8

    .line 360
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;

    .line 363
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPageTabs()Ljava/util/List;

    move-result-object v2

    .line 361
    invoke-direct {v1, p0, v2}, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 360
    invoke-interface {v0, v1}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->init(Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;)V

    .line 366
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lorg/fork/ui/view/TabbedViewPager;

    .line 367
    sget-object v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-virtual {v0, p0, v1}, Lorg/fork/ui/view/TabbedViewPager;->init(Lorg/fork/utils/TabbedViewPagerDelegate;Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V

    .line 368
    invoke-virtual {v0}, Lorg/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    const/4 v0, 0x2

    .line 369
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    const-string v3, "profile_tabSelectedLine"

    const-string v4, "profile_tabSelectedText"

    const-string v5, "profile_tabText"

    const-string v6, "profile_tabSelector"

    const-string v7, "actionBarActionModeDefault"

    .line 370
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 351
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lorg/fork/ui/view/TabbedViewPager;

    .line 352
    invoke-virtual {v0}, Lorg/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 353
    invoke-virtual {v0}, Lorg/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 354
    invoke-virtual {v0}, Lorg/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPageTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/WalletTokenDetailsNavigationTab;->getId()I

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTabWithId(IF)V

    :cond_0
    return-void
.end method

.method public onViewReady()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->onViewReady()V

    .line 120
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->setupNavigationRouter()V

    return-void
.end method

.method public openBinanceReceiveScreen(Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    new-instance v0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinancePay(Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openBinanceReplenishScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 9

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinanceReplenish(Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openBinanceSwapScreen(Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 4

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/model/wallet/select/SelectableToken;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openBuyScreen(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getTokenBuyCoordinator()Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v0, "parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->start$default(Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;ZILjava/lang/Object;)V

    return-void
.end method

.method public openCreateWalletScreen(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "words"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    .line 309
    new-instance v1, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType$Backup;

    .line 308
    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$openCreateWalletScreen$1;

    invoke-direct {v2, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$openCreateWalletScreen$1;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 309
    invoke-direct {v1, v2}, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType$Backup;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 308
    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance(Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p1

    .line 307
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 298
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {v1, p2, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openReceiveScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->showQrReceiveDialog(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public openSendScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 9

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 225
    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForWalletTransfer(Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingCalculatorScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingCalculator(Lcom/smedialink/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingProfitScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingProfit(Lcom/smedialink/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingReplenishScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 239
    invoke-static {p1, v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingReplenish(Lcom/smedialink/model/staking/StakingDetailsItem;Ljava/lang/Double;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingWithdrawScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingWithdraw(Lcom/smedialink/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public setupHorizontalActionButtons(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actionsItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/smedialink/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/custom/HorizontalActionButtonsView;->initButtons(Ljava/util/List;)V

    return-void
.end method

.method public setupRankBadge(ZLcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 2

    const-string v0, "accountLevel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lorg/fork/ui/view/AccountLevelBadgeView;

    const-string v1, ""

    .line 323
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 254
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {v0, p2}, Lorg/fork/ui/view/AccountLevelBadgeView;->setAccountLevel(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public setupStakingDetailsScreen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/model/staking/StakingProgrammeStatus;)V
    .locals 2

    const-string v0, "titleText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "balanceText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annualTitleText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annualValueText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profitText"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 182
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 183
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string p2, "linearStakingInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 186
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textStakingInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->staking_details_info:I

    invoke-interface {p2, p3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageStakingInfo:Landroidx/appcompat/widget/AppCompatImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 188
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewAnnualPercentageCell:Lorg/telegram/ui/Cells/TextDetailCell;

    const/4 p2, 0x1

    invoke-virtual {p1, p5, p4, p2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 189
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewProfitCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 190
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$string;->staking_details_profit:I

    invoke-interface {p3, p4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p6, p3, p2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 191
    iput-boolean p7, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isProfitTextColored:Z

    .line 192
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 193
    iget-boolean p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isProfitTextColored:Z

    if-eqz p2, :cond_0

    const-string p2, "chat_inDownCall"

    goto :goto_0

    :cond_0
    const-string p2, "windowBackgroundWhiteBlackText"

    .line 192
    :goto_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    invoke-virtual {p8}, Lcom/smedialink/model/staking/StakingProgrammeStatus;->getColorKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->statusTextColorKey:Ljava/lang/String;

    .line 199
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewFinishedCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 201
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    invoke-virtual {p8}, Lcom/smedialink/model/staking/StakingProgrammeStatus;->getTextResId()I

    move-result p3

    invoke-interface {p2, p3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 202
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$string;->wallet_transaction_details_status_title:I

    invoke-interface {p3, p4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 200
    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 205
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->statusTextColorKey:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setupTransactionsScreen(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V
    .locals 4

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 157
    instance-of v1, p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageCoinIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;

    invoke-virtual {v3}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->getRefererHeader()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getTotalBalanceShortText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    check-cast p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/smedialink/model/wallet/home/AccountItem$Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/smedialink/model/wallet/home/AccountItem$Token;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 164
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/smedialink/model/wallet/home/AccountItem$Token;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getFullName()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/smedialink/model/wallet/home/AccountItem$Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAccountLevelDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 3

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    new-instance v0, Lorg/fork/ui/dialog/AccountLevelAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-direct {v0, v1, p1, v2}, Lorg/fork/ui/dialog/AccountLevelAlert;-><init>(Landroid/content/Context;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;Lorg/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;)V

    .line 333
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 329
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showAlreadyCreatedWalletWarningDialog(Lcom/smedialink/model/dialog/DialogModel;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 9

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v0, "parentActivity"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    .line 289
    new-instance v3, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAlreadyCreatedWalletWarningDialog$1$1;

    invoke-direct {v3, p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAlreadyCreatedWalletWarningDialog$1$1;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/dialogs/DialogExtKt;->makeClickableDescription$default(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 292
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 288
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showAnimatedDialog(Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/fork/utils/Callbacks$Callback;)V

    invoke-static {p0, p1, v0}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createDialogWithAnimation(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 2

    const-string v0, "minimalRank"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-static {p0, v0, p1, v1}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->showStakingLevelRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 347
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showRequiredVerifyDialog()V
    .locals 1

    .line 272
    invoke-static {p0}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createBinanceVerificationRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRequiredWalletCreatedDialog(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda8;-><init>(Lorg/fork/utils/Callbacks$Callback;)V

    invoke-static {p0, v0}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showStakingConditionsDialog(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;

    invoke-virtual {v0, p1, p0}, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;->newInstance(Lcom/smedialink/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showStatisticDialog(Lcom/smedialink/model/statistic/StatisticDiagramModel;)V
    .locals 7

    const-string v0, "distributionDiagramModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 216
    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createDiagramDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/model/statistic/StatisticDiagramModel;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
