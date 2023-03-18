.class Lorg/telegram/ui/PremiumPreviewFragment$1;
.super Landroid/widget/FrameLayout;
.source "PremiumPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PremiumPreviewFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field iconInterceptedTouch:Z

.field lastSize:I

.field listInterceptedTouch:Z

.field final synthetic this$0:Lorg/telegram/ui/PremiumPreviewFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 430
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$800(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    .line 431
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-boolean v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->inc:Z

    const v5, 0x3c83126f    # 0.016f

    if-eqz v4, :cond_0

    .line 432
    iget v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    add-float/2addr v4, v5

    iput v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 434
    iput-boolean v2, v1, Lorg/telegram/ui/PremiumPreviewFragment;->inc:Z

    goto :goto_0

    .line 437
    :cond_0
    iget v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    sub-float/2addr v4, v5

    iput v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_1

    const/4 v4, 0x1

    .line 439
    iput-boolean v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->inc:Z

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 444
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 445
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 448
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    :goto_1
    invoke-static {v4, v2}, Lorg/telegram/ui/PremiumPreviewFragment;->access$902(Lorg/telegram/ui/PremiumPreviewFragment;I)I

    .line 449
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$1000(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 450
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment;->access$900(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v6}, Lorg/telegram/ui/PremiumPreviewFragment;->access$1100(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v6

    sub-int/2addr v6, v1

    int-to-float v1, v6

    div-float/2addr v5, v1

    sub-float v1, v3, v5

    iput v1, v4, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    .line 451
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    .line 453
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$1200(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 454
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment;->access$900(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v4

    if-ge v4, v1, :cond_4

    .line 455
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v4, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$902(Lorg/telegram/ui/PremiumPreviewFragment;I)I

    .line 458
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v6, v4, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    .line 459
    iput v5, v4, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    .line 460
    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment;->access$900(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v4

    const/16 v7, 0x1e

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v8, v1

    if-ge v4, v8, :cond_5

    .line 461
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v8}, Lorg/telegram/ui/PremiumPreviewFragment;->access$900(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v1, v7

    iput v1, v4, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    .line 464
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-boolean v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->isLandscapeMode:Z

    if-nez v4, :cond_6

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$500(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 465
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput v3, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    .line 466
    iput v3, v1, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    .line 468
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v4, v1, Lorg/telegram/ui/PremiumPreviewFragment;->progressToFull:F

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_8

    .line 469
    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 471
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$900(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment;->access$1300(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v6, v6, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v6}, Lorg/telegram/ui/PremiumPreviewFragment;->access$300(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v6

    sub-int/2addr v4, v6

    sub-int/2addr v1, v4

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$200(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x18

    goto :goto_2

    :cond_9
    const/16 v4, 0x10

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    .line 472
    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment;->access$1400(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v6}, Lorg/telegram/ui/PremiumPreviewFragment;->access$300(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v6, v6, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    iget-object v6, v6, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget-object v7, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v7}, Lorg/telegram/ui/PremiumPreviewFragment;->access$300(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    iget-object v7, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v7, v7, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    iget-object v7, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v7, v7, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    iget-object v7, v7, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    .line 474
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    neg-float v4, v1

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v4, v7

    .line 475
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 476
    iget-object v7, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v7, v7, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 478
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setTranslationY(F)V

    const v1, 0x3f19999a    # 0.6f

    .line 479
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v4, v2, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    sub-float v7, v3, v4

    const v8, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v8

    add-float/2addr v7, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v8, v4, v1

    if-lez v8, :cond_a

    sub-float/2addr v4, v1

    div-float/2addr v4, v1

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    sub-float v1, v3, v4

    .line 481
    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/TextureView;->setScaleX(F)V

    .line 482
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/TextureView;->setScaleY(F)V

    .line 483
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 484
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$1500(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 485
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$200(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 486
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v1, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    iget v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    sub-float v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 488
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getY()F

    move-result v4

    add-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$000(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    const/16 v1, 0x48

    .line 489
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 490
    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v4, v2, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    const v6, 0x3e99999a    # 0.3f

    cmpl-float v7, v4, v6

    if-lez v7, :cond_b

    sub-float/2addr v4, v6

    const v5, 0x3f333333    # 0.7f

    div-float v5, v4, v5

    .line 491
    :cond_b
    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->titleView:Landroid/widget/TextView;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v5, v3, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 493
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$000(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v4

    iget-object v5, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v5, v5, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    mul-float v3, v3, v5

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientStartX:F

    .line 494
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$000(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientStartY:F

    .line 496
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$800(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 497
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 499
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v5, v1, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float v1, v1, v4

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->progress:F

    mul-float v10, v1, v2

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 500
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v15, v1

    iget-object v1, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$900(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 502
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$000(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 356
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$000(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    .line 357
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v4, v4, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v4}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->iconInterceptedTouch:Z

    if-eqz v3, :cond_5

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v3, :cond_5

    neg-float v0, v0

    neg-float v1, v1

    .line 359
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 363
    :cond_2
    iput-boolean v5, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->iconInterceptedTouch:Z

    goto :goto_1

    .line 361
    :cond_3
    :goto_0
    iput-boolean v6, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->iconInterceptedTouch:Z

    .line 365
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v6

    .line 369
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$200(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$200(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v1, v3

    .line 370
    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v3, v3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$200(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v7, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v7, v7, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v7}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$200(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {v2, v0, v1, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v2, v3, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->listInterceptedTouch:Z

    if-eqz v2, :cond_a

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v2, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v2, :cond_a

    neg-float v0, v0

    neg-float v1, v1

    .line 372
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    .line 374
    iput-boolean v6, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->listInterceptedTouch:Z

    goto :goto_2

    .line 375
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 376
    :cond_8
    iput-boolean v5, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->listInterceptedTouch:Z

    .line 378
    :cond_9
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$200(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 380
    iget-boolean v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->listInterceptedTouch:Z

    if-eqz v0, :cond_a

    return v6

    .line 384
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, v0, :cond_0

    .line 508
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 509
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$1600(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 510
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    return p1

    .line 514
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 415
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p1, p1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p2, p2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientScaleX:F

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p1, p1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p2, p2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientScaleY:F

    .line 418
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p1, p1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p2, p2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getX()F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p3, p3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/TextureView;->getX()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientStartX:F

    .line 419
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p1, p1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p2, p2, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getY()F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p3, p3, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p3}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$100(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/TextureView;->getY()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->gradientStartY:F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 389
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/PremiumPreviewFragment;->isLandscapeMode:Z

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-boolean v2, v0, Lorg/telegram/ui/PremiumPreviewFragment;->isLandscapeMode:Z

    .line 394
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    invoke-static {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$302(Lorg/telegram/ui/PremiumPreviewFragment;I)I

    .line 397
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v0, v0, Lorg/telegram/ui/PremiumPreviewFragment;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->backgroundView:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->access$400(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v0}, Lorg/telegram/ui/PremiumPreviewFragment;->access$400(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x44

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 401
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$500(Lorg/telegram/ui/PremiumPreviewFragment;)Z

    move-result v1

    const/16 v3, 0x10

    if-eqz v1, :cond_5

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setAdditionalHeight(I)V

    goto :goto_4

    .line 404
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v2, v1, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$300(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setAdditionalHeight(I)V

    .line 405
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, v1, Lorg/telegram/ui/PremiumPreviewFragment;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setMinimumLastViewHeight(I)V

    .line 406
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 407
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    shl-int/2addr p1, v3

    .line 408
    iget p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->lastSize:I

    if-eq p2, p1, :cond_6

    .line 409
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$600(Lorg/telegram/ui/PremiumPreviewFragment;)V

    :cond_6
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 424
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 425
    iget-object p3, p0, Lorg/telegram/ui/PremiumPreviewFragment$1;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->access$700(Lorg/telegram/ui/PremiumPreviewFragment;II)V

    return-void
.end method
