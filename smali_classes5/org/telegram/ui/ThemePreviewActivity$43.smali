.class Lorg/telegram/ui/ThemePreviewActivity$43;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->toggleTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 6375
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$43;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 6378
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$43;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$12800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6379
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$43;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$12800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6380
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$43;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$12800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$43;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$12800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6382
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$43;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$12802(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)Landroid/view/View;

    .line 6384
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$43;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$12902(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 6385
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
