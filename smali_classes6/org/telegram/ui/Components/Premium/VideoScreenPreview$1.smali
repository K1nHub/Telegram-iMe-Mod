.class Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;
.super Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.source "VideoScreenPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/VideoScreenPreview;-><init>(Landroid/content/Context;Lorg/telegram/messenger/SvgHelper$SvgDrawable;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clipPath:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Landroid/content/Context;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;->clipPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 208
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 193
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->onMeasure(II)V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 196
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->access$000(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 198
    :cond_0
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->access$000(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 200
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->access$000(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)F

    move-result p1

    const/4 p2, 0x3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 201
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;->clipPath:Landroid/graphics/Path;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, p1, p1, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
