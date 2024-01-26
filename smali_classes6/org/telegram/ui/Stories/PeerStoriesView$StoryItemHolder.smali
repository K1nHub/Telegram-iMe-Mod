.class public Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;
.super Ljava/lang/Object;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoryItemHolder"
.end annotation


# instance fields
.field public caption:Ljava/lang/CharSequence;

.field public captionTranslated:Z

.field public editingSourceItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field private isVideo:Z

.field private reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

.field skipped:Z

.field public storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field public uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 5268
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5269
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 5270
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z
    .locals 0

    .line 5268
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo:Z

    return p0
.end method

.method private isVideoInternal()Z
    .locals 2

    .line 5345
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_0

    .line 5346
    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    return v0

    .line 5348
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5349
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    return v0

    .line 5351
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v1, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5352
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public allowScreenshots()Z
    .locals 4

    .line 5493
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_0

    .line 5494
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    return v0

    .line 5496
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_2

    .line 5497
    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->noforwards:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 5500
    :cond_1
    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-eqz v1, :cond_2

    .line 5501
    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 5502
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5503
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method cancelOrDelete()V
    .locals 4

    .line 5371
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_0

    .line 5372
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/ui/Stories/StoriesController;->deleteStory(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    goto :goto_0

    .line 5373
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_1

    .line 5374
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkSendView()V
    .locals 5

    .line 5383
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-nez v1, :cond_0

    .line 5385
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5387
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5389
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 5393
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->hasExpiredViews(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v1

    if-gt v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_4

    .line 5394
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 5395
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/ui/Stories/StoriesController;->markStoryAsRead(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5396
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    goto :goto_0

    .line 5399
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v2, v3, v4, v0}, Lorg/telegram/ui/Stories/StoriesController;->markStoryAsRead(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5400
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 5366
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 5367
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-void
.end method

.method public createLink()Ljava/lang/String;
    .locals 8

    .line 5439
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 5442
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "https://t.me/%1$s/s/%2$s"

    if-lez v0, :cond_2

    .line 5443
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 5444
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v2

    .line 5447
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5449
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 5450
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    return-object v2

    .line 5453
    :cond_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 5407
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_0

    .line 5408
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/io/File;
    .locals 3

    .line 5458
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5459
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 5461
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_3

    .line 5462
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5463
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 5464
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_3

    .line 5465
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 5466
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 5467
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5468
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReply()Lorg/telegram/ui/Stories/StoryCaptionView$Reply;
    .locals 2

    .line 5281
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-nez v0, :cond_1

    .line 5282
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_0

    .line 5283
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->from(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    goto :goto_0

    .line 5284
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_1

    .line 5285
    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->from(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    .line 5288
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    return-object v0
.end method

.method hasSound()Z
    .locals 6

    .line 5420
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5424
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_3

    move v3, v1

    .line 5425
    :goto_0
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 5426
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 5427
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v5, :cond_1

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->nosound:Z

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    .line 5432
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_4

    .line 5433
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    xor-int/2addr v0, v2

    return v0

    :cond_4
    return v2
.end method

.method isVideo()Z
    .locals 1

    .line 5416
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo:Z

    return v0
.end method

.method set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 1

    .line 5337
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v0, 0x0

    .line 5338
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    .line 5339
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 5340
    instance-of p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->skipped:Z

    .line 5341
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideoInternal()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo:Z

    return-void
.end method

.method set(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 0

    .line 5358
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    const/4 p1, 0x0

    .line 5359
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    .line 5360
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 p1, 0x0

    .line 5361
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->skipped:Z

    .line 5362
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideoInternal()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo:Z

    return-void
.end method

.method public updateCaption()V
    .locals 14

    const/4 v0, 0x0

    .line 5292
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    .line 5293
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    const-wide/16 v4, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    .line 5294
    iget-object v2, v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    .line 5295
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v1, v3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    .line 5296
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 5297
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 5298
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5299
    :cond_0
    invoke-static {v7, v0}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 5301
    :cond_1
    iget-object v1, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_7

    .line 5302
    iget-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v2, :cond_4

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5303
    iput-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    .line 5304
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 5305
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    .line 5306
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3, v1, v6, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    .line 5307
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 5308
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5309
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v1, v3, v6, v0}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;Z)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 5310
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5311
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 5312
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-ltz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5313
    :cond_2
    invoke-static {v7, v1}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 5314
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 5316
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 5319
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    .line 5320
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v1, v3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    .line 5321
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 5322
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5323
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v1, v3, v2, v0}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;Z)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 5324
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5325
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 5326
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5327
    :cond_5
    invoke-static {v7, v1}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 5328
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v9, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 5330
    :cond_6
    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    :cond_7
    :goto_0
    return-void
.end method
