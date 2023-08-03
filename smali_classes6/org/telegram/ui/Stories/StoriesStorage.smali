.class public Lorg/telegram/ui/Stories/StoriesStorage;
.super Ljava/lang/Object;
.source "StoriesStorage.java"


# instance fields
.field currentAccount:I

.field storage:Lorg/telegram/messenger/MessagesStorage;


# direct methods
.method public static synthetic $r8$lambda$3W2bsO8PXqCRzEJ8F94kU1MqjE8(Lorg/telegram/ui/Stories/StoriesStorage;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getAllStories$2(Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Dw7KpTcDu8fS-1zu0ZD0uz1KQU(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$fillMessagesWithStories$12(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4NbQlPeuSo6RQ6DQB80Uk2gJVqU(Lorg/telegram/ui/Stories/StoriesStorage;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$deleteStory$10(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$8lzgkxq-s3i_DL88ZP0lYr893zo(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$deleteStories$11(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$BKtCCRKBXsCeuPs-94dqKU1-50k(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;J[ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$fillMessagesWithStories$13(Ljava/util/ArrayList;J[ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DJBOLeNFEASnTPn7ujU2SYs78Pk(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getMaxReadIds$14(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/messenger/support/LongSparseIntArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IQ6dZiSYFdnIbSnFr-bAy-uN55k(Lorg/telegram/ui/Stories/StoriesStorage;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$updateMaxReadId$7(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$KIDHRxmuG-lqUdzr55kVGLhsYho(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$processUpdate$8(Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NLJYbXaVll6fPntAdBbvpxoXBCU(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$saveAllStories$3(Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ShZBdpL_3oKC4fOrA8NOoOMKIMI(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getAllStories$1(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VFg5GvspXuHve1UUW3n-jQanMw0(Lorg/telegram/ui/Stories/StoriesStorage;JLorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$updateStoryItem$6(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZG4mc9uCJJOk8mfrUrbIrRU7444(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$putUserStories$16(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eXfIZboDnrXiBiWxx_4x9Cr9tbM(Lorg/telegram/tgnet/TLRPC$TL_userStories;)I
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getAllStories$0(Lorg/telegram/tgnet/TLRPC$TL_userStories;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hOoDj5BOwiaXQiBIJT98UEwy19s(Lorg/telegram/ui/Stories/StoriesStorage;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$deleteAllUserStories$17(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$sjr3ZEJSpWG4-E3GYRidEs1Hi10(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$updateStories$9(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uWWPYZqvOxfMABgkJjuZRkWClrY(Lorg/telegram/ui/Stories/StoriesStorage;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getMaxReadIds$15(Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    .line 47
    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    return-void
.end method

.method public static applyStory(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 4

    .line 618
    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyStoryHeader;

    if-eqz v2, :cond_0

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I

    iget v2, p4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v1, v2, :cond_0

    .line 619
    invoke-static {p0, p1, p2, p4}, Lorg/telegram/ui/Stories/StoriesStorage;->checkExpiredStateLocal(IJLorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 621
    :cond_0
    iget v0, p3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 622
    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/MessageMediaStoryFull;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/MessageMediaStoryFull;-><init>()V

    .line 623
    iget-object v1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    .line 624
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->id:I

    .line 625
    invoke-static {p0, p1, p2, p4}, Lorg/telegram/ui/Stories/StoriesStorage;->checkExpiredStateLocal(IJLorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 626
    iget-object v1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->via_mention:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->via_mention:Z

    .line 627
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 629
    :cond_2
    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 634
    :goto_0
    iget-object v1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 635
    iget-object v1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;

    .line 636
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->id:I

    iget v3, p4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v2, v3, :cond_3

    .line 637
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    .line 638
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    invoke-static {p0, p1, p2, p4}, Lorg/telegram/ui/Stories/StoriesStorage;->checkExpiredStateLocal(IJLorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static checkExpiredStateLocal(IJLorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/tgnet/TLRPC$StoryItem;
    .locals 4

    .line 713
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v0, :cond_0

    return-object p3

    .line 716
    :cond_0
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 718
    iget v1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->expire_date:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 721
    :cond_2
    iget v1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    sub-int/2addr v0, v1

    const v1, 0x15180

    if-le v0, v1, :cond_1

    .line 723
    :goto_0
    iget-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v0, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p0, p1, v0

    if-eqz p0, :cond_3

    .line 724
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;-><init>()V

    .line 725
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    return-object p0

    :cond_3
    return-object p3
.end method

.method private checkExpiredStories(JLjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 129
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move-object v4, v3

    .line 132
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    .line 133
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 134
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    sub-int v8, v0, v8

    const v9, 0x15180

    if-le v8, v9, :cond_1

    if-nez v4, :cond_0

    .line 136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    :cond_0
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    :cond_1
    add-int/2addr v5, v7

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const-string p3, ", "

    .line 147
    invoke-static {p3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    .line 149
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "DELETE FROM stories WHERE dialog_id = %d AND story_id IN (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v2

    aput-object p3, v4, v7

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private fillSkippedStories(JLorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 3

    if-eqz p3, :cond_1

    .line 289
    :try_start_0
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 290
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 291
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 292
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryInternal(JI)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object v1

    .line 294
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_storyItem;

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 301
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static getStoryId(Lorg/telegram/messenger/MessageObject;)I
    .locals 3

    .line 645
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 647
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 652
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 653
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;

    .line 654
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    if-eqz v2, :cond_1

    .line 655
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    iget p0, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->id:I

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_2
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I

    return p0

    .line 646
    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->id:I

    return p0
.end method

.method private getStoryInternal(JI)Lorg/telegram/tgnet/TLRPC$StoryItem;
    .locals 8

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 310
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT data, local_path, local_thumb_path FROM stories WHERE dialog_id = %d AND story_id = %d"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p3

    .line 312
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p3, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    .line 314
    invoke-virtual {p3, v6}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {p3, v4}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    invoke-static {v0, v4, v6}, Lorg/telegram/tgnet/TLRPC$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object v1

    .line 318
    iput-wide p1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 319
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    .line 320
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 321
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 324
    :cond_0
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 326
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private synthetic lambda$deleteAllUserStories$17(J)V
    .locals 5

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    .line 762
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM stories WHERE dialog_id = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 764
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteStories$11(Ljava/util/ArrayList;J)V
    .locals 5

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, ", "

    .line 532
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 533
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM stories WHERE dialog_id = %d AND story_id IN (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 535
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteStory$10(JI)V
    .locals 5

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    .line 521
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM stories WHERE dialog_id = %d AND story_id = %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 523
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$fillMessagesWithStories$12(Ljava/util/ArrayList;)V
    .locals 0

    .line 602
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->updateMessagesWithStories(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$fillMessagesWithStories$13(Ljava/util/ArrayList;J[ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 p7, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_3

    .line 585
    check-cast p6, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;

    move v1, v0

    .line 586
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 587
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    move v3, v0

    .line 589
    :goto_1
    iget-object v4, p6, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 590
    iget-object v4, p6, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryId(Lorg/telegram/messenger/MessageObject;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 591
    iget v4, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    iget-object v5, p6, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v4, p2, p3, v2, v3}, Lorg/telegram/ui/Stories/StoriesStorage;->applyStory(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    move v3, p7

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_2
    if-nez v3, :cond_2

    .line 597
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;-><init>()V

    .line 598
    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryId(Lorg/telegram/messenger/MessageObject;)I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    .line 599
    iget v4, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v4, p2, p3, v2, v3}, Lorg/telegram/ui/Stories/StoriesStorage;->applyStory(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 601
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    :cond_3
    aget p1, p4, v0

    sub-int/2addr p1, p7

    aput p1, p4, v0

    .line 607
    aget p1, p4, v0

    if-nez p1, :cond_4

    .line 608
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private static synthetic lambda$getAllStories$0(Lorg/telegram/tgnet/TLRPC$TL_userStories;)I
    .locals 1

    .line 121
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    neg-int p0, p0

    return p0
.end method

.method private static synthetic lambda$getAllStories$1(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;)V
    .locals 0

    .line 123
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getAllStories$2(Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 16

    move-object/from16 v1, p0

    .line 53
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "SELECT dialog_id, max_read FROM stories_counter"

    new-array v9, v7, [Ljava/lang/Object;

    .line 59
    invoke-virtual {v0, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 60
    :try_start_1
    new-instance v9, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v9}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    .line 62
    :goto_0
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 63
    invoke-virtual {v8, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v10

    .line 64
    invoke-virtual {v8, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    .line 65
    invoke-virtual {v9, v10, v11, v12}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_0

    .line 67
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v7

    .line 76
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 77
    invoke-virtual {v9, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v10

    .line 78
    invoke-virtual {v9, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I

    move-result v8

    .line 79
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "SELECT data, local_path, local_thumb_path FROM stories WHERE dialog_id = %d"

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 80
    :try_start_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 81
    :goto_2
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 82
    invoke-virtual {v12, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v14

    .line 83
    invoke-virtual {v12, v6}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x2

    .line 84
    invoke-virtual {v12, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v14, :cond_2

    .line 86
    invoke-virtual {v14, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v7

    invoke-static {v14, v7, v6}, Lorg/telegram/tgnet/TLRPC$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object v7

    .line 87
    iput-object v15, v7, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    .line 88
    iput-object v5, v7, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 89
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v14}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 93
    :cond_3
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    :try_start_4
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_userStories;-><init>()V

    .line 97
    iput-object v13, v5, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    .line 98
    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    .line 99
    iput-wide v10, v5, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    .line 100
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v12

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v5, v12

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v5, v8

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v5, v8

    goto :goto_3

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    .line 103
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_4

    .line 106
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 109
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;-><init>()V

    .line 110
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    .line 111
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->users:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 112
    :goto_4
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_6

    .line 113
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 114
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/Stories/StoriesStorage;->checkExpiredStories(JLjava/util/ArrayList;)V

    .line 115
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 116
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    .line 119
    :cond_5
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    sget-object v3, Lorg/telegram/ui/Stories/StoriesController;->storiesComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/2addr v7, v6

    goto :goto_4

    .line 121
    :cond_6
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    sget-object v3, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda14;->INSTANCE:Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda14;

    invoke-static {v3}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    new-instance v2, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda1;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v0}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_3
    move-exception v0

    :goto_5
    if-eqz v5, :cond_7

    .line 106
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 108
    :cond_7
    throw v0
.end method

.method private static synthetic lambda$getMaxReadIds$14(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .locals 0

    .line 747
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getMaxReadIds$15(Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 6

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    .line 735
    new-instance v1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    :try_start_0
    const-string v2, "SELECT dialog_id, max_read FROM stories_counter"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 737
    invoke-virtual {v0, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 738
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 739
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    const/4 v2, 0x1

    .line 740
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    .line 741
    invoke-virtual {v1, v4, v5, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 744
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    .line 746
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/messenger/support/LongSparseIntArray;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processUpdate$8(Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V
    .locals 12

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    .line 458
    :try_start_0
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    .line 460
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    .line 462
    instance-of v4, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    .line 463
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT data, local_path, local_thumb_path FROM stories WHERE dialog_id = %d AND story_id = %d"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {p1, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v4

    .line 464
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 465
    invoke-virtual {v4, v7}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 466
    invoke-virtual {v4, v6}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v9

    .line 467
    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_0

    .line 469
    invoke-virtual {v8, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v11

    invoke-static {v8, v11, v6}, Lorg/telegram/tgnet/TLRPC$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object v11

    .line 470
    iput-object v9, v11, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    .line 471
    iput-object v10, v11, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 472
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_0
    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v7

    .line 476
    :goto_0
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    const-string v4, "DELETE FROM stories WHERE dialog_id = %d AND story_id = %d"

    new-array v9, v5, [Ljava/lang/Object;

    .line 477
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v6

    invoke-static {p1, v4, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-eqz v8, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    .line 481
    :cond_2
    instance-of v4, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItem;

    if-eqz v4, :cond_3

    .line 482
    invoke-direct {p0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItemInternal(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 483
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT story_id FROM stories WHERE dialog_id = %d AND story_id = %d"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v6

    invoke-static {p1, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p1

    .line 484
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    .line 487
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-nez v3, :cond_3

    move p1, v6

    goto :goto_1

    :cond_3
    move p1, v7

    .line 492
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT count, max_read FROM stories_counter WHERE dialog_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 494
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 495
    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v7

    .line 497
    :goto_2
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 499
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "UPDATE stories_counter SET count = %d WHERE dialog_id = %d"

    new-array v5, v5, [Ljava/lang/Object;

    add-int/2addr v4, p1

    .line 500
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v7

    .line 501
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v6

    .line 499
    invoke-static {v3, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    .line 502
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$putUserStories$16(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 2

    .line 754
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->putStoriesInternal(JLorg/telegram/tgnet/TLRPC$TL_userStories;)V

    return-void
.end method

.method private synthetic lambda$saveAllStories$3(Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V
    .locals 7

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 249
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 250
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 251
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-direct {p0, v4, v5, v3}, Lorg/telegram/ui/Stories/StoriesStorage;->fillSkippedStories(JLorg/telegram/tgnet/TLRPC$TL_userStories;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_6

    :try_start_0
    const-string p2, "SELECT dialog_id FROM stories"

    new-array v2, v1, [Ljava/lang/Object;

    .line 255
    invoke-virtual {v0, p2, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p2

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 259
    invoke-virtual {p2, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v3

    .line 260
    iget v5, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-nez v5, :cond_2

    .line 262
    iget v5, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->getUser(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_3

    .line 264
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-ne v5, p3, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 265
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 268
    :cond_4
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, ","

    if-eqz p2, :cond_5

    .line 269
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StoriesStorage delete dialogs "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 271
    :cond_5
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "DELETE FROM stories WHERE dialog_id IN(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v1

    invoke-static {p2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 273
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    .line 276
    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_7

    .line 277
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 278
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {p0, v2, v3, p2}, Lorg/telegram/ui/Stories/StoriesStorage;->putStoriesInternal(JLorg/telegram/tgnet/TLRPC$TL_userStories;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-eqz p4, :cond_8

    .line 281
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$updateMaxReadId$7(JI)V
    .locals 5

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    .line 446
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "REPLACE INTO stories_counter VALUES(%d, 0, %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 448
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateStories$9(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 4

    const/4 v0, 0x0

    .line 511
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 512
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItemInternal(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateStoryItem$6(JLorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 0

    .line 387
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItemInternal(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    return-void
.end method

.method private updateStoryItemInternal(JLorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 10

    .line 392
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v0, :cond_0

    const-string v0, "StoriesStorage: try write deleted story"

    .line 393
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 395
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v0, p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StoriesStorage: try write expired story"

    .line 396
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 398
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    .line 401
    :try_start_0
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    .line 402
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 403
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v3, :cond_3

    .line 404
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SELECT local_path, local_thumb_path FROM stories WHERE dialog_id = %d AND story_id = %d"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget v8, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 405
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 406
    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v3, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_3
    const-string v3, "REPLACE INTO stories VALUES(?, ?, ?, ?, ?)"

    .line 411
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 414
    invoke-virtual {v0, v4, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 415
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    int-to-long p1, p1

    invoke-virtual {v0, v5, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 417
    new-instance p1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p2

    invoke-direct {p1, p2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 418
    invoke-virtual {p3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 p2, 0x3

    .line 419
    invoke-virtual {v0, p2, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 p2, 0x4

    if-nez v1, :cond_4

    .line 421
    invoke-virtual {v0, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    goto :goto_0

    .line 423
    :cond_4
    invoke-virtual {v0, p2, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x5

    if-nez v2, :cond_5

    .line 426
    invoke-virtual {v0, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    goto :goto_1

    .line 428
    :cond_5
    invoke-virtual {v0, p2, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 430
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 431
    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 433
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public deleteAllUserStories(J)V
    .locals 2

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteStories(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteStory(JI)V
    .locals 2

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;JI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fillMessagesWithStories(Landroidx/collection/LongSparseArray;Ljava/lang/Runnable;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 546
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 549
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 550
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 551
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 552
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move v7, v1

    .line 553
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 554
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 555
    invoke-static {v8}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryId(Lorg/telegram/messenger/MessageObject;)I

    move-result v9

    .line 556
    invoke-direct {p0, v5, v6, v9}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryInternal(JI)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 557
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-nez v10, :cond_2

    .line 558
    iget v10, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v10, v5, v6, v8, v9}, Lorg/telegram/ui/Stories/StoriesStorage;->applyStory(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 560
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    .line 563
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 564
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/2addr v7, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    :cond_4
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->updateMessagesWithStories(Ljava/util/List;)V

    .line 573
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v4, [I

    .line 574
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    aput v2, v0, v1

    move v2, v1

    .line 575
    :goto_2
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 576
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 577
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/util/ArrayList;

    .line 578
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;-><init>()V

    .line 579
    iget v4, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    move v4, v1

    .line 580
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 581
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-static {v6}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryId(Lorg/telegram/messenger/MessageObject;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 583
    :cond_5
    iget v4, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v12, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;

    move-object v5, v12

    move-object v6, p0

    move-object v10, v0

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;J[ILjava/lang/Runnable;)V

    invoke-virtual {v4, v3, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 613
    :cond_6
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public getAllStories(Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lcom/google/android/exoplayer2/util/Consumer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getMaxReadIds(Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/messenger/support/LongSparseIntArray;",
            ">;)V"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lcom/google/android/exoplayer2/util/Consumer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V
    .locals 2

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putStoriesInternal(JLorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    .line 159
    iget-object v4, v1, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    if-eqz v0, :cond_6

    .line 162
    :try_start_0
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    const-string v6, "REPLACE INTO stories VALUES(?, ?, ?, ?, ?)"

    .line 163
    invoke-virtual {v4, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    .line 164
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v8, v9, :cond_5

    .line 165
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 166
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 167
    iget v13, v1, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    cmp-long v13, v2, v13

    if-nez v13, :cond_1

    .line 168
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "SELECT local_path, local_thumb_path FROM stories WHERE dialog_id = %d AND story_id = %d"

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v7

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v12

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v13, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v10, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v10

    .line 169
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 170
    invoke-virtual {v10, v12}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    .line 171
    invoke-virtual {v10, v11}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 173
    :cond_0
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 175
    :cond_1
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v10, :cond_2

    const-string v9, "try write deleted story"

    .line 176
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 179
    :cond_2
    invoke-virtual {v6, v12, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 180
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    int-to-long v12, v10

    invoke-virtual {v6, v11, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 182
    new-instance v10, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v9}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v11

    invoke-direct {v10, v11}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 183
    invoke-virtual {v9, v10}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v11, 0x3

    .line 184
    invoke-virtual {v6, v11, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 185
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    const/4 v12, 0x4

    if-nez v11, :cond_3

    .line 186
    invoke-virtual {v6, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {v6, v12, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 190
    :goto_1
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    const/4 v11, 0x5

    if-nez v9, :cond_4

    .line 191
    invoke-virtual {v6, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    goto :goto_2

    .line 193
    :cond_4
    invoke-virtual {v6, v11, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 195
    :goto_2
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 196
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 198
    :cond_5
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 199
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "REPLACE INTO stories_counter VALUES(%d, %d, %d)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v12

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v11

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 202
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public putUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 2

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public saveAllStories(Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;ZZ",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda10;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMaxReadId(JI)V
    .locals 3

    .line 438
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-eqz v1, :cond_0

    .line 440
    iput p3, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    .line 441
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;JI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMessagesWithStories(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 664
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    .line 665
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "UPDATE messages_v2 SET replydata = ? WHERE mid = ? AND uid = ?"

    .line 666
    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    const-string v2, "UPDATE messages_topics SET replydata = ? WHERE mid = ? AND uid = ?"

    .line 667
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    const-string v3, "UPDATE messages_v2 SET data = ? WHERE mid = ? AND uid = ?"

    .line 669
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    const-string v4, "UPDATE messages_topics SET data = ? WHERE mid = ? AND uid = ?"

    .line 670
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 v4, 0x0

    move v5, v4

    .line 671
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 672
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    move v7, v4

    :goto_1
    const/4 v8, 0x2

    if-ge v7, v8, :cond_5

    .line 674
    iget-object v9, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    if-nez v7, :cond_0

    move-object v9, v1

    goto :goto_2

    :cond_0
    move-object v9, v2

    :goto_2
    if-nez v9, :cond_1

    goto :goto_4

    .line 679
    :cond_1
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v13}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v13

    invoke-direct {v12, v13}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 680
    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v13, v12}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 681
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 682
    invoke-virtual {v9, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 683
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-virtual {v9, v8, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 684
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 685
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_4

    :cond_2
    if-nez v7, :cond_3

    move-object v9, v3

    goto :goto_3

    :cond_3
    move-object v9, v0

    :goto_3
    if-nez v9, :cond_4

    goto :goto_4

    .line 691
    :cond_4
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v13}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v13

    invoke-direct {v12, v13}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 692
    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v13, v12}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 693
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 694
    invoke-virtual {v9, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 695
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-virtual {v9, v8, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 696
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 697
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 702
    :cond_6
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 703
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 704
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 705
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public updateStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 2

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateStoryItem(JLorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
