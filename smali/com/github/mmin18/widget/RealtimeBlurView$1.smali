.class Lcom/github/mmin18/widget/RealtimeBlurView$1;
.super Ljava/lang/Object;
.source "RealtimeBlurView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/RealtimeBlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/mmin18/widget/RealtimeBlurView;


# direct methods
.method constructor <init>(Lcom/github/mmin18/widget/RealtimeBlurView;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 240
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$000(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$100(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 242
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->prepare()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 243
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$000(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    if-eq v4, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v5

    .line 245
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 246
    aget v4, v0, v5

    neg-int v4, v4

    .line 247
    aget v6, v0, v3

    neg-int v6, v6

    .line 249
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v7, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 250
    aget v7, v0, v5

    add-int/2addr v4, v7

    .line 251
    aget v0, v0, v3

    add-int/2addr v6, v0

    .line 254
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$300(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v7}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$200(Lcom/github/mmin18/widget/RealtimeBlurView;)I

    move-result v7

    const v8, 0xffffff

    and-int/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 256
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$400(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 257
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v7, v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$502(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z

    .line 258
    invoke-static {}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$608()I

    .line 260
    :try_start_0
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v7}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$400(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v7

    iget-object v8, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v8}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$300(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    iget-object v10, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    iget-object v10, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v10}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$300(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    iget-object v9, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v10, v9

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 261
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v7}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$400(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v7

    neg-int v4, v4

    int-to-float v4, v4

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v7, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 263
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v6}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$400(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    :cond_1
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$400(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Lcom/github/mmin18/widget/RealtimeBlurView$StopException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 268
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v2, v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$502(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z

    .line 269
    invoke-static {}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$610()I

    .line 270
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$400(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 271
    throw v1

    .line 268
    :catch_0
    :goto_1
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v2, v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$502(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z

    .line 269
    invoke-static {}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$610()I

    .line 270
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$400(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 273
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$300(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$000(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    if-nez v1, :cond_2

    .line 275
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$700(Lcom/github/mmin18/widget/RealtimeBlurView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return v3
.end method
