.class public final Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;
.super Ljava/lang/Object;
.source "TelegramViewPagerFragment.kt"

# interfaces
.implements Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/pager/TelegramViewPagerFragment;->initTabLayout()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramViewPagerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramViewPagerFragment.kt\ncom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,913:1\n302#2:914\n*S KotlinDebug\n*F\n+ 1 TelegramViewPagerFragment.kt\ncom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1\n*L\n312#1:914\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(F)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 312
    iget-object v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    .line 302
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    return-void

    .line 315
    :cond_2
    iget-object v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    iget-object v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v2

    neg-float v4, p1

    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    .line 317
    iget-object v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    .line 318
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr p1, v5

    sub-float/2addr v4, p1

    .line 317
    invoke-virtual {v3, v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    goto :goto_2

    .line 320
    :cond_3
    iget-object v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    .line 321
    iget-object v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    .line 322
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr p1, v4

    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    .line 321
    invoke-virtual {v3, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    :goto_2
    if-nez v0, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    if-eqz p1, :cond_5

    .line 325
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v2

    .line 326
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    iget-object v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    .line 327
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    aput-object p1, v0, v1

    .line 328
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    const/4 v0, 0x0

    invoke-static {p1, v2, v1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public onPageSelected(IZ)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setSelectedType(I)V

    .line 306
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v2

    const/4 v0, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 307
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$switchToCurrentSelectedMode(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    .line 308
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    return-void
.end method

.method public synthetic onSamePageSelected()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate$-CC;->$default$onSamePageSelected(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$updateFab(Lcom/iMe/ui/pager/TelegramViewPagerFragment;I)V

    return-void
.end method
