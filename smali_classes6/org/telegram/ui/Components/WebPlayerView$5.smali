.class Lorg/telegram/ui/Components/WebPlayerView$5;
.super Landroid/webkit/WebView;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 1547
    iput-object p3, p0, Lorg/telegram/ui/Components/WebPlayerView$5;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$5;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkAndroidTheme(Landroid/content/Context;Z)V

    .line 1551
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1556
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$5;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkAndroidTheme(Landroid/content/Context;Z)V

    .line 1557
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method
