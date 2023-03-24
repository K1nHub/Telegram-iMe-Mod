.class Lorg/telegram/ui/PhotoViewer$60;
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

    .line 10332
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$60;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 19

    move-object/from16 v0, p0

    .line 10335
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$26002(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 10336
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10337
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10338
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$18500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10339
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10340
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10341
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 10342
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 10343
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object v1

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 10344
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/PhotoViewer$CounterView;->setRotationX(F)V

    .line 10345
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 10346
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->access$26102(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10347
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    const/4 v6, 0x4

    if-eqz v1, :cond_0

    .line 10348
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setVisibility(I)V

    .line 10350
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eq v1, v7, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_3

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$25900(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v8, :cond_3

    .line 10351
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 10352
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10355
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_4

    .line 10356
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 10357
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v11

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eq v1, v8, :cond_5

    move v12, v8

    goto :goto_0

    :cond_5
    move v12, v5

    :goto_0
    const/4 v13, 0x0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v14

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$26200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v15

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Components/VideoEditTextureView;

    :cond_6
    move-object/from16 v16, v2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$22300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    move-object/from16 v17, v1

    invoke-virtual/range {v9 .. v17}, Lorg/telegram/ui/Components/PhotoCropView;->setBitmap(Landroid/graphics/Bitmap;IZZLorg/telegram/ui/Components/PaintingOverlay;Lorg/telegram/ui/Components/Crop/CropTransform;Lorg/telegram/ui/Components/VideoEditTextureView;Lorg/telegram/messenger/MediaController$CropState;)V

    .line 10358
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->onDisappear()V

    .line 10359
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v1

    .line 10360
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v2

    .line 10361
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$22300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v3, :cond_9

    .line 10362
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$22300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$22300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v6, 0x10e

    if-ne v3, v6, :cond_8

    :cond_7
    move/from16 v18, v2

    move v2, v1

    move/from16 v1, v18

    :cond_8
    int-to-float v1, v1

    .line 10367
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$22300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v2, v2

    .line 10368
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$22300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 10371
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$26300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 10372
    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$26400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    div-float/2addr v6, v2

    .line 10373
    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9, v8}, Lorg/telegram/ui/PhotoViewer;->access$26500(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v1

    .line 10374
    iget-object v10, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10, v8}, Lorg/telegram/ui/PhotoViewer;->access$26600(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v2

    .line 10375
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 10376
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 10377
    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v9

    if-ne v9, v8, :cond_a

    .line 10378
    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6, v8}, Lorg/telegram/ui/PhotoViewer;->access$26500(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9, v8}, Lorg/telegram/ui/PhotoViewer;->access$26600(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v1

    div-float/2addr v6, v2

    .line 10381
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 10384
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    div-float/2addr v6, v3

    invoke-static {v1, v6}, Lorg/telegram/ui/PhotoViewer;->access$22102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10385
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$24600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    div-int/2addr v2, v7

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$26700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    div-int/2addr v3, v7

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$25502(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10386
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/16 v2, 0x38

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$7200(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/2addr v3, v7

    goto :goto_1

    :cond_b
    move v3, v5

    :goto_1
    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$25602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10387
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->access$26802(Lorg/telegram/ui/PhotoViewer;J)J

    .line 10388
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1, v8}, Lorg/telegram/ui/PhotoViewer;->access$26902(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10391
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$21502(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 10392
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$21500(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 10393
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$25300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v3

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v7, [F

    const/16 v10, 0x30

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v5

    aput v4, v9, v8

    invoke-static {v3, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget-object v4, Lorg/telegram/ui/Components/AnimationProperties;->PHOTO_VIEWER_ANIMATION_VALUE:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    .line 10394
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 10395
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    .line 10392
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 10397
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$21500(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10398
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$21500(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PhotoViewer$60$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PhotoViewer$60$1;-><init>(Lorg/telegram/ui/PhotoViewer$60;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10422
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$21500(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
