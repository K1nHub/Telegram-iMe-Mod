.class Lorg/telegram/ui/PhotoViewer$43;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->cropRotate(FZLjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$diff:F

.field final synthetic val$onEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;FLjava/lang/Runnable;)V
    .locals 0

    .line 8353
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$43;->val$diff:F

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$43;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 8356
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$22102(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 8357
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$22602(Lorg/telegram/ui/PhotoViewer;F)F

    move-result v2

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$22502(Lorg/telegram/ui/PhotoViewer;F)F

    .line 8358
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$22402(Lorg/telegram/ui/PhotoViewer;F)F

    move-result v2

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$22302(Lorg/telegram/ui/PhotoViewer;F)F

    .line 8359
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$22702(Lorg/telegram/ui/PhotoViewer;F)F

    move-result v3

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$10802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 8360
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 8361
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p1, v1, v2, v1, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setRotationScaleTranslation(FFFF)V

    .line 8362
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotated(Z)V

    .line 8363
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$43;->val$diff:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 8364
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$43;->val$diff:F

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/PhotoCropView;->rotate(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8365
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$22800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-static {v3, v4}, Lorg/telegram/ui/PhotoViewer;->access$14900(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 8367
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$22800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8370
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$22900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz p1, :cond_2

    .line 8371
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$22900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$22900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iput v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    iput v1, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    .line 8372
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$22900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$22900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iput v2, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    iput v2, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    .line 8374
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$43;->val$onEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 8375
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
