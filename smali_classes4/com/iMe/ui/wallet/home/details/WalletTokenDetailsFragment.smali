.class public final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;
.implements Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;
.implements Lcom/iMe/fork/utils/TabbedViewPagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;",
        "Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;",
        "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
        "Lcom/iMe/fork/utils/TabbedFragmentPage<",
        "Lcom/iMe/ui/base/mvp/MvpFragment;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTokenDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTokenDetailsFragment.kt\ncom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1172:1\n13#2,4:1173\n56#3,6:1177\n56#3,6:1183\n1855#4,2:1189\n1855#4,2:1191\n1855#4,2:1193\n1855#4,2:1195\n1549#4:1205\n1620#4,3:1206\n1855#4,2:1209\n1549#4:1211\n1620#4,3:1212\n1549#4:1215\n1620#4,3:1216\n262#5,2:1197\n262#5,2:1199\n262#5,2:1201\n262#5,2:1203\n162#5,8:1223\n260#5:1231\n162#5,8:1232\n162#5,8:1240\n68#5,2:1248\n315#5:1250\n329#5,4:1251\n316#5:1255\n315#5:1256\n329#5,4:1257\n316#5:1261\n379#5,2:1262\n71#5:1264\n40#5:1265\n56#5:1266\n75#5:1267\n260#5:1268\n11335#6:1219\n11670#6,3:1220\n1#7:1269\n*S KotlinDebug\n*F\n+ 1 WalletTokenDetailsFragment.kt\ncom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment\n*L\n130#1:1173,4\n133#1:1177,6\n136#1:1183,6\n171#1:1189,2\n186#1:1191,2\n192#1:1193,2\n196#1:1195,2\n615#1:1205\n615#1:1206,3\n643#1:1209,2\n655#1:1211\n655#1:1212,3\n676#1:1215\n676#1:1216,3\n324#1:1197,2\n369#1:1199,2\n371#1:1201,2\n554#1:1203,2\n996#1:1223,8\n1004#1:1231\n1020#1:1232,8\n1022#1:1240,8\n1023#1:1248,2\n1024#1:1250\n1024#1:1251,4\n1024#1:1255\n1035#1:1256\n1035#1:1257,4\n1035#1:1261\n1041#1:1262,2\n1023#1:1264\n1023#1:1265\n1023#1:1266\n1023#1:1267\n1067#1:1268\n691#1:1219\n691#1:1220,3\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;


# instance fields
.field private final args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private contractItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private headerMaxTranslationY:F

.field private isAppBarCollapsed:Z

.field private isProfitTextColored:Z

.field private final navigationRouter$delegate:Lkotlin/Lazy;

.field private final pageTabs$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private statusTextColorKey:I

.field private statusTextColorResId:I

.field private final titleTextTranslationY$delegate:Lkotlin/Lazy;

