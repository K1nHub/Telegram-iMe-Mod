.class Lorg/telegram/ui/PhotoViewer$53;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0

    .line 10405
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$53;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 10409
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v4, :cond_0

    .line 10410
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onDisappear()V

    .line 10411
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onHide()V

    .line 10412
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$24500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object p1

    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10413
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10414
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p1, v3, v2, v3, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setRotationScaleTranslation(FFFF)V

    goto :goto_2

    .line 10415
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 10417
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$24600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10419
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 10421
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$24602(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView;

    goto :goto_2

    .line 10422
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 10423
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$13200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onAnimationStateChanged(Z)V

    .line 10425
    :try_start_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$13200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 10427
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 10429
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$13202(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    .line 10431
    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$20802(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 10432
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v6, p0, Lorg/telegram/ui/PhotoViewer$53;->val$mode:I

    invoke-static {p1, v6}, Lorg/telegram/ui/PhotoViewer;->access$2502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 10433
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 10434
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 10435
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object p1

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    if-eq v6, v0, :cond_4

    move v6, v4

    goto :goto_4

    :cond_4
    move v6, v5

    :goto_4
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 10437
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eq p1, v0, :cond_6

    .line 10438
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$24802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10440
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$3102(Lorg/telegram/ui/PhotoViewer;I)I

    .line 10441
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v5}, Lorg/telegram/ui/PhotoViewer;->access$24902(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10442
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-ne p1, v4, :cond_7

    .line 10443
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10445
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$21402(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10446
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$25002(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10447
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$25102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10448
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$9902(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10449
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$11600(Lorg/telegram/ui/PhotoViewer;F)V

    .line 10450
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 10452
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SavedState;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 10453
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SavedState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer$SavedState;->restore()V

    .line 10454
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$25202(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$SavedState;)Lorg/telegram/ui/PhotoViewer$SavedState;

    .line 10455
    new-instance p1, Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;

    invoke-direct {p1}, Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;-><init>()V

    invoke-virtual {p1, v5}, Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;->enableStatusBarAnimation(Z)Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;

    move-result-object p1

    .line 10456
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v5, v5, p1}, Lorg/telegram/ui/PhotoViewer;->access$25300(Lorg/telegram/ui/PhotoViewer;ZZLorg/telegram/ui/PhotoViewer$ActionBarToggleParams;)V

    .line 10457
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v4, v4, p1}, Lorg/telegram/ui/PhotoViewer;->access$25300(Lorg/telegram/ui/PhotoViewer;ZZLorg/telegram/ui/PhotoViewer$ActionBarToggleParams;)V

    return-void

    .line 10461
    :cond_8
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 10462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10463
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v4, [F

    aput v3, v7, v5

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10464
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    aput v2, v7, v5

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10465
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$18400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v4, [F

    aput v3, v7, v5

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10466
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eq v1, v4, :cond_9

    .line 10467
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v4, [F

    aput v3, v7, v5

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10469
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 10470
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$8000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v1

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v4, [F

    aput v3, v7, v5

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10472
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_b

    goto :goto_5

    .line 10475
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 10476
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v1

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    aput v2, v6, v5

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 10473
    :cond_c
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$11700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    aput v2, v6, v5

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10474
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v1

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    aput v2, v6, v5

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10478
    :cond_d
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 10479
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10480
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    aput v2, v6, v5

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10482
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 10483
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 10484
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$53;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v1

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    aput v2, v4, v5

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10486
    :cond_f
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xc8

    .line 10487
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10488
    new-instance v0, Lorg/telegram/ui/PhotoViewer$53$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$53$1;-><init>(Lorg/telegram/ui/PhotoViewer$53;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10513
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
