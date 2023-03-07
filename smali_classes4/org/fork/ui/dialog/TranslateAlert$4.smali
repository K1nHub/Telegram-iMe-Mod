.class Lorg/fork/ui/dialog/TranslateAlert$4;
.super Landroidx/core/widget/NestedScrollView;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLorg/fork/ui/dialog/TranslateAlert$OnLinkPress;Ljava/lang/Runnable;Lcom/smedialink/model/translation/TranslationArgs;Lorg/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/TranslateAlert;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/TranslateAlert;Landroid/content/Context;)V
    .locals 0

    .line 901
    iput-object p1, p0, Lorg/fork/ui/dialog/TranslateAlert$4;->this$0:Lorg/fork/ui/dialog/TranslateAlert;

    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 904
    iget-object v0, p0, Lorg/fork/ui/dialog/TranslateAlert$4;->this$0:Lorg/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lorg/fork/ui/dialog/TranslateAlert;->access$1100(Lorg/fork/ui/dialog/TranslateAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fork/ui/dialog/TranslateAlert$4;->this$0:Lorg/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lorg/fork/ui/dialog/TranslateAlert;->access$500(Lorg/fork/ui/dialog/TranslateAlert;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/fork/ui/dialog/TranslateAlert$4;->this$0:Lorg/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lorg/fork/ui/dialog/TranslateAlert;->access$1200(Lorg/fork/ui/dialog/TranslateAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 909
    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->onNestedScroll(Landroid/view/View;IIII)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 914
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 915
    iget-object p1, p0, Lorg/fork/ui/dialog/TranslateAlert$4;->this$0:Lorg/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lorg/fork/ui/dialog/TranslateAlert;->access$1300(Lorg/fork/ui/dialog/TranslateAlert;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 916
    iget-object p1, p0, Lorg/fork/ui/dialog/TranslateAlert$4;->this$0:Lorg/fork/ui/dialog/TranslateAlert;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lorg/fork/ui/dialog/TranslateAlert;->access$1400(Lorg/fork/ui/dialog/TranslateAlert;FZ)V

    :cond_0
    return-void
.end method
