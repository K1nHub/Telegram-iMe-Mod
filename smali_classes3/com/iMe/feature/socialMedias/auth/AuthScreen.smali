.class public final Lcom/iMe/feature/socialMedias/auth/AuthScreen;
.super Landroidx/fragment/app/Fragment;
.source "AuthScreen.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthScreen.kt\ncom/iMe/feature/socialMedias/auth/AuthScreen\n+ 2 FragmentViewBindingDelegate.kt\ncom/iMe/common/viewBinding/FragmentViewBindingDelegateKt\n+ 3 FragmentVM.kt\norg/koin/androidx/viewmodel/ext/android/FragmentVMKt\n+ 4 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n+ 5 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n43#2:151\n43#3,7:152\n42#4,3:159\n56#5,6:162\n1#6:168\n*S KotlinDebug\n*F\n+ 1 AuthScreen.kt\ncom/iMe/feature/socialMedias/auth/AuthScreen\n*L\n33#1:151\n34#1:152,7\n35#1:159,3\n36#1:162,6\n*E\n"
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
.field private final args$delegate:Landroidx/navigation/NavArgsLazy;

.field private final binding$delegate:Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;

.field private final resource$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$l844LQVLlwGMXNOalda4PsRRu88(Lcom/iMe/feature/socialMedias/auth/AuthScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->closeAuthScreen()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 33
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/feature/socialMedias/auth/AuthScreen;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 31
    sget v0, Lorg/telegram/messenger/R$layout;->fork_web_screen:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 43
    new-instance v0, Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;

    const-class v1, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    invoke-direct {v0, v1, p0}, Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 33
    iput-object v0, p0, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->binding$delegate:Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;

    .line 45
    new-instance v5, Lcom/iMe/feature/socialMedias/auth/AuthScreen$special$$inlined$viewModel$default$1;

    invoke-direct {v5, p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$special$$inlined$viewModel$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 49
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/iMe/feature/socialMedias/auth/AuthScreen$special$$inlined$viewModel$default$2;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$special$$inlined$viewModel$default$2;-><init>(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->viewModel$delegate:Lkotlin/Lazy;

    .line 42
    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lcom/iMe/feature/socialMedias/auth/AuthScreenArgs;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/iMe/feature/socialMedias/auth/AuthScreen$special$$inlined$navArgs$1;

    invoke-direct {v2, p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 35
    iput-object v0, p0, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->args$delegate:Landroidx/navigation/NavArgsLazy;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/feature/socialMedias/auth/AuthScreen$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->resource$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$onCreate$render(Lcom/iMe/feature/socialMedias/auth/AuthScreen;Lcom/iMe/feature/socialMedias/auth/AuthState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->onCreate$render(Lcom/iMe/feature/socialMedias/auth/AuthScreen;Lcom/iMe/feature/socialMedias/auth/AuthState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onCreate$sideEffects(Lcom/iMe/feature/socialMedias/auth/AuthScreen;Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->onCreate$sideEffects(Lcom/iMe/feature/socialMedias/auth/AuthScreen;Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showCloseDialog(Lcom/iMe/feature/socialMedias/auth/AuthScreen;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->showCloseDialog()V

    return-void
.end method

.method public static final synthetic access$showPopupMenu(Lcom/iMe/feature/socialMedias/auth/AuthScreen;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->showPopupMenu()V

    return-void
.end method

.method private final closeAuthScreen()V
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final getArgs()Lcom/iMe/feature/socialMedias/auth/AuthScreenArgs;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->args$delegate:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/socialMedias/auth/AuthScreenArgs;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->binding$delegate:Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;

    sget-object v1, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;->getValue(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    return-object v0
.end method

.method private final getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->resource$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getViewModel()Lcom/iMe/feature/socialMedias/auth/AuthViewModel;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    return-object v0
.end method

.method private final initToolbar()V
    .locals 17

    move-object/from16 v0, p0

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->toolbar:Lorg/telegram/messenger/databinding/ForkToolbarBinding;

    .line 79
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    .line 80
    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkToolbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    const-string v5, "root"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 81
    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkToolbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 82
    iget-object v5, v1, Lorg/telegram/messenger/databinding/ForkToolbarBinding;->imageBack:Landroid/widget/ImageView;

    .line 83
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const-string v2, "initToolbar$lambda$2$lambda$0"

    .line 84
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/iMe/feature/socialMedias/auth/AuthScreen$initToolbar$1$1$1;

    invoke-direct {v8, v0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$initToolbar$1$1$1;-><init>(Lcom/iMe/feature/socialMedias/auth/AuthScreen;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 86
    iget-object v11, v1, Lorg/telegram/messenger/databinding/ForkToolbarBinding;->imageMenu:Landroid/widget/ImageView;

    .line 87
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const-string v1, "initToolbar$lambda$2$lambda$1"

    .line 88
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/iMe/feature/socialMedias/auth/AuthScreen$initToolbar$1$2$1;

    invoke-direct {v14, v0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$initToolbar$1$2$1;-><init>(Lcom/iMe/feature/socialMedias/auth/AuthScreen;)V

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final synthetic onCreate$render(Lcom/iMe/feature/socialMedias/auth/AuthScreen;Lcom/iMe/feature/socialMedias/auth/AuthState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->render(Lcom/iMe/feature/socialMedias/auth/AuthState;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final synthetic onCreate$sideEffects(Lcom/iMe/feature/socialMedias/auth/AuthScreen;Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->sideEffects(Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final render(Lcom/iMe/feature/socialMedias/auth/AuthState;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->toolbar:Lorg/telegram/messenger/databinding/ForkToolbarBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkToolbarBinding;->textTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/auth/AuthState;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v1, "binding.progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/auth/AuthState;->isLoading()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;Z)V

    return-void
.end method

.method private final setupWebView()V
    .locals 7

    .line 113
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->webView:Landroid/webkit/WebView;

    .line 114
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 v2, 0x1

    .line 116
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 117
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 120
    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    new-instance v1, Lcom/iMe/feature/socialMedias/auth/AuthWebViewClient;

    .line 122
    new-instance v2, Lcom/iMe/feature/socialMedias/auth/AuthScreen$setupWebView$1$2;

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getViewModel()Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$setupWebView$1$2;-><init>(Ljava/lang/Object;)V

    .line 123
    new-instance v3, Lcom/iMe/feature/socialMedias/auth/AuthScreen$setupWebView$1$3;

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getViewModel()Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$setupWebView$1$3;-><init>(Ljava/lang/Object;)V

    .line 124
    new-instance v4, Lcom/iMe/feature/socialMedias/auth/AuthScreen$setupWebView$1$4;

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getViewModel()Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$setupWebView$1$4;-><init>(Ljava/lang/Object;)V

    .line 125
    new-instance v5, Lcom/iMe/feature/socialMedias/auth/AuthScreen$setupWebView$1$5;

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getViewModel()Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$setupWebView$1$5;-><init>(Ljava/lang/Object;)V

    .line 121
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/feature/socialMedias/auth/AuthWebViewClient;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private final showCloseDialog()V
    .locals 7

    .line 131
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getArgs()Lcom/iMe/feature/socialMedias/auth/AuthScreenArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/auth/AuthScreenArgs;->getSocialAuthDomain()Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->getSocialType()Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/StringExtKt;->capitalizeOnlyFirstSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v2, Lcom/iMe/model/dialog/DialogModel;

    .line 135
    sget v3, Lorg/telegram/messenger/R$string;->social_connect_account_title:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    sget v3, Lorg/telegram/messenger/R$string;->social_connect_account_message:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    sget v4, Lorg/telegram/messenger/R$string;->social_connect_account_negative_button:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    sget v5, Lorg/telegram/messenger/R$string;->social_connect_account_positive_button:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-direct {v2, v0, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v3, Lcom/iMe/feature/socialMedias/auth/AuthScreen$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/feature/socialMedias/auth/AuthScreen;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 132
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private final showErrorMessageAndClose(Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->closeAuthScreen()V

    return-void
.end method

.method private final showPopupMenu()V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/ui/popupMenu/MenuItem;

    .line 95
    new-instance v9, Lcom/iMe/ui/popupMenu/MenuItem;

    .line 96
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->social_refresh_page_menu_item:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    .line 98
    new-instance v6, Lcom/iMe/feature/socialMedias/auth/AuthScreen$showPopupMenu$menuItems$1;

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getViewModel()Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$showPopupMenu$menuItems$1;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, v9

    .line 95
    invoke-direct/range {v1 .. v8}, Lcom/iMe/ui/popupMenu/MenuItem;-><init>(Ljava/lang/String;IIILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 100
    new-instance v1, Lcom/iMe/ui/popupMenu/MenuItem;

    .line 101
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->social_clear_cache_menu_item:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    .line 103
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    .line 104
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    .line 105
    new-instance v7, Lcom/iMe/feature/socialMedias/auth/AuthScreen$showPopupMenu$menuItems$2;

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getViewModel()Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$showPopupMenu$menuItems$2;-><init>(Ljava/lang/Object;)V

    move-object v2, v1

    .line 100
    invoke-direct/range {v2 .. v7}, Lcom/iMe/ui/popupMenu/MenuItem;-><init>(Ljava/lang/String;IIILkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 94
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->toolbar:Lorg/telegram/messenger/databinding/ForkToolbarBinding;

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkToolbarBinding;->imageMenu:Landroid/widget/ImageView;

    const-string v2, "binding.toolbar.imageMenu"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/iMe/ui/popupMenu/PopupMenuExtKt;->showPopupMenu(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private final sideEffects(Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;)V
    .locals 2

    .line 63
    instance-of v0, p1, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$LoadUrl;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->webView:Landroid/webkit/WebView;

    .line 64
    check-cast p1, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$LoadUrl;

    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$LoadUrl;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$LoadUrl;->getAuthHeader()Ljava/util/Map;

    move-result-object p1

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 68
    :cond_0
    instance-of v0, p1, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ShowError;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ShowError;

    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ShowError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->showErrorMessageAndClose(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;->INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->closeAuthScreen()V

    goto :goto_0

    .line 70
    :cond_2
    sget-object v0, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ReloadPage;->INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ReloadPage;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getBinding()Lorg/telegram/messenger/databinding/ForkWebScreenBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkWebScreenBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 71
    :cond_3
    sget-object v0, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$RemoveCookies;->INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$RemoveCookies;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 72
    :cond_4
    sget-object v0, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ShowAccessError;->INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ShowAccessError;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->social_access_error:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->showErrorMessageAndClose(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 31
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getViewModel()Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    move-result-object p1

    .line 43
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthScreen$onCreate$1;

    invoke-direct {v0, p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$onCreate$1;-><init>(Ljava/lang/Object;)V

    .line 44
    new-instance v1, Lcom/iMe/feature/socialMedias/auth/AuthScreen$onCreate$2;

    invoke-direct {v1, p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$onCreate$2;-><init>(Ljava/lang/Object;)V

    .line 41
    invoke-static {p1, p0, v0, v1}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt;->observe(Lorg/orbitmvi/orbit/ContainerHost;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    const-string p1, "requireActivity().onBackPressedDispatcher"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v3, Lcom/iMe/feature/socialMedias/auth/AuthScreen$onViewCreated$1;

    invoke-direct {v3, p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$onViewCreated$1;-><init>(Lcom/iMe/feature/socialMedias/auth/AuthScreen;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/activity/OnBackPressedDispatcherKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallback;

    .line 51
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->initToolbar()V

    .line 52
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->setupWebView()V

    .line 53
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getViewModel()Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen;->getArgs()Lcom/iMe/feature/socialMedias/auth/AuthScreenArgs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/feature/socialMedias/auth/AuthScreenArgs;->getSocialAuthDomain()Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    move-result-object p2

    const-string v0, "args.socialAuthDomain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;->onWebViewCreated(Lcom/iMe/feature/socialMedias/SocialAuthDomain;)V

    return-void
.end method
