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

.field dialogId:J

.field private duration:J

.field public final edit:Z

.field final entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field private entryDestroyed:Z

.field public failed:Z

.field firstFramePath:Ljava/lang/String;

.field private firstSecondSize:J

.field public hadFailed:Z

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
.method public static synthetic $r8$lambda$5H90o0T8kPojEnNOlZXXzEZ2Vts(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8RYkQksKKOFPn75S4F8JYeYlAMk(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$8xT2Et5Pmq74dFhmVwf_dSuaMeA(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$6(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bm3YpP7_lVChXxxM4z3M5c4HfKU(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W1yfJ_grUzbLJFnHB2Rm1FhuK70(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$start$0(Lorg/telegram/messenger/VideoEditedInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbF18RLIIQ3sN5KgNBLaSMvPSiw(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$5(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fsAZ3lYDGPUU7e94D2hbRz856DU(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$start$2(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tza1IqnW9dt99VfvsK09Y5noD8g(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$4(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 2

    .line 1771
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1759
    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    .line 1772
    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 1773
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->random_id:J

    .line 1774
    iget-boolean v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    .line 1775
    iget-object v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1776
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    .line 1778
    :cond_0
    iget-boolean v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    .line 1780
    iget-boolean v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v0, :cond_1

    .line 1781
    iget-wide p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    goto :goto_1

    .line 1783
    :cond_1
    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_3

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1786
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    goto :goto_1

    .line 1784
    :cond_3
    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    :goto_1
    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2159
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$4(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V
    .locals 1

    .line 2168
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController;->processUpdate(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V

    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$5(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 2

    const/4 v0, 0x1

    .line 2182
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    .line 2183
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 2186
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    const/4 v1, 0x0

    .line 2187
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 2188
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/DraftsController;->saveForEdit(Lorg/telegram/ui/Stories/recorder/StoryEntry;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 2189
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-nez p1, :cond_1

    .line 2190
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->invalidateStoryLimit()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$6(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 2197
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    .line 2198
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryError(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2199
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    goto :goto_0

    .line 2201
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 2203
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    .line 2204
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    .line 2205
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->edit(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    if-eqz p1, :cond_b

    const/4 p2, 0x0

    .line 2118
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    .line 2119
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    move v1, p2

    move v2, v1

    move-object v3, v0

    .line 2122
    :goto_0
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const v5, 0x7fffffff

    if-ge v1, v4, :cond_5

    .line 2123
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 2124
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    .line 2125
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    .line 2126
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 2127
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z

    .line 2128
    iget v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_1

    .line 2132
    :cond_0
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v2, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :goto_1
    move v2, v4

    .line 2135
    :cond_1
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;

    if-eqz v4, :cond_4

    .line 2136
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;

    if-nez v3, :cond_4

    .line 2138
    new-instance v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;-><init>()V

    .line 2139
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v7}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    iput v7, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    .line 2140
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v9, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    if-ne v9, v5, :cond_2

    const v9, 0x15180

    :cond_2
    add-int/2addr v7, v9

    iput v7, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    .line 2141
    iput-object v0, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 2142
    iget-object v7, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toOutput(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    .line 2143
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    if-ne v7, v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, p2

    :goto_2
    iput-boolean v5, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    .line 2144
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget-wide v7, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide v7, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 2145
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    .line 2146
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 2147
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;->id:I

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 2148
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2152
    :cond_5
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    .line 2153
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    if-eqz p2, :cond_6

    .line 2154
    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_deleteStories;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_deleteStories;-><init>()V

    .line 2155
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_deleteStories;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_c

    .line 2157
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_deleteStories;->id:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2158
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_4

    :cond_6
    if-eqz v2, :cond_7

    .line 2163
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-eqz p2, :cond_8

    :cond_7
    if-eqz v3, :cond_8

    .line 2164
    new-instance p2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;-><init>()V

    .line 2165
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    iput-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2166
    iput-object v3, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 2167
    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2172
    :cond_8
    iget-object p2, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p2, :cond_a

    iget-object v2, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 2173
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_9

    .line 2174
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v2, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-virtual {p2, v2, v4}, Lorg/telegram/messenger/FileLoader;->setLocalPathTo(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    goto :goto_3

    .line 2175
    :cond_9
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p2, :cond_a

    .line 2177
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {p2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    .line 2178
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, p2, v4}, Lorg/telegram/messenger/FileLoader;->setLocalPathTo(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    .line 2181
    :cond_a
    :goto_3
    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0, v1, v3}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2193
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

    goto :goto_4

    :cond_b
    if-eqz p2, :cond_c

    .line 2195
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-nez p1, :cond_c

    .line 2196
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2209
    :cond_c
    :goto_4
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$start$0(Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 4

    .line 1820
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->info:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1821
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p1, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1822
    iget-wide v0, p1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->duration:J

    .line 1823
    invoke-virtual {p1}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1824
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v1, v0, v0}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;ZZ)Z

    goto :goto_0

    .line 1826
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

    .line 1828
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

    .line 1839
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->upload()V

    return-void
.end method

.method private synthetic lambda$start$2(Ljava/io/File;)V
    .locals 1

    .line 1836
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildPhoto(Ljava/io/File;)V

    .line 1837
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private putMessages()V
    .locals 26

    move-object/from16 v0, p0

    .line 2223
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->putMessages:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 2226
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2227
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2228
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v15, 0x1

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    new-array v4, v15, [Ljava/lang/CharSequence;

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4, v15}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v3

    :goto_1
    move v14, v5

    :goto_2
    if-ge v14, v1, :cond_4

    .line 2230
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2231
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2232
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

    const/16 v20, 0x0

    const/16 v22, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v13, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    xor-int/lit8 v16, v13, 0x1

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    move/from16 v17, v7

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-wide v7, v8

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    const/4 v12, 0x0

    move-object v13, v3

    move/from16 v25, v14

    move/from16 v14, v20

    move-object/from16 v15, v22

    move-object/from16 v20, v2

    invoke-static/range {v4 .. v21}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIZZLjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move/from16 v25, v14

    .line 2234
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

    const/16 v19, 0x0

    iget-object v14, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v15, v14, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    const/4 v13, 0x1

    xor-int/lit8 v20, v15, 0x1

    iget v14, v14, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    move/from16 v21, v14

    const/16 v22, 0x0

    const/16 v24, 0x0

    move v15, v13

    const/4 v13, 0x0

    move-object v14, v3

    const/4 v15, 0x0

    move-object/from16 v23, v2

    invoke-static/range {v4 .. v24}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/CharSequence;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v14, v25, 0x1

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_4
    move v4, v15

    .line 2237
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->putMessages:Z

    :cond_5
    :goto_4
    return-void
.end method

.method private sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 8

    .line 1967
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 1970
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

    .line 1976
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1977
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 1978
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1979
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 1980
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v4, p1, v1}, Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 1981
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->supports_streaming:Z

    .line 1982
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 1983
    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    long-to-int v4, v4

    iput v4, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->preload_prefix_size:I

    .line 1984
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
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

    .line 1986
    :cond_2
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/2addr p1, v2

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1987
    new-instance p1, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    .line 1988
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 1989
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1991
    :cond_3
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeHasStickers;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeHasStickers;-><init>()V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-boolean v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-nez v4, :cond_5

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez p1, :cond_6

    :cond_5
    move p1, v2

    goto :goto_0

    :cond_6
    move p1, v3

    :goto_0
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->nosound_video:Z

    const-string p1, "video/mp4"

    .line 1995
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    goto :goto_2

    .line 1997
    :cond_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    .line 1998
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2000
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    .line 2002
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 2004
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    add-int/2addr v4, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    const-string v4, "txt"

    .line 2006
    :goto_1
    invoke-virtual {p1, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2007
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 2008
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 2009
    :cond_9
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/2addr p1, v2

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 2010
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz p1, :cond_a

    .line 2011
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2013
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    goto :goto_2

    :cond_b
    move-object v0, v1

    .line 2019
    :cond_c
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitPremium:I

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitDefault:I

    .line 2020
    :goto_3
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-eqz v4, :cond_17

    .line 2021
    new-instance v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;-><init>()V

    .line 2022
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iput v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->id:I

    .line 2023
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_e

    .line 2025
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-eqz v5, :cond_e

    .line 2026
    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/2addr v5, v2

    iput v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    .line 2027
    iput-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2030
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    if-eqz v5, :cond_12

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    .line 2031
    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    new-array v5, v2, [Ljava/lang/CharSequence;

    aput-object v0, v5, v3

    .line 2033
    aget-object v0, v5, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p1, :cond_f

    .line 2034
    aget-object v0, v5, v3

    invoke-interface {v0, v3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v5, v3

    .line 2036
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2037
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->entities:Ljava/util/ArrayList;

    goto :goto_4

    .line 2039
    :cond_10
    iget-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2041
    :goto_4
    aget-object v0, v5, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p1, :cond_11

    .line 2042
    aget-object v0, v5, v3

    invoke-interface {v0, v3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v5, v3

    .line 2044
    :cond_11
    aget-object p1, v5, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->caption:Ljava/lang/String;

    .line 2047
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    if-eqz v0, :cond_13

    .line 2048
    iget v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    .line 2049
    iget-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->privacy_rules:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2052
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    if-eqz p1, :cond_14

    .line 2053
    iget-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2055
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz p1, :cond_16

    .line 2056
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_16

    .line 2057
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 2058
    iget-object p1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz p1, :cond_15

    .line 2059
    iget-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2063
    :cond_16
    iget-object p1, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 2064
    iget p1, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    goto/16 :goto_9

    .line 2069
    :cond_17
    new-instance v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;-><init>()V

    .line 2070
    iget-wide v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->random_id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->random_id:J

    .line 2071
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2072
    iput-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2073
    iget-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->privacy_rules:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2074
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    iput-boolean v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->pinned:Z

    .line 2075
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    xor-int/2addr v5, v2

    iput-boolean v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->noforwards:Z

    .line 2077
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    .line 2078
    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    new-array v5, v2, [Ljava/lang/CharSequence;

    aput-object v0, v5, v3

    .line 2080
    aget-object v0, v5, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p1, :cond_18

    .line 2081
    aget-object v0, v5, v3

    invoke-interface {v0, v3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v5, v3

    .line 2083
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2084
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->entities:Ljava/util/ArrayList;

    goto :goto_6

    .line 2086
    :cond_19
    iget-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2088
    :goto_6
    aget-object v0, v5, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p1, :cond_1a

    .line 2089
    aget-object v0, v5, v3

    invoke-interface {v0, v3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v5, v3

    .line 2091
    :cond_1a
    aget-object p1, v5, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->caption:Ljava/lang/String;

    .line 2094
    :cond_1b
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    const v5, 0x7fffffff

    if-ne v0, v5, :cond_1c

    .line 2095
    iput-boolean v2, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->pinned:Z

    goto :goto_7

    .line 2097
    :cond_1c
    iget v2, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    .line 2098
    iput v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->period:I

    .line 2101
    :goto_7
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz p1, :cond_1f

    .line 2102
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_1e

    .line 2103
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 2104
    iget-object p1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz p1, :cond_1d

    .line 2105
    iget-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2108
    :cond_1e
    iget-object p1, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 2109
    iget p1, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    .line 2116
    :cond_1f
    :goto_9
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    .line 2212
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#failtest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    if-nez v0, :cond_20

    .line 2213
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const/16 v2, 0x190

    .line 2214
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const-string v2, "FORCED_TO_FAIL"

    .line 2215
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 2216
    invoke-interface {p1, v1, v0}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_a

    .line 2218
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->currentRequest:I

    :goto_a
    return-void
.end method

.method private startForeground()V
    .locals 3

    .line 1792
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/ui/Stories/recorder/StoryUploadingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1793
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1794
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    const-string v2, "currentAccount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1796
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1798
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private upload()V
    .locals 9

    .line 1862
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1863
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->putMessages()V

    goto :goto_2

    .line 1865
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

    .line 2241
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-eqz v0, :cond_0

    .line 2242
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 2243
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$100(Lorg/telegram/ui/Stories/StoriesController;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    .line 2245
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    .line 2246
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2247
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 2249
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 2250
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->currentRequest:I

    if-ltz v1, :cond_2

    .line 2251
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->currentRequest:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2253
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cleanup()V

    return-void
.end method

.method public cleanup()V
    .locals 5

    .line 1870
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1871
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1873
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1874
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1875
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1876
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-nez v0, :cond_0

    .line 1877
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$100(Lorg/telegram/ui/Stories/StoriesController;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1879
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1882
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$200(Lorg/telegram/ui/Stories/StoriesController;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1884
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1886
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-eqz v0, :cond_2

    .line 1887
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$300(Lorg/telegram/ui/Stories/StoriesController;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 1889
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1893
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    if-nez v3, :cond_3

    .line 1894
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    .line 1895
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    .line 1897
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->uploadStoryEnd:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1902
    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    .line 1903
    aget-object v1, p3, v3

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v2, :cond_7

    .line 1904
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    .line 1905
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->upload()V

    goto/16 :goto_0

    .line 1907
    :cond_0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3e99999a    # 0.3f

    const/4 v7, 0x2

    if-ne v1, v2, :cond_2

    .line 1908
    aget-object v1, p3, v3

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v2, :cond_7

    .line 1909
    aget-object v1, p3, v4

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 1910
    aget-object v1, p3, v7

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v8, 0x3

    .line 1911
    aget-object v8, p3, v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v8, 0x4

    .line 1912
    aget-object v8, p3, v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    mul-float/2addr v8, v6

    .line 1913
    iget v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->uploadProgress:F

    mul-float/2addr v6, v5

    add-float/2addr v8, v6

    iput v8, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    .line 1914
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->uploadStoryProgress:I

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    aput-object v8, v7, v3

    iget v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1916
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

    .line 1917
    iput-wide v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    .line 1920
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

    if-lez v3, :cond_7

    .line 1923
    iget-wide v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 1924
    iput-wide v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    goto/16 :goto_0

    .line 1929
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    if-ne v1, v2, :cond_4

    .line 1930
    aget-object v1, p3, v3

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v2, :cond_7

    .line 1931
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-nez v1, :cond_3

    .line 1932
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    .line 1933
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 1934
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    const/16 v2, 0x190

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const-string v2, "FILE_PREPARE_FAILED"

    .line 1935
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 1936
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    .line 1937
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    .line 1938
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->edit(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 1940
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cleanup()V

    goto/16 :goto_0

    .line 1942
    :cond_4
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-ne v1, v2, :cond_5

    .line 1943
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    .line 1944
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1945
    aget-object v1, p3, v4

    check-cast v1, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1946
    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V

    goto/16 :goto_0

    .line 1948
    :cond_5
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne v1, v2, :cond_6

    .line 1949
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    .line 1950
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1951
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    sget v3, Lorg/telegram/messenger/R$string;->StoryUploadError:I

    const-string v6, "StoryUploadError"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1952
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cleanup()V

    goto :goto_0

    .line 1954
    :cond_6
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    if-ne v1, v2, :cond_7

    .line 1955
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    .line 1956
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1957
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Long;

    .line 1958
    aget-object v2, p3, v7

    check-cast v2, Ljava/lang/Long;

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1959
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

    .line 1960
    iget v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    mul-float/2addr v2, v6

    mul-float/2addr v1, v5

    add-float/2addr v2, v1

    iput v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    .line 1961
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->uploadStoryProgress:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    aput-object v6, v5, v3

    iget v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public isCloseFriends()Z
    .locals 1

    .line 2257
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isCloseFriends:Z

    return v0
.end method

.method public start()V
    .locals 9

    .line 1803
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1804
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V

    return-void

    .line 1807
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

    .line 1808
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1809
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1810
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1811
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1812
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1813
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1814
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v0, :cond_2

    .line 1815
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 1816
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 1817
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    .line 1818
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

    .line 1819
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getVideoEditedInfo(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    .line 1833
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v0

    .line 1834
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    .line 1835
    sget-object v1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1843
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->startForeground()V

    return-void
.end method

.method public tryAgain()V
    .locals 2

    const/4 v0, 0x0

    .line 1847
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    .line 1848
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    const/4 v0, 0x0

    .line 1849
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    .line 1850
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->uploadProgress:F

    .line 1851
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    .line 1852
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1854
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 1855
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->start()V

    return-void
.end method
