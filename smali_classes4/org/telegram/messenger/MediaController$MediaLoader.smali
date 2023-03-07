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

    .line 3873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3864
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    .line 3874
    iput-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 3875
    iput-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    .line 3876
    iput-object p4, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    const/4 p2, 0x0

    .line 3877
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p3

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    .line 3878
    iget-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p3, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3879
    iget-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p3, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3880
    iget-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p3, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3881
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p4, 0x2

    invoke-direct {p3, p1, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 3882
    sget p1, Lorg/telegram/messenger/R$string;->Loading:I

    const-string p4, "Loading"

    invoke-static {p4, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3883
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3884
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3885
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance p2, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private addMessageToLoad(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 4009
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkIfFinished()V
    .locals 1

    .line 3986
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3989
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 31

    move-object/from16 v1, p0

    .line 4021
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 4024
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

    .line 4025
    :try_start_4
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 4027
    :try_start_5
    const-class v0, Ljava/io/FileDescriptor;

    const-string v4, "getInt$"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4028
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4029
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4030
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_1

    .line 4031
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_1
    if-eqz v12, :cond_2

    .line 4095
    :try_start_6
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v3

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

    move-object/from16 v21, v3

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    .line 4042
    :try_start_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    const-wide/16 v4, 0x0

    move-wide v8, v4

    move-wide v15, v8

    :goto_1
    const/high16 v0, 0x42c80000    # 100.0f

    cmp-long v4, v8, v13

    if-gez v4, :cond_7

    .line 4046
    iget-boolean v4, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    sub-long v4, v13, v8

    const-wide/16 v6, 0x1000

    .line 4049
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v4, v12

    move-object v5, v10

    move-wide/from16 v19, v6

    move-wide v6, v8

    move-object/from16 v21, v3

    move-wide v2, v8

    move-wide/from16 v8, v17

    :try_start_a
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    add-long v8, v2, v19

    cmp-long v4, v8, v13

    if-gez v4, :cond_5

    .line 4050
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    sub-long/2addr v4, v6

    cmp-long v6, v15, v4

    if-gtz v6, :cond_6

    .line 4051
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4052
    iget v6, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    iget-object v7, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    long-to-float v2, v2

    mul-float v0, v0, v2

    long-to-float v2, v13

    div-float/2addr v0, v2

    add-float/2addr v6, v0

    float-to-int v0, v6

    .line 4053
    new-instance v2, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-wide v15, v4

    :cond_6
    move-object/from16 v3, v21

    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    :goto_2
    move-object/from16 v21, v3

    .line 4062
    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    if-nez v2, :cond_d

    .line 4063
    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 4064
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/io/File;)V

    goto :goto_4

    .line 4066
    :cond_8
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "download"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/app/DownloadManager;

    .line 4068
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const-string v4, "text/plain"

    if-eqz v2, :cond_b

    .line 4069
    :try_start_b
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 4070
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    .line 4071
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    add-int/2addr v6, v3

    .line 4073
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4074
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4075
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v2, v4

    :cond_9
    move-object/from16 v26, v2

    goto :goto_3

    :cond_a
    move-object/from16 v26, v4

    goto :goto_3

    :cond_b
    move-object/from16 v26, p3

    .line 4082
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v28

    const/16 v30, 0x1

    invoke-virtual/range {v22 .. v30}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 4084
    :goto_4
    iget v2, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    iput v2, v1, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    float-to-int v0, v2

    .line 4086
    new-instance v2, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1, v0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v12, :cond_c

    .line 4095
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
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    return v3

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
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v21, v3

    :goto_5
    move-object v2, v0

    if-eqz v12, :cond_f

    .line 4024
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
    move-object/from16 v21, v3

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

    move-object/from16 v21, v3

    :goto_b
    move-object v2, v0

    :goto_c
    :try_start_16
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
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

    .line 4096
    :goto_e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4098
    :goto_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    return v2
.end method

.method private synthetic lambda$addMessageToLoad$5(Lorg/telegram/messenger/MessageObject;)V
    .locals 3

    .line 4010
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4014
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 4015
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4016
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    return-void
.end method

.method private synthetic lambda$checkIfFinished$3()V
    .locals 2

    .line 3997
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    iget v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MessagesStorage$IntCallback;->run(I)V

    return-void
.end method

.method private synthetic lambda$checkIfFinished$4()V
    .locals 2

    .line 3991
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3992
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3994
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->finished:Z

    .line 3996
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->onFinishRunnable:Lorg/telegram/messenger/MessagesStorage$IntCallback;

    if-eqz v0, :cond_1

    .line 3997
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4000
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4002
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4003
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4004
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$copyFile$6()V
    .locals 1

    .line 4033
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4035
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$copyFile$7(I)V
    .locals 1

    .line 4055
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4057
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$copyFile$8(I)V
    .locals 1

    .line 4088
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4090
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$9(I)V
    .locals 1

    .line 4118
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4120
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 3885
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    return-void
.end method

.method private synthetic lambda$start$1()V
    .locals 1

    .line 3890
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->finished:Z

    if-nez v0, :cond_0

    .line 3891
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$start$2()V
    .locals 14

    .line 3897
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v1, :cond_7

    .line 3898
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_12

    .line 3899
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 3900
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3901
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    .line 3902
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 3903
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3904
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v5, v2

    :cond_0
    if-eqz v5, :cond_1

    .line 3908
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 3909
    :cond_1
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

    .line 3911
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3912
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3913
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    .line 3914
    invoke-direct {p0, v1}, Lorg/telegram/messenger/MediaController$MediaLoader;->addMessageToLoad(Lorg/telegram/messenger/MessageObject;)V

    .line 3915
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 3917
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->cancelled:Z

    if-eqz v1, :cond_4

    goto/16 :goto_7

    .line 3920
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3921
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    :goto_1
    invoke-static {v1, v7, v6}, Lorg/telegram/messenger/MediaController;->access$4800(ILjava/io/File;Ljava/lang/String;)Z

    .line 3922
    iget v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3927
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->isMusic:Z

    if-eqz v0, :cond_8

    .line 3928
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .line 3930
    :cond_8
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3932
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 3933
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_12

    .line 3934
    iget-object v6, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 3935
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v7

    .line 3936
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3937
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x2e

    .line 3938
    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    :goto_4
    const/16 v11, 0xa

    if-ge v10, v11, :cond_b

    const/4 v8, -0x1

    const-string v11, ")"

    const-string v12, "("

    if-eq v9, v8, :cond_9

    .line 3942
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

    goto :goto_5

    .line 3944
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3946
    :goto_5
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3947
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a

    move-object v8, v11

    goto :goto_6

    :cond_a
    add-int/lit8 v10, v10, 0x1

    move-object v8, v11

    goto :goto_4

    .line 3952
    :cond_b
    :goto_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_c

    .line 3953
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 3955
    :cond_c
    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 3956
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_d

    .line 3957
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3958
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_d

    move-object v7, v2

    :cond_d
    if-eqz v7, :cond_e

    .line 3962
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_f

    .line 3963
    :cond_e
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

    .line 3965
    :cond_f
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3966
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_10

    .line 3967
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    .line 3968
    invoke-direct {p0, v6}, Lorg/telegram/messenger/MediaController$MediaLoader;->addMessageToLoad(Lorg/telegram/messenger/MessageObject;)V

    .line 3969
    iget-object v7, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 3971
    :cond_10
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 3972
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v9, v8, v6}, Lorg/telegram/messenger/MediaController$MediaLoader;->copyFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    .line 3973
    iget v6, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    add-int/2addr v6, v4

    iput v6, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->copiedFiles:I

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 3977
    :cond_12
    :goto_7
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaLoader;->checkIfFinished()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 3979
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 4104
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 4109
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_2

    .line 4110
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 4111
    iget-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 4112
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    const/4 p2, 0x2

    .line 4113
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Long;

    .line 4114
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    .line 4115
    iget p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->finishedProgress:F

    iget-object p3, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 4116
    new-instance p2, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 4105
    :cond_1
    :goto_0
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 4106
    iget-object p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->loadingMessageObjects:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4107
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader;->waitingForFile:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 3889
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3895
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MediaController$MediaLoader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3982
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
