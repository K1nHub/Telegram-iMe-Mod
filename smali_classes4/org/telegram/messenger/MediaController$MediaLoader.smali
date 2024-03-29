.class Lorg/telegram/messenger/MediaController$MediaLoader;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaLoader"
.end annotation


# instance fields
.field private cancelled:Z

.field private copiedFiles:I

.field private currentAccount:Lorg/telegram/messenger/AccountInstance;

.field private finished:Z

.field private finishedProgress:F

.field private isMusic:Z

.field private loadingMessageObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private messageObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private waitingForFile:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static synthetic $r8$lambda$6DoAYJWXo1RGA-sU66W883Oox7s(Lorg/telegram/messenger/MediaController$MediaLoader;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$new$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AhWed4ydFVrtLT8l_TqVfs_-1l0(Lorg/telegram/messenger/MediaController$MediaLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$copyFile$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bv1fOC7HmtQH7N_PnUHviuLEi7k(Lorg/telegram/messenger/MediaController$MediaLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$checkIfFinished$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Rv-WDJxsEv6gCOEjWzF6MUpFG4E(Lorg/telegram/messenger/MediaController$MediaLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$start$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$SnHE8B84nWdyFiAl03Ud-KrXKTc(Lorg/telegram/messenger/MediaController$MediaLoader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$copyFile$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UTLA5P2-OcrCuWQ2C7qP3ZElx78(Lorg/telegram/messenger/MediaController$MediaLoader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$didReceivedNotification$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jAbh5y-t6GSPD7Ew1bm0c-JCw8s(Lorg/telegram/messenger/MediaController$MediaLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ob43cPfzDFzcH8urlQrpLLztsr8(Lorg/telegram/messenger/MediaController$MediaLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$checkIfFinished$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$rkTlsTzRKy1M7QGQqs1I4zaTL-k(Lorg/telegram/messenger/MediaController$MediaLoader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$copyFile$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z5ipb1CsRTfTarxlTbQ4os8PY5Y(Lorg/telegram/messenger/MediaController$MediaLoader;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader;->lambda$addMessageToLoad$5(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/AccountInstance;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessagesStorage$IntCallback;",
            ")V"
        }
    .end annotation

    .line 4204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    .line 4205
    iput-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 4206
    iput-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    .line 4207
    iput-object p4, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    const/4 p2, 0x0

    .line 4208
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p3

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    .line 4209
    iget-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p3, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4210
    iget-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p3, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4211
    iget-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p3, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4212
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p4, 0x2

    invoke-direct {p3, p1, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 4213
    sget p1, Lorg/telegram/messenger/R$string;->Loading:I

    const-string p4, "Loading"

    invoke-static {p4, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4214
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4215
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4216
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance p2, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private addMessageToLoad(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 4351
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkIfFinished()V
    .locals 1

    .line 4328
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4331
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 32

    move-object/from16 v1, p0

    .line 4363
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 4366
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object/from16 v11, p2

    :try_start_3
    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 4367
    :try_start_4
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 4369
    :try_start_5
    const-class v0, Ljava/io/FileDescriptor;

    const-string v4, "getInt$"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4370
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4371
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4372
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_1

    .line 4373
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_1
    if-eqz v12, :cond_2

    .line 4437
    :try_start_6
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v3

    goto/16 :goto_9

    :cond_2
    :goto_0
    :try_start_7
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v3

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    .line 4384
    :try_start_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    const-wide/16 v4, 0x0

    move-wide v8, v4

    move-wide v15, v8

    :goto_1
    cmp-long v0, v8, v13

    const/high16 v17, 0x42c80000    # 100.0f

    if-gez v0, :cond_7

    .line 4388
    iget-boolean v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    sub-long v4, v13, v8

    const-wide/16 v6, 0x1000

    .line 4391
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v4, v12

    move-object v5, v10

    move-wide/from16 v20, v6

    move-wide v6, v8

    move-object/from16 v22, v3

    move-wide v2, v8

    move-wide/from16 v8, v18

    :try_start_a
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    add-long v8, v2, v20

    cmp-long v0, v8, v13

    if-gez v0, :cond_5

    .line 4392
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    sub-long/2addr v4, v6

    cmp-long v0, v15, v4

    if-gtz v0, :cond_6

    .line 4393
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4394
    iget v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    iget-object v6, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    div-float v17, v17, v6

    long-to-float v2, v2

    mul-float v17, v17, v2

    long-to-float v2, v13

    div-float v17, v17, v2

    add-float v0, v0, v17

    float-to-int v0, v0

    .line 4395
    new-instance v2, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-wide v15, v4

    :cond_6
    move-object/from16 v3, v22

    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    :goto_2
    move-object/from16 v22, v3

    .line 4404
    iget-boolean v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    if-nez v0, :cond_d

    .line 4405
    iget-boolean v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 4406
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/io/File;)V

    goto :goto_4

    .line 4408
    :cond_8
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "download"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/DownloadManager;

    .line 4410
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const-string/jumbo v3, "text/plain"

    if-eqz v0, :cond_b

    .line 4411
    :try_start_b
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 4412
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    .line 4413
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    add-int/2addr v5, v2

    .line 4415
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 4416
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4417
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v0, v3

    :cond_9
    move-object/from16 v27, v0

    goto :goto_3

    :cond_a
    move-object/from16 v27, v3

    goto :goto_3

    :cond_b
    move-object/from16 v27, p3

    .line 4424
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v29

    const/16 v31, 0x1

    invoke-virtual/range {v23 .. v31}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 4426
    :goto_4
    iget v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    div-float v17, v17, v3

    add-float v0, v0, v17

    iput v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    float-to-int v0, v0

    .line 4428
    new-instance v3, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, v0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;I)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v12, :cond_c

    .line 4437
    :try_start_c
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_c
    :try_start_d
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    :try_start_e
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    return v2

    :cond_d
    if-eqz v12, :cond_e

    :try_start_f
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :cond_e
    :try_start_10
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :try_start_11
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v22, v3

    :goto_5
    move-object v2, v0

    if-eqz v12, :cond_f

    .line 4366
    :try_start_12
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_13
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_6
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_8

    :catchall_7
    move-exception v0

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object/from16 v11, p2

    :goto_7
    move-object/from16 v22, v3

    :goto_8
    move-object v2, v0

    :goto_9
    if-eqz v10, :cond_10

    :try_start_14
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_15
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_a
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_b

    :catchall_b
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v22, v3

    :goto_b
    move-object v2, v0

    :goto_c
    :try_start_16
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v0

    move-object v3, v0

    :try_start_17
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    move-object/from16 v11, p2

    .line 4438
    :goto_e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4440
    :goto_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    return v2
.end method

.method private synthetic lambda$addMessageToLoad$5(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 4352
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4356
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 4357
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4358
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v0, p1, v3, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    return-void
.end method

.method private synthetic lambda$checkIfFinished$3()V
    .locals 2

    .line 4339
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    iget v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MessagesStorage$IntCallback;->run(I)V

    return-void
.end method

.method private synthetic lambda$checkIfFinished$4()V
    .locals 2

    .line 4333
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4334
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4336
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->finished:Z

    .line 4338
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    if-eqz v0, :cond_1

    .line 4339
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4342
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4344
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4345
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4346
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$copyFile$6()V
    .locals 1

    .line 4375
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4377
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$copyFile$7(I)V
    .locals 1

    .line 4397
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4399
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$copyFile$8(I)V
    .locals 1

    .line 4430
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4432
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$9(I)V
    .locals 1

    .line 4460
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4462
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 4216
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    return-void
.end method

.method private synthetic lambda$start$1()V
    .locals 1

    .line 4221
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->finished:Z

    if-nez v0, :cond_0

    .line 4222
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$start$2()V
    .locals 14

    .line 4228
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v1, :cond_8

    .line 4229
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_13

    .line 4230
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 4231
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 4232
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    .line 4233
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 4234
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4235
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v5, v2

    :cond_0
    if-eqz v5, :cond_1

    .line 4239
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 4241
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    .line 4242
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->canSaveAsFile(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4243
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x5

    .line 4244
    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4246
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_3

    .line 4250
    iget-object v5, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v5}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4253
    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4254
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4255
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    .line 4256
    invoke-direct {p0, v1}, Lorg/telegram/messenger/MediaController$MediaLoader;->addMessageToLoad(Lorg/telegram/messenger/MessageObject;)V

    .line 4257
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 4259
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    if-eqz v1, :cond_5

    goto/16 :goto_8

    .line 4262
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4263
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_2

    :cond_6
    const/4 v1, 0x2

    :goto_2
    invoke-static {v1, v7, v6}, Lorg/telegram/messenger/MediaController;->access$4900(ILjava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    .line 4264
    iget v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 4269
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    if-eqz v0, :cond_9

    .line 4270
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_3

    .line 4272
    :cond_9
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4274
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 4275
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v3

    :goto_4
    if-ge v5, v1, :cond_13

    .line 4276
    iget-object v6, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 4277
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v7

    .line 4278
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4279
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v9, 0x2e

    .line 4280
    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v3

    :goto_5
    const/16 v11, 0xa

    if-ge v10, v11, :cond_c

    const/4 v8, -0x1

    const-string v11, ")"

    const-string v12, "("

    if-eq v9, v8, :cond_a

    .line 4284
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 4286
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4288
    :goto_6
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4289
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_b

    move-object v8, v11

    goto :goto_7

    :cond_b
    add-int/lit8 v10, v10, 0x1

    move-object v8, v11

    goto :goto_5

    .line 4294
    :cond_c
    :goto_7
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_d

    .line 4295
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 4297
    :cond_d
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v7, :cond_e

    .line 4298
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_e

    .line 4299
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4300
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_e

    move-object v7, v2

    :cond_e
    if-eqz v7, :cond_f

    .line 4304
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_10

    .line 4305
    :cond_f
    iget-object v7, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v9, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v7, v9}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4307
    :cond_10
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4308
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_11

    .line 4309
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    .line 4310
    invoke-direct {p0, v6}, Lorg/telegram/messenger/MediaController$MediaLoader;->addMessageToLoad(Lorg/telegram/messenger/MessageObject;)V

    .line 4311
    iget-object v7, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 4313
    :cond_11
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 4314
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v9, v8, v6}, Lorg/telegram/messenger/MediaController$MediaLoader;->copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    .line 4315
    iget v6, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    add-int/2addr v6, v4

    iput v6, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 4319
    :cond_13
    :goto_8
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->checkIfFinished()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 4321
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_9
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 4446
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 4451
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_2

    .line 4452
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 4453
    iget-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 4454
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    const/4 p2, 0x2

    .line 4455
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Long;

    .line 4456
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    .line 4457
    iget p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    iget-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 4458
    new-instance p2, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 4447
    :cond_1
    :goto_0
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 4448
    iget-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4449
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 4220
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4324
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
