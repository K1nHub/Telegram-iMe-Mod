.class Lorg/telegram/ui/Components/ItemOptions$1;
.super Landroid/view/View;
.source "ItemOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ItemOptions;

.field final synthetic val$cachedBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cachedBitmapPaint:Landroid/graphics/Paint;

.field final synthetic val$clipTop:F

.field final synthetic val$dim:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;ILandroid/graphics/Bitmap;FLandroid/graphics/Paint;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    iput p3, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$dim:I

    iput-object p4, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$cachedBitmap:Landroid/graphics/Bitmap;

    iput p5, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$clipTop:F

    iput-object p6, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$cachedBitmapPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 281
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 282
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$dim:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$cachedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 286
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$clipTop:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$100(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v0

    aget v0, v0, v2

    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$clipTop:F

    sub-float/2addr v0, v5

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v0, v3, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$100(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v0

    aget v0, v0, v4

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$100(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v3

    aget v2, v3, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$200(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$200(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$200(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 295
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$cachedBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$cachedBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 297
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_6

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 299
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$clipTop:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$100(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v0

    aget v0, v0, v2

    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions$1;->val$clipTop:F

    sub-float/2addr v0, v5

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v0, v3, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 302
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$100(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v0

    aget v0, v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->access$100(Lorg/telegram/ui/Components/ItemOptions;)[F

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$200(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$200(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->access$200(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    .line 311
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 312
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ItemOptions;->access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 313
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ItemOptions;->access$200(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 315
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$200(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ItemOptions;->access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ItemOptions;->access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 316
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$200(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$1;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 319
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_1
    return-void
.end method
