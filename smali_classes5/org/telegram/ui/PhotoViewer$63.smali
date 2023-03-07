.class Lorg/telegram/ui/PhotoViewer$63;
.super Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->createPaintView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    .line 10648
    iput-object v0, v10, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 7

    .line 10665
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 10668
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$27300(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$27300(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    :cond_1
    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgressMs(J)V

    return-void
.end method

.method protected onOpenCloseStickersAlert(Z)V
    .locals 2

    .line 10651
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 10654
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$2502(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10655
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)V

    if-eqz p1, :cond_1

    .line 10657
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    .line 10659
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :goto_0
    return-void
.end method

.method protected onTextAdd()V
    .locals 1

    .line 10673
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$6100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isFocusable()Z

    return-void
.end method
