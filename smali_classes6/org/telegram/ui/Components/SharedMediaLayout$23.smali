.class Lorg/telegram/ui/Components/SharedMediaLayout$23;
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

    .line 3010
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

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

    .line 3031
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 3034
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3035
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v4

    neg-float v5, p1

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3036
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 3038
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3039
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3043
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_2

    sub-float v3, v0, p1

    goto :goto_1

    :cond_2
    move v3, v5

    .line 3046
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    if-nez v6, :cond_3

    move v3, p1

    .line 3049
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3050
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v7, v6, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    cmpl-float v3, v3, v5

    const/4 v8, 0x4

    if-eqz v3, :cond_5

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v8

    :goto_3
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3054
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    const/4 v6, 0x7

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 3056
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, p1

    goto :goto_4

    :cond_6
    move v3, p1

    move v7, v5

    goto :goto_5

    :cond_7
    move v3, v5

    :goto_4
    move v7, v3

    .line 3060
    :goto_5
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    if-ne v9, v6, :cond_8

    sub-float v3, v0, p1

    .line 3062
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v7, v3

    .line 3066
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3067
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v9

    if-nez v9, :cond_a

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    move v3, v4

    goto :goto_7

    :cond_a
    :goto_6
    move v3, v8

    :goto_7
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3068
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4200(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3069
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4200(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v6

    if-nez v6, :cond_c

    cmpl-float v6, v7, v5

    if-eqz v6, :cond_c

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_8

    :cond_b
    move v6, v4

    goto :goto_9

    :cond_c
    :goto_8
    move v6, v8

    :goto_9
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3071
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v3

    const/4 v6, 0x2

    if-eqz v3, :cond_e

    .line 3072
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v3

    if-ne v3, v2, :cond_d

    .line 3073
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_a

    .line 3074
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v3

    if-ne v3, v6, :cond_f

    .line 3075
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    sub-float/2addr v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_a

    .line 3078
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3079
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_f
    :goto_a
    if-nez v1, :cond_11

    .line 3082
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v4

    .line 3083
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v2

    aput-object v1, v0, v4

    .line 3084
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aput-object p1, v0, v2

    .line 3085
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3086
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result p1

    if-ne p1, v6, :cond_10

    .line 3087
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3089
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4002(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    .line 3090
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    :cond_11
    return-void
.end method

.method public onPageSelected(IZ)V
    .locals 3

    .line 3013
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3016
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 3017
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3018
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5900(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 3019
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 3020
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 3021
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    return-void
.end method

.method public onSamePageSelected()V
    .locals 1

    .line 3026
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$23;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6100(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    return-void
.end method

.method public synthetic onTabSelected(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate$-CC;->$default$onTabSelected(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;I)V

    return-void
.end method
