.class public final Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "SimplexWebViewProcessingFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimplexWebViewProcessingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimplexWebViewProcessingFragment.kt\ncom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 BundleExtractorDelegate.kt\ncom/smedialink/utils/extentions/delegate/BundleExtractorDelegateKt\n*L\n1#1,275:1\n13#2,4:276\n12#3,7:280\n*S KotlinDebug\n*F\n+ 1 SimplexWebViewProcessingFragment.kt\ncom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment\n*L\n43#1:276,4\n47#1:280,7\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private mCameraPhotoPath:Ljava/lang/String;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resultDelegate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/smedialink/model/wallet/crypto/simplex/PaymentResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final url$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method public static synthetic $r8$lambda$DFmES5HjkL2vnKyTxurWY8z5bbc(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getThemeDescriptions$lambda$0(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 43
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 46
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 47
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "url"

    const-string v4, "getUrl()Ljava/lang/String;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/model/wallet/crypto/simplex/PaymentResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "resultDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->resultDelegate:Lkotlin/jvm/functions/Function1;

    .line 43
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;

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

    .line 43
    iput-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 46
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 12
    new-instance p1, Lcom/smedialink/utils/extentions/delegate/BundleExtractorDelegate;

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$special$$inlined$argument$1;

    const-string v1, "url_arg"

    const-string v2, "about:blank"

    invoke-direct {v0, v1, v2}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$special$$inlined$argument$1;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lcom/smedialink/utils/extentions/delegate/BundleExtractorDelegate;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->url$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$createImageFile(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Ljava/io/File;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->createImageFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMCameraPhotoPath$p(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->mCameraPhotoPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMFilePathCallback$p(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleBackPress(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->handleBackPress()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMCameraPhotoPath$p(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->mCameraPhotoPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMFilePathCallback$p(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method private final clearWebView()V
    .locals 3

    .line 245
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 246
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 247
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    const-string v1, "about:blank"

    .line 248
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final createImageFile()Ljava/io/File;
    .locals 4

    .line 214
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpg"

    .line 215
    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->setupColors()V

    return-void
.end method

.method private final getUrl()Ljava/lang/String;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->url$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final handleBackPress()Z
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final setupActionBar()V
    .locals 3

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 231
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_processing_toolbar_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupActionBar$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 3

    .line 254
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object v0

    .line 255
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v2, "progressBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "chats_actionBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->tintIndeterminateProgress(Landroid/widget/ProgressBar;I)V

    .line 256
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v1, "actionBarDefault"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupWebView()V
    .locals 4

    .line 121
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->webView:Landroid/webkit/WebView;

    .line 122
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 v2, 0x1

    .line 124
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v3, 0x2

    .line 126
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, v3, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 129
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 130
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 178
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$3;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$3;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

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

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 109
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 108
    new-instance v8, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "actionBarDefault"

    move-object v2, v10

    .line 109
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 110
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

    .line 111
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "actionBarDefaultTitle"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 112
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 108
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 82
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_2

    const/4 p1, 0x0

    if-nez p3, :cond_1

    .line 93
    iget-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz p2, :cond_2

    new-array p3, v0, [Landroid/net/Uri;

    .line 94
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "parse(mCameraPhotoPath)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p2, p3, p1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    new-array p3, v0, [Landroid/net/Uri;

    .line 99
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "parse(dataString)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p2, p3, p1

    goto :goto_0

    :cond_2
    move-object p3, v1

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_3

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 105
    :cond_3
    iput-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-void

    .line 83
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->handleBackPress()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->setupActionBar()V

    .line 57
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->setupWebView()V

    .line 58
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->setupColors()V

    .line 60
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 65
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->clearWebView()V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->getUrl()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    invoke-virtual {p1, p2, v1, v0}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public redirectAndShowResult(Lcom/smedialink/model/wallet/crypto/simplex/PaymentResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->resultDelegate:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method
