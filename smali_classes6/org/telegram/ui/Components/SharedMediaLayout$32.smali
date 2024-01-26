.class Lorg/telegram/ui/Components/SharedMediaLayout$32;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->stopScroll(Landroid/view/MotionEvent;)V
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

    .line 5041
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 5044
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8402(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 5045
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8500(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    .line 5046
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5047
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    .line 5048
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 5049
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 5050
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 5051
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5052
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 5055
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5056
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5058
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4702(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    goto :goto_1

    .line 5060
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v5

    .line 5061
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v7

    aget-object v7, v7, v4

    aput-object v7, v6, v5

    .line 5062
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    aput-object p1, v6, v4

    .line 5063
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5064
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 5065
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5067
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4702(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    .line 5068
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 5069
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    .line 5070
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7700(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    .line 5072
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4602(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 5073
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8602(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 5074
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8702(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 5075
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabScroll(Z)V

    .line 5076
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 5077
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$32;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    return-void
.end method
