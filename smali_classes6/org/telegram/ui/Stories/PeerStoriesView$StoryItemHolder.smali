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
.field public editingSourceItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field private isVideo:Z

.field skipped:Z

.field public storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field public uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 3647
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3648
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 3649
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z
    .locals 0

    .line 3647
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo:Z

    return p0
.end method

.method private isVideoInternal()Z
    .locals 3

    .line 3662
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_0

    .line 3663
    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    return v0

    .line 3665
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_2

    if-eqz v2, :cond_1

    .line 3666
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-eqz v0, :cond_3

    .line 3668
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v2, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3669
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public allowScreenshots()Z
    .locals 2

    .line 3795
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_0

    .line 3796
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    return v0

    .line 3798
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3799
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->noforwards:Z

    xor-int/2addr v0, v1

    return v0

    :cond_1
    return v1
.end method

.method cancelOrDelete()V
    .locals 2

    .line 3687
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v0, :cond_0

    .line 3688
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoriesController;->deleteStory(Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    goto :goto_0

    .line 3689
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_1

    .line 3690
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkSendView()V
    .locals 5

    .line 3699
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-nez v1, :cond_0

    .line 3701
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3703
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3705
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 3709
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->hasExpiredViews(Lorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v1

    if-gt v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_4

    .line 3710
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3711
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/ui/Stories/StoriesController;->markStoryAsRead(Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/tgnet/TLRPC$StoryItem;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3712
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    goto :goto_0

    .line 3715
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v2, v3, v4, v0}, Lorg/telegram/ui/Stories/StoriesController;->markStoryAsRead(JLorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3716
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 3682
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 3683
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    return-void
.end method

.method public createLink()Ljava/lang/String;
    .locals 4

    .line 3754
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 3755
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "https://t.me/%s/s/%s"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 3723
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v0, :cond_0

    .line 3724
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/io/File;
    .locals 3

    .line 3760
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3761
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3763
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v0, :cond_3

    .line 3764
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    .line 3765
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_3

    .line 3766
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_3

    .line 3767
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 3768
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 3769
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3770
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

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

.method hasSound()Z
    .locals 5

    .line 3736
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3739
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_3

    move v0, v1

    .line 3740
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3741
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3742
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->nosound:Z

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2

    .line 3747
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_4

    .line 3748
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    xor-int/2addr v0, v2

    return v0

    :cond_4
    return v2
.end method

.method isVideo()Z
    .locals 1

    .line 3732
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo:Z

    return v0
.end method

.method set(Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 1

    .line 3655
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v0, 0x0

    .line 3656
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 3657
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->skipped:Z

    .line 3658
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideoInternal()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo:Z

    return-void
.end method

.method set(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 0

    .line 3675
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    const/4 p1, 0x0

    .line 3676
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 p1, 0x0

    .line 3677
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->skipped:Z

    .line 3678
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideoInternal()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo:Z

    return-void
.end method
