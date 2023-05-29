.class public final Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;
.super Lcom/iMe/ui/base/WalletAuthFragment;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;
.implements Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;
.implements Lcom/iMe/fork/utils/TabbedViewPagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/WalletAuthFragment;",
        "Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;",
        "Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;",
        "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
        "Lcom/iMe/fork/utils/TabbedFragmentPage<",
        "Lcom/iMe/ui/base/mvp/MvpFragment;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTokenDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTokenDetailsFragment.kt\ncom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,789:1\n13#2,4:790\n56#3,6:794\n56#3,6:800\n1855#4,2:806\n1855#4,2:808\n1855#4,2:810\n1855#4,2:812\n1549#4:816\n1620#4,3:817\n1855#4,2:820\n1549#4:822\n1620#4,3:823\n1549#4:826\n1620#4,3:827\n262#5,2:814\n162#5,8:834\n162#5,8:842\n68#5,2:850\n315#5:852\n329#5,4:853\n316#5:857\n315#5:858\n329#5,4:859\n316#5:863\n379#5,2:864\n71#5:866\n40#5:867\n56#5:868\n75#5:869\n260#5:870\n11335#6:830\n11670#6,3:831\n1#7:871\n*S KotlinDebug\n*F\n+ 1 WalletTokenDetailsFragment.kt\ncom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment\n*L\n95#1:790,4\n96#1:794,6\n97#1:800,6\n127#1:806,2\n136#1:808,2\n142#1:810,2\n146#1:812,2\n386#1:816\n386#1:817,3\n409#1:820,2\n425#1:822\n425#1:823,3\n445#1:826\n445#1:827,3\n330#1:814,2\n639#1:834,8\n641#1:842,8\n642#1:850,2\n643#1:852\n643#1:853,4\n643#1:857\n652#1:858\n652#1:859,4\n652#1:863\n658#1:864,2\n642#1:866\n642#1:867\n642#1:868\n642#1:869\n684#1:870\n459#1:830\n459#1:831,3\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;


# instance fields
.field private final args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private headerMaxTranslationY:F

.field private isAppBarCollapsed:Z

.field private isProfitTextColored:Z

.field private final navigationRouter$delegate:Lkotlin/Lazy;

.field private final pageTabs$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private statusTextColorKey:I

