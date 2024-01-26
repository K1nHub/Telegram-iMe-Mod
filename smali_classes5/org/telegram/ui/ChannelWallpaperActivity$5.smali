.class Lorg/telegram/ui/ChannelWallpaperActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChannelWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelWallpaperActivity;->toggleTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelWallpaperActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelWallpaperActivity;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lorg/telegram/ui/ChannelWallpaperActivity$5;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$5;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$1000(Lorg/telegram/ui/ChannelWallpaperActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$5;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$1000(Lorg/telegram/ui/ChannelWallpaperActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$5;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$1000(Lorg/telegram/ui/ChannelWallpaperActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/ChannelWallpaperActivity$5;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$1000(Lorg/telegram/ui/ChannelWallpaperActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$5;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$1002(Lorg/telegram/ui/ChannelWallpaperActivity;Landroid/view/View;)Landroid/view/View;

    .line 457
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelWallpaperActivity$5;->this$0:Lorg/telegram/ui/ChannelWallpaperActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelWallpaperActivity;->access$1102(Lorg/telegram/ui/ChannelWallpaperActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 458
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
