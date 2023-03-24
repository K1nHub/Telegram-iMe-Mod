.class Lorg/telegram/ui/LaunchActivity$23;
.super Landroid/widget/FrameLayout;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->createUpdateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastGradientWidth:I

.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field private updateGradient:Landroid/graphics/LinearGradient;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V
    .locals 0

    .line 5533
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$23;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5535
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$23;->paint:Landroid/graphics/Paint;

    .line 5536
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$23;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 5542
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23;->updateGradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    .line 5543
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5544
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$23;->updateGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5545
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23;->updateGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$23;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5546
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$23;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5547
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$2700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$23;->updateGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V

    .line 5548
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$23;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$2700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 5550
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 5555
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 5556
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 5557
    iget p2, p0, Lorg/telegram/ui/LaunchActivity$23;->lastGradientWidth:I

    if-eq p2, p1, :cond_0

    .line 5558
    new-instance p2, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    new-array v6, v0, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$23;->updateGradient:Landroid/graphics/LinearGradient;

    .line 5559
    iput p1, p0, Lorg/telegram/ui/LaunchActivity$23;->lastGradientWidth:I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x96408e
        -0xac4c53    # -2.8140004E38f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
