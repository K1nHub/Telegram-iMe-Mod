.class Lorg/telegram/ui/PhotoViewer$57;
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
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    move-object v11, p0

    move-object v0, p1

    .line 10932
    iput-object v0, v11, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 6

    .line 10971
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 10974
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$27100(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$27100(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    :cond_1
    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgressMs(J)V

    return-void
.end method

.method protected getPKeyboardHeight()I
    .locals 1

    .line 10949
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10950
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->getKeyboardHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onEmojiViewCloseByClick()V
    .locals 1

    .line 10957
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10958
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitKeyboard()V

    :cond_0
    return-void
.end method

.method protected onOpenCloseStickersAlert(Z)V
    .locals 2

    .line 10935
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 10938
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$2702(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10939
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)V

    if-eqz p1, :cond_1

    .line 10941
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    .line 10943
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :goto_0
    return-void
.end method

.method protected onTextAdd()V
    .locals 1

    .line 10979
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$6600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isFocusable()Z

    return-void
.end method

.method protected updateKeyboard()V
    .locals 1

    .line 10964
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10965
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_0
    return-void
.end method
