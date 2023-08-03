.class public Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;
.super Ljava/lang/Object;
.source "StoriesUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStoriesLoadOperation"
.end annotation


# instance fields
.field private currentAccount:I

.field reqId:I


# direct methods
.method public static synthetic $r8$lambda$KRfT8LSRCwRJmYMWDDso80kL0X4([Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->lambda$ensureStoryFileLoaded$4([Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TFyc9e-TseVlrQIOqrD8GWlT3gQ(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->lambda$load$3(JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYaoris9CGrMW3gMMN216VQmAlg(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Landroid/view/View;JLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->lambda$load$1(Landroid/view/View;JLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aH-fiyap7IXtkgLUEEkhKyYDgC0(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Lorg/telegram/tgnet/TLObject;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->lambda$load$2(Lorg/telegram/tgnet/TLObject;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c5nBmGaS6wqgul-Jdi2C7JK9g6M(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Landroid/view/View;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->lambda$load$0(Landroid/view/View;J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    return-void
.end method

.method private ensureStoryFileLoaded(Lorg/telegram/tgnet/TLRPC$TL_userStories;Ljava/lang/Runnable;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_7

    .line 983
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 988
    :cond_0
    iget v3, v0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 990
    :goto_0
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_2

    .line 991
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-le v6, v3, :cond_1

    .line 992
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v7

    :goto_1
    if-nez v3, :cond_3

    .line 997
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    :cond_3
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Runnable;

    .line 1000
    new-instance v6, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3;

    invoke-direct {v6, v5, v2}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3;-><init>([Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    aput-object v6, v5, v4

    .line 1005
    aget-object v4, v5, v4

    const-wide/16 v8, 0x3e8

    invoke-static {v4, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1007
    new-instance v8, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$1;

    invoke-direct {v8, v0, v5, v2}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$1;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;[Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1019
    invoke-virtual {v8, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 1020
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 1022
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->getStoryImageFilter()Ljava/lang/String;

    move-result-object v12

    .line 1024
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_4

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_4

    .line 1025
    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_pframe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v3

    invoke-virtual/range {v8 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 1027
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :cond_5
    if-eqz v7, :cond_6

    .line 1028
    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    const v2, 0x7fffffff

    .line 1029
    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1030
    invoke-static {v1, v7}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v3

    invoke-virtual/range {v8 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_2
    return-void

    .line 1032
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 984
    :cond_7
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$ensureStoryFileLoaded$4([Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1001
    aput-object v1, p0, v0

    .line 1002
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$load$0(Landroid/view/View;J)V
    .locals 1

    .line 961
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 962
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Stories/StoriesController;->setLoading(JZ)V

    return-void
.end method

.method private synthetic lambda$load$1(Landroid/view/View;JLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 3

    .line 960
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Landroid/view/View;J)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x0

    .line 964
    invoke-virtual {p4, p2, p3, p1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->openStory(JLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$load$2(Lorg/telegram/tgnet/TLObject;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 953
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stories_userStories;

    .line 954
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_userStories;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 955
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_userStories;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 956
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 957
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p1}, Lorg/telegram/ui/Stories/StoriesController;->putStories(JLorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 959
    new-instance v2, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda1;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p4

    move-wide v6, p2

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Landroid/view/View;JLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->ensureStoryFileLoaded(Lorg/telegram/tgnet/TLRPC$TL_userStories;Ljava/lang/Runnable;)V

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 969
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p6, p5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p5

    .line 970
    iput-boolean v0, p5, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    .line 971
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-static {p5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 972
    invoke-virtual {p6, p5, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    if-eqz p1, :cond_1

    .line 976
    invoke-virtual {p4}, Landroid/view/View;->invalidate()V

    .line 977
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v1}, Lorg/telegram/ui/Stories/StoriesController;->setLoading(JZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$load$3(JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 949
    new-instance p7, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda2;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p6

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Lorg/telegram/tgnet/TLObject;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;)V

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 3

    .line 1039
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->reqId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method load(JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 10

    .line 935
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    .line 939
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    .line 940
    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    const/4 v1, 0x1

    .line 942
    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/StoriesController;->setLoading(JZ)V

    .line 943
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 945
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    .line 947
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getUserStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_getUserStories;-><init>()V

    .line 948
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getUserStories;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 949
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda4;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v8, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->reqId:I

    return-void
.end method
