.class public Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;
.super Ljava/lang/Object;
.source "ViewsForSelfStoriesRequester.java"


# instance fields
.field currentAccount:I

.field currentReqId:I

.field isRunning:Z

.field final scheduleRequestRunnuble:Ljava/lang/Runnable;

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;


# direct methods
.method public static synthetic $r8$lambda$GNkomrSmbrlzaBpYYJmuv5r-9y8(Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$MwGl-kDuLM32xSLb52da206JuG8(Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->lambda$requestInternal$2(Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e11RQO6PUJmtSEHTloNyF3kyhac(Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->lambda$requestInternal$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoriesController;I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->scheduleRequestRunnuble:Ljava/lang/Runnable;

    .line 25
    iput p2, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentAccount:I

    .line 26
    iput-object p1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->requestInternal()Z

    return-void
.end method

.method private synthetic lambda$requestInternal$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 55
    iget-object v1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget v2, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 56
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 61
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViews;

    .line 62
    iget v2, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViews;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    move v2, v0

    .line 64
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViews;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    move v3, v0

    .line 65
    :goto_1
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 66
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;->id:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 67
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViews;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$StoryViews;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    goto :goto_3

    .line 57
    :cond_4
    :goto_2
    iput v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentReqId:I

    .line 58
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->isRunning:Z

    return-void

    .line 74
    :cond_5
    :goto_3
    iput v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentReqId:I

    .line 75
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->isRunning:Z

    if-eqz p1, :cond_6

    .line 76
    iget-object p1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->scheduleRequestRunnuble:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 77
    iget-object p1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->scheduleRequestRunnuble:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$requestInternal$2(Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 53
    new-instance p3, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestInternal()Z
    .locals 5

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget v1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 44
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentReqId:I

    if-eqz v2, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;-><init>()V

    .line 48
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 49
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;->id:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesViews;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentReqId:I

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public start(Z)V
    .locals 2

    .line 30
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->isRunning:Z

    if-eq v0, p1, :cond_0

    .line 31
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->requestInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->isRunning:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->isRunning:Z

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->scheduleRequestRunnuble:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 37
    iget v0, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentReqId:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 38
    iput p1, p0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->currentReqId:I

    :cond_1
    :goto_0
    return-void
.end method
