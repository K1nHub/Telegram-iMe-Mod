.class Lorg/telegram/ui/Components/SharedMediaLayout$26;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 4013
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 4016
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6802(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 4017
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6900(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    .line 4018
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4019
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 4020
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 4021
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 4022
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 4023
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4024
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 4027
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4028
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4030
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4002(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    goto :goto_1

    .line 4032
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v5

    .line 4033
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v7

    aget-object v7, v7, v4

    aput-object v7, v6, v5

    .line 4034
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    aput-object p1, v6, v4

    .line 4035
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4036
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 4037
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4039
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4002(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    .line 4040
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 4041
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    .line 4042
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    .line 4044
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3802(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 4045
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 4046
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7102(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 4047
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 4048
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$26;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    return-void
.end method
