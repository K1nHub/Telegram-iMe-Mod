.class Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;
.super Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;Landroid/view/View;Z)V
    .locals 0

    .line 2359
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected heightAnimationEnabled()Z
    .locals 2

    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-boolean v1, v0, Lorg/telegram/ui/PhotoViewer;->keyboardAnimationEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onPanTranslationUpdate(FFZ)V
    .locals 3

    .line 2362
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3, p1}, Lorg/telegram/ui/PhotoViewer;->access$7302(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2363
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)I

    move-result p3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 2364
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 2366
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 2367
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2369
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 2370
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2372
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 2373
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2375
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 2376
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2378
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 2379
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 2381
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 2382
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2384
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 2385
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 2387
    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 2388
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2390
    :cond_8
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$8000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 2391
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$8000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2394
    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 2395
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2397
    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 2398
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 2401
    :cond_b
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)I

    move-result p3

    if-ne p3, v0, :cond_d

    .line 2402
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 2403
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2406
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/IPhotoPaintView;

    goto :goto_1

    .line 2412
    :cond_d
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/IPhotoPaintView;

    move-result-object p3

    if-eqz p3, :cond_e

    .line 2413
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/IPhotoPaintView;

    move-result-object p3

    invoke-interface {p3}, Lorg/telegram/ui/Components/IPhotoPaintView;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2415
    :cond_e
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object p3

    if-eqz p3, :cond_10

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float v0, p2, p3

    if-gez v0, :cond_f

    const/4 p3, 0x0

    goto :goto_0

    :cond_f
    sub-float v0, p2, p3

    div-float p3, v0, p3

    .line 2417
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2418
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p3, p3, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object p3

    iget v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardSize:F

    sub-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2421
    :cond_10
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 2422
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 2424
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 2425
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 2427
    :cond_12
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 2428
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 2430
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onTransitionEnd()V
    .locals 3

    .line 2463
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionEnd()V

    .line 2464
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2465
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2466
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2468
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method protected onTransitionStart(ZI)V
    .locals 4

    .line 2435
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2436
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v0, -0x1000000

    invoke-static {p2, v0}, Lorg/telegram/ui/PhotoViewer;->access$8900(Lorg/telegram/ui/PhotoViewer;I)V

    .line 2437
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-wide/16 v0, 0xdc

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 2438
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 2439
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->GifCaption:I

    const-string v2, "GifCaption"

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->VideoCaption:I

    const-string v2, "VideoCaption"

    :goto_0
    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2440
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJ)V

    goto :goto_1

    .line 2442
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->PhotoCaption:I

    const-string v3, "PhotoCaption"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJ)V

    .line 2445
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2446
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2447
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2448
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/16 p2, 0xa

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 2450
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2451
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2452
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9000(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2453
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2454
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p2, p2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$9000(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJ)V

    .line 2455
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer$1;->this$1:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->access$9002(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_2
    return-void
.end method
