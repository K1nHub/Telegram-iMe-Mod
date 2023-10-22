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

    .line 1715
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1718
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1719
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss()V

    const-wide/16 v0, 0xfa

    .line 1720
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1724
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4602(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$4702(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1730
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$4802(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1732
    new-instance v6, Lorg/telegram/ui/TextureViewContainer;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/telegram/ui/TextureViewContainer;-><init>(Landroid/content/Context;)V

    .line 1735
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1736
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1737
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 1738
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/telegram/ui/PhotoViewer;->access$4702(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1740
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5200(Lorg/telegram/ui/PhotoViewer;)Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$5200(Lorg/telegram/ui/PhotoViewer;)Landroid/view/SurfaceView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->access$4702(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1741
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5200(Lorg/telegram/ui/PhotoViewer;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1744
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->access$4702(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1745
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1748
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1749
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1750
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4, v2}, Lorg/telegram/ui/PhotoViewer;->access$4702(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1752
    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1755
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1756
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1758
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1760
    :cond_5
    iget-object v0, v6, Lorg/telegram/ui/TextureViewContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1763
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$5402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1764
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v4, v6, Lorg/telegram/ui/TextureViewContainer;->textureView:Landroid/view/TextureView;

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoViewer;->access$5502(Lorg/telegram/ui/PhotoViewer;Landroid/view/TextureView;)Landroid/view/TextureView;

    const/4 v4, 0x0

    .line 1765
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v8

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/PipVideoOverlay;->show(ZLandroid/app/Activity;Landroid/view/View;IIZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1766
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->setPhotoViewer(Lorg/telegram/ui/PhotoViewer;)V

    .line 1768
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$5802(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1770
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1771
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1772
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$5200(Lorg/telegram/ui/PhotoViewer;)Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1775
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    .line 1776
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 1777
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 1779
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$6000(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 1780
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_1

    .line 1782
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1784
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1785
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$7;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$5200(Lorg/telegram/ui/PhotoViewer;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_a
    :goto_1
    return-void
.end method
