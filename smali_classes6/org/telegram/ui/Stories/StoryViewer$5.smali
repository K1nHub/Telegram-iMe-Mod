.class Lorg/telegram/ui/Stories/StoryViewer$5;
.super Ljava/lang/Object;
.source "StoryViewer.java"

# interfaces
.implements Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V
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

.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->val$storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->val$peerIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$switchToNextAndRemoveCurrentPeer$0(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-wide v2, p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    iget p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-virtual {v1, v2, v3, p2, p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->setDays(JLjava/util/ArrayList;I)V

    return-void
.end method

.method private synthetic lambda$switchToNextAndRemoveCurrentPeer$1(Ljava/util/ArrayList;I)V
    .locals 2

    .line 1187
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-virtual {v1, p1, v0, p2}, Lorg/telegram/ui/Stories/StoriesViewPager;->setPeerIds(Ljava/util/ArrayList;II)V

    return-void
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 1

    .line 1393
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2100(Lorg/telegram/ui/Stories/StoryViewer;)I

    move-result v0

    return v0
.end method

.method public getProgressToDismiss()F
    .locals 1

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$1300(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    return v0
.end method

.method public onPeerSelected(JI)V
    .locals 3

    .line 1121
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->lastPosition:I

    if-ne v1, p3, :cond_0

    iget-wide v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->lastDialogId:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 1122
    :cond_0
    iput-wide p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->lastDialogId:J

    .line 1123
    iput p3, v0, Lorg/telegram/ui/Stories/StoryViewer;->lastPosition:I

    :cond_1
    return-void
.end method

.method public preparePlayer(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
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

    .line 1398
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1401
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$1300(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 1404
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    move v2, v0

    .line 1406
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1407
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1409
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 1413
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1414
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1415
    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    .line 1416
    iput-object v2, v3, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->uri:Landroid/net/Uri;

    .line 1417
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v4, v3, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1418
    invoke-static {v4, v0}, Lorg/telegram/messenger/FileStreamLoadOperation;->setPriorityForDocument(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 1419
    invoke-static {}, Lorg/telegram/ui/Stories/StoryViewer;->access$3300()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->preparePlayer(Landroid/net/Uri;Z)V

    .line 1420
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    .line 1422
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/4 v3, 0x0

    .line 1423
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->release(Ljava/lang/Runnable;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public releasePlayer(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->release(Ljava/lang/Runnable;)Z

    move-result p1

    .line 1215
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

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$2900(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    return-void
.end method

.method public requestPlayer(Lorg/telegram/tgnet/TLRPC$Document;Landroid/net/Uri;JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V
    .locals 10

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$1300(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    goto/16 :goto_7

    .line 1248
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->lastUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p2, :cond_2

    move-object v3, v2

    goto :goto_1

    .line 1249
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 1250
    :goto_1
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1251
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_a

    .line 1294
    iput-object p5, v3, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    .line 1295
    iput-object v4, p5, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 1296
    iget-boolean p1, v4, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->firstFrameRendered:Z

    iput-boolean p1, p5, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 1297
    iget-object p1, v3, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object p1, p5, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    .line 1298
    invoke-static {v3}, Lorg/telegram/ui/Stories/StoryViewer;->access$3100(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;

    move-result-object p1

    iput-object p1, p5, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->textureView:Landroid/view/TextureView;

    .line 1299
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p3, p1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    goto/16 :goto_5

    .line 1252
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object p2, v0, Lorg/telegram/ui/Stories/StoryViewer;->lastUri:Landroid/net/Uri;

    .line 1253
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_5

    .line 1254
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->release(Ljava/lang/Runnable;)Z

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 1257
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_6

    .line 1258
    iput-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 1259
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 1260
    iput-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    .line 1261
    iput-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->textureView:Landroid/view/TextureView;

    .line 1262
    iput-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    .line 1263
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    :cond_6
    if-eqz p2, :cond_a

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object p5, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    move p5, v1

    .line 1268
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p5, v0, :cond_8

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1270
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iput-object p5, v0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    goto :goto_4

    :cond_7
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    .line 1274
    :cond_8
    :goto_4
    iget-object p5, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, p5, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-nez v0, :cond_9

    .line 1275
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-direct {v0, p5}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v0, p5, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 1276
    iget-object p5, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p5, p5, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iput-object p1, p5, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1282
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p5, p1, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iput-object p2, p5, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->uri:Landroid/net/Uri;

    .line 1283
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iput-object p5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    .line 1284
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 1285
    iget-object p5, p1, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object p5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    .line 1286
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3100(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->textureView:Landroid/view/TextureView;

    .line 1287
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p5, p1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    iput-object p1, p5, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    .line 1288
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p5, 0x3

    invoke-static {p1, p5}, Lorg/telegram/messenger/FileStreamLoadOperation;->setPriorityForDocument(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 1289
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x3

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v4, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/FileLoader;->changePriority(ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p5, p1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, p5, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->isPaused()Z

    move-result v3

    invoke-static {}, Lorg/telegram/ui/Stories/StoryViewer;->access$3300()Z

    move-result v7

    move-object v4, p2

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->start(ZLandroid/net/Uri;JZ)V

    .line 1291
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    .line 1301
    :cond_a
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean p3, p1, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz p3, :cond_c

    if-nez p2, :cond_b

    .line 1303
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_6

    .line 1305
    :cond_b
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_c
    :goto_6
    return-void

    .line 1244
    :cond_d
    :goto_7
    iput-boolean v1, p5, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 1245
    iput-object v2, p5, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    return-void
.end method

.method public setAllowTouchesByViewPager(Z)V
    .locals 1

    .line 1237
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3000(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$3002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1238
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setBulletinIsVisible(Z)V
    .locals 1

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3602(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1358
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setHideEnterViewProgress(F)V
    .locals 1

    .line 1195
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2800(Lorg/telegram/ui/Stories/StoryViewer;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$2802(Lorg/telegram/ui/Stories/StoryViewer;F)F

    .line 1197
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsCaption(Z)V
    .locals 1

    .line 1334
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$202(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1335
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsCaptionPartVisible(Z)V
    .locals 1

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$302(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    return-void
.end method

.method public setIsHintVisible(Z)V
    .locals 1

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$402(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1370
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsInPinchToZoom(Z)V
    .locals 1

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3702(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1364
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsInSelectionMode(Z)V
    .locals 1

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$502(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1382
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsLikesReaction(Z)V
    .locals 1

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$1702(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1388
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsRecording(Z)V
    .locals 1

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$2002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1323
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsSwiping(Z)V
    .locals 1

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3802(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1376
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setIsWaiting(Z)V
    .locals 1

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3402(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1329
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setKeyboardVisible(Z)V
    .locals 2

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-eq v1, p1, :cond_0

    .line 1230
    iput-boolean p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    .line 1231
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    :cond_0
    return-void
.end method

.method public setPopupIsVisible(Z)V
    .locals 1

    .line 1345
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3502(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 1346
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setTranslating(Z)V
    .locals 1

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    .line 1352
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public shouldSwitchToNext()V
    .locals 2

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    const/4 v1, 0x1

    .line 1146
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->switchToNext(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->switchToNext(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public switchToNextAndRemoveCurrentPeer()V
    .locals 5

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->val$storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 1159
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1160
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

    .line 1162
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1167
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->switchToNext(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    goto :goto_1

    .line 1170
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->val$storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$5$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2, v0}, Lorg/telegram/ui/Stories/StoryViewer$5$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$5;Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/StoriesViewPager;->onNextIdle(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1164
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void

    .line 1175
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->val$peerIds:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1176
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

    .line 1178
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1183
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->switchToNext(Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    goto :goto_1

    .line 1186
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v3}, Lorg/telegram/ui/Stories/StoryViewer$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer$5;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->onNextIdle(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    .line 1180
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$5;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void
.end method