.field private final tokenBuyCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$3J2FMSQHzADxiYjRAGsyKqqaDH0(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupActionBar$lambda$39$lambda$38$lambda$37(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6L9lV8b_m-R_eeo7diZQwexw2l0(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->showAnimatedDialog$lambda$10(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8mRAU3BwldrGGsJ7a12d7fcYSMg(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupActionBar$lambda$39$lambda$35$lambda$34(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8n1ZWRjLvnNTCpq7AHLO21yKyxE(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$VETiZnrH-n3dXi8oumnN-G1C5PI(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->showRequiredWalletCreatedDialog$lambda$9(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aGBs8kboJ0vv-UnbKgDGt6Oy9s4(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbar$lambda$61$lambda$60$lambda$59$lambda$57(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aQ40xQmzZLCQpY2XAoz9vDZt3VY(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupListeners$lambda$43$lambda$42(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bOnX7oDs2mUiPWlJyKQIIoxSDA0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupActionBar$lambda$39$lambda$38$lambda$36(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gP75NCIkvqbHh3QnMe3WOkW5qNU(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbar$lambda$61$lambda$60(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gbJbwZRLyMYw98behpCxZVrgVtE(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbar$lambda$61$lambda$60$lambda$59$lambda$56(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k9IEG1SBGNqckrUNVtTfnmhQwlo(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->showLevelRequiredDialog$lambda$13(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 95
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 100
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->Companion:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 4

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/base/WalletAuthFragment;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 95
    new-instance p1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

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

    .line 95
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    .line 97
    invoke-static {}, Lcom/iMe/di/module/NavigationModuleKt;->getCOMMON_TABS_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$navigationRouter$2;->INSTANCE:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$navigationRouter$2;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v3, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$special$$inlined$inject$default$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->navigationRouter$delegate:Lkotlin/Lazy;

    .line 100
    new-instance p1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v2, p1, v0, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 101
    new-instance p1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$pageTabs$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$pageTabs$2;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->pageTabs$delegate:Lkotlin/Lazy;

    .line 104
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    iput p1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->statusTextColorKey:I

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)Lcom/iMe/model/wallet/details/TokenDetailsArgs;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    return-object p0
.end method

.method public static final synthetic access$getNavigationRouter(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPageTabs(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)Ljava/util/List;
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->initPageTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setHeaderMaxTranslationY$p(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;F)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->headerMaxTranslationY:F

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    return-object v0
.end method

.method private final getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/navigation/common/router/base/NavigationRouter<",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->navigationRouter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/common/router/base/NavigationRouter;

    return-object v0
.end method

.method private final getPageTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->pageTabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    return-object v0
.end method

.method private final getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    return-object v0
.end method

.method private final initPageTabs()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 421
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    new-array v0, v4, [Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;

    .line 422
    sget-object v1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$All;->INSTANCE:Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$All;

    aput-object v1, v0, v6

    .line 423
    sget-object v1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;->INSTANCE:Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;

    aput-object v1, v0, v5

    .line 424
    sget-object v1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$Outgoing;->INSTANCE:Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$Outgoing;

    aput-object v1, v0, v3

    .line 421
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;

    .line 426
    new-instance v3, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 427
    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;->getId()I

    move-result v4

    .line 428
    new-instance v12, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 429
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;->getNameResId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 430
    sget-object v5, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;->Companion:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;

    .line 431
    new-instance v8, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab;

    invoke-direct {v8, v2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab;-><init>(Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;)V

    .line 432
    iget-object v9, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v9, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {v9}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAsset()Ljava/lang/String;

    move-result-object v9

    .line 430
    invoke-virtual {v5, v8, v9}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType;Ljava/lang/String;)Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    move-result-object v8

    .line 434
    new-instance v9, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$1$1;

    invoke-direct {v9, p0, v2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$1$1;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v12

    .line 428
    invoke-direct/range {v5 .. v11}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 426
    invoke-direct {v3, v4, v12}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/model/wallet/details/TransactionsGroup;

    .line 440
    sget-object v1, Lcom/iMe/model/wallet/details/TransactionsGroup$All;->INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$All;

    aput-object v1, v0, v6

    .line 441
    sget-object v1, Lcom/iMe/model/wallet/details/TransactionsGroup$Incoming;->INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$Incoming;

    aput-object v1, v0, v5

    .line 442
    sget-object v1, Lcom/iMe/model/wallet/details/TransactionsGroup$Outgoing;->INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$Outgoing;

    aput-object v1, v0, v3

    .line 443
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    sget-object v3, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/iMe/model/wallet/details/TransactionsGroup$Swap;->INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$Swap;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    aput-object v1, v0, v4

    .line 439
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/model/wallet/details/TransactionsGroup;

    .line 446
    new-instance v3, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 447
    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/TransactionsGroup;->getId()I

    move-result v4

    .line 448
    new-instance v12, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 449
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/TransactionsGroup;->getNameResId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 450
    sget-object v5, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    .line 451
    new-instance v8, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$TokenDetailsTab;

    invoke-direct {v8, v2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$TokenDetailsTab;-><init>(Lcom/iMe/model/wallet/details/TransactionsGroup;)V

    .line 452
    iget-object v9, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v9, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v9}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    .line 450
    invoke-virtual {v5, v8, v9}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object v8

    .line 454
    new-instance v9, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$2$1;

    invoke-direct {v9, p0, v2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$2$1;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lcom/iMe/model/wallet/details/TransactionsGroup;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v12

    .line 448
    invoke-direct/range {v5 .. v11}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 446
    invoke-direct {v3, v4, v12}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 459
    :cond_2
    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->values()[Lcom/iMe/model/wallet/details/StakingOperationsGroup;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    :goto_3
    if-ge v6, v2, :cond_3

    aget-object v3, v0, v6

    .line 460
    new-instance v4, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 461
    invoke-virtual {v3}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->getId()I

    move-result v5

    .line 462
    new-instance v14, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 463
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    invoke-virtual {v3}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->getNameResId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 464
    sget-object v7, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    .line 465
    new-instance v10, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;

    .line 466
    iget-object v11, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v11, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v11}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v11

    .line 467
    invoke-virtual {v3}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->getStakingOperationType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    move-result-object v12

    .line 465
    invoke-direct {v10, v11, v12}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;-><init>(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/staking/StakingOperationType;)V

    .line 469
    sget-object v11, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v12, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v12, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v12}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenTicker()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v11

    .line 464
    invoke-virtual {v7, v10, v11}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object v10

    .line 471
    new-instance v11, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$3$1;

    invoke-direct {v11, p0, v3}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$initPageTabs$3$1;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lcom/iMe/model/wallet/details/StakingOperationsGroup;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v7, v14

    .line 462
    invoke-direct/range {v7 .. v13}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 460
    invoke-direct {v4, v5, v14}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    .line 11671
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    return-object v1

    .line 11335
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final onSubItemClick(I)V
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 729
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v1, :cond_0

    .line 730
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOKEN_STATISTICS:I

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startTokenDistributionDialog(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    goto/16 :goto_0

    .line 732
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_3

    .line 733
    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOKEN_SMART_CONTRACT_ADDRESS:I

    if-ne p1, v1, :cond_2

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    .line 736
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    .line 737
    sget-object v1, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->INSTANCE:Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/iMe/storage/domain/provider/crypto/SmartContractProvider;->getContract(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    .line 735
    :cond_1
    invoke-static {v0, p1}, Lcom/iMe/storage/common/AppConfiguration$Crypto;->formatScanTokenUrl(Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 734
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :cond_2
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOKEN_SITE:I

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getSite()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :cond_3
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v1, :cond_5

    .line 744
    sget v1, Lcom/iMe/common/IdFabric$Menu;->STAKING_CONTRACT:I

    if-ne p1, v1, :cond_4

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object p1

    .line 745
    sget-object v0, Lcom/iMe/storage/common/AppConfiguration$Crypto;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Crypto;

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getContract()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/iMe/storage/common/AppConfiguration$Crypto;->formatScanAddressUrl(Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_4
    sget v1, Lcom/iMe/common/IdFabric$Menu;->STAKING_WEBSITE:I

    if-ne p1, v1, :cond_5

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getWebsite()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private final openUrl(Ljava/lang/String;)V
    .locals 1

    .line 753
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final setupActionBar()V
    .locals 5

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 551
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 552
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 553
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 554
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string/jumbo v3, "setupActionBar$lambda$39$lambda$35"

    .line 555
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 556
    new-instance v3, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrGoBack:I

    const-string v4, "AccDescrMoreOptions"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 562
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    const/4 v1, 0x2

    .line 563
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 564
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string/jumbo v1, "setupActionBar$lambda$39$lambda$38"

    .line 565
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 566
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupMenuItems(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    .line 567
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 569
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupActionBar$lambda$39$lambda$35$lambda$34(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static final setupActionBar$lambda$39$lambda$38$lambda$36(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_with"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private static final setupActionBar$lambda$39$lambda$38$lambda$37(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->onSubItemClick(I)V

    return-void
.end method

.method private final setupCollapsingToolbar()V
    .locals 10

    .line 635
    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 636
    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 637
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 638
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v1

    .line 639
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    const-string/jumbo v3, "toolbar"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    .line 168
    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 640
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string/jumbo v6, "setupCollapsingToolbar$lambda$61$lambda$50"

    .line 641
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v6, v7

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    .line 168
    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 68
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v6

    if-nez v6, :cond_1

    .line 643
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v8, v9

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 647
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 648
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPivotX()F

    move-result v3

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v3, v8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 650
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    .line 651
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v8

    const/16 v8, 0xa

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v3, v8

    const-string/jumbo v8, "setupCollapsingToolbar$l\u2026da$50$lambda$49$lambda$48"

    .line 652
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 653
    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v3, v3

    .line 655
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 656
    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    .line 658
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v3, "itemBack"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 380
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

    .line 658
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 659
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->access$setHeaderMaxTranslationY$p(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;F)V

    goto :goto_1

    .line 40
    :cond_1
    new-instance v3, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;

    invoke-direct {v3, v1, v4, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$61$lambda$50$$inlined$doOnLayout$1;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 662
    :goto_1
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    .line 663
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setPivotX(F)V

    .line 664
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setPivotY(F)V

    .line 666
    iget-object v6, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v7, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v6, v7}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private static final setupCollapsingToolbar$lambda$61$lambda$60(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 6

    const-string p5, "$this_with"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$lastScrollPercent"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "this$0"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$collapsedTranslationX"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$isHeaderUnderlayAnimating"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p5

    int-to-float p5, p5

    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p6}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p5, p6

    .line 669
    iget p6, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpg-float p6, p5, p6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p6, :cond_0

    move p6, v1

    goto :goto_0

    :cond_0
    move p6, v0

    :goto_0
    if-eqz p6, :cond_1

    return-void

    .line 672
    :cond_1
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-static {p6}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p6

    const/4 v2, 0x0

    if-eqz p6, :cond_2

    .line 673
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {p6, v2}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 674
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {p6, v2}, Landroid/view/View;->setElevation(F)V

    goto :goto_1

    .line 676
    :cond_2
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p6, v3}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 677
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {p6, v3}, Landroid/view/View;->setElevation(F)V

    .line 679
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p6

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v3, v3, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-virtual {p6, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    const/high16 p6, 0x3f800000    # 1.0f

    cmpg-float v3, p5, p6

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v0

    .line 680
    :goto_3
    iput-boolean v3, p2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isAppBarCollapsed:Z

    .line 681
    iput p5, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 682
    iget p1, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    mul-float/2addr p1, p5

    int-to-float p3, v1

    const/4 v3, 0x3

    int-to-float v3, v3

    div-float v3, p5, v3

    sub-float v3, p3, v3

    .line 684
    iget-object v4, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    const-string v5, "accountRankBadge"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    if-eqz v4, :cond_6

    .line 685
    iget-object v4, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    sub-float/2addr p3, p5

    invoke-virtual {v4, p3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 687
    :cond_6
    iget-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 688
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    const/16 v4, 0x20

    .line 689
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p5

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 691
    iget-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    .line 692
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 693
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 694
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    const/16 v4, 0x1e

    .line 695
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p5

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 697
    iget-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 698
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 699
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 700
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    const/16 p1, 0x1c

    .line 701
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p5

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 703
    iget-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p3, p2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->headerMaxTranslationY:F

    mul-float/2addr p3, p5

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 704
    invoke-direct {p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbarColors()V

    .line 705
    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    .line 706
    iget-boolean p1, p2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isAppBarCollapsed:Z

    const-wide/16 p2, 0x64

    if-eqz p1, :cond_7

    .line 707
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 708
    invoke-virtual {p0, p6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 709
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 710
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 711
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p1

    cmpg-float p1, p1, p6

    if-nez p1, :cond_8

    move v0, v1

    :cond_8
    if-eqz v0, :cond_9

    iget-boolean p1, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_9

    .line 712
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 713
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 714
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 715
    new-instance p1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1, p4}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 716
    new-instance p1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda7;

    invoke-direct {p1, p4}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 717
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 719
    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    :goto_5
    return-void
.end method

.method private static final setupCollapsingToolbar$lambda$61$lambda$60$lambda$59$lambda$56(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    const-string v0, "$isHeaderUnderlayAnimating"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 715
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private static final setupCollapsingToolbar$lambda$61$lambda$60$lambda$59$lambda$57(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    const-string v0, "$isHeaderUnderlayAnimating"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 716
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private final setupCollapsingToolbarColors()V
    .locals 4

    .line 534
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 535
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isAppBarCollapsed:Z

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 537
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 538
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 539
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 542
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 543
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 544
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private final setupColors()V
    .locals 9

    .line 479
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 480
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    .line 481
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    .line 482
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-virtual {v1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 484
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerStaking:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 485
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 486
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textStakingInfo:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "setupColors$lambda$32$lambda$25"

    .line 487
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 488
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 490
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageStakingInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v7, "setupColors$lambda$32$lambda$26"

    .line 491
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-static {v1, v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 492
    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 494
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewAnnualPercentageCell:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v7, "viewAnnualPercentageCell.textView"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 495
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewProfitCell:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v7, "setupColors$lambda$32$lambda$27"

    .line 496
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 498
    iget-boolean v7, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isProfitTextColored:Z

    if-eqz v7, :cond_0

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inGreenCall:I

    goto :goto_0

    .line 499
    :cond_0
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    .line 497
    :goto_0
    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewFinishedCell:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v7, "setupColors$lambda$32$lambda$28"

    .line 503
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 504
    iget v7, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->statusTextColorKey:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 507
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 508
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 509
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 510
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 511
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 512
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearHeader:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 513
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    .line 514
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 515
    invoke-virtual {v1}, Lcom/iMe/ui/custom/HorizontalActionButtonsView;->setupColors()V

    .line 517
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 518
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 519
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 520
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 521
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setupPopupRadialSelectors(I)V

    const-string/jumbo v2, "setupColors$lambda$32$lambda$30"

    .line 522
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 524
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "textAccountBalance"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 525
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTransactions:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "setupColors$lambda$32$lambda$31"

    .line 526
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 527
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbarColors()V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 615
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 616
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    const-string v2, "accountRankBadge"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 617
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageStakingInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "imageStakingInfo"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 618
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$43$lambda$42(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->reload()V

    return-void
.end method

.method private final setupMenuItems(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 5

    .line 576
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 577
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v1, :cond_0

    .line 578
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOKEN_STATISTICS:I

    .line 579
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_token_statistic:I

    .line 580
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_distribution_action:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_0

    .line 582
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    .line 583
    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->isWithSmartContractAddress(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOKEN_SMART_CONTRACT_ADDRESS:I

    .line 586
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_etherscan:I

    .line 587
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_view_smart_contract:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 584
    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 590
    :cond_1
    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->isWithWebsite(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOKEN_SITE:I

    .line 593
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_web_26:I

    .line 594
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_site_action:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 582
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 598
    :cond_3
    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_4

    .line 600
    sget v0, Lcom/iMe/common/IdFabric$Menu;->STAKING_CONTRACT:I

    .line 601
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_etherscan:I

    .line 602
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_details_contract_action:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 599
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 605
    sget v0, Lcom/iMe/common/IdFabric$Menu;->STAKING_WEBSITE:I

    .line 606
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_web_26:I

    .line 607
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_site_action:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 604
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

    .line 628
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 630
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    return-void
.end method

.method private final setupTexts()V
    .locals 3

    .line 623
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTransactions:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final showAnimatedDialog$lambda$10(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private static final showLevelRequiredDialog$lambda$13(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;->Companion:Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;

    sget-object v1, Lcom/iMe/model/common/ScreenType;->FULLSCREEN:Lcom/iMe/model/common/ScreenType;

    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0, v1, v2}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;->newInstance(Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final showQrReceiveDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 7

    .line 759
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    .line 761
    invoke-virtual {p3}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/iMe/utils/helper/wallet/CryptoHelper;->formatAddressQR(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v5

    .line 758
    new-instance v6, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Landroid/app/Activity;Ljava/lang/String;)V

    .line 774
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_title:I

    invoke-interface {p1, p3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 775
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_btn_text:I

    invoke-interface {p3, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 773
    invoke-virtual {v6, p1, p3, p2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setupWalletTypeReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showRequiredWalletCreatedDialog$lambda$9(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method


# virtual methods
.method public synthetic bind(Lcom/iMe/fork/utils/AbstractTabbedViewPage;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate$-CC;->$default$bind(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;Lcom/iMe/fork/utils/AbstractTabbedViewPage;I)V

    return-void
.end method

.method public getFragmentContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 394
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

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
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;>;"
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPageTabs()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 386
    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;->getPage()Lcom/iMe/fork/utils/TabbedFragmentPage;

    move-result-object v2

    .line 1621
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

    invoke-static {p0}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate$-CC;->$default$getScrollableHeaderView(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    invoke-static {p0}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate$-CC;->$default$getSwipeRefreshLayout(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

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

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 400
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    new-instance v9, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v9, v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x0

    aput-object v11, v2, v3

    .line 401
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewAnnualPercentageCell:Lorg/telegram/ui/Cells/TextDetailCell;

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v6, v15, v3

    const-string/jumbo v6, "textView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v16

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v4

    move/from16 v20, v7

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v4, v2, v5

    .line 402
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewAnnualPercentageCell:Lorg/telegram/ui/Cells/TextDetailCell;

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v10, v9, v3

    const-string/jumbo v10, "valueTextView"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v24

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v4

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move/from16 v28, v29

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v8, 0x2

    aput-object v4, v2, v8

    .line 403
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewProfitCell:Lorg/telegram/ui/Cells/TextDetailCell;

    new-array v9, v5, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v11, v9, v3

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    move/from16 v25, v7

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v8, 0x3

    aput-object v4, v2, v8

    .line 404
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewProfitCell:Lorg/telegram/ui/Cells/TextDetailCell;

    new-array v14, v5, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v8, v14, v3

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move/from16 v19, v29

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v8, 0x4

    aput-object v4, v2, v8

    .line 405
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewFinishedCell:Lorg/telegram/ui/Cells/TextDetailCell;

    new-array v9, v5, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v11, v9, v3

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    const/16 v19, 0x0

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v6, 0x5

    aput-object v4, v2, v6

    .line 406
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewFinishedCell:Lorg/telegram/ui/Cells/TextDetailCell;

    new-array v14, v5, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v5, v14, v3

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v15

    iget v3, v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->statusTextColorKey:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move/from16 v19, v3

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x6

    aput-object v4, v2, v3

    .line 399
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 408
    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getThemeDescription()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 409
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 410
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->isSwipeBackEnabled()Z

    move-result p1

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 126
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 127
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 127
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupActionBar()V

    .line 111
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupCollapsingToolbar()V

    .line 112
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupColors()V

    .line 113
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupListeners()V

    .line 114
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupRootView()V

    .line 115
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->setupTexts()V

    .line 117
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 136
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->clean()V

    .line 132
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public bridge synthetic onPageChanged(Lcom/iMe/fork/utils/AbstractTabbedViewPage;Lcom/iMe/fork/utils/AbstractTabbedViewPage;II)V
    .locals 0

    .line 90
    check-cast p1, Lcom/iMe/fork/utils/TabbedFragmentPage;

    check-cast p2, Lcom/iMe/fork/utils/TabbedFragmentPage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->onPageChanged(Lcom/iMe/fork/utils/TabbedFragmentPage;Lcom/iMe/fork/utils/TabbedFragmentPage;II)V

    return-void
.end method

.method public onPageChanged(Lcom/iMe/fork/utils/TabbedFragmentPage;Lcom/iMe/fork/utils/TabbedFragmentPage;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;II)V"
        }
    .end annotation

    const-string p4, "newPage"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "oldPage"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {p2}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 390
    invoke-virtual {p1}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 391
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->selectTab(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 146
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 146
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    goto :goto_0

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 141
    invoke-super {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->onResume()V

    .line 142
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 142
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 8

    .line 367
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 368
    new-instance v1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    .line 370
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPageTabs()Ljava/util/List;

    move-result-object v2

    .line 368
    invoke-direct {v1, p0, v2}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 367
    invoke-interface {v0, v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->init(Lcom/iMe/navigation/common/configuration/NavigationConfiguration;)V

    .line 373
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 374
    sget-object v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-virtual {v0, p0, v1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->init(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V

    .line 375
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    const/4 v0, 0x2

    .line 376
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 378
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    .line 379
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    .line 380
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    .line 377
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setColors(IIIII)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 358
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 359
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 361
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPageTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;->getId()I

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTabWithId(IF)V

    :cond_0
    return-void
.end method

.method public onViewReady()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->onViewReady()V

    .line 122
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->setupNavigationRouter()V

    return-void
.end method

.method public openBinanceReceiveScreen(Lcom/iMe/model/wallet/select/SelectableToken;)V
    .locals 3

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/iMe/model/wallet/select/SelectableToken;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinancePay(Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openBinanceReplenishScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 9

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/iMe/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinanceReplenish(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openBinanceSwapScreen(Lcom/iMe/model/wallet/select/SelectableToken;)V
    .locals 4

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;-><init>(Lcom/iMe/model/wallet/select/SelectableToken;Lcom/iMe/model/wallet/select/SelectableToken;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v0, "parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;->start$default(Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;ZILjava/lang/Object;)V

    return-void
.end method

.method public openCreateWalletScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "wallet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    .line 316
    new-instance v1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;

    .line 315
    new-instance v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$openCreateWalletScreen$1;

    invoke-direct {v2, p2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$openCreateWalletScreen$1;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    .line 316
    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 315
    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;)Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p1

    .line 314
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 305
    new-instance v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {v1, p2, p1}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p1

    .line 303
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openReceiveScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->showQrReceiveDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public openSendScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 9

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/iMe/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 228
    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForWalletTransfer(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingCalculatorScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingCalculator(Lcom/iMe/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingProfitScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingProfit(Lcom/iMe/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingReplenishScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 242
    invoke-static {p1, v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingReplenish(Lcom/iMe/model/staking/StakingDetailsItem;Ljava/lang/Double;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingWithdrawScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingWithdraw(Lcom/iMe/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;

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
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actionsItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/HorizontalActionButtonsView;->initButtons(Ljava/util/List;)V

    return-void
.end method

.method public setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 2

    const-string v0, "accountLevel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    const-string/jumbo v1, "setupRankBadge$lambda$12"

    .line 330
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    invoke-virtual {v0, p2}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->setAccountLevel(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public setupStakingDetailsScreen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V
    .locals 3

    const-string/jumbo v0, "titleText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "balanceText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annualTitleText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annualValueText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profitText"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 185
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 186
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string p2, "linearStakingInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 189
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textStakingInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_details_info:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageStakingInfo:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 191
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewAnnualPercentageCell:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-virtual {p1, p5, p4, p3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 192
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewProfitCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 193
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p4

    sget p5, Lorg/telegram/messenger/R$string;->staking_details_profit:I

    invoke-interface {p4, p5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p6, p4, p3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 194
    iput-boolean p7, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isProfitTextColored:Z

    .line 195
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 196
    iget-boolean p3, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->isProfitTextColored:Z

    if-eqz p3, :cond_0

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inGreenCall:I

    goto :goto_0

    .line 197
    :cond_0
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    .line 195
    :goto_0
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    invoke-virtual {p8}, Lcom/iMe/model/staking/StakingProgrammeStatus;->getColorKey()I

    move-result p1

    iput p1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->statusTextColorKey:I

    .line 202
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewFinishedCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 204
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    invoke-virtual {p8}, Lcom/iMe/model/staking/StakingProgrammeStatus;->getTextResId()I

    move-result p4

    invoke-interface {p3, p4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 205
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p4

    sget p5, Lorg/telegram/messenger/R$string;->wallet_transaction_details_status_title:I

    invoke-interface {p4, p5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 203
    invoke-virtual {p1, p3, p4, p2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 208
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    iget p2, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->statusTextColorKey:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 4

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 159
    instance-of v1, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageCoinIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/iMe/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/iMe/utils/helper/binancepay/BinancePayHelper;

    invoke-virtual {v3}, Lcom/iMe/utils/helper/binancepay/BinancePayHelper;->getRefererHeader()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iMe/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 166
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getFullName()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAccountLevelDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 3

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;-><init>(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;Lcom/iMe/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;)V

    .line 340
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 336
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showAlreadyCreatedWalletWarningDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 9

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v0, "parentActivity"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    .line 292
    new-instance v3, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAlreadyCreatedWalletWarningDialog$1$1;

    invoke-direct {v3, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAlreadyCreatedWalletWarningDialog$1$1;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeClickableDescription$default(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 291
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showAnimatedDialog(Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {p0, p1, v0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialogWithAnimation(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 2

    const-string v0, "minimalRank"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V

    invoke-static {p0, v0, p1, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showStakingLevelRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 354
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showRequiredVerifyDialog()V
    .locals 1

    .line 275
    invoke-static {p0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createBinanceVerificationRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRequiredWalletCreatedDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {p0, v0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;

    invoke-virtual {v0, p1, p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showStatisticDialog(Lcom/iMe/model/statistic/StatisticDiagramModel;)V
    .locals 7

    const-string v0, "distributionDiagramModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 219
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDiagramDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/statistic/StatisticDiagramModel;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method