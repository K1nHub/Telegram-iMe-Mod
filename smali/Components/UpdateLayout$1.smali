.class LComponents/UpdateLayout$1;
.super Landroid/widget/FrameLayout;
.source "UpdateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LComponents/UpdateLayout;->createUpdateUI(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastGradientWidth:I

.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field final synthetic this$0:LComponents/UpdateLayout;

.field private updateGradient:Landroid/graphics/LinearGradient;

.field final synthetic val$isDialogMode:Z


# direct methods
.method constructor <init>(LComponents/UpdateLayout;Landroid/content/Context;Z)V
    .locals 0

    .line 108
    iput-object p1, p0, LComponents/UpdateLayout$1;->this$0:LComponents/UpdateLayout;

    iput-boolean p3, p0, LComponents/UpdateLayout$1;->val$isDialogMode:Z

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, LComponents/UpdateLayout$1;->path:Landroid/graphics/Path;

    .line 117
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, LComponents/UpdateLayout$1;->paint:Landroid/graphics/Paint;

    .line 118
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, LComponents/UpdateLayout$1;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 124
    iget-object v0, p0, LComponents/UpdateLayout$1;->updateGradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, LComponents/UpdateLayout$1;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, LComponents/UpdateLayout$1;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, LComponents/UpdateLayout$1;->updateGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    iget-object v0, p0, LComponents/UpdateLayout$1;->updateGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, LComponents/UpdateLayout$1;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 129
    iget-boolean v0, p0, LComponents/UpdateLayout$1;->val$isDialogMode:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, LComponents/UpdateLayout$1;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 131
    iget-object v1, p0, LComponents/UpdateLayout$1;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 132
    iget-object v0, p0, LComponents/UpdateLayout$1;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, LComponents/UpdateLayout$1;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    iget-object v0, p0, LComponents/UpdateLayout$1;->this$0:LComponents/UpdateLayout;

    invoke-static {v0}, LComponents/UpdateLayout;->access$000(LComponents/UpdateLayout;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    iget-object v1, p0, LComponents/UpdateLayout$1;->updateGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V

    .line 137
    iget-object v0, p0, LComponents/UpdateLayout$1;->this$0:LComponents/UpdateLayout;

    invoke-static {v0}, LComponents/UpdateLayout;->access$000(LComponents/UpdateLayout;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 139
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 144
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 145
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 146
    iget p2, p0, LComponents/UpdateLayout$1;->lastGradientWidth:I

    if-eq p2, p1, :cond_0

    .line 147
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

    iput-object p2, p0, LComponents/UpdateLayout$1;->updateGradient:Landroid/graphics/LinearGradient;

    .line 148
    iput p1, p0, LComponents/UpdateLayout$1;->lastGradientWidth:I

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
