.class public final Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;
.super Landroid/webkit/WebChromeClient;
.source "SimplexWebViewProcessingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->setupWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    .line 130
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$getBinding(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "filePathCallback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fileChooserParams"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$getMFilePathCallback$p(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {p1, p2}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$setMFilePathCallback$p(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;Landroid/webkit/ValueCallback;)V

    .line 146
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 151
    :try_start_0
    iget-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {p2}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$createImageFile(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "PhotoPath"

    .line 152
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$getMCameraPhotoPath$p(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p2, p3

    .line 154
    :goto_0
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_1
    if-eqz p2, :cond_2

    .line 159
    iget-object p3, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$setMCameraPhotoPath$p(Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;Ljava/lang/String;)V

    .line 160
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "output"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    move-object p3, p1

    .line 166
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.CHOOSER"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 168
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 169
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "android.intent.extra.INTENT"

    .line 167
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TITLE"

    const-string v0, "Image Chooser"

    .line 171
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    new-array v0, p2, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "android.intent.extra.INITIAL_INTENTS"

    .line 172
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    iget-object p3, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return p2
.end method
