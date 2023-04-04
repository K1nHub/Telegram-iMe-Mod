.class public final Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$4;
.super Landroid/webkit/WebViewClient;
.source "TwitterAuthFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;->setupWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$4;->this$0:Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;

    .line 104
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$4;->this$0:Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;

    invoke-static {p1}, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;->access$getBinding(Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string p2, "binding.progressBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 119
    iget-object p1, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$4;->this$0:Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;

    invoke-static {p1}, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;->access$getBinding(Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string p2, "binding.progressBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$4;->this$0:Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;

    invoke-static {p1}, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;->access$getBinding(Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string p2, "binding.progressBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 107
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$4;->this$0:Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;

    invoke-static {v1}, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;->access$getPresenter(Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;)Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter;->isAuthResultUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$4;->this$0:Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;

    invoke-static {p1}, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;->access$getPresenter(Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;)Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/iMe/ui/twitter/auth/TwitterAuthPresenter;->processAuthResult(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 112
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
