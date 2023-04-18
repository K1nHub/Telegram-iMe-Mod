.class Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

.field final synthetic val$expanded:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;Lorg/telegram/ui/ProfileActivity;Z)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iput-boolean p3, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->val$expanded:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1800
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->access$2800(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    .line 1802
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1803
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1806
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1807
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1809
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1810
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1812
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1813
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1815
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1816
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1819
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1826
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1827
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1830
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->val$expanded:Z

    if-nez p1, :cond_1

    .line 1831
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1833
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1834
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1836
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1837
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1839
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1840
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1842
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
