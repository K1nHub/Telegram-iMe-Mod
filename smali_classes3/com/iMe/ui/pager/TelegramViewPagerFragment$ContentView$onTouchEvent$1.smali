.class public final Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TelegramViewPagerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;

.field final synthetic this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;

    iput-object p2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    .line 565
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->access$setTabsAnimation$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;Landroid/animation/AnimatorSet;)V

    .line 568
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->access$getBackAnimation$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    .line 570
    iget-object v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    .line 571
    iget-object v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v2

    aput-object p1, v2, v1

    .line 572
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    iget-object v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 575
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setTabsAnimationInProgress$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    .line 576
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;

    invoke-static {p1, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->access$setMaybeStartTracking$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;Z)V

    .line 577
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 578
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;->this$1:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    return-void
.end method
