.class Lcom/iMe/fork/ui/dialog/TranslateAlert$4;
.super Landroidx/core/widget/NestedScrollView;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLcom/iMe/fork/ui/dialog/TranslateAlert$OnLinkPress;Ljava/lang/Runnable;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$4;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$4;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1000(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$4;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$400(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$4;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1100(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z

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

    .line 883
    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->onNestedScroll(Landroid/view/View;IIII)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 888
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 889
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$4;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 890
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$4;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1300(Lcom/iMe/fork/ui/dialog/TranslateAlert;FZ)V

    :cond_0
    return-void
.end method
