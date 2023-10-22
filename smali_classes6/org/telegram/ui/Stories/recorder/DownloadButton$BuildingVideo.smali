.class Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;
.super Ljava/lang/Object;
.source "DownloadButton.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/DownloadButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuildingVideo"
.end annotation


# instance fields
.field final currentAccount:I

.field final entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field final file:Ljava/io/File;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private final onCancel:Ljava/lang/Runnable;

.field private final onDone:Ljava/lang/Runnable;

.field private final onProgress:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Mke34XqIGUQC5wyVI-irXAQzOaQ(Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->lambda$start$0(Lorg/telegram/messenger/VideoEditedInfo;)V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/io/File;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry;",
            "Ljava/io/File;",
            "Ljava/lang/Runnable;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->currentAccount:I

    .line 281
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 282
    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->file:Ljava/io/File;

    .line 283
    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->onDone:Ljava/lang/Runnable;

    .line 284
    iput-object p5, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->onProgress:Lorg/telegram/messenger/Utilities$Callback;

    .line 285
    iput-object p6, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->onCancel:Ljava/lang/Runnable;

    .line 287
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->start()V

    return-void
.end method

.method private synthetic lambda$start$0(Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iput-object p1, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 308
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 329
    sget p2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 330
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    goto :goto_0

    .line 333
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    if-ne p1, p2, :cond_2

    .line 334
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    .line 335
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    const/4 p1, 0x2

    .line 336
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    const/4 p1, 0x3

    .line 337
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v1, 0x4

    .line 338
    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 340
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->onProgress:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_1

    .line 341
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {v1, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_4

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->onDone:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 346
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->stop(Z)V

    goto :goto_0

    .line 349
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    if-ne p1, p2, :cond_4

    .line 350
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p2, :cond_4

    .line 351
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->stop(Z)V

    .line 353
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->file:Ljava/io/File;

    if-eqz p1, :cond_3

    .line 354
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :catch_0
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->onCancel:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_0
    return-void
.end method

.method public start()V
    .locals 8

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 296
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 297
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 299
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const/4 v0, 0x1

    .line 300
    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 302
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->currentAccount:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getVideoEditedInfo(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public stop(Z)V
    .locals 2

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 318
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 319
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-eqz p1, :cond_1

    .line 322
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    :cond_1
    const/4 p1, 0x0

    .line 324
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DownloadButton$BuildingVideo;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method
