.class public final Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$3;
.super Landroid/webkit/WebChromeClient;
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

    iput-object p1, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$3;->this$0:Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;

    .line 98
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment$setupWebView$1$3;->this$0:Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;

    invoke-static {p1}, Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;->access$getBinding(Lcom/iMe/ui/twitter/auth/TwitterAuthFragment;)Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWebViewBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
