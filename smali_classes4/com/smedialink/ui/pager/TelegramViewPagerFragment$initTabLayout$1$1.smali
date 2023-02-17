.class public final Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;
.super Ljava/lang/Object;
.source "TelegramViewPagerFragment.kt"

# interfaces
.implements Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->initTabLayout()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramViewPagerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramViewPagerFragment.kt\ncom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,655:1\n294#2:656\n*S KotlinDebug\n*F\n+ 1 TelegramViewPagerFragment.kt\ncom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1\n*L\n153#1:656\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(F)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 153
    iget-object v3, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v0

    .line 294
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    return-void

    .line 156
    :cond_2
    iget-object v3, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-static {v3}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    iget-object v3, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    neg-float v4, p1

    iget-object v5, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    .line 158
    iget-object v3, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float p1, p1, v5

    sub-float/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    goto :goto_2

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    .line 161
    iget-object v3, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float p1, p1, v4

    iget-object v4, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    invoke-virtual {v3, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    :goto_2
    if-nez v2, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    .line 164
    iget-object p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    .line 165
    iget-object v2, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v2}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    .line 166
    iget-object v1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    aput-object p1, v1, v0

    .line 167
    iget-object p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public onPageSelected(IZ)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->setSelectedType(I)V

    .line 147
    iget-object p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 148
    iget-object p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, v1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->access$switchToCurrentSelectedMode(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Z)V

    .line 149
    iget-object p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, p2}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->access$setAnimatingForward$p(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Z)V

    return-void
.end method

.method public synthetic onSamePageSelected()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate$-CC;->$default$onSamePageSelected(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->access$updateFab(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;I)V

    return-void
.end method
