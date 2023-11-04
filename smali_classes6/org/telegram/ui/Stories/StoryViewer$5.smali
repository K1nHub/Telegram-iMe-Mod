.class Lorg/telegram/ui/Stories/StoryViewer$5;
.super Ljava/lang/Object;
.source "StoryViewer.java"

# interfaces
.implements Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;

.field final synthetic val$peerIds:Ljava/util/ArrayList;

.field final synthetic val$storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;


# direct methods
.method public static synthetic $r8$lambda$N79XJbhbsj7VTVLXu3Y4wj-vOAc(Lorg/telegram/ui/Stories/StoryViewer$5;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryViewer$5;->lambda$switchToNextAndRemoveCurrentPeer$1(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tqr9eQWxl2fiGt0NDcaVIxr0PsU(Lorg/telegram/ui/Stories/StoryViewer$5;Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryViewer$5;->lambda$switchToNextAndRemoveCurrentPeer$0(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZdpDUzM7TUbODZCEf2Kkx-FECuo(Lorg/telegram/ui/Stories/StoryViewer$5;Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$5;->lambda$preparePlayer$2(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1194
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->val$storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->val$peerIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$preparePlayer$2(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V
    .locals 2

    .line 1510
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-ne v1, p1, :cond_0

    .line 1512
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchToNextAndRemoveCurrentPeer$0(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1248
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-wide v2, p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    iget p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-virtual {v1, v2, v3, p2, p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->setDays(JLjava/util/ArrayList;I)V

    return-void
.end method

.method private synthetic lambda$switchToNextAndRemoveCurrentPeer$1(Ljava/util/ArrayList;I)V
    .locals 2

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-virtual {v1, p1, v0, p2}, Lorg/telegram/ui/Stories/StoriesViewPager;->setPeerIds(Ljava/util/ArrayList;II)V

    return-void
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 1

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2300(Lorg/telegram/ui/Stories/StoryViewer;)I

    move-result v0

    return v0
.end method

.method public getProgressToDismiss()F
    .locals 1

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1395
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$1400(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    return v0
.end method

.method public onPeerSelected(JI)V
    .locals 3

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->lastPosition:I

    if-ne v1, p3, :cond_0

    iget-wide v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->lastDialogId:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 1199
    :cond_0
    iput-wide p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->lastDialogId:J

    .line 1200
    iput p3, v0, Lorg/telegram/ui/Stories/StoryViewer;->lastPosition:I

    :cond_1
    return-void
.end method

.method public preparePlayer(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1491
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1494
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$1400(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 1497
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    move v2, v0

    .line 1499
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1500
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v4, v4, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1502
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 1506
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1507
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1508
    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->access$3400(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v6}, Lorg/telegram/ui/Stories/StoryViewer;->access$3500(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/SurfaceView;Landroid/view/TextureView;)V

    .line 1509
    new-instance v4, Lorg/telegram/ui/Stories/StoryViewer$5$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/Stories/StoryViewer$5$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryViewer$5;Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setOnSeekUpdate(Ljava/lang/Runnable;)V

    .line 1515
    iput-object v2, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->uri:Landroid/net/Uri;

    .line 1516
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v4, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1517
    invoke-static {v4, v0}, Lorg/telegram/messenger/FileStreamLoadOperation;->setPriorityForDocument(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 1518
    invoke-static {}, Lorg/telegram/ui/Stories/StoryViewer;->access$3700()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->preparePlayer(Landroid/net/Uri;Z)V

    .line 1519
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    .line 1521
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/4 v3, 0x0

    .line 1522
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public releasePlayer(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1290
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_0

    .line 1291
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    move-result p1

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestAdjust(Z)V
    .locals 1

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    return-void
.end method

.method public requestPlayer(Lorg/telegram/tgnet/TLRPC$Document;Landroid/net/Uri;JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v1, p5

    .line 1320
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->access$1400(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    const/4 v8, 0x0

    const/4 v3, 0x0

    if-nez v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    goto/16 :goto_8

    .line 1325
    :cond_0
    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->lastUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v7, :cond_2

    move-object v4, v3

    goto :goto_1

    .line 1326
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 1327
    :goto_1
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_4

    .line 1328
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_b

    .line 1375
    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    .line 1376
    iput-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 1377
    iget-boolean v2, v5, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 1378
    iget-object v2, v4, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    .line 1379
    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->access$3500(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->textureView:Landroid/view/TextureView;

    .line 1380
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3400(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    goto/16 :goto_6

    .line 1329
    :cond_4
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object v7, v2, Lorg/telegram/ui/Stories/StoryViewer;->lastUri:Landroid/net/Uri;

    .line 1330
    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v2, :cond_5

    .line 1331
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    .line 1332
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 1334
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v2, :cond_6

    .line 1335
    iput-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 1336
    iput-boolean v8, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 1337
    iput-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    .line 1338
    iput-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->textureView:Landroid/view/TextureView;

    .line 1339
    iput-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    .line 1340
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    .line 1341
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    :cond_6
    if-eqz v7, :cond_b

    .line 1344
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object v1, v2, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    move v1, v8

    .line 1345
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 1346
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v2, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1347
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iput-object v1, v2, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1351
    :cond_8
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-nez v2, :cond_9

    .line 1352
    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3400(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->access$3500(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/SurfaceView;Landroid/view/TextureView;)V

    iput-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 1353
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    move-object/from16 v2, p1

    iput-object v2, v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1359
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iput-object v7, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->uri:Landroid/net/Uri;

    .line 1360
    iget-object v3, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iput-object v2, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 1361
    iput-boolean v8, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 1362
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v2, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    .line 1363
    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3500(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->textureView:Landroid/view/TextureView;

    .line 1364
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3400(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    .line 1365
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v1, v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileStreamLoadOperation;->setPriorityForDocument(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 1366
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    const/4 v12, 0x3

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v13, v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Lorg/telegram/messenger/FileLoader;->changePriority(ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, p3, v9

    if-nez v1, :cond_a

    .line 1367
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3600(Lorg/telegram/ui/Stories/StoryViewer;)J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-eqz v1, :cond_a

    .line 1368
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3600(Lorg/telegram/ui/Stories/StoryViewer;)J

    move-result-wide v1

    .line 1369
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    move-wide v4, v1

    goto :goto_5

    :cond_a
    move-wide/from16 v4, p3

    .line 1371
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->isPaused()Z

    move-result v3

    invoke-static {}, Lorg/telegram/ui/Stories/StoryViewer;->access$3700()Z

    move-result v6

    move-object v1, v2

    move v2, v3

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->start(ZLandroid/net/Uri;JZ)V

    .line 1372
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    .line 1382
    :cond_b
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v2, :cond_d

    if-nez v7, :cond_c

    .line 1384
    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3400(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_7

    .line 1386
    :cond_c
    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3400(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1389
    :cond_d
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1, v9, v10}, Lorg/telegram/ui/Stories/StoryViewer;->access$3602(Lorg/telegram/ui/Stories/StoryViewer;J)J

    .line 1390
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void

    .line 1321
    :cond_e
    :goto_8
    iput-boolean v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 1322
    iput-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    return-void
.end method

.method public setAllowTouchesByViewPager(Z)V
    .locals 1

    .line 1314
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3300(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$3302(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1315
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setBulletinIsVisible(Z)V
    .locals 1

    .line 1440
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$4002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1441
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setHideEnterViewProgress(F)V
    .locals 1

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$3100(Lorg/telegram/ui/Stories/StoryViewer;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3102(Lorg/telegram/ui/Stories/StoryViewer;F)F

    .line 1274
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsCaption(Z)V
    .locals 1

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$202(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1418
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsCaptionPartVisible(Z)V
    .locals 1

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$302(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    return-void
.end method

.method public setIsHintVisible(Z)V
    .locals 1

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$402(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1463
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsInPinchToZoom(Z)V
    .locals 2

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2600(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1447
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    .line 1448
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_0

    .line 1449
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setSeeking(Z)V

    .line 1451
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1453
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1456
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$2602(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1457
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsInSelectionMode(Z)V
    .locals 1

    .line 1474
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$502(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1475
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsLikesReaction(Z)V
    .locals 1

    .line 1480
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$1902(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1481
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsRecording(Z)V
    .locals 1

    .line 1405
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$2202(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1406
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsSwiping(Z)V
    .locals 1

    .line 1468
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$4102(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1469
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsWaiting(Z)V
    .locals 1

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3802(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1412
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setKeyboardVisible(Z)V
    .locals 2

    .line 1306
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-eq v1, p1, :cond_0

    .line 1307
    iput-boolean p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    .line 1308
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    :cond_0
    return-void
.end method

.method public setPopupIsVisible(Z)V
    .locals 1

    .line 1428
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3902(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1429
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setTranslating(Z)V
    .locals 1

    .line 1434
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    .line 1435
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public shouldSwitchToNext()V
    .locals 2

    .line 1222
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    const/4 v1, 0x1

    .line 1223
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->switchToNext(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->switchToNext(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 1

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public switchToNextAndRemoveCurrentPeer()V
    .locals 5

    .line 1232
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->val$storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 1236
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1237
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->getCurrentDay()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_3

    .line 1239
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1244
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->switchToNext(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    goto :goto_1

    .line 1247
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->val$storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$5$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2, v0}, Lorg/telegram/ui/Stories/StoryViewer$5$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$5;Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/StoriesViewPager;->onNextIdle(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1241
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void

    .line 1252
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->val$peerIds:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1253
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->getCurrentPeer()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 1255
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1260
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->switchToNext(Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1261
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    goto :goto_1

    .line 1263
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v3}, Lorg/telegram/ui/Stories/StoryViewer$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer$5;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->onNextIdle(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    .line 1257
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void
.end method
