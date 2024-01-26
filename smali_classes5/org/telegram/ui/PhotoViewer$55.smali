.class Lorg/telegram/ui/PhotoViewer$55;
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

    .line 10741
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$55;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    .line 10744
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$25702(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 10745
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10746
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10747
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10748
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10749
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10750
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    .line 10751
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10753
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 10754
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 10755
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object p1

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 10756
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/PhotoViewer$CounterView;->setRotationX(F)V

    .line 10757
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 10758
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$25802(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10759
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10760
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setVisibility(I)V

    .line 10762
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eq p1, v5, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$23300(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v4, :cond_4

    .line 10763
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$11700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 10764
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10765
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25500(Lorg/telegram/ui/PhotoViewer;)V

    .line 10768
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 10770
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result p1

    .line 10771
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v0

    .line 10774
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->access$26200(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6, v5}, Lorg/telegram/ui/PhotoViewer;->access$26300(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v0, v0

    div-float/2addr v6, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 10775
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 10776
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/16 v0, 0x24

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$25102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10777
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$26900(Lorg/telegram/ui/PhotoViewer;Z)F

    move-result p1

    goto :goto_1

    .line 10779
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/16 v7, 0x5d

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/2addr v8, v5

    goto :goto_0

    :cond_6
    move v8, v3

    :goto_0
    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v6, v7}, Lorg/telegram/ui/PhotoViewer;->access$25102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10780
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$21600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$21600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v6, v6, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$21600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v6, v6, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_8

    .line 10781
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$26000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$26100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    .line 10783
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$26000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, p1

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$26100(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 10786
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    div-float/2addr v1, p1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$21402(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10788
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$26400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    div-int/2addr v0, v5

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$26500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    div-int/2addr v1, v5

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$25002(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10789
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$26602(Lorg/telegram/ui/PhotoViewer;J)J

    .line 10790
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v4}, Lorg/telegram/ui/PhotoViewer;->access$26702(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10793
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$20802(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 10794
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20800(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-array v0, v5, [Landroid/animation/Animator;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget-object v6, Lorg/telegram/ui/Components/AnimationProperties;->PHOTO_VIEWER_ANIMATION_VALUE:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    .line 10795
    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 10796
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$24600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v1

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    const/16 v7, 0xba

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v3

    aput v2, v5, v4

    invoke-static {v1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 10794
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 10798
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20800(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10799
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20800(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/PhotoViewer$55$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$55$1;-><init>(Lorg/telegram/ui/PhotoViewer$55;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10827
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20800(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
