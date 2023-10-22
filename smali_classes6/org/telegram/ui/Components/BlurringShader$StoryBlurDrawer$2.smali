.class Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;
.super Landroid/graphics/drawable/Drawable;
.source "BlurringShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->makeDrawable(FFLandroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field alpha:F

.field private final dimPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field final synthetic val$base:Landroid/graphics/drawable/Drawable;

.field final synthetic val$offsetX:F

.field final synthetic val$offsetY:F

.field final synthetic val$r:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;FFLandroid/graphics/drawable/Drawable;F)V
    .locals 0

    .line 935
    iput-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iput p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$offsetX:F

    iput p3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$offsetY:F

    iput-object p4, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$base:Landroid/graphics/drawable/Drawable;

    iput p5, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$r:F

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 937
    iput p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->alpha:F

    .line 938
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->dimPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 5

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$600(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 945
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$600(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 950
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$700(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/BitmapShader;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$800(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 951
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$802(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$702(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 952
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v2, v1, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$700(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/BitmapShader;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 955
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$900(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 956
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$900(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v2}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$1000(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)F

    move-result v2

    neg-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$offsetX:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$1100(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)F

    move-result v3

    neg-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$offsetY:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 957
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$600(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$500(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 958
    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$900(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v2}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$600(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$500(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$600(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->access$500(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 960
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$700(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/BitmapShader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {v1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$900(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 961
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v0, v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->alpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v0, v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->paint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 967
    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 969
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 971
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$base:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x66000000

    if-eqz v3, :cond_0

    .line 972
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v2

    const/16 v10, 0xff

    const/16 v11, 0x1f

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 973
    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$base:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 974
    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$base:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 975
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 976
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 977
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->getPadding(Landroid/graphics/Rect;)Z

    .line 978
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 985
    iget v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$r:F

    iget-object v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 987
    :cond_0
    iget v3, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$r:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1

    .line 988
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 989
    iget v5, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$r:F

    invoke-virtual {p1, v3, v5, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 991
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 993
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 994
    iget v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$r:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 995
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 996
    iget v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$r:F

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 998
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1001
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$base:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 1002
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$base:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1005
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->dimPaint:Landroid/graphics/Paint;

    const v3, -0xd7d7d7

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1006
    iget v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$r:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 1007
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1008
    iget v1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$r:F

    iget-object v2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1010
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1030
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->val$base:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1033
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 1017
    iput p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$2;->alpha:F

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
