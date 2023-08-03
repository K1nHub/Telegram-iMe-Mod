.class Lorg/telegram/ui/PhotoViewer$56;
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

    .line 10681
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$56;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 10685
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    .line 10686
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onDisappear()V

    .line 10687
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onHide()V

    .line 10688
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object p1

    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10689
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10690
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p1, v2, v1, v2, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setRotationScaleTranslation(FFFF)V

    goto :goto_2

    .line 10691
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 10693
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10695
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 10697
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$8102(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView;

    goto :goto_2

    .line 10698
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    .line 10699
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/IPhotoPaintView;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/IPhotoPaintView;->onAnimationStateChanged(Z)V

    .line 10701
    :try_start_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/IPhotoPaintView;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/Components/IPhotoPaintView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 10703
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 10705
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$8502(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/IPhotoPaintView;)Lorg/telegram/ui/Components/IPhotoPaintView;

    .line 10707
    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$21502(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 10708
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$56;->val$mode:I

    invoke-static {p1, v5}, Lorg/telegram/ui/PhotoViewer;->access$2502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 10709
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v5, -0x1

    invoke-static {p1, v5}, Lorg/telegram/ui/PhotoViewer;->access$3002(Lorg/telegram/ui/PhotoViewer;I)I

    .line 10710
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v4}, Lorg/telegram/ui/PhotoViewer;->access$25402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10711
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 10712
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10714
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$22102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10715
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$25502(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10716
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$25602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10717
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$10802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10718
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v5

    invoke-static {p1, v5}, Lorg/telegram/ui/PhotoViewer;->access$12900(Lorg/telegram/ui/PhotoViewer;F)V

    .line 10719
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 10721
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SavedState;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10722
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SavedState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer$SavedState;->restore()V

    .line 10723
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$25702(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$SavedState;)Lorg/telegram/ui/PhotoViewer$SavedState;

    .line 10724
    new-instance p1, Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;

    invoke-direct {p1}, Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;-><init>()V

    invoke-virtual {p1, v4}, Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;->enableStatusBarAnimation(Z)Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;

    move-result-object p1

    .line 10725
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v4, v4, p1}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;ZZLorg/telegram/ui/PhotoViewer$ActionBarToggleParams;)V

    .line 10726
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3, v3, p1}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;ZZLorg/telegram/ui/PhotoViewer$ActionBarToggleParams;)V

    return-void

    .line 10730
    :cond_4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 10731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10732
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v3, [F

    aput v2, v7, v4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10733
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v3, [F

    aput v2, v7, v4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10734
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    if-eq v5, v3, :cond_5

    .line 10735
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v3, [F

    aput v2, v7, v4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10737
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 10738
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v3, [F

    aput v2, v7, v4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10740
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_7

    goto :goto_3

    .line 10743
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 10744
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v1, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10741
    :cond_8
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v1, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10742
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v1, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10746
    :cond_9
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 10747
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10748
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v1, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10750
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 10751
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10752
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v1, v6, v4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10754
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 10755
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10756
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$56;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v1, v3, v4

    invoke-static {v2, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10758
    :cond_c
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xc8

    .line 10759
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10760
    new-instance v0, Lorg/telegram/ui/PhotoViewer$56$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$56$1;-><init>(Lorg/telegram/ui/PhotoViewer$56;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10785
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
