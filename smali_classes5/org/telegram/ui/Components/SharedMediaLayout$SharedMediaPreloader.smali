.class public Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;
.super Ljava/lang/Object;
.source "SharedMediaLayout.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedMediaPreloader"
.end annotation


# instance fields
.field private final customType:I

.field private delegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private dialogId:J

.field private lastLoadMediaCount:[I

.field private lastMediaCount:[I

.field private mediaCount:[I

.field private mediaMergeCount:[I

.field private mediaWasLoaded:Z

.field private mergeDialogId:J

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

.field private topicId:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 642
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JI)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;JI)V
    .locals 2

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 655
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    new-array v1, v0, [I

    .line 656
    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    new-array v1, v0, [I

    .line 657
    fill-array-data v1, :array_2

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    new-array v0, v0, [I

    .line 658
    fill-array-data v0, :array_3

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    .line 668
    iput p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->customType:I

    .line 669
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_0

    .line 672
    iput-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    goto :goto_0

    .line 674
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz p2, :cond_1

    .line 675
    check-cast p1, Lorg/telegram/ui/Components/ChatActivityInterface;

    .line 676
    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    .line 677
    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getMergeDialogId()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    .line 678
    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getTopicId()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    goto :goto_0

    .line 679
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_2

    .line 680
    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    .line 681
    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    .line 682
    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->getTopicId()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    goto :goto_0

    .line 683
    :cond_2
    instance-of p2, p1, Lorg/telegram/ui/Components/MediaActivity;

    if-eqz p2, :cond_3

    .line 684
    check-cast p1, Lorg/telegram/ui/Components/MediaActivity;

    .line 685
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MediaActivity;->getDialogId()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    .line 686
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MediaActivity;->getTopicId()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    :cond_3
    :goto_0
    const/4 p1, 0x6

    new-array p1, p1, [Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    .line 689
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 690
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length p4, p3

    if-ge p2, p4, :cond_5

    .line 691
    new-instance p4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-direct {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;-><init>()V

    aput-object p4, p3, p2

    .line 692
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p3, p3, p2

    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p4

    if-eqz p4, :cond_4

    const/high16 p4, -0x80000000

    goto :goto_2

    :cond_4
    const p4, 0x7fffffff

    :goto_2
    invoke-virtual {p3, p1, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setMaxId(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 694
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->loadMediaCounts()V

    .line 696
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 697
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 698
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 699
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 700
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 701
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 702
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 703
    sget p2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 704
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 705
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)I
    .locals 0

    .line 629
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    return p0
.end method

.method private loadMediaCounts()V
    .locals 5

    .line 1024
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->getMediaCounts(JII)V

    .line 1025
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->getMediaCounts(JII)V

    :cond_0
    return-void
.end method

.method private setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1031
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    neg-long v0, v0

    .line 1032
    iput-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    .line 1033
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->getMediaCounts(JII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V
    .locals 1

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 743
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I

    const/4 v3, -0x1

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v1, v2, :cond_b

    .line 744
    aget-object v1, p3, v9

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 745
    aget-object v10, p3, v8

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 746
    iget v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    if-ne v10, v15, :cond_43

    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v12, v1, v10

    if-eqz v12, :cond_0

    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v12, v1, v10

    if-nez v12, :cond_43

    .line 747
    :cond_0
    aget-object v10, p3, v6

    move-object v14, v10

    check-cast v14, [I

    .line 749
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 750
    aget v10, v14, v7

    .line 751
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v12, v11, v7

    if-ne v12, v10, :cond_1

    return-void

    .line 754
    :cond_1
    aput v10, v11, v7

    goto :goto_0

    .line 756
    :cond_2
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v7, v1, v10

    if-nez v7, :cond_3

    .line 757
    iput-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    goto :goto_0

    .line 759
    :cond_3
    iput-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    :goto_0
    const/4 v7, 0x0

    .line 761
    :goto_1
    array-length v10, v14

    if-ge v7, v10, :cond_a

    .line 762
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v11, v10, v7

    if-ltz v11, :cond_4

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v12, v11, v7

    if-ltz v12, :cond_4

    .line 763
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v10, v10, v7

    aget v11, v11, v7

    add-int/2addr v10, v11

    aput v10, v12, v7

    goto :goto_2

    .line 764
    :cond_4
    aget v11, v10, v7

    if-ltz v11, :cond_5

    .line 765
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v10, v10, v7

    aput v10, v11, v7

    goto :goto_2

    .line 767
    :cond_5
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v11, v11, v7

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v10, v7

    .line 769
    :goto_2
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v12, v1, v10

    if-nez v12, :cond_9

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v10, v10, v7

    if-eqz v10, :cond_9

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    aget v10, v10, v7

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v11, v11, v7

    if-eq v10, v11, :cond_9

    if-nez v7, :cond_7

    .line 772
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v11, v10, v9

    iget v11, v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v11, v8, :cond_6

    const/16 v16, 0x6

    goto :goto_3

    .line 774
    :cond_6
    aget-object v10, v10, v9

    iget v10, v10, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v10, v6, :cond_7

    const/16 v16, 0x7

    goto :goto_3

    :cond_7
    move/from16 v16, v7

    .line 778
    :goto_3
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    aget v11, v11, v7

    if-ne v11, v3, :cond_8

    const/16 v11, 0x1e

    const/16 v13, 0x1e

    goto :goto_4

    :cond_8
    const/16 v11, 0x14

    const/16 v13, 0x14

    :goto_4
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x2

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v20

    const/16 v21, 0x0

    move-wide v11, v1

    move-object/from16 v22, v14

    move/from16 v14, v17

    move/from16 v23, v15

    move/from16 v15, v18

    move/from16 v17, v23

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    invoke-virtual/range {v10 .. v20}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

    .line 779
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v11, v11, v7

    aput v11, v10, v7

    goto :goto_5

    :cond_9
    move-object/from16 v22, v14

    move/from16 v23, v15

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v14, v22

    move/from16 v15, v23

    goto/16 :goto_1

    .line 782
    :cond_a
    iput-boolean v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaWasLoaded:Z

    .line 783
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_6
    if-ge v9, v1, :cond_43

    .line 784
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 787
    :cond_b
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    if-ne v1, v2, :cond_11

    .line 788
    aget-object v1, p3, v9

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 789
    aget-object v3, p3, v8

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 790
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v5, v1, v10

    if-eqz v5, :cond_c

    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v5, v1, v10

    if-nez v5, :cond_43

    :cond_c
    iget v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    int-to-long v10, v5

    cmp-long v5, v10, v3

    if-nez v5, :cond_43

    .line 791
    aget-object v3, p3, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 793
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v4

    if-eqz v4, :cond_d

    if-eq v3, v7, :cond_d

    return-void

    .line 797
    :cond_d
    aget-object v4, p3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 798
    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v7, v1, v5

    if-nez v7, :cond_e

    .line 799
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aput v4, v1, v3

    goto :goto_7

    .line 801
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aput v4, v1, v3

    .line 803
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v2, v1, v3

    if-ltz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v4, v2, v3

    if-ltz v4, :cond_f

    .line 804
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v1, v1, v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, v4, v3

    goto :goto_8

    .line 805
    :cond_f
    aget v2, v1, v3

    if-ltz v2, :cond_10

    .line 806
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v1, v1, v3

    aput v1, v2, v3

    goto :goto_8

    .line 808
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v2, v2, v3

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v3

    .line 810
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_9
    if-ge v9, v1, :cond_43

    .line 811
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 814
    :cond_11
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    if-ne v1, v2, :cond_1d

    .line 815
    aget-object v1, p3, v6

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 819
    :cond_12
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    aget-object v4, p3, v9

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v10, v1, v4

    if-nez v10, :cond_43

    .line 820
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    .line 821
    aget-object v2, p3, v8

    check-cast v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 822
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c

    .line 823
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 824
    iget v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    if-eqz v10, :cond_13

    iget-object v11, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v11, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v11

    if-eq v10, v11, :cond_13

    goto/16 :goto_c

    .line 827
    :cond_13
    iget-object v10, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v10

    if-eqz v10, :cond_1b

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v10

    if-eqz v10, :cond_14

    goto/16 :goto_c

    .line 830
    :cond_14
    iget-object v10, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v10}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v10

    .line 832
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v11

    if-eqz v11, :cond_15

    if-eq v10, v7, :cond_15

    goto :goto_c

    :cond_15
    if-ne v10, v3, :cond_16

    goto :goto_c

    :cond_16
    if-nez v10, :cond_17

    .line 839
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v11, v11, v9

    iget v11, v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v11, v6, :cond_17

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v11

    if-nez v11, :cond_17

    goto :goto_c

    :cond_17
    if-nez v10, :cond_18

    .line 842
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v11, v11, v9

    iget v11, v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v11, v8, :cond_18

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v11

    if-eqz v11, :cond_18

    goto :goto_c

    .line 845
    :cond_18
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v12, v11, v10

    iget-boolean v12, v12, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz v12, :cond_19

    .line 846
    aget-object v11, v11, v10

    invoke-virtual {v11, v5, v9, v8, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    .line 848
    :cond_19
    iget v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    if-nez v5, :cond_1a

    .line 849
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v10

    iget v11, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    add-int/2addr v11, v8

    iput v11, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    :cond_1a
    const/4 v5, 0x0

    .line 851
    :goto_b
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v11, v11, v10

    iget-object v11, v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_1b

    .line 852
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v11, v11, v10

    iget-object v11, v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v12, v11, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    add-int/2addr v12, v8

    iput v12, v11, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1b
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 855
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->loadMediaCounts()V

    goto/16 :goto_1c

    .line 857
    :cond_1d
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne v1, v2, :cond_1f

    .line 858
    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Boolean;

    .line 859
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    .line 862
    :cond_1e
    aget-object v1, p3, v9

    check-cast v1, Ljava/lang/Integer;

    .line 863
    aget-object v2, p3, v8

    check-cast v2, Ljava/lang/Integer;

    .line 864
    :goto_d
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v4, v3

    if-ge v9, v4, :cond_43

    .line 865
    aget-object v3, v3, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->replaceMid(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 867
    :cond_1f
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    if-ne v1, v2, :cond_27

    .line 868
    aget-object v1, p3, v9

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x3

    .line 869
    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 870
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v10

    if-ne v3, v10, :cond_43

    .line 871
    aget-object v3, p3, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 873
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v10

    if-eqz v10, :cond_20

    if-eq v3, v7, :cond_20

    return-void

    :cond_20
    if-eqz v3, :cond_21

    if-eq v3, v5, :cond_21

    if-eq v3, v4, :cond_21

    if-eq v3, v8, :cond_21

    if-eq v3, v6, :cond_21

    if-eq v3, v7, :cond_21

    .line 878
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v7, v3

    aget-object v10, p3, v8

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    .line 880
    :cond_21
    aget-object v6, p3, v6

    check-cast v6, Ljava/util/ArrayList;

    .line 881
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v7

    .line 882
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v12, v1, v10

    if-nez v12, :cond_22

    const/4 v8, 0x0

    :cond_22
    if-eqz v3, :cond_23

    if-eq v3, v5, :cond_23

    if-ne v3, v4, :cond_25

    .line 884
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v9

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-eq v3, v1, :cond_24

    return-void

    :cond_24
    const/4 v3, 0x0

    .line 889
    :cond_25
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 890
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v3

    const/4 v2, 0x5

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v8, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setEndReached(IZ)V

    :cond_26
    const/4 v1, 0x0

    .line 892
    :goto_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 893
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 894
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2, v8, v9, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 897
    :cond_27
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const-wide/16 v4, 0x0

    if-ne v1, v2, :cond_37

    .line 898
    aget-object v1, p3, v6

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_28

    return-void

    .line 902
    :cond_28
    aget-object v1, p3, v8

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 904
    iget-wide v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 905
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    goto :goto_f

    :cond_29
    const/4 v3, 0x0

    .line 909
    :goto_f
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_2b

    cmp-long v6, v1, v4

    if-nez v6, :cond_2a

    .line 910
    iget-wide v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v10, v6, v4

    if-nez v10, :cond_2c

    :cond_2a
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2c

    return-void

    :cond_2b
    cmp-long v3, v1, v4

    if-eqz v3, :cond_2c

    return-void

    .line 919
    :cond_2c
    aget-object v1, p3, v9

    check-cast v1, Ljava/util/ArrayList;

    .line 920
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v3, v2, :cond_32

    const/4 v5, 0x0

    .line 921
    :goto_11
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v7, v6

    if-ge v5, v7, :cond_31

    .line 922
    aget-object v6, v6, v5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v9}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->deleteMessage(II)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 924
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v4, v10, v12

    if-nez v4, :cond_2e

    iget v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    if-eqz v4, :cond_2d

    iget-object v4, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v4

    iget v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    if-ne v4, v6, :cond_2e

    .line 925
    :cond_2d
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v6, v4, v5

    if-lez v6, :cond_2f

    .line 926
    aget v6, v4, v5

    sub-int/2addr v6, v8

    aput v6, v4, v5

    goto :goto_12

    .line 929
    :cond_2e
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v6, v4, v5

    if-lez v6, :cond_2f

    .line 930
    aget v6, v4, v5

    sub-int/2addr v6, v8

    aput v6, v4, v5

    :cond_2f
    :goto_12
    const/4 v4, 0x1

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_32
    if-eqz v4, :cond_36

    const/4 v1, 0x0

    .line 938
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    array-length v3, v2

    if-ge v1, v3, :cond_35

    .line 939
    aget v3, v2, v1

    if-ltz v3, :cond_33

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v4, v3, v1

    if-ltz v4, :cond_33

    .line 940
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v2, v2, v1

    aget v3, v3, v1

    add-int/2addr v2, v3

    aput v2, v4, v1

    goto :goto_14

    .line 941
    :cond_33
    aget v3, v2, v1

    if-ltz v3, :cond_34

    .line 942
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v2, v2, v1

    aput v2, v3, v1

    goto :goto_14

    .line 944
    :cond_34
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v3, v3, v1

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v2, v1

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 947
    :cond_35
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_15
    if-ge v9, v1, :cond_36

    .line 948
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 951
    :cond_36
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->loadMediaCounts()V

    goto/16 :goto_1c

    .line 952
    :cond_37
    sget v2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    if-ne v1, v2, :cond_40

    .line 953
    aget-object v1, p3, v9

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 954
    iget-wide v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_38

    iget-wide v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v10, v1, v6

    if-eqz v10, :cond_38

    return-void

    :cond_38
    cmp-long v6, v1, v4

    if-nez v6, :cond_39

    const/4 v1, 0x0

    goto :goto_16

    :cond_39
    const/4 v1, 0x1

    .line 958
    :goto_16
    aget-object v2, p3, v8

    check-cast v2, Ljava/util/ArrayList;

    .line 959
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_43

    .line 960
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 961
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    .line 962
    iget-object v10, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v10, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v10

    .line 963
    iget-object v11, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v11

    .line 964
    iget v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:I

    if-eqz v12, :cond_3a

    if-eq v10, v12, :cond_3a

    goto :goto_1a

    :cond_3a
    const/4 v10, 0x0

    .line 967
    :goto_18
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v13, v12

    if-ge v10, v13, :cond_3f

    .line 968
    aget-object v12, v12, v10

    iget-object v12, v12, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v12, v12, v1

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    if-eqz v12, :cond_3e

    .line 970
    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v13}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v13

    if-eq v11, v3, :cond_3c

    if-eq v13, v11, :cond_3b

    goto :goto_19

    .line 983
    :cond_3b
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v11, v11, v10

    iget-object v11, v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_3f

    .line 985
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v12, v12, v10

    iget-object v12, v12, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v12, v12, v1

    invoke-virtual {v12, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 986
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v7, v10

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v11, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 972
    :cond_3c
    :goto_19
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v6, v6, v10

    invoke-virtual {v6, v7, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->deleteMessage(II)Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_3d

    .line 974
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v7, v6, v10

    if-lez v7, :cond_3f

    .line 975
    aget v7, v6, v10

    sub-int/2addr v7, v8

    aput v7, v6, v10

    goto :goto_1a

    .line 978
    :cond_3d
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v7, v6, v10

    if-lez v7, :cond_3f

    .line 979
    aget v7, v6, v10

    sub-int/2addr v7, v8

    aput v7, v6, v10

    goto :goto_1a

    :cond_3e
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_3f
    :goto_1a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17

    .line 993
    :cond_40
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne v1, v2, :cond_41

    .line 994
    aget-object v1, p3, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 995
    iget-wide v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_43

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    neg-long v2, v2

    cmp-long v6, v4, v2

    if-nez v6, :cond_43

    .line 996
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    goto :goto_1c

    .line 998
    :cond_41
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne v1, v2, :cond_43

    .line 999
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1000
    :goto_1b
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v4, v3

    if-ge v2, v4, :cond_42

    .line 1001
    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1003
    :cond_42
    aget-object v2, p3, v9

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 1005
    sget-object v3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$1;

    move/from16 v5, p2

    invoke-direct {v4, v0, v1, v2, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_43
    :goto_1c
    return-void
.end method

.method public getLastMediaCount()[I
    .locals 1

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    return-object v0
.end method

.method public getSharedMediaData()[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    return-object v0
.end method

.method public isMediaWasLoaded()Z
    .locals 1

    .line 1038
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaWasLoaded:Z

    return v0
.end method

.method public isMusicType()Z
    .locals 2

    .line 648
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->customType:I

    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->SHARED_MEDIA_LAYOUT_MUSIC:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eq p1, v0, :cond_0

    return-void

    .line 720
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 721
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 722
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 723
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 724
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 725
    sget v0, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 726
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 727
    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 728
    sget v0, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 729
    sget v0, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 730
    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public removeDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V
    .locals 1

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
