.class Lorg/telegram/ui/ProfileActivity$27;
.super Lorg/telegram/ui/Stories/ProfileStoriesView;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;IJLandroid/view/View;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 4963
    iput-object v0, v8, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, p9

    iput-object v0, v8, Lorg/telegram/ui/ProfileActivity$27;->val$context:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/ProfileStoriesView;-><init>(Landroid/content/Context;IJLandroid/view/View;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onLongPress()V
    .locals 1

    .line 4981
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$17600(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method protected onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 4

    .line 4966
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    .line 4967
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    .line 4968
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 4970
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$300(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 4971
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$27;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$6900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    goto :goto_1

    .line 4972
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4973
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$27;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    goto :goto_1

    .line 4975
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$17500(Lorg/telegram/ui/ProfileActivity;)Z

    goto :goto_1

    .line 4969
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$27;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1, p1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    :goto_1
    return-void
.end method
