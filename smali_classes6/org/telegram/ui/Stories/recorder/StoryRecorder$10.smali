.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;
.super Ljava/lang/Object;
.source "StoryRecorder.java"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method public static synthetic $r8$lambda$MheQNxiuhkeuz7-UajfjmOhSHEk(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->lambda$onVideoRecordStart$3(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$OjWYNFBaGV3knBU5m6ENYOUgSA4(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->lambda$onVideoRecordStart$2(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sx_myxuXQrFJzbUdlaKJpG2_OiU(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->lambda$onPhotoShoot$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jVd9SmaOFvqkuOTlQ-nr9dVNQ_g(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->lambda$onVideoRecordEnd$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$zMYaE8tFn3e8bsiAoemqVNKpqM0(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->lambda$onVideoRecordStart$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 2399
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPhotoShoot$0(Ljava/lang/Integer;)V
    .locals 5

    .line 2435
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 2436
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2439
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    .line 2440
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v2, :cond_2

    .line 2443
    :try_start_0
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2444
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2445
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2446
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2447
    :try_start_1
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v4, v2

    :catch_1
    :goto_1
    if-le v4, v2, :cond_2

    const/16 v0, 0x10e

    .line 2453
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 2454
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 2455
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 2456
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$onVideoRecordEnd$4()V
    .locals 3

    .line 2576
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2577
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 2580
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionRecording()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onVideoRecordStart$1()V
    .locals 2

    .line 2533
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$onVideoRecordStart$2(Ljava/lang/String;J)V
    .locals 5

    .line 2488
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    .line 2491
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 2495
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 2496
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    const-wide/16 v3, 0x320

    cmp-long v0, p2, v3

    if-gtz v0, :cond_4

    .line 2499
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 2500
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 2501
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    .line 2502
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2503
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    .line 2506
    :cond_2
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 2507
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2509
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_3

    .line 2513
    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2515
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void

    .line 2521
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 2523
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromVideoShoot(Ljava/io/File;Ljava/lang/String;J)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 2524
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 2525
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 2526
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getVideoWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraView;->getVideoHeight()I

    move-result p2

    if-lez p1, :cond_5

    if-lez p2, :cond_5

    .line 2528
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p3

    iput p1, p3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    .line 2529
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    .line 2530
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    .line 2532
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;J)V

    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic lambda$onVideoRecordStart$3(Ljava/lang/Runnable;Z)V
    .locals 1

    .line 2536
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2538
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintTextView;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->StoryHintSwipeToZoom:I

    const-string v0, "StoryHintSwipeToZoom"

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->StoryHintPinchToZoom:I

    const-string v0, "StoryHintPinchToZoom"

    :goto_0
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/HintTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 2539
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 2540
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 2542
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    .line 2543
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    return-void
.end method


# virtual methods
.method public canRecordAudio()Z
    .locals 1

    .line 2402
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    return v0
.end method

.method public onFlipClick()V
    .locals 2

    .line 2599
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2602
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2603
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2605
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->switchCamera()V

    .line 2606
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFlipLongClick()V
    .locals 1

    .line 2611
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2612
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toggleDual()V

    :cond_0
    return-void
.end method

.method public onGalleryClick()V
    .locals 2

    .line 2592
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2593
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    :cond_0
    return-void
.end method

.method public onPhotoShoot()V
    .locals 6

    .line 2407
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2410
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2411
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2413
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2415
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    .line 2417
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    .line 2418
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->startTakePictureAnimation()V

    .line 2420
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "off"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2421
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 2422
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->pauseAsTakingPicture()V

    .line 2423
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2424
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2425
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2427
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v4, v1

    goto :goto_2

    :catch_1
    move-exception v3

    move v4, v1

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 2424
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v3

    move v4, v2

    .line 2428
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2430
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_2
    move v4, v2

    :goto_3
    if-nez v4, :cond_3

    .line 2433
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    .line 2434
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;)V

    invoke-virtual {v3, v4, v1, v0, v5}, Lorg/telegram/messenger/camera/CameraController;->takePicture(Ljava/io/File;ZLorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/Utilities$Callback;)Z

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    goto :goto_4

    .line 2459
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 2460
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 2461
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 2462
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    :cond_4
    :goto_4
    return-void
.end method

.method public onVideoDuration(J)V
    .locals 2

    .line 2587
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setDuration(JZ)V

    return-void
.end method

.method public onVideoRecordEnd(Z)V
    .locals 3

    .line 2571
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2574
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 2575
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;)V

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x190

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onVideoRecordLocked()V
    .locals 3

    .line 2556
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StoryHintPinchToZoom:I

    const-string v2, "StoryHintPinchToZoom"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onVideoRecordStart(ZLjava/lang/Runnable;)V
    .locals 11

    .line 2469
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2472
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2475
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2476
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2478
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2479
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 2480
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2482
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2484
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    .line 2486
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;

    .line 2487
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;)V

    new-instance v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;Ljava/lang/Runnable;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 2544
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v9

    const/4 v10, 0x1

    .line 2487
    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/camera/CameraController;->recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraController$ICameraView;Z)V

    .line 2546
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2547
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 2548
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p2

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 2549
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    .line 2550
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onZoom(F)V
    .locals 2

    .line 2618
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 2619
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    return-void
.end method
