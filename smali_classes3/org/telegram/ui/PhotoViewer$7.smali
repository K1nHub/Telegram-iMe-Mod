.class Lorg/telegram/ui/PhotoViewer$7;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 1233
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1236
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss()V

    const-wide/16 v0, 0xfa

    .line 1238
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1242
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$4502(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1248
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$4602(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1251
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->access$4502(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1252
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1254
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1255
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1256
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4, v2}, Lorg/telegram/ui/PhotoViewer;->access$4502(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1258
    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1261
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1265
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1269
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$4902(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v1, Landroid/view/TextureView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$5002(Lorg/telegram/ui/PhotoViewer;Landroid/view/TextureView;)Landroid/view/TextureView;

    const/4 v4, 0x0

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5000(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5200(Lorg/telegram/ui/PhotoViewer;)I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v8

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/PipVideoOverlay;->show(ZLandroid/app/Activity;Landroid/view/View;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->setPhotoViewer(Lorg/telegram/ui/PhotoViewer;)V

    .line 1275
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$5402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5000(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
