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
.field private checkedHasSavedMessages:Z

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

.field public hasSavedMessages:Z

.field private lastLoadMediaCount:[I

.field private lastMediaCount:[I

.field private mediaCount:[I

.field private mediaMergeCount:[I

.field private mediaWasLoaded:Z

.field private mergeDialogId:J

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

.field private topicId:J


# direct methods
.method public static synthetic $r8$lambda$3xtb5ShoIQGuA6BG5w-Nc2noB0g(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FfPOvYRkTHRHv97X1L_Bqw-IkkQ(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 949
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JI)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;JI)V
    .locals 2

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 962
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    new-array v1, v0, [I

    .line 963
    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    new-array v1, v0, [I

    .line 964
    fill-array-data v1, :array_2

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    new-array v0, v0, [I

    .line 965
    fill-array-data v0, :array_3

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    .line 977
    iput p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->customType:I

    .line 978
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_0

    .line 981
    iput-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    goto/16 :goto_0

    .line 983
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz p2, :cond_1

    .line 984
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/ChatActivityInterface;

    .line 985
    invoke-interface {p2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    .line 986
    invoke-interface {p2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getMergeDialogId()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    .line 987
    invoke-interface {p2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getTopicId()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    .line 988
    iget-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4

    .line 989
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    new-instance p4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->hasSavedMessages(JLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 999
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_3

    .line 1000
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/ProfileActivity;

    .line 1001
    iget-boolean p3, p2, Lorg/telegram/ui/ProfileActivity;->saved:Z

    if-eqz p3, :cond_2

    .line 1002
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    .line 1003
    invoke-virtual {p2}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    goto :goto_0

    .line 1005
    :cond_2
    invoke-virtual {p2}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    .line 1006
    invoke-virtual {p2}, Lorg/telegram/ui/ProfileActivity;->getTopicId()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    .line 1008
    iget-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4

    .line 1009
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    new-instance p4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->hasSavedMessages(JLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 1020
    :cond_3
    instance-of p2, p1, Lorg/telegram/ui/Components/MediaActivity;

    if-eqz p2, :cond_4

    .line 1021
    check-cast p1, Lorg/telegram/ui/Components/MediaActivity;

    .line 1022
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MediaActivity;->getDialogId()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    .line 1023
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MediaActivity;->getTopicId()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    :cond_4
    :goto_0
    const/4 p1, 0x6

    new-array p1, p1, [Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    .line 1026
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    const/4 p1, 0x0

    move p2, p1

    .line 1027
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length p4, p3

    if-ge p2, p4, :cond_6

    .line 1028
    new-instance p4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-direct {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;-><init>()V

    aput-object p4, p3, p2

    .line 1029
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p3, p3, p2

    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p4

    if-eqz p4, :cond_5

    const/high16 p4, -0x80000000

    goto :goto_2

    :cond_5
    const p4, 0x7fffffff

    :goto_2
    invoke-virtual {p3, p1, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setMaxId(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1031
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->loadMediaCounts()V

    .line 1033
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 1034
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1035
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1036
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1037
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1038
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1039
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1040
    sget p2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1041
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1042
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1043
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1044
    sget p2, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

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
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)J
    .locals 2

    .line 936
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    return-wide v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 2

    .line 990
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->hasSavedMessages:Z

    const/4 v0, 0x1

    .line 991
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->checkedHasSavedMessages:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 993
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 994
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 2

    .line 1010
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->hasSavedMessages:Z

    const/4 v0, 0x1

    .line 1011
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->checkedHasSavedMessages:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 1014
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadMediaCounts()V
    .locals 7

    .line 1376
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->getMediaCounts(JJI)V

    .line 1377
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->getMediaCounts(JJI)V

    :cond_0
    return-void
.end method

.method private setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1383
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    neg-long v0, v0

    .line 1384
    iput-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    .line 1385
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    iget-wide v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaDataController;->getMediaCounts(JJI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V
    .locals 1

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1084
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v1, v2, :cond_b

    .line 1085
    aget-object v1, p3, v9

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1086
    aget-object v10, p3, v8

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 1087
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v10, v10, v22

    if-nez v10, :cond_49

    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v10, v1, v10

    if-eqz v10, :cond_0

    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v10, v1, v10

    if-nez v10, :cond_49

    .line 1088
    :cond_0
    aget-object v10, p3, v6

    move-object v15, v10

    check-cast v15, [I

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1091
    aget v10, v15, v7

    .line 1092
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v12, v11, v7

    if-ne v12, v10, :cond_1

    return-void

    .line 1095
    :cond_1
    aput v10, v11, v7

    goto :goto_0

    .line 1097
    :cond_2
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v7, v1, v10

    if-nez v7, :cond_3

    .line 1098
    iput-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    goto :goto_0

    .line 1100
    :cond_3
    iput-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    :goto_0
    move v7, v9

    .line 1102
    :goto_1
    array-length v10, v15

    if-ge v7, v10, :cond_a

    .line 1103
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v11, v10, v7

    if-ltz v11, :cond_4

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v12, v11, v7

    if-ltz v12, :cond_4

    .line 1104
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v10, v10, v7

    aget v11, v11, v7

    add-int/2addr v10, v11

    aput v10, v12, v7

    goto :goto_2

    .line 1105
    :cond_4
    aget v11, v10, v7

    if-ltz v11, :cond_5

    .line 1106
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v10, v10, v7

    aput v10, v11, v7

    goto :goto_2

    .line 1108
    :cond_5
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v11, v11, v7

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v10, v7

    .line 1110
    :goto_2
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v10, v1, v10

    if-nez v10, :cond_9

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v10, v10, v7

    if-eqz v10, :cond_9

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    aget v10, v10, v7

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v11, v11, v7

    if-eq v10, v11, :cond_9

    if-nez v7, :cond_7

    .line 1113
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v11, v10, v9

    iget v11, v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v11, v8, :cond_6

    move/from16 v16, v4

    goto :goto_3

    .line 1115
    :cond_6
    aget-object v10, v10, v9

    iget v10, v10, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v10, v6, :cond_7

    move/from16 v16, v3

    goto :goto_3

    :cond_7
    move/from16 v16, v7

    .line 1119
    :goto_3
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    aget v11, v11, v7

    if-ne v11, v5, :cond_8

    const/16 v11, 0x1e

    goto :goto_4

    :cond_8
    const/16 v11, 0x14

    :goto_4
    move v13, v11

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x2

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v20

    const/16 v21, 0x0

    move-wide v11, v1

    move-object/from16 v24, v15

    move/from16 v15, v17

    move-wide/from16 v17, v22

    invoke-virtual/range {v10 .. v21}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIJIII)V

    .line 1120
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastLoadMediaCount:[I

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v11, v11, v7

    aput v11, v10, v7

    goto :goto_5

    :cond_9
    move-object/from16 v24, v15

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, v24

    goto/16 :goto_1

    .line 1123
    :cond_a
    iput-boolean v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaWasLoaded:Z

    .line 1124
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_6
    if-ge v9, v1, :cond_49

    .line 1125
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1128
    :cond_b
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    if-ne v1, v2, :cond_11

    .line 1129
    aget-object v1, p3, v9

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1130
    aget-object v3, p3, v8

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1131
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v5, v1, v10

    if-eqz v5, :cond_c

    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v5, v1, v10

    if-nez v5, :cond_49

    :cond_c
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v3, v10, v3

    if-nez v3, :cond_49

    .line 1132
    aget-object v3, p3, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v4

    if-eqz v4, :cond_d

    if-eq v3, v7, :cond_d

    return-void

    .line 1138
    :cond_d
    aget-object v4, p3, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1139
    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_e

    .line 1140
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aput v4, v1, v3

    goto :goto_7

    .line 1142
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aput v4, v1, v3

    .line 1144
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v2, v1, v3

    if-ltz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v4, v2, v3

    if-ltz v4, :cond_f

    .line 1145
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v1, v1, v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, v4, v3

    goto :goto_8

    .line 1146
    :cond_f
    aget v2, v1, v3

    if-ltz v2, :cond_10

    .line 1147
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v1, v1, v3

    aput v1, v2, v3

    goto :goto_8

    .line 1149
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v2, v2, v3

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v3

    .line 1151
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_9
    if-ge v9, v1, :cond_49

    .line 1152
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 1155
    :cond_11
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    const-wide/16 v10, 0x0

    if-ne v1, v2, :cond_1e

    .line 1156
    aget-object v1, p3, v6

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 1160
    :cond_12
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    aget-object v3, p3, v9

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_49

    .line 1161
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    .line 1162
    aget-object v2, p3, v8

    check-cast v2, Ljava/util/ArrayList;

    .line 1163
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    goto :goto_a

    :cond_13
    move v3, v5

    :goto_a
    move v4, v9

    .line 1164
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_1d

    .line 1165
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 1166
    iget-wide v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v15, v13, v10

    if-eqz v15, :cond_14

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3, v15, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_14

    goto/16 :goto_d

    .line 1169
    :cond_14
    iget-object v13, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v13

    if-eqz v13, :cond_1c

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v13

    if-eqz v13, :cond_15

    goto/16 :goto_d

    .line 1172
    :cond_15
    iget-object v13, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v13}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v13

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v14

    if-eqz v14, :cond_16

    if-eq v13, v7, :cond_16

    goto :goto_d

    :cond_16
    if-ne v13, v5, :cond_17

    goto :goto_d

    :cond_17
    if-nez v13, :cond_18

    .line 1181
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v9

    iget v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v14, v6, :cond_18

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v14

    if-nez v14, :cond_18

    goto :goto_d

    :cond_18
    if-nez v13, :cond_19

    .line 1184
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v9

    iget v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v14, v8, :cond_19

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v14

    if-eqz v14, :cond_19

    goto :goto_d

    .line 1187
    :cond_19
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v15, v14, v13

    iget-boolean v15, v15, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz v15, :cond_1a

    .line 1188
    aget-object v14, v14, v13

    invoke-virtual {v14, v12, v9, v8, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    .line 1190
    :cond_1a
    iget-wide v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v12, v14, v10

    if-nez v12, :cond_1b

    .line 1191
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v12, v12, v13

    iget v14, v12, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    add-int/2addr v14, v8

    iput v14, v12, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    :cond_1b
    move v12, v9

    .line 1193
    :goto_c
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v13

    iget-object v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_1c

    .line 1194
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v13

    iget-object v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v15, v14, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    add-int/2addr v15, v8

    iput v15, v14, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_1c
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 1197
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->loadMediaCounts()V

    goto/16 :goto_21

    .line 1199
    :cond_1e
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne v1, v2, :cond_20

    .line 1200
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Boolean;

    .line 1201
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    return-void

    .line 1204
    :cond_1f
    aget-object v1, p3, v9

    check-cast v1, Ljava/lang/Integer;

    .line 1205
    aget-object v2, p3, v8

    check-cast v2, Ljava/lang/Integer;

    .line 1206
    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v4, v3

    if-ge v9, v4, :cond_49

    .line 1207
    aget-object v3, v3, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->replaceMid(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 1209
    :cond_20
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    if-ne v1, v2, :cond_28

    .line 1210
    aget-object v1, p3, v9

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v5, 0x3

    .line 1211
    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1212
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v10

    if-ne v5, v10, :cond_49

    .line 1213
    aget-object v5, p3, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1215
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v10

    if-eqz v10, :cond_21

    if-eq v5, v7, :cond_21

    return-void

    :cond_21
    if-eqz v5, :cond_22

    if-eq v5, v4, :cond_22

    if-eq v5, v3, :cond_22

    if-eq v5, v8, :cond_22

    if-eq v5, v6, :cond_22

    if-eq v5, v7, :cond_22

    .line 1220
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v7, v5

    aget-object v10, p3, v8

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    .line 1222
    :cond_22
    aget-object v6, p3, v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1223
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v7

    .line 1224
    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_23

    move v8, v9

    :cond_23
    if-eqz v5, :cond_24

    if-eq v5, v4, :cond_24

    if-ne v5, v3, :cond_26

    .line 1226
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v9

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-eq v5, v1, :cond_25

    return-void

    :cond_25
    move v5, v9

    .line 1231
    :cond_26
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1232
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v5

    const/4 v2, 0x5

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v8, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setEndReached(IZ)V

    :cond_27
    move v1, v9

    .line 1234
    :goto_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 1235
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1236
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2, v8, v9, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1239
    :cond_28
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    if-ne v1, v2, :cond_39

    .line 1240
    aget-object v1, p3, v6

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    return-void

    .line 1244
    :cond_29
    aget-object v1, p3, v8

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1246
    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1247
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    goto :goto_10

    :cond_2a
    const/4 v3, 0x0

    .line 1251
    :goto_10
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_2c

    cmp-long v4, v1, v10

    if-nez v4, :cond_2b

    .line 1252
    iget-wide v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v4, v6, v10

    if-nez v4, :cond_2d

    :cond_2b
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    return-void

    :cond_2c
    cmp-long v1, v1, v10

    if-eqz v1, :cond_2d

    return-void

    .line 1261
    :cond_2d
    aget-object v1, p3, v9

    check-cast v1, Ljava/util/ArrayList;

    .line 1262
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    .line 1263
    :cond_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v9

    move v4, v3

    :goto_11
    if-ge v3, v2, :cond_34

    move v6, v9

    .line 1264
    :goto_12
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v12, v7

    if-ge v6, v12, :cond_33

    .line 1265
    aget-object v7, v7, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v7, v12, v9}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->deleteMessage(II)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    if-eqz v7, :cond_32

    .line 1267
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    iget-wide v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v4, v12, v14

    if-nez v4, :cond_30

    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v4, v12, v10

    if-eqz v4, :cond_2f

    iget-object v4, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5, v4, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v12

    iget-wide v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v4, v12, v14

    if-nez v4, :cond_30

    .line 1268
    :cond_2f
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v7, v4, v6

    if-lez v7, :cond_31

    .line 1269
    aget v7, v4, v6

    sub-int/2addr v7, v8

    aput v7, v4, v6

    goto :goto_13

    .line 1272
    :cond_30
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v7, v4, v6

    if-lez v7, :cond_31

    .line 1273
    aget v7, v4, v6

    sub-int/2addr v7, v8

    aput v7, v4, v6

    :cond_31
    :goto_13
    move v4, v8

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_34
    if-eqz v4, :cond_38

    move v1, v9

    .line 1281
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    array-length v3, v2

    if-ge v1, v3, :cond_37

    .line 1282
    aget v3, v2, v1

    if-ltz v3, :cond_35

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v4, v3, v1

    if-ltz v4, :cond_35

    .line 1283
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v2, v2, v1

    aget v3, v3, v1

    add-int/2addr v2, v3

    aput v2, v4, v1

    goto :goto_15

    .line 1284
    :cond_35
    aget v3, v2, v1

    if-ltz v3, :cond_36

    .line 1285
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    aget v2, v2, v1

    aput v2, v3, v1

    goto :goto_15

    .line 1287
    :cond_36
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v3, v3, v1

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v2, v1

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1290
    :cond_37
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_16
    if-ge v9, v1, :cond_38

    .line 1291
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 1294
    :cond_38
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->loadMediaCounts()V

    goto/16 :goto_21

    .line 1295
    :cond_39
    sget v2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    if-ne v1, v2, :cond_44

    .line 1296
    aget-object v1, p3, v9

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1297
    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v6, v1, v3

    if-eqz v6, :cond_3a

    iget-wide v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mergeDialogId:J

    cmp-long v6, v1, v6

    if-eqz v6, :cond_3a

    return-void

    :cond_3a
    cmp-long v1, v1, v3

    if-nez v1, :cond_3b

    move v1, v9

    goto :goto_17

    :cond_3b
    move v1, v8

    .line 1301
    :goto_17
    aget-object v2, p3, v8

    check-cast v2, Ljava/util/ArrayList;

    .line 1302
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    goto :goto_18

    :cond_3c
    move v3, v5

    .line 1303
    :goto_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v9

    :goto_19
    if-ge v6, v4, :cond_49

    .line 1304
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 1305
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    .line 1306
    iget-object v13, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3, v13, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v13

    .line 1307
    iget-object v15, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v15}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v15

    .line 1308
    iget-wide v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->topicId:J

    cmp-long v18, v8, v10

    if-eqz v18, :cond_3d

    cmp-long v8, v13, v8

    if-eqz v8, :cond_3d

    goto :goto_1c

    :cond_3d
    const/4 v8, 0x0

    .line 1311
    :goto_1a
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v13, v9

    if-ge v8, v13, :cond_42

    .line 1312
    aget-object v9, v9, v8

    iget-object v9, v9, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v9, v9, v1

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_41

    .line 1314
    iget-object v13, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v13}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v13

    if-eq v15, v5, :cond_3f

    if-eq v13, v15, :cond_3e

    goto :goto_1b

    .line 1327
    :cond_3e
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v8

    iget-object v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_42

    .line 1329
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v8

    iget-object v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v13, v13, v1

    invoke-virtual {v13, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1330
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v12, v8

    iget-object v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 1316
    :cond_3f
    :goto_1b
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v7, v8

    invoke-virtual {v7, v12, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->deleteMessage(II)Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_40

    .line 1318
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaCount:[I

    aget v9, v7, v8

    if-lez v9, :cond_42

    .line 1319
    aget v9, v7, v8

    const/4 v13, 0x1

    sub-int/2addr v9, v13

    aput v9, v7, v8

    goto :goto_1d

    :cond_40
    const/4 v13, 0x1

    .line 1322
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaMergeCount:[I

    aget v9, v7, v8

    if-lez v9, :cond_43

    .line 1323
    aget v9, v7, v8

    sub-int/2addr v9, v13

    aput v9, v7, v8

    goto :goto_1d

    :cond_41
    const/4 v13, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_42
    :goto_1c
    const/4 v13, 0x1

    :cond_43
    :goto_1d
    add-int/lit8 v6, v6, 0x1

    move v8, v13

    const/4 v9, 0x0

    goto/16 :goto_19

    :cond_44
    move v13, v8

    .line 1337
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne v1, v2, :cond_45

    const/4 v2, 0x0

    .line 1338
    aget-object v1, p3, v2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1339
    iget-wide v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    cmp-long v4, v2, v10

    if-gez v4, :cond_49

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    neg-long v2, v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_49

    .line 1340
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    goto/16 :goto_21

    .line 1342
    :cond_45
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne v1, v2, :cond_47

    .line 1343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1344
    :goto_1e
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v4, v3

    if-ge v2, v4, :cond_46

    .line 1345
    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_46
    const/4 v2, 0x0

    .line 1347
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_49

    .line 1349
    sget-object v3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$1;

    move/from16 v5, p2

    invoke-direct {v4, v0, v1, v2, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_21

    :cond_47
    const/4 v2, 0x0

    .line 1364
    sget v3, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    if-ne v1, v3, :cond_49

    .line 1365
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->dialogId:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/SavedMessagesController;->containsDialog(J)Z

    move-result v1

    if-eqz v1, :cond_48

    move v8, v13

    goto :goto_1f

    :cond_48
    move v8, v2

    .line 1366
    :goto_1f
    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->checkedHasSavedMessages:Z

    if-eqz v1, :cond_49

    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->hasSavedMessages:Z

    if-eq v1, v8, :cond_49

    .line 1367
    iput-boolean v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->hasSavedMessages:Z

    .line 1368
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v9, v2

    :goto_20
    if-ge v9, v1, :cond_49

    .line 1369
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;->mediaCountUpdated()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    :cond_49
    :goto_21
    return-void
.end method

.method public getLastMediaCount()[I
    .locals 1

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->lastMediaCount:[I

    return-object v0
.end method

.method public getSharedMediaData()[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;
    .locals 1

    .line 1079
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    return-object v0
.end method

.method public isMediaWasLoaded()Z
    .locals 1

    .line 1390
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->mediaWasLoaded:Z

    return v0
.end method

.method public isMusicType()Z
    .locals 2

    .line 955
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->customType:I

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->SHARED_MEDIA_LAYOUT_MUSIC:I

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

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eq p1, v0, :cond_0

    return-void

    .line 1059
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1060
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 1061
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1062
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1063
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1064
    sget v0, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1065
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1066
    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1067
    sget v0, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1068
    sget v0, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1069
    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1070
    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1071
    sget v0, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public removeDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V
    .locals 1

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->delegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
