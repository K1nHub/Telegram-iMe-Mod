.class Lorg/telegram/ui/Components/SharedMediaLayout$27;
.super Ljava/lang/Object;
.source "SharedMediaLayout.java"

# interfaces
.implements Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->createScrollingTextTabStrip(Landroid/content/Context;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;
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

    .line 3536
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(F)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3557
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 3560
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3561
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v4

    neg-float v5, p1

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3562
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 3564
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3565
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3567
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabProgress()F

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    .line 3569
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotoVideoOptionsAlpha(F)F

    move-result v3

    .line 3570
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3571
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v6, v5, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    const/4 v8, 0x4

    if-eqz v3, :cond_3

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v8

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3575
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    const/4 v5, 0x7

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 3577
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, p1

    goto :goto_3

    :cond_4
    move v3, p1

    move v6, v7

    goto :goto_4

    :cond_5
    move v3, v7

    :goto_3
    move v6, v3

    .line 3581
    :goto_4
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    if-ne v9, v5, :cond_6

    sub-float v3, v0, p1

    .line 3583
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v6, v3

    .line 3587
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1500(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3588
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1500(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v9

    if-nez v9, :cond_8

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    move v3, v4

    goto :goto_6

    :cond_8
    :goto_5
    move v3, v8

    :goto_6
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3589
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4800(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3590
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4800(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v5

    if-nez v5, :cond_a

    cmpl-float v5, v6, v7

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_7

    :cond_9
    move v5, v4

    goto :goto_8

    :cond_a
    :goto_7
    move v5, v8

    :goto_8
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3592
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v3

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-eqz v3, :cond_c

    .line 3593
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v3

    if-ne v3, v2, :cond_b

    .line 3594
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_a

    .line 3595
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v3

    if-ne v3, v5, :cond_e

    .line 3596
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    sub-float/2addr v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_a

    .line 3599
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v6

    goto :goto_9

    :cond_d
    move v0, v8

    :goto_9
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3600
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_e
    :goto_a
    if-nez v1, :cond_11

    .line 3603
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v4

    .line 3604
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v2

    aput-object v1, v0, v4

    .line 3605
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aput-object p1, v0, v2

    .line 3606
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3607
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result p1

    if-ne p1, v5, :cond_10

    .line 3608
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v0

    if-eqz v0, :cond_f

    move v8, v6

    :cond_f
    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3610
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4602(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    .line 3611
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7000(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    :cond_11
    return-void
.end method

.method public onPageSelected(IZ)V
    .locals 3

    .line 3539
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3542
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 3543
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3544
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6700(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 3545
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2300(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 3546
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6802(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 3547
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    return-void
.end method

.method public onSamePageSelected()V
    .locals 1

    .line 3552
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$27;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6900(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    return-void
.end method

.method public synthetic onTabSelected(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate$-CC;->$default$onTabSelected(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;I)V

    return-void
.end method
