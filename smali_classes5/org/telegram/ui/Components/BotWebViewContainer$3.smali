.class Lorg/telegram/ui/Components/BotWebViewContainer$3;
.super Landroid/webkit/WebViewClient;
.source "BotWebViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BotWebViewContainer;->setupWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BotWebViewContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BotWebViewContainer;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$3;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$3;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$700(Lorg/telegram/ui/Components/BotWebViewContainer;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 291
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$3;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$300(Lorg/telegram/ui/Components/BotWebViewContainer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 292
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$3;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$400(Lorg/telegram/ui/Components/BotWebViewContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 298
    invoke-static {}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$500()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$3;->this$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->access$600(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method
