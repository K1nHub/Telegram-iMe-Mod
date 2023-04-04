.class public final Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$3;
.super Landroid/webkit/WebViewClient;
.source "SimplexWebViewProcessingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->setupWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$3;->this$0:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    .line 178
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$3;->this$0:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$getBinding(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string p2, "binding.progressBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 181
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$3;->this$0:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$getBinding(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string p2, "binding.progressBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$3;->this$0:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$getBinding(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string p2, "binding.progressBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$3;->this$0:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "request.url.toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;->isNeedHandleManually(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$setupWebView$1$3;->this$0:Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;)Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;->isNeedHandleManually(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
