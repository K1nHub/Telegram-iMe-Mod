.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;
.super Ljava/lang/Object;
.source "LPhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$10(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private hasPipette:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

.field final synthetic val$currentAccount:I

.field final synthetic val$originalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 800
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->val$originalBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->val$currentAccount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$6000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotDrawingView()Landroid/view/View;
    .locals 1

    .line 820
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    return-object v0
.end method

.method public isPipetteAvailable()Z
    .locals 1

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->val$originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPipetteVisible()Z
    .locals 1

    .line 836
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->hasPipette:Z

    return v0
.end method

.method public onColorSelected(I)V
    .locals 2

    .line 847
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$4900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    .line 849
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->val$currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 850
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->val$currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$6100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    .line 852
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDrawImageOverCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 2

    .line 825
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 826
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 828
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 829
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->val$originalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->val$originalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 830
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->val$originalBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 831
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onStartColorPipette()V
    .locals 1

    const/4 v0, 0x1

    .line 805
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->hasPipette:Z

    return-void
.end method

.method public onStopColorPipette()V
    .locals 1

    const/4 v0, 0x0

    .line 810
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;->hasPipette:Z

    return-void
.end method