.field private final tokenBuyCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$-E5TNWR6O5Qjo7iC9tWLmDslgYs(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupActionBar$lambda$56$lambda$55$lambda$54(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$19ozmAPj_fnLHou4o3sHahytMOE(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->showRequiredWalletCreatedDialog$lambda$21(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8_UljjfCj7Gic5mlAORxqvxI0Lg(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupActionBar$lambda$56$lambda$55$lambda$53(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ef62yOwbnewGgSdNoEF-PUDC8DY(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupActionBar$lambda$56$lambda$52$lambda$51(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F-ePpxXvSAGjv2JelI0y1p6Ee7U(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupTransactionsScreen$lambda$7$lambda$6$lambda$5(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sbcgr0-w_wSvXu6P0Fj9OjwJcp8(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupCollapsingToolbar$lambda$81$lambda$80(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SsNrLVC2j9dHImQ1w7a8pdSyAmM(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupListeners$lambda$60$lambda$59(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VtYiOIex0jLp3EP2zAxEjFxoDzE(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->showLevelRequiredDialog$lambda$24(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cLgqFUjHGjq_OKUoqP3HPhyJQUg(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$iFFf5DcKR7DMC7WbsHCtbNkQ-6o(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupCollapsingToolbar$lambda$81$lambda$80$lambda$79$lambda$77(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x1is2hG8Jv76Jw_JO2CVZXgMVuE(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupCollapsingToolbar$lambda$81$lambda$80$lambda$79$lambda$76(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 130
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 138
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->Companion:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 4

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 130
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string/jumbo v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 130
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 133
    invoke-static {}, Lcom/iMe/di/module/NavigationModuleKt;->getCOMMON_TABS_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object p1

    sget-object v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$navigationRouter$2;->INSTANCE:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$navigationRouter$2;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$special$$inlined$inject$default$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 133
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->navigationRouter$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$special$$inlined$inject$default$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 136
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    .line 138
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 141
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$pageTabs$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$pageTabs$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->pageTabs$delegate:Lkotlin/Lazy;

    .line 142
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$titleTextTranslationY$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$titleTextTranslationY$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->titleTextTranslationY$delegate:Lkotlin/Lazy;

    .line 148
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    iput p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->statusTextColorKey:I

    .line 152
    sget p1, Lorg/telegram/messenger/R$color;->cryptobox_status_active:I

    iput p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->statusTextColorResId:I

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)Lcom/iMe/model/wallet/details/TokenDetailsArgs;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    return-object p0
.end method

.method public static final synthetic access$getNavigationRouter(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPageTabs(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)Ljava/util/List;
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->initPageTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateHeaderMaxTranslation(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->updateHeaderMaxTranslation()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    .line 133
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->navigationRouter$delegate:Lkotlin/Lazy;

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

    .line 141
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->pageTabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    return-object v0
.end method

.method private final getTitleTextTranslationY()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->titleTextTranslationY$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

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

    .line 650
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 651
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    new-array v0, v3, [Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;

    .line 652
    sget-object v1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$All;->INSTANCE:Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$All;

    aput-object v1, v0, v6

    .line 653
    sget-object v1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;->INSTANCE:Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;

    aput-object v1, v0, v5

    .line 654
    sget-object v1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$Outgoing;->INSTANCE:Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$Outgoing;

    aput-object v1, v0, v4

    .line 651
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

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;

    .line 656
    new-instance v3, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 657
    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;->getId()I

    move-result v4

    .line 658
    new-instance v12, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 659
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;->getNameResId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 660
    sget-object v5, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;->Companion:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;

    .line 661
    new-instance v8, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab;

    invoke-direct {v8, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab;-><init>(Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;)V

    .line 662
    iget-object v9, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v9, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {v9}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetCode()Ljava/lang/String;

    move-result-object v9

    .line 660
    invoke-virtual {v5, v8, v9}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType;Ljava/lang/String;)Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    move-result-object v8

    .line 664
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$1$1;

    invoke-direct {v9, p0, v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$1$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v12

    .line 658
    invoke-direct/range {v5 .. v11}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 656
    invoke-direct {v3, v4, v12}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 670
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/model/wallet/details/TransactionsGroup;

    .line 671
    sget-object v1, Lcom/iMe/model/wallet/details/TransactionsGroup$All;->INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$All;

    aput-object v1, v0, v6

    .line 672
    sget-object v1, Lcom/iMe/model/wallet/details/TransactionsGroup$Incoming;->INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$Incoming;

    aput-object v1, v0, v5

    .line 673
    sget-object v1, Lcom/iMe/model/wallet/details/TransactionsGroup$Outgoing;->INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$Outgoing;

    aput-object v1, v0, v4

    .line 674
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    sget-object v4, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne v1, v4, :cond_1

    sget-object v7, Lcom/iMe/model/wallet/details/TransactionsGroup$Swap;->INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$Swap;

    :cond_1
    aput-object v7, v0, v3

    .line 670
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

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/model/wallet/details/TransactionsGroup;

    .line 677
    new-instance v3, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 678
    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/TransactionsGroup;->getId()I

    move-result v4

    .line 679
    new-instance v12, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 680
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/TransactionsGroup;->getNameResId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 681
    sget-object v5, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    .line 682
    new-instance v8, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;

    invoke-direct {v8, v2}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;-><init>(Lcom/iMe/model/wallet/details/TransactionsGroup;)V

    .line 683
    iget-object v9, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v9, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v9}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    invoke-static {v9}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v9

    .line 681
    invoke-virtual {v5, v8, v9}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance(Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object v8

    .line 685
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$2$1;

    invoke-direct {v9, p0, v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$2$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lcom/iMe/model/wallet/details/TransactionsGroup;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v12

    .line 679
    invoke-direct/range {v5 .. v11}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 677
    invoke-direct {v3, v4, v12}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 691
    :cond_2
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->values()[Lcom/iMe/model/wallet/details/StakingOperationsGroup;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    :goto_2
    if-ge v6, v2, :cond_4

    aget-object v3, v0, v6

    .line 692
    new-instance v4, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 693
    invoke-virtual {v3}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->getId()I

    move-result v5

    .line 694
    new-instance v14, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 695
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    invoke-virtual {v3}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->getNameResId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 696
    sget-object v7, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    .line 697
    new-instance v10, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    .line 698
    iget-object v11, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v11, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v11}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v11

    .line 699
    invoke-virtual {v3}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->getStakingOperationType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    move-result-object v12

    .line 697
    invoke-direct {v10, v11, v12}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;-><init>(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/staking/StakingOperationType;)V

    .line 701
    iget-object v11, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v11, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v11}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v11

    invoke-static {v11}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v11

    invoke-static {v11}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v11

    .line 696
    invoke-virtual {v7, v10, v11}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance(Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object v10

    .line 703
    new-instance v11, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$3$1;

    invoke-direct {v11, p0, v3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$3$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lcom/iMe/model/wallet/details/StakingOperationsGroup;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v7, v14

    .line 694
    invoke-direct/range {v7 .. v13}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 692
    invoke-direct {v4, v5, v14}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    .line 11671
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 709
    :cond_3
    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v0, :cond_5

    .line 710
    new-instance v0, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 711
    sget v1, Lorg/telegram/messenger/R$id;->wallet_token_details_transactions_all:I

    .line 712
    new-instance v2, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 713
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_all:I

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 714
    sget-object v3, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    .line 715
    new-instance v5, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;

    iget-object v6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v6, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    invoke-virtual {v6}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$CryptoBoxDetailsTab;-><init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V

    .line 714
    invoke-static {v3, v5, v7, v4, v7}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;Lcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object v11

    .line 709
    new-instance v12, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$4;

    invoke-direct {v12, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$initPageTabs$4;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object v8, v2

    .line 712
    invoke-direct/range {v8 .. v14}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 710
    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    .line 709
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_4
    return-object v1

    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final onSubItemClick(I)V
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 1112
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v1, :cond_0

    .line 1113
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOKEN_STATISTICS:I

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startTokenDistributionDialog(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    goto/16 :goto_0

    .line 1116
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    .line 1118
    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOKEN_INFORMATION:I

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->openTokenInformationScreen()V

    goto :goto_0

    .line 1119
    :cond_1
    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOKEN_SITE:I

    if-ne p1, v1, :cond_6

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getWebsite()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1123
    :cond_2
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    .line 1125
    sget v1, Lcom/iMe/common/IdFabric$Menu;->SMART_CONTRACT:I

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getContractUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    :cond_3
    sget v1, Lcom/iMe/common/IdFabric$Menu;->STAKING_WEBSITE:I

    if-ne p1, v1, :cond_6

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getWebsite()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1130
    :cond_4
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v1, :cond_6

    .line 1131
    sget v1, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->onCopyClick()V

    goto :goto_0

    .line 1132
    :cond_5
    sget v1, Lcom/iMe/common/IdFabric$Menu;->SMART_CONTRACT:I

    if-ne p1, v1, :cond_6

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getContractUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->openUrl(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private final openUrl(Ljava/lang/String;)V
    .locals 1

    .line 1138
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final setupActionBar()V
    .locals 5

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 883
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 884
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 885
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 886
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string/jumbo v3, "setupActionBar$lambda$56$lambda$52"

    .line 887
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 888
    new-instance v3, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrGoBack:I

    const-string v4, "AccDescrMoreOptions"

    .line 891
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 896
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 897
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    const/4 v1, 0x2

    .line 898
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 899
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string/jumbo v1, "setupActionBar$lambda$56$lambda$55"

    .line 900
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 901
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupMenuItems(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    .line 902
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 906
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    .line 904
    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupActionBar$lambda$56$lambda$52$lambda$51(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static final setupActionBar$lambda$56$lambda$55$lambda$53(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_with"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private static final setupActionBar$lambda$56$lambda$55$lambda$54(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->onSubItemClick(I)V

    return-void
.end method

.method private final setupCollapsingToolbar()V
    .locals 10

    .line 1016
    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1017
    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 1018
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 1019
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v1

    .line 1020
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

    .line 1021
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string/jumbo v6, "setupCollapsingToolbar$lambda$81$lambda$70"

    .line 1022
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

    .line 1024
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string/jumbo v6, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1025
    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v8, v9

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 1028
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1029
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPivotX()F

    move-result v3

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v3, v8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 1031
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    .line 1032
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 1033
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v8

    const/16 v8, 0xa

    .line 1034
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v3, v8

    const-string/jumbo v8, "setupCollapsingToolbar$l\u2026da$70$lambda$69$lambda$68"

    .line 1035
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1036
    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v3, v3

    .line 1038
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1039
    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1041
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

    .line 1041
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1042
    invoke-static {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->access$updateHeaderMaxTranslation(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    goto :goto_1

    .line 40
    :cond_1
    new-instance v3, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;

    invoke-direct {v3, v1, v4, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCollapsingToolbar$lambda$81$lambda$70$$inlined$doOnLayout$1;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1045
    :goto_1
    iget-object v0, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1046
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setPivotX(F)V

    .line 1047
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setPivotY(F)V

    .line 1049
    iget-object v6, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v7, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda4;

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v6, v7}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private static final setupCollapsingToolbar$lambda$81$lambda$80(Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/material/appbar/AppBarLayout;I)V
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

    .line 1051
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p5

    int-to-float p5, p5

    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p6}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p5, p6

    .line 1052
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

    .line 1055
    :cond_1
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-static {p6}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p6

    const/4 v2, 0x0

    if-eqz p6, :cond_2

    .line 1056
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {p6, v2}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 1057
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {p6, v2}, Landroid/view/View;->setElevation(F)V

    goto :goto_1

    .line 1059
    :cond_2
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p6, v3}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 1060
    iget-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {p6, v3}, Landroid/view/View;->setElevation(F)V

    .line 1062
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p6

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

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

    .line 1063
    :goto_3
    iput-boolean v3, p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->isAppBarCollapsed:Z

    .line 1064
    iput p5, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1065
    iget p1, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    mul-float/2addr p1, p5

    int-to-float p3, v1

    const/4 v3, 0x3

    int-to-float v3, v3

    div-float v3, p5, v3

    sub-float v3, p3, v3

    .line 1067
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

    .line 1068
    iget-object v4, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    sub-float/2addr p3, p5

    invoke-virtual {v4, p3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1070
    :cond_6
    iget-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1071
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1072
    invoke-direct {p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getTitleTextTranslationY()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p5

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1074
    iget-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1075
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1076
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1077
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    const/16 v4, 0x18

    .line 1078
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p5

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1080
    iget-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 1081
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1082
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1083
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    const/16 p1, 0x16

    .line 1084
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p5

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1086
    iget-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p3, p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->headerMaxTranslationY:F

    mul-float/2addr p3, p5

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1087
    invoke-direct {p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupCollapsingToolbarColors()V

    .line 1088
    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    .line 1089
    iget-boolean p1, p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->isAppBarCollapsed:Z

    const-wide/16 p2, 0x64

    if-eqz p1, :cond_7

    .line 1090
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1091
    invoke-virtual {p0, p6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1092
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1093
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 1094
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

    .line 1095
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1096
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1097
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1098
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1, p4}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1099
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda7;

    invoke-direct {p1, p4}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1100
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 1102
    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    :goto_5
    return-void
.end method

.method private static final setupCollapsingToolbar$lambda$81$lambda$80$lambda$79$lambda$76(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    const-string v0, "$isHeaderUnderlayAnimating"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1098
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private static final setupCollapsingToolbar$lambda$81$lambda$80$lambda$79$lambda$77(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    const-string v0, "$isHeaderUnderlayAnimating"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1099
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method private final setupCollapsingToolbarColors()V
    .locals 4

    .line 862
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 863
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->isLightStatusBar()Z

    move-result v1

    .line 864
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->isLightStatusBar()Z

    move-result v2

    .line 861
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;ZZ)V

    .line 866
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 867
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->isAppBarCollapsed:Z

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 869
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 870
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 871
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 873
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 874
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 875
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 876
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private final setupColors()V
    .locals 8

    .line 727
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 728
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    .line 729
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    .line 730
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-virtual {v1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 733
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 734
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->constraintLayoutHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 735
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 736
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->headerUnderlay:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 737
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 738
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearHeader:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 739
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    .line 740
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 741
    invoke-virtual {v1}, Lcom/iMe/ui/custom/HorizontalActionButtonsView;->setupColors()V

    .line 743
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 744
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 745
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 746
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 747
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setupPopupRadialSelectors(I)V

    const-string/jumbo v2, "setupColors$lambda$39$lambda$37"

    .line 748
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 750
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "textSubtitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 751
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTransactions:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "setupColors$lambda$39$lambda$38"

    .line 752
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 753
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 756
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupCollapsingToolbarColors()V

    .line 757
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 758
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupStakingScreenColors()V

    goto :goto_1

    .line 759
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupCryptoBoxScreenColors()V

    goto :goto_1

    .line 760
    :cond_1
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 761
    :cond_2
    instance-of v3, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    :goto_0
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupCryptoScreenColors()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final setupCryptoBoxScreenColors()V
    .locals 7

    .line 811
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 812
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "textTitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 813
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 815
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerCryptoboxDescription:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 816
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearCryptoboxDescription:Landroidx/appcompat/widget/LinearLayoutCompat;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 817
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textCryptoboxDescriptionTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v4, "setupCryptoBoxScreenColors$lambda$49$lambda$45"

    .line 818
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 819
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 821
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textCryptoboxDescription:Landroidx/appcompat/widget/AppCompatTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 823
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerCryptoboxInfo:Landroid/view/View;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 824
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearCryptoboxInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 825
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textCryptoboxInfo:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "setupCryptoBoxScreenColors$lambda$49$lambda$46"

    .line 826
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 827
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 829
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCryptoboxInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v2, "setupCryptoBoxScreenColors$lambda$49$lambda$47"

    .line 830
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 831
    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 833
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewChatCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 834
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    .line 836
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    const/4 v6, 0x1

    .line 833
    invoke-virtual {v1, v2, v6, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setupColors(IZI)V

    .line 838
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewMembersCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 839
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    .line 841
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    .line 838
    invoke-virtual {v1, v2, v6, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setupColors(IZI)V

    .line 843
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewBalanceCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 844
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    .line 846
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    .line 843
    invoke-virtual {v1, v2, v6, v4}, Lorg/telegram/ui/Cells/TextDetailCell;->setupColors(IZI)V

    .line 848
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewStatusCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 850
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    iget v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->statusTextColorResId:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v1

    .line 852
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    .line 853
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 849
    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setupColors(IZILjava/lang/Integer;)V

    const-string/jumbo v1, "setupCryptoBoxScreenColors$lambda$49$lambda$48"

    .line 855
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v6, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method private final setupCryptoScreenColors()V
    .locals 4

    .line 766
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 767
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearCryptoInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 768
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textCryptoWalletAddressTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "setupCryptoScreenColors$lambda$41$lambda$40"

    .line 769
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 770
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 772
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textCryptoWalletAddressValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 773
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerCrypto:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 15

    .line 968
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 969
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 970
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    const-string v1, "accountRankBadge"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$2;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 971
    iget-object v9, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageStakingInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "imageStakingInfo"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$3;

    invoke-direct {v12, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$3;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 972
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewStatusCell:Lorg/telegram/ui/Cells/TextDetailCell;

    const-string/jumbo v0, "viewStatusCell"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$4;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$4;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupListeners$lambda$60$lambda$59(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->reload()V

    return-void
.end method

.method private final setupMenuItems(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 5

    .line 914
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 915
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v1, :cond_0

    .line 916
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOKEN_STATISTICS:I

    .line 917
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_token_statistic:I

    .line 918
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_distribution_action:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto/16 :goto_1

    .line 921
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 924
    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOKEN_INFORMATION:I

    .line 925
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_info:I

    .line 926
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_token_information:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 923
    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 929
    :cond_1
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 931
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOKEN_SITE:I

    .line 932
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_web_26:I

    .line 933
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_site_action:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 930
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_1

    .line 938
    :cond_3
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 940
    sget v0, Lcom/iMe/common/IdFabric$Menu;->SMART_CONTRACT:I

    .line 942
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->staking_details_contract_action:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 939
    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->contractItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 945
    sget v0, Lcom/iMe/common/IdFabric$Menu;->STAKING_WEBSITE:I

    .line 946
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_web_26:I

    .line 947
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_site_action:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_1

    .line 951
    :cond_4
    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v0, :cond_6

    .line 953
    sget v0, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    .line 954
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    .line 955
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->cryptobox_copy_name:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 952
    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 958
    sget v0, Lcom/iMe/common/IdFabric$Menu;->SMART_CONTRACT:I

    .line 960
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_view_smart_contract:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 957
    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->contractItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final setupStakingScreenColors()V
    .locals 7

    .line 778
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 779
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerStaking:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 780
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 781
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textStakingInfo:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "setupStakingScreenColors$lambda$44$lambda$42"

    .line 782
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 783
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 785
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageStakingInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v3, "setupStakingScreenColors$lambda$44$lambda$43"

    .line 786
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 787
    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 789
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewAnnualPercentageCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 790
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    .line 792
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    const/4 v6, 0x1

    .line 789
    invoke-virtual {v1, v3, v6, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setupColors(IZI)V

    .line 794
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewProfitCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 796
    iget-boolean v3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->isProfitTextColored:Z

    if-eqz v3, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inGreenCall:I

    .line 795
    :cond_0
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    .line 800
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    .line 794
    invoke-virtual {v1, v2, v6, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setupColors(IZI)V

    .line 802
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewFinishedCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 803
    iget v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->statusTextColorKey:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    .line 805
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    .line 802
    invoke-virtual {v0, v1, v6, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setupColors(IZI)V

    return-void
.end method

.method private static final setupTransactionsScreen$lambda$7$lambda$6$lambda$5(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->onCopyClick()V

    return-void
.end method

.method private final setupViews()V
    .locals 6

    .line 979
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 980
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    .line 981
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v2, v2, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    const/4 v2, 0x0

    .line 984
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v5, v4, 0x2

    .line 982
    invoke-virtual {v1, v2, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 988
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTransactions:Landroidx/appcompat/widget/AppCompatTextView;

    .line 989
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions:I

    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 988
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v1, :cond_0

    .line 992
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v1, 0x41900000    # 18.0f

    .line 993
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const-string/jumbo v1, "setupViews$lambda$63$lambda$62"

    .line 994
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 995
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0xaa

    .line 996
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 168
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private static final showLevelRequiredDialog$lambda$24(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    sget-object v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;->Companion:Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;

    sget-object v1, Lcom/iMe/model/common/ScreenType;->FULLSCREEN:Lcom/iMe/model/common/ScreenType;

    invoke-virtual {v0, v1, p1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;->newInstance(Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final showQrReceiveDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1148
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1147
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;

    invoke-direct {v1, p2, p1, p3, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$showQrReceiveDialog$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 1159
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_title:I

    invoke-interface {p2, p3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1160
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_btn_text:I

    invoke-interface {p3, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1158
    invoke-virtual {v1, p2, p3, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setupWalletTypeReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showRequiredWalletCreatedDialog$lambda$21(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private final updateHeaderMaxTranslation()V
    .locals 3

    .line 1003
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 1004
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    const-string v2, "horizontalActionButtons"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 1005
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 1008
    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearCryptoInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    .line 1009
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    .line 1010
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearCryptoboxInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    .line 1011
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearCryptoboxDescription:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v0, v2

    .line 1007
    iput v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->headerMaxTranslationY:F

    return-void
.end method


# virtual methods
.method public actionCopyToClipboard(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 212
    invoke-static {p1, v0, v1, v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic bind(Lcom/iMe/fork/utils/AbstractTabbedViewPage;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate$-CC;->$default$bind(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;Lcom/iMe/fork/utils/AbstractTabbedViewPage;I)V

    return-void
.end method

.method public getFragmentContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 628
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

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

    .line 615
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPageTabs()Ljava/util/List;

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

    .line 615
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 633
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 635
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 636
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v3

    .line 637
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 638
    new-instance v5, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    .line 639
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 635
    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 634
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 642
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getThemeDescription()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 643
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 644
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 203
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->isAppBarCollapsed:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    goto :goto_0

    .line 204
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 202
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 201
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->isSwipeBackEnabled()Z

    move-result p1

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 170
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 171
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    .line 172
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupActionBar()V

    .line 156
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupCollapsingToolbar()V

    .line 157
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupColors()V

    .line 158
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupListeners()V

    .line 159
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupViews()V

    .line 161
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    .line 186
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    goto :goto_0

    .line 187
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->clean()V

    .line 182
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public bridge synthetic onPageChanged(Lcom/iMe/fork/utils/AbstractTabbedViewPage;Lcom/iMe/fork/utils/AbstractTabbedViewPage;II)V
    .locals 0

    .line 125
    check-cast p1, Lcom/iMe/fork/utils/TabbedFragmentPage;

    check-cast p2, Lcom/iMe/fork/utils/TabbedFragmentPage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->onPageChanged(Lcom/iMe/fork/utils/TabbedFragmentPage;Lcom/iMe/fork/utils/TabbedFragmentPage;II)V

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

    const-string/jumbo p4, "newPage"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "oldPage"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {p2}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 624
    invoke-virtual {p1}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 625
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->selectTab(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 196
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    .line 196
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    goto :goto_0

    .line 197
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 191
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onResume()V

    .line 192
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    .line 192
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 8

    .line 596
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 597
    new-instance v1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    .line 599
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPageTabs()Ljava/util/List;

    move-result-object v2

    .line 597
    invoke-direct {v1, p0, v2}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 596
    invoke-interface {v0, v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->init(Lcom/iMe/navigation/common/configuration/NavigationConfiguration;)V

    .line 602
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 603
    sget-object v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-virtual {v0, p0, v1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->init(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V

    .line 604
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    const/4 v0, 0x2

    .line 605
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 607
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    .line 608
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    .line 609
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    .line 606
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setColors(IIIII)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 587
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->transactionsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 588
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eq v1, p1, :cond_0

    .line 589
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 590
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPageTabs()Ljava/util/List;

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

    .line 165
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onViewReady()V

    .line 166
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getPresenter()Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupNavigationRouter()V

    return-void
.end method

.method public openAddAdminScreen(JJLjava/lang/String;)V
    .locals 20

    const-string v0, "boxId"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v7, v0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v19}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 498
    new-instance v7, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;

    move-object v1, v7

    move-object v2, v0

    move-wide/from16 v3, p1

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;JLcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    move-object/from16 v1, p0

    .line 524
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openBinanceReceiveScreen(Lcom/iMe/model/wallet/crypto/TokenItem;)V
    .locals 3

    const-string/jumbo v0, "tokenItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinancePay(Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openBinanceReplenishScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "tokenItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    sget-object v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->Companion:Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;

    .line 432
    new-instance v9, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 436
    sget-object p1, Lcom/iMe/model/wallet/send/WalletSendScreenType;->BINANCE_REPLENISH:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    .line 431
    invoke-virtual {v0, v9, p1}, Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;->newInstance(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/model/wallet/send/WalletSendScreenType;)Lcom/iMe/ui/wallet/send/WalletSendFragment;

    move-result-object p1

    .line 430
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openBinanceSwapScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 4

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    .line 444
    new-instance v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 443
    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;->newInstance(Lcom/iMe/model/wallet/swap/WalletSwapScreenType;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    move-result-object p1

    .line 442
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v0, "parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;->start$default(Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;ZILjava/lang/Object;)V

    return-void
.end method

.method public openCreateWalletIntroScreen(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 1

    const-string/jumbo v0, "linkedWalletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletCreationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;

    invoke-virtual {v0, p2, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/lang/String;)Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    move-result-object p1

    .line 539
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openReceiveScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "qrFormattedAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenLogoUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->showQrReceiveDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openSendScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "tokenItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->Companion:Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;

    .line 399
    new-instance v9, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 403
    sget-object p1, Lcom/iMe/model/wallet/send/WalletSendScreenType;->WALLET_TRANSFER:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    .line 398
    invoke-virtual {v0, v9, p1}, Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;->newInstance(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/model/wallet/send/WalletSendScreenType;)Lcom/iMe/ui/wallet/send/WalletSendFragment;

    move-result-object p1

    .line 397
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingCalculatorScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingCalculator(Lcom/iMe/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingTransactionScreen(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/model/wallet/staking/StakingScreenType;)V
    .locals 2

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "screenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->Companion:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$Companion;->newInstance(Ljava/lang/Double;Lcom/iMe/model/wallet/staking/StakingScreenType;Lcom/iMe/model/staking/StakingDetailsItem;)Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    move-result-object p1

    .line 420
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openTokenInformationScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 4

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    sget-object v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->Companion:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$Companion;

    .line 547
    new-instance v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 546
    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;)Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;

    move-result-object p1

    .line 545
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public renderHorizontalActionButtons(Ljava/util/List;)V
    .locals 5
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

    .line 366
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 367
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    .line 368
    invoke-virtual {v1, p1}, Lcom/iMe/ui/custom/HorizontalActionButtonsView;->initButtons(Ljava/util/List;)V

    const-string/jumbo v2, "renderHorizontalActionButtons$lambda$20$lambda$19"

    .line 369
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 262
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->dividerActionButtons:Landroid/view/View;

    const-string v1, "dividerActionButtons"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 262
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->updateHeaderMaxTranslation()V

    return-void
.end method

.method public setupCryptoBoxDetailsScreen(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    const-string v7, "explorerIconUrl"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "logoImageUrl"

    move-object/from16 v9, p2

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "chatName"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "name"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "description"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "membersText"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "balanceText"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "status"

    move-object/from16 v14, p10

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iget-object v7, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->contractItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v7, :cond_0

    .line 309
    invoke-virtual {v7, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(Ljava/lang/String;)V

    .line 311
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v1

    .line 312
    iget-object v8, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 313
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v13, 0x1

    if-lez v7, :cond_1

    move v7, v13

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const/4 v12, 0x0

    if-eqz v7, :cond_2

    const-string/jumbo v7, "setupCryptoBoxDetailsScreen$lambda$18$lambda$15"

    .line 314
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x6

    const/16 v16, 0x0

    move-object/from16 v9, p2

    move-object v15, v12

    move v12, v7

    move v7, v13

    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v15, v12

    move v7, v13

    .line 316
    new-instance v9, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v9}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    move-wide/from16 v10, p3

    .line 317
    invoke-virtual {v9, v10, v11, v2, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :goto_1
    iget-object v8, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textSubtitle"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v3, v8, v7, v15}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 324
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearCryptoboxDescription:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string/jumbo v8, "linearCryptoboxDescription"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p7 .. p7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    const/16 v8, 0x8

    .line 262
    :goto_2
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textCryptoboxDescriptionTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 327
    sget v8, Lorg/telegram/messenger/R$string;->DescriptionPlaceholder:I

    const-string v9, "DescriptionPlaceholder"

    .line 325
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textCryptoboxDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearCryptoboxInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string/jumbo v4, "linearCryptoboxInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v7, v15}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 332
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textCryptoboxInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v8, Lorg/telegram/messenger/R$string;->cryptobox_details_info:I

    invoke-interface {v4, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v3, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewChatCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v8, Lorg/telegram/messenger/R$string;->cryptobox_details_chat:I

    invoke-interface {v4, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-virtual {v3, v2, v4, v7}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 338
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewMembersCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->cryptobox_details_members:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v2, v5, v3, v7}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 343
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewBalanceCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->cryptobox_details_balance:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-virtual {v2, v6, v3, v7}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 349
    invoke-virtual/range {p10 .. p10}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->getColorResId()I

    move-result v2

    iput v2, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->statusTextColorResId:I

    .line 350
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewStatusCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    invoke-virtual/range {p10 .. p10}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->getTitleResId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_transaction_details_status_title:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 351
    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 356
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextDetailCell;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextDetailCell;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    iget v4, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->statusTextColorResId:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageCryptoboxInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageCryptoboxInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCryptoBoxDetailsScreen$2$3;

    invoke-direct {v4, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupCryptoBoxDetailsScreen$2$3;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 p1, v1

    move-wide/from16 p2, v2

    move-object/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 2

    const-string v0, "accountLevel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->accountRankBadge:Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    const-string/jumbo v1, "setupRankBadge$lambda$23"

    .line 554
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 555
    invoke-virtual {v0, p2}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->setAccountLevel(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public setupStakingDetailsScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V
    .locals 6

    const-string v0, "explorerIconUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "logoImageUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "titleText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "balanceText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annualTitleText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annualValueText"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "profitText"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->contractItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object p1

    .line 263
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageLogo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "imageLogo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_bg_white_circle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 264
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearStakingInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string/jumbo p3, "linearStakingInfo"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p4, v0, p3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 267
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textStakingInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/R$string;->staking_details_info:I

    invoke-interface {p3, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewAnnualPercentageCell:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-virtual {p2, p6, p5, v0}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 269
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewProfitCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 272
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget p5, Lorg/telegram/messenger/R$string;->staking_details_profit:I

    invoke-interface {p3, p5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 270
    invoke-virtual {p2, p7, p3, v0}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 275
    iput-boolean p8, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->isProfitTextColored:Z

    .line 276
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextDetailCell;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p2

    .line 278
    iget-boolean p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->isProfitTextColored:Z

    if-eqz p3, :cond_1

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inGreenCall:I

    goto :goto_0

    .line 279
    :cond_1
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    .line 277
    :goto_0
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p3

    .line 276
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    invoke-virtual {p9}, Lcom/iMe/model/staking/StakingProgrammeStatus;->getColorKey()I

    move-result p2

    iput p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->statusTextColorKey:I

    .line 285
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->viewFinishedCell:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 287
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    invoke-virtual {p9}, Lcom/iMe/model/staking/StakingProgrammeStatus;->getTextResId()I

    move-result p3

    invoke-interface {p2, p3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 288
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget p5, Lorg/telegram/messenger/R$string;->wallet_transaction_details_status_title:I

    invoke-interface {p3, p5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 286
    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 291
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextDetailCell;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    iget p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->statusTextColorKey:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 9

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    .line 218
    instance-of v1, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    const-string v2, "imageLogo"

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageLogo:Landroidx/appcompat/widget/AppCompatImageView;

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

    .line 220
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 224
    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_4

    .line 225
    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 226
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->imageLogo:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_bg_white_circle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 227
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getWalletAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_4

    .line 232
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->linearCryptoInfo:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string/jumbo v4, "linearCryptoInfo"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 233
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textCryptoWalletAddressTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    .line 234
    sget v6, Lorg/telegram/messenger/R$string;->wallet_connect_session_details_address:I

    .line 233
    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->textCryptoWalletAddressValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 237
    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getWalletAddress()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public showAccountLevelDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 3

    const-string/jumbo v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    new-instance v0, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;

    .line 562
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    new-instance v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V

    .line 561
    invoke-direct {v0, v1, p1, v2}, Lcom/iMe/fork/ui/dialog/AccountLevelAlert;-><init>(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;Lcom/iMe/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;)V

    .line 568
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 560
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showActionError(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_error:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 377
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 478
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createFormattedDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 477
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showCryptoBoxConditionsDialog(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V
    .locals 7

    const-string v0, "cryptoBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;->newInstance$default(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;ILjava/lang/Object;)Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showCryptoBoxRefreshSuccess()V
    .locals 9

    .line 529
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->status_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 530
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->cryptobox_refresh_success:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 531
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    .line 528
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showCryptoBoxSuspensionDialog(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;)V
    .locals 1

    const-string/jumbo v0, "transactionAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    sget-object v0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$Companion;

    invoke-virtual {v0, p1, p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$Companion;->newInstance(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;

    move-result-object p1

    .line 487
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 2

    const-string/jumbo v0, "minimalRank"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    invoke-static {p0, v0, p1, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showStakingLevelRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 583
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletTokenDetailsBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showRequiredVerifyDialog()V
    .locals 1

    .line 454
    invoke-static {p0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createBinanceVerificationRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRequiredWalletCreatedDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

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

    const-string/jumbo v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
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

    .line 389
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDiagramDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/statistic/StatisticDiagramModel;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
