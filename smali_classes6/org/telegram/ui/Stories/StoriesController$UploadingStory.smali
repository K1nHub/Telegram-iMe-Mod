.class public Lorg/telegram/ui/Stories/StoriesController$UploadingStory;
.super Ljava/lang/Object;
.source "StoriesController.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadingStory"
.end annotation


# instance fields
.field canceled:Z

.field convertingProgress:F

.field private currentRequest:I

.field private duration:J

.field public final edit:Z

.field final entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field firstFramePath:Ljava/lang/String;

.field private firstSecondSize:J

.field private info:Lorg/telegram/messenger/VideoEditedInfo;

.field private isCloseFriends:Z

.field isVideo:Z

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field path:Ljava/lang/String;

.field progress:F

.field private putMessages:Z

.field public final random_id:J

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoriesController;

.field uploadProgress:F


# direct methods
.method public static synthetic $r8$lambda$8RYkQksKKOFPn75S4F8JYeYlAMk(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$BLX9apc4-pd4TYu2mypm_VXF8Ik(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L8cp6NnkQ-RB79ne1fgw3Nq_3Dc(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$4(Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W1yfJ_grUzbLJFnHB2Rm1FhuK70(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$start$0(Lorg/telegram/messenger/VideoEditedInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YK47ZkxmZurOU7vUQpXrJ8InPJA(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fsAZ3lYDGPUU7e94D2hbRz856DU(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$start$2(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 2

    .line 1314
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1306
    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    .line 1315
    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->random_id:J

    .line 1316
    iget-boolean p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    .line 1317
    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 1318
    iget-object p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 1319
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$sendUploadedRequest$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$4(Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V
    .locals 1

    .line 1620
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController;->processUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V

    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    if-eqz p1, :cond_9

    .line 1578
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1581
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1582
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateStory;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1583
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateStory;

    .line 1584
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    .line 1585
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 1586
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    xor-int/2addr v3, v4

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->justUploaded:Z

    .line 1587
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-nez p2, :cond_0

    move-object p2, v2

    :cond_0
    move v2, v3

    .line 1592
    :cond_1
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;

    if-eqz v3, :cond_4

    .line 1593
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;

    if-nez p2, :cond_4

    .line 1595
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_storyItem;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_storyItem;-><init>()V

    .line 1596
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    iput v5, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    .line 1597
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_2

    const v7, 0x15180

    :cond_2
    add-int/2addr v5, v7

    iput v5, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->expire_date:I

    .line 1598
    iget-object v5, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toOutput(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->privacy:Ljava/util/ArrayList;

    .line 1599
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    if-ne v5, v8, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    iput-boolean v5, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    .line 1600
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide v5, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 1601
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iput-object v5, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    .line 1602
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    iput-object v5, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 1603
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;->id:I

    iput v3, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    .line 1604
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    xor-int/2addr v3, v4

    iput-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->justUploaded:Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1608
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    if-eqz v0, :cond_6

    .line 1609
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;-><init>()V

    .line 1610
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;->id:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda6;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    .line 1615
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-eqz v0, :cond_8

    :cond_7
    if-eqz p2, :cond_8

    .line 1616
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStory;-><init>()V

    .line 1617
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    .line 1618
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 1619
    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1623
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    .line 1627
    :cond_9
    :goto_2
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$start$0(Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 4

    .line 1352
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->info:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p1, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1354
    iget-wide v0, p1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->duration:J

    .line 1355
    invoke-virtual {p1}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1356
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v1, v0, v0}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;ZZ)Z

    goto :goto_0

    .line 1358
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v1, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1360
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/high16 v2, 0x2000000

    invoke-virtual {p1, v1, v0, v0, v2}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$start$1()V
    .locals 0

    .line 1371
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->upload()V

    return-void
.end method

.method private synthetic lambda$start$2(Ljava/io/File;)V
    .locals 1

    .line 1368
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildPhoto(Ljava/io/File;)V

    .line 1369
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private putMessages()V
    .locals 25

    move-object/from16 v0, p0

    .line 1632
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->putMessages:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 1635
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1636
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1637
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v14, 0x1

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/CharSequence;

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4, v14}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v3

    :goto_1
    move v13, v5

    :goto_2
    if-ge v13, v1, :cond_4

    .line 1639
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1640
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1641
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v15, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    xor-int/2addr v15, v14

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    move/from16 v16, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-wide v7, v8

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v3

    move/from16 v24, v13

    move/from16 v13, v19

    move-object/from16 v14, v21

    move-object/from16 v19, v2

    invoke-static/range {v4 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIZZLjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move/from16 v24, v13

    .line 1643
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v13, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v15, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    const/4 v14, 0x1

    xor-int/lit8 v19, v15, 0x1

    iget v13, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    move/from16 v20, v13

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v13, v3

    move v15, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v22, v2

    invoke-static/range {v4 .. v23}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/CharSequence;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v13, v24, 0x1

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_4
    move v4, v14

    .line 1646
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->putMessages:Z

    :cond_5
    :goto_4
    return-void
.end method

.method private sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 6

    .line 1464
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 1467
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    .line 1473
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1474
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 1475
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1476
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 1477
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v4, p1, v1}, Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 1478
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->supports_streaming:Z

    .line 1479
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 1480
    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    long-to-int v1, v4

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->preload_prefix_size:I

    .line 1481
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1483
    :cond_2
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/2addr p1, v2

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1484
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    .line 1485
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 1486
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1488
    :cond_3
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeHasStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeHasStickers;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-nez v1, :cond_6

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v3

    goto :goto_1

    :cond_6
    :goto_0
    move p1, v2

    :goto_1
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->nosound_video:Z

    const-string p1, "video/mp4"

    .line 1492
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    move-object v1, v0

    goto :goto_3

    .line 1494
    :cond_7
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    .line 1495
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1497
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    .line 1499
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_8

    .line 1501
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const-string v0, "txt"

    .line 1503
    :goto_2
    invoke-virtual {p1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1504
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1505
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 1506
    :cond_9
    iget p1, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/2addr p1, v2

    iput p1, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1507
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz p1, :cond_a

    .line 1508
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1510
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    .line 1516
    :cond_b
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimit:I

    .line 1517
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-eqz v0, :cond_10

    .line 1518
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;-><init>()V

    .line 1519
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->id:I

    if-eqz v1, :cond_c

    .line 1521
    iget-boolean v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-eqz v5, :cond_c

    .line 1522
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->flags:I

    or-int/2addr v5, v2

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->flags:I

    .line 1523
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1526
    :cond_c
    iget-boolean v1, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    if-eqz v1, :cond_f

    iget-object v1, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    .line 1527
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->flags:I

    new-array v4, v2, [Ljava/lang/CharSequence;

    aput-object v1, v4, v3

    .line 1529
    aget-object v1, v4, v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p1, :cond_d

    .line 1530
    aget-object v1, v4, v3

    invoke-interface {v1, v3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v4, v3

    .line 1532
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->entities:Ljava/util/ArrayList;

    .line 1533
    aget-object v1, v4, v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p1, :cond_e

    .line 1534
    aget-object v1, v4, v3

    invoke-interface {v1, v3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v4, v3

    .line 1536
    :cond_e
    aget-object p1, v4, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->caption:Ljava/lang/String;

    .line 1539
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    if-eqz v1, :cond_15

    .line 1540
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->flags:I

    .line 1541
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->privacy_rules:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 1546
    :cond_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;-><init>()V

    .line 1547
    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->random_id:J

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->random_id:J

    .line 1548
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1549
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->privacy_rules:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1550
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->pinned:Z

    .line 1551
    iget-boolean v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    xor-int/2addr v4, v2

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->noforwards:Z

    .line 1553
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_13

    .line 1554
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->flags:I

    or-int/lit8 v4, v4, 0x3

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->flags:I

    new-array v4, v2, [Ljava/lang/CharSequence;

    aput-object v1, v4, v3

    .line 1556
    aget-object v1, v4, v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p1, :cond_11

    .line 1557
    aget-object v1, v4, v3

    invoke-interface {v1, v3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v4, v3

    .line 1559
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->entities:Ljava/util/ArrayList;

    .line 1560
    aget-object v1, v4, v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p1, :cond_12

    .line 1561
    aget-object v1, v4, v3

    invoke-interface {v1, v3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v4, v3

    .line 1563
    :cond_12
    aget-object p1, v4, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->caption:Ljava/lang/String;

    .line 1566
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_14

    .line 1567
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->pinned:Z

    goto :goto_4

    .line 1569
    :cond_14
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->flags:I

    .line 1570
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendStory;->period:I

    .line 1576
    :cond_15
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->currentRequest:I

    return-void
.end method

.method private startForeground()V
    .locals 3

    .line 1324
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/ui/Stories/recorder/StoryUploadingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1325
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1326
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    const-string v2, "currentAccount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1328
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1330
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private upload()V
    .locals 9

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1380
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->putMessages()V

    goto :goto_2

    .line 1382
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->info:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v5, :cond_1

    iget-wide v6, v5, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    :cond_1
    long-to-int v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    move-wide v5, v4

    goto :goto_0

    :cond_2
    move-wide v5, v6

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x2000000

    goto :goto_1

    :cond_3
    const/high16 v4, 0x1000000

    :goto_1
    move v7, v4

    const/4 v8, 0x1

    move v4, v0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    :goto_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    const/4 v0, 0x1

    .line 1650
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    .line 1651
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 1654
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 1655
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->currentRequest:I

    if-ltz v1, :cond_1

    .line 1656
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->currentRequest:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1658
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cleanup()V

    return-void
.end method

.method public cleanup()V
    .locals 5

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1390
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1393
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$100(Lorg/telegram/ui/Stories/StoriesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$200(Lorg/telegram/ui/Stories/StoriesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1395
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$300(Lorg/telegram/ui/Stories/StoriesController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_1

    .line 1400
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    .line 1402
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->uploadStoryEnd:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1407
    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 1408
    aget-object v1, p3, v4

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v2, :cond_6

    .line 1409
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    .line 1410
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->upload()V

    goto/16 :goto_0

    .line 1412
    :cond_0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3e99999a    # 0.3f

    const/4 v7, 0x2

    if-ne v1, v2, :cond_2

    .line 1413
    aget-object v1, p3, v4

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v2, :cond_6

    .line 1414
    aget-object v1, p3, v3

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 1415
    aget-object v1, p3, v7

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v8, 0x3

    .line 1416
    aget-object v8, p3, v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v8, 0x4

    .line 1417
    aget-object v8, p3, v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    mul-float/2addr v8, v6

    .line 1418
    iget v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->uploadProgress:F

    mul-float/2addr v6, v5

    add-float/2addr v8, v6

    iput v8, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    .line 1419
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->uploadStoryProgress:I

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    aput-object v8, v7, v4

    iget v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1421
    iget-wide v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    iget-wide v7, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->duration:J

    long-to-float v4, v7

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1422
    iput-wide v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    .line 1425
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    const/4 v10, 0x0

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-wide v1, v13

    invoke-virtual/range {v8 .. v15}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJLjava/lang/Float;)V

    cmp-long v3, v1, v5

    if-lez v3, :cond_6

    .line 1428
    iget-wide v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    .line 1429
    iput-wide v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    goto/16 :goto_0

    .line 1434
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    if-ne v1, v2, :cond_3

    .line 1435
    aget-object v1, p3, v4

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v2, :cond_6

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cleanup()V

    goto/16 :goto_0

    .line 1439
    :cond_3
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-ne v1, v2, :cond_4

    .line 1440
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/String;

    .line 1441
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1442
    aget-object v1, p3, v3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1443
    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V

    goto/16 :goto_0

    .line 1445
    :cond_4
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne v1, v2, :cond_5

    .line 1446
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/String;

    .line 1447
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1448
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    sget v4, Lorg/telegram/messenger/R$string;->StoryUploadError:I

    const-string v6, "StoryUploadError"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1449
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cleanup()V

    goto :goto_0

    .line 1451
    :cond_5
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    if-ne v1, v2, :cond_6

    .line 1452
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/String;

    .line 1453
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1454
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Long;

    .line 1455
    aget-object v2, p3, v7

    check-cast v2, Ljava/lang/Long;

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1456
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-float v1, v9

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-float v2, v9

    div-float/2addr v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->uploadProgress:F

    .line 1457
    iget v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    mul-float/2addr v2, v6

    mul-float/2addr v1, v5

    add-float/2addr v2, v1

    iput v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    .line 1458
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->uploadStoryProgress:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    aput-object v6, v5, v4

    iget v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public isCloseFriends()Z
    .locals 1

    .line 1662
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isCloseFriends:Z

    return v0
.end method

.method public start()V
    .locals 9

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1336
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V

    return-void

    .line 1339
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->isCloseFriends()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isCloseFriends:Z

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1341
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1345
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1346
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v0, :cond_2

    .line 1347
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 1348
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    .line 1350
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getVideoEditedInfo(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    .line 1365
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v0

    .line 1366
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    .line 1367
    sget-object v1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1375
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->startForeground()V

    return-void
.end method
