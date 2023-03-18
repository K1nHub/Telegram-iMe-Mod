.class public final Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;
.super Lcom/smedialink/ui/base/mvp/MvpFragment;
.source "TwitterAuthFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/twitter/auth/TwitterAuthView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterAuthFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterAuthFragment.kt\ncom/smedialink/ui/twitter/auth/TwitterAuthFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,144:1\n13#2,4:145\n56#3,6:149\n*S KotlinDebug\n*F\n+ 1 TwitterAuthFragment.kt\ncom/smedialink/ui/twitter/auth/TwitterAuthFragment\n*L\n32#1:145,4\n33#1:149,6\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final onAuthResultAction:Lorg/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/twitter/TwitterAuthResult;",
            ">;"
        }
    .end annotation
.end field

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final token:Ljava/lang/String;

.field private final websiteUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3oDzj51Ih88dlQiTpGyctdtQ0BI(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->setupWebView$lambda$3$lambda$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 32
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/twitter/auth/TwitterAuthPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 36
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->Companion:Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/twitter/TwitterAuthResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "websiteUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAuthResultAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->websiteUrl:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->token:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->onAuthResultAction:Lorg/fork/utils/Callbacks$Callback1;

    .line 32
    new-instance p1, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$presenter$2;-><init>(Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p3

    const-string v0, "mvpDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/smedialink/ui/twitter/auth/TwitterAuthPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "presenter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 32
    iput-object p2, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->resourceManager$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$binding$2;-><init>(Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;)V

    const/4 p2, 0x1

    invoke-static {p0, p3, p1, p2, p3}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;)Lcom/smedialink/ui/twitter/auth/TwitterAuthPresenter;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->getPresenter()Lcom/smedialink/ui/twitter/auth/TwitterAuthPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/twitter/auth/TwitterAuthPresenter;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/twitter/auth/TwitterAuthPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/twitter/TwitterAuthResult;",
            ">;)",
            "Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;"
        }
    .end annotation

    sget-object v0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->Companion:Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setupActionBar()V
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 76
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 78
    invoke-direct {p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->twitter_auth_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v1, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$setupActionBar$1$1;-><init>(Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupWebView()V
    .locals 3

    .line 90
    invoke-direct {p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->webView:Landroid/webkit/WebView;

    .line 91
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 97
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    sget-object v2, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 98
    new-instance v1, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$3;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$3;-><init>(Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 104
    new-instance v1, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$4;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$4;-><init>(Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private static final setupWebView$lambda$3$lambda$2(Ljava/lang/Boolean;)V
    .locals 0

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

    .line 63
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

    .line 64
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

    .line 65
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

    .line 66
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 67
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v11, "windowBackgroundGray"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 62
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onAuthResult(Lcom/smedialink/model/twitter/TwitterAuthResult;)V
    .locals 1

    const-string v0, "authResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 53
    iget-object v0, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->onAuthResultAction:Lorg/fork/utils/Callbacks$Callback1;

    invoke-interface {v0, p1}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->setupActionBar()V

    .line 42
    invoke-direct {p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->setupWebView()V

    .line 44
    invoke-direct {p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->webView:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->websiteUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/smedialink/ui/twitter/auth/TwitterAuthFragment;->token:Ljava/lang/String;

    const-string v1, "Authorization"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
