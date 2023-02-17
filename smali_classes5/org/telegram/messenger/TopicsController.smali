.class public Lorg/telegram/messenger/TopicsController;
.super Lorg/telegram/messenger/BaseController;
.source "TopicsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/TopicsController$TopicUpdate;,
        Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;
    }
.end annotation


# static fields
.field public static final LOAD_TYPE_LOAD_NEXT:I = 0x1

.field public static final LOAD_TYPE_LOAD_UNKNOWN:I = 0x2

.field public static final LOAD_TYPE_PRELOAD:I = 0x0

.field private static final MAX_PRELOAD_COUNT:I = 0x14

.field public static final TOPIC_FLAG_CLOSE:I = 0x8

.field public static final TOPIC_FLAG_HIDE:I = 0x20

.field public static final TOPIC_FLAG_ICON:I = 0x2

.field public static final TOPIC_FLAG_PIN:I = 0x4

.field public static final TOPIC_FLAG_TITLE:I = 0x1

.field public static final TOPIC_FLAG_TOTAL_MESSAGES_COUNT:I = 0x10

.field private static final countsTmp:[I


# instance fields
.field currentOpenTopicsCounter:Lorg/telegram/messenger/support/LongSparseIntArray;

.field endIsReached:Lorg/telegram/messenger/support/LongSparseIntArray;

.field offsets:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;",
            ">;"
        }
    .end annotation
.end field

.field openedTopicsBuChatId:Lorg/telegram/messenger/support/LongSparseIntArray;

.field topicsByChatId:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_forumTopic;",
            ">;>;"
        }
    .end annotation
.end field

.field topicsByTopMsgId:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_forumTopic;",
            ">;"
        }
    .end annotation
.end field

.field topicsIsLoading:Lorg/telegram/messenger/support/LongSparseIntArray;

.field topicsMapByChatId:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_forumTopic;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0e_BaWPqzv5ZCA2zl2m5ptwlq3U(Lorg/telegram/messenger/TopicsController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/TopicsController;->lambda$processUpdate$18(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1_bjwGBolV2BugKEPrXml8Vj3jU(Lorg/telegram/messenger/TopicsController;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/TopicsController;->lambda$pinTopic$15(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4P1ogiuBgdpDMbMErAfiKwLQnGE(Lorg/telegram/messenger/TopicsController;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TopicsController;->lambda$updateMentionsUnread$17(JII)V

    return-void
.end method

.method public static synthetic $r8$lambda$CKF-Y48PJUQxHYXPnkC1D37mdmY(Lorg/telegram/messenger/TopicsController;Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;Landroid/util/SparseArray;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/TopicsController;->lambda$loadTopics$2(Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;Landroid/util/SparseArray;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fu5C0RTN31kZKmX7xspKnwCLI5E(Lorg/telegram/messenger/TopicsController;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController;->lambda$reloadTopics$20(JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1BpNu30s9JMGojt2i1Cz2NIMmc(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/TopicsController;->lambda$sortTopics$6(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GBPg4C4XDjwJDmmXvUoSxVE_2eg(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TopicsController;->lambda$updateTopicsWithDeletedMessages$8(JLjava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$K-ZA8kN5q8uBr0_JqdShKO37mpo(Lorg/telegram/messenger/TopicsController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->lambda$processTopics$5(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$KYBuxo22HHyv1Su8_b_WOlikivc(Lorg/telegram/messenger/TopicsController;JZILjava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TopicsController;->lambda$loadTopics$1(JZILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lxv1zHR_CqgT8FmQBP_-0DtKXw4(Lorg/telegram/messenger/TopicsController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TopicsController;->lambda$getTopicRepliesCount$26(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Miz7OMP-1gOI6H5DycEXT_PMn2E(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/TopicsController;->lambda$toggleShowTopic$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SZe47mAfHoRDnGwI2UQbqGerchs(Lorg/telegram/messenger/TopicsController;JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TopicsController;->lambda$loadTopics$4(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UBFi7yWfpqFhkqm9IZG3n66vX5o(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;ZI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TopicsController;->lambda$loadTopics$0(JLjava/util/ArrayList;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$VpXZXcZkozbVKX9FoqwgJHbXVy4(Lorg/telegram/messenger/TopicsController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->lambda$loadTopics$3(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$b1VKAw1oszvvWuZ7CgRVub2bAXE(Lorg/telegram/messenger/TopicsController;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/TopicsController;->lambda$pinTopic$16(Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c-CxQcoZLjOvQpdJIyk8kCh-3nY(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TopicsController;->lambda$updateTopicsWithDeletedMessages$9(JLjava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$cycCOdin5-JXdi70oJ2euAor-G8(Lorg/telegram/messenger/TopicsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/TopicsController;->lambda$onTopicsDeletedServerSide$19(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dFlHMGk_58YQHFa5ZgmXALkzNos(Lorg/telegram/messenger/TopicsController;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController;->lambda$updateTopicsWithDeletedMessages$7(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$dGS64487WlFy6_g8EkwFfB6MaX4(Lorg/telegram/messenger/TopicsController;JLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TopicsController;->lambda$reloadTopics$12(JLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ejTKfHzVkU1ZbFvwnt9eYPEdWzM(Lorg/telegram/messenger/TopicsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/TopicsController;->lambda$databaseCleared$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$fOiuraqXUcCHwJdDNHr6bEEX_v4(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TopicsController;->lambda$loadTopic$23(JLjava/util/ArrayList;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hTxDDO2JtUz-zNjOJUDkXKC8dGg(Lorg/telegram/messenger/TopicsController;Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;Landroid/util/SparseArray;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/TopicsController;->lambda$reloadTopics$10(Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;Landroid/util/SparseArray;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jhbsH8SaD5GjwuTYfI2iWUUhzHM(Lorg/telegram/messenger/TopicsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/TopicsController;->lambda$applyPinnedOrder$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$wda3YuRcSaOjGECScQu8day9EH8(Lorg/telegram/messenger/TopicsController;JILjava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/TopicsController;->lambda$loadTopic$24(JILjava/lang/Runnable;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yDzTioUcvL1h-ZLVnyrVqMTEA3s(Lorg/telegram/messenger/TopicsController;Lorg/telegram/tgnet/TLObject;JLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TopicsController;->lambda$reloadTopics$11(Lorg/telegram/tgnet/TLObject;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yJdzDSd0wf_VqUKfjFqcAtCy9AQ(Lorg/telegram/messenger/TopicsController;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/TopicsController;->lambda$updateReadOutbox$22(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXx809s5tW3aLa4o0DRx22R9YiA(Lorg/telegram/messenger/TopicsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TopicsController;->lambda$getTopicRepliesCount$25(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 445
    sput-object v0, Lorg/telegram/messenger/TopicsController;->countsTmp:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 45
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    .line 46
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    .line 47
    new-instance p1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {p1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController;->topicsIsLoading:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 48
    new-instance p1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {p1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController;->endIsReached:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 49
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    .line 51
    new-instance p1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {p1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController;->currentOpenTopicsCounter:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 52
    new-instance p1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {p1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController;->openedTopicsBuChatId:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 729
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TopicsController;->offsets:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/TopicsController;JII)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TopicsController;->deleteTopic(JII)V

    return-void
.end method

.method private deleteTopic(JII)V
    .locals 3

    .line 513
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteTopicHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteTopicHistory;-><init>()V

    .line 514
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteTopicHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 515
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteTopicHistory;->top_msg_id:I

    if-nez p4, :cond_0

    .line 517
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    neg-long v1, p1

    invoke-virtual {p4, v1, v2, p3}, Lorg/telegram/messenger/MessagesStorage;->removeTopic(JI)V

    .line 519
    :cond_0
    iget p4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v1, Lorg/telegram/messenger/TopicsController$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController$1;-><init>(Lorg/telegram/messenger/TopicsController;JI)V

    invoke-virtual {p4, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$applyPinnedOrder$13()V
    .locals 5

    .line 609
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SELECT_DIALOG:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$databaseCleared$21()V
    .locals 4

    .line 885
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 886
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 887
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->endIsReached:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->clear()V

    .line 889
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 890
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "topics_load_offset_message_id_"

    .line 891
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 892
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string/jumbo v3, "topics_load_offset_date_"

    .line 894
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 895
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string/jumbo v3, "topics_load_offset_topic_id_"

    .line 897
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 898
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    const-string/jumbo v3, "topics_end_reached_"

    .line 900
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 901
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 904
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$getTopicRepliesCount$25(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;J)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1043
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1044
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    iput p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->totalMessagesCount:I

    .line 1045
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, p3, p4, p2, v0}, Lorg/telegram/messenger/MessagesStorage;->updateTopicData(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    .line 1046
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    neg-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p4, v0, p3

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getTopicRepliesCount$26(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1041
    new-instance p5, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda17;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/TopicsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;J)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadTopic$23(JLjava/util/ArrayList;ILjava/lang/Runnable;)V
    .locals 9

    .line 980
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loaded from cache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " topics_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    .line 984
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/TopicsController;->processTopics(JLjava/util/ArrayList;Landroid/util/SparseArray;ZII)V

    .line 985
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    .line 986
    invoke-virtual {p0, p1, p2, p4}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 987
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 989
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 990
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    .line 991
    iput p4, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    .line 992
    invoke-virtual {p0, p1, p2, p3, p5}, Lorg/telegram/messenger/TopicsController;->reloadTopics(JLjava/util/ArrayList;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$loadTopic$24(JILjava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 8

    .line 979
    new-instance v7, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p5

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;ILjava/lang/Runnable;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadTopics$0(JLjava/util/ArrayList;ZI)V
    .locals 10

    .line 79
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loaded from cache "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " topics_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsIsLoading:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    const/4 v6, 0x0

    const/4 v9, -0x1

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v7, p4

    move v8, p5

    .line 84
    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/TopicsController;->processTopics(JLjava/util/ArrayList;Landroid/util/SparseArray;ZII)V

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    return-void
.end method

.method private synthetic lambda$loadTopics$1(JZILjava/util/ArrayList;)V
    .locals 8

    .line 78
    new-instance v7, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda8;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p5

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;ZI)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadTopics$2(Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;Landroid/util/SparseArray;I)V
    .locals 22

    move-object/from16 v8, p0

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move-object/from16 v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->users:Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->chats:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-virtual {v0, v2, v3, v12, v12}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->users:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v13}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v13}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 119
    iget-object v0, v8, Lorg/telegram/messenger/TopicsController;->topicsIsLoading:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v0, v9, v10, v13}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 120
    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->topics:Ljava/util/ArrayList;

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->count:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v4, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/TopicsController;->processTopics(JLjava/util/ArrayList;Landroid/util/SparseArray;ZII)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    iget-object v15, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->messages:Ljava/util/ArrayList;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v14 .. v21}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZI)V

    .line 122
    invoke-direct {v8, v9, v10}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    neg-long v1, v9

    iget-object v3, v8, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->saveTopics(JLjava/util/List;ZZ)V

    .line 125
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move/from16 v0, p6

    if-ne v0, v12, :cond_1

    .line 126
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 127
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 128
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    if-nez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move v4, v1

    :goto_0
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController;->saveLoadOffset(JIII)V

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->count:I

    if-ge v0, v1, :cond_3

    .line 130
    :cond_2
    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/TopicsController;->clearLoadingOffset(J)V

    .line 131
    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/TopicsController;->loadTopics(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$loadTopics$3(J)V
    .locals 4

    .line 136
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsIsLoading:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 137
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadTopics$4(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    if-eqz p4, :cond_1

    .line 109
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 110
    move-object v5, p4

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;

    const/4 p5, 0x0

    .line 111
    :goto_0
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p5, v0, :cond_0

    .line 112
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 114
    :cond_0
    new-instance p5, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda15;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p1

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/TopicsController;Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;Landroid/util/SparseArray;I)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 135
    :cond_1
    new-instance p3, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/TopicsController;J)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onTopicsDeletedServerSide$19(Ljava/util/ArrayList;)V
    .locals 12

    .line 836
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 837
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 838
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    .line 839
    iget-wide v5, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    neg-long v5, v5

    .line 840
    iget-object v7, p0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/collection/LongSparseArray;

    if-eqz v7, :cond_0

    .line 842
    iget v8, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 844
    :cond_0
    iget-object v7, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    .line 846
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 847
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget v10, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    if-ne v9, v10, :cond_1

    .line 848
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 849
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    neg-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    iget v3, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v4

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 850
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 857
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 858
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method private synthetic lambda$pinTopic$15(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 5

    .line 667
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 668
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->LimitReached:I

    const-string v2, "LimitReached"

    .line 669
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->LimitReachedPinnedTopics:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    .line 670
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->topicsPinnedLimit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "LimitReachedPinnedTopics"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    .line 671
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 667
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$pinTopic$16(Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p6, :cond_2

    .line 661
    iget-object p5, p6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "PINNED_TOO_MUCH"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 665
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/messenger/TopicsController;->applyPinnedOrder(JLjava/util/ArrayList;)V

    .line 666
    new-instance p2, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/TopicsController;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 675
    :cond_1
    iget-object p1, p6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "PINNED_TOPIC_NOT_MODIFIED"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 676
    invoke-virtual {p0, p2, p3, p1}, Lorg/telegram/messenger/TopicsController;->reloadTopics(JZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$processTopics$5(J)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/messenger/TopicsController;->loadTopics(JZI)V

    return-void
.end method

.method private synthetic lambda$processUpdate$18(Ljava/util/List;)V
    .locals 11

    .line 773
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    .line 775
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 776
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;

    .line 777
    iget-boolean v6, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->reloadTopic:Z

    if-eqz v6, :cond_2

    if-nez v4, :cond_0

    .line 779
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 781
    :cond_0
    iget-wide v6, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->dialogId:J

    invoke-virtual {v4, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 783
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 784
    iget-wide v7, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->dialogId:J

    invoke-virtual {v4, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 786
    :cond_1
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    .line 787
    iget v5, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->topicId:I

    iput v5, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    .line 788
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 790
    :cond_2
    iget-wide v6, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->dialogId:J

    neg-long v6, v6

    iget v8, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->topicId:I

    invoke-virtual {p0, v6, v7, v8}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 792
    iget-boolean v7, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->onlyCounters:Z

    if-eqz v7, :cond_4

    .line 793
    iget v7, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->unreadCount:I

    if-ltz v7, :cond_3

    .line 794
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    .line 796
    :cond_3
    iget v7, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->unreadMentions:I

    if-ltz v7, :cond_5

    .line 797
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    goto :goto_1

    .line 800
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    iget v8, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    iget-wide v9, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->dialogId:J

    neg-long v9, v9

    invoke-direct {p0, v8, v9, v10}, Lorg/telegram/messenger/TopicsController;->messageHash(IJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 801
    iget-object v7, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 802
    iget-object v7, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->groupedMessages:Ljava/util/ArrayList;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    .line 803
    iget v7, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->topMessageId:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    .line 804
    iget v8, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->unreadCount:I

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    .line 805
    iget v8, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->unreadMentions:I

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    .line 806
    iget-object v8, p0, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    iget-wide v9, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->dialogId:J

    neg-long v9, v9

    invoke-direct {p0, v7, v9, v10}, Lorg/telegram/messenger/TopicsController;->messageHash(IJ)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 808
    :cond_5
    :goto_1
    iget v7, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->totalMessagesCount:I

    if-lez v7, :cond_6

    .line 809
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->totalMessagesCount:I

    .line 811
    :cond_6
    iget-wide v5, v5, Lorg/telegram/messenger/TopicsController$TopicUpdate;->dialogId:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 815
    :cond_8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 816
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v0, 0x1

    invoke-virtual {p0, v5, v6, v0}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_a

    .line 820
    :goto_4
    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_a

    .line 821
    invoke-virtual {v4, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 822
    invoke-virtual {v4, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    neg-long v5, v5

    .line 823
    invoke-virtual {p0, v5, v6, p1, v2}, Lorg/telegram/messenger/TopicsController;->reloadTopics(JLjava/util/ArrayList;Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method private synthetic lambda$reloadTopics$10(Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;Landroid/util/SparseArray;Ljava/lang/Runnable;)V
    .locals 18

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    .line 373
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-object/from16 v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 376
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->topics:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/TopicsController;->processTopics(JLjava/util/ArrayList;Landroid/util/SparseArray;ZII)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->messages:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v0

    invoke-virtual/range {v10 .. v17}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZI)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    neg-long v2, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->saveTopics(JLjava/util/List;ZZ)V

    if-eqz p6, :cond_0

    .line 380
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$reloadTopics$11(Lorg/telegram/tgnet/TLObject;JLjava/lang/Runnable;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 367
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 368
    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;

    const/4 v0, 0x0

    .line 369
    :goto_0
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 370
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    new-instance v8, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda16;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/TopicsController;Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/TLRPC$TL_messages_forumTopics;Landroid/util/SparseArray;Ljava/lang/Runnable;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$reloadTopics$12(JLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 365
    new-instance p5, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda14;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/TopicsController;Lorg/telegram/tgnet/TLObject;JLjava/lang/Runnable;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$reloadTopics$20(JZ)V
    .locals 3

    .line 869
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "topics_end_reached_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 870
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 871
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 872
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->endIsReached:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    .line 873
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->clearLoadingOffset(J)V

    .line 875
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 876
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 877
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/TopicsController;->loadTopics(JZI)V

    .line 879
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    return-void
.end method

.method private static synthetic lambda$sortTopics$6(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)I
    .locals 4

    .line 246
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 249
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 253
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinnedOrder:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinnedOrder:I

    sub-int/2addr p0, p1

    return p0

    .line 255
    :cond_4
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :cond_6
    sub-int/2addr p1, v0

    return p1
.end method

.method private static synthetic lambda$toggleShowTopic$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$updateMentionsUnread$17(JII)V
    .locals 0

    neg-long p1, p1

    .line 695
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 697
    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    const/4 p3, 0x1

    .line 698
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateReadOutbox$22(Ljava/util/HashMap;)V
    .locals 8

    .line 910
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 911
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    .line 912
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 913
    iget-wide v5, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    neg-long v5, v5

    iget v7, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    invoke-virtual {p0, v5, v6, v7}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 915
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    .line 916
    iget-wide v6, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_0

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lt v4, v5, :cond_0

    .line 918
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto :goto_0

    .line 924
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 925
    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateTopicsWithDeletedMessages$7(Ljava/util/ArrayList;J)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    .line 325
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 326
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 327
    iget-object v5, p0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/collection/LongSparseArray;

    if-eqz v5, :cond_3

    .line 330
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v6, -0x1

    if-eqz v5, :cond_0

    .line 331
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    if-eq v7, v6, :cond_0

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v7, :cond_0

    .line 332
    iget-object v2, p0, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    invoke-direct {p0, v6, p2, p3}, Lorg/telegram/messenger/TopicsController;->messageHash(IJ)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 333
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    .line 334
    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 335
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    .line 337
    iget-object v2, p0, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    invoke-direct {p0, v6, p2, p3}, Lorg/telegram/messenger/TopicsController;->messageHash(IJ)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_1

    .line 339
    :cond_0
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    if-eq v5, v6, :cond_1

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v5, :cond_3

    :cond_1
    if-nez v3, :cond_2

    .line 341
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 343
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 348
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    :cond_5
    if-eqz v3, :cond_6

    .line 351
    invoke-virtual {p0, p2, p3, v3, v0}, Lorg/telegram/messenger/TopicsController;->reloadTopics(JLjava/util/ArrayList;Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$updateTopicsWithDeletedMessages$8(JLjava/util/ArrayList;J)V
    .locals 15

    move-object v1, p0

    move-wide/from16 v2, p4

    const/4 v4, 0x0

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SELECT topic_id, top_message FROM topics WHERE did = %d AND top_message IN (%s)"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, ","

    move-object/from16 v11, p3

    invoke-static {v9, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v4

    .line 274
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_0

    .line 276
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 279
    :cond_0
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    .line 280
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    .line 281
    invoke-virtual {v0, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    .line 282
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    iget-wide v12, v9, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v8, v12, v13}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v8

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 283
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 284
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    .line 289
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 290
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 291
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "SELECT mid, data FROM messages_topics WHERE uid = %d AND topic_id = %d ORDER BY mid DESC LIMIT 1"

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v10

    iget v14, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static {v9, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 293
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 294
    invoke-virtual {v8, v11}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 296
    invoke-virtual {v9, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v12

    invoke-static {v9, v12, v10}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v12

    .line 297
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    iget-wide v13, v13, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v12, v9, v13, v14}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/AbstractSerializedData;J)V

    .line 298
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 299
    iget-object v9, v1, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    iget v13, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    invoke-direct {p0, v13, v2, v3}, Lorg/telegram/messenger/TopicsController;->messageHash(IJ)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 300
    iget v9, v12, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v9, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    .line 301
    iput-object v12, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 302
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    .line 303
    iget-object v12, v1, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    invoke-direct {p0, v9, v2, v3}, Lorg/telegram/messenger/TopicsController;->messageHash(IJ)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 306
    :cond_2
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 309
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 310
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "UPDATE topics SET top_message = %d WHERE did = %d AND topic_id = %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v7

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_3

    :catch_1
    move-exception v0

    .line 316
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    .line 319
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move-wide/from16 v6, p1

    invoke-virtual {v0, v6, v7, v5}, Lorg/telegram/messenger/MessagesStorage;->loadGroupedMessagesForTopics(JLjava/util/ArrayList;)V

    if-eqz v5, :cond_5

    .line 321
    new-instance v0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v5, v2, v3}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/TopicsController;Ljava/util/ArrayList;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$updateTopicsWithDeletedMessages$9(JLjava/util/ArrayList;J)V
    .locals 9

    .line 270
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v8, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda6;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;J)V

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private messageHash(IJ)J
    .locals 2

    int-to-long v0, p1

    const/16 p1, 0xc

    shl-long/2addr v0, p1

    add-long/2addr p2, v0

    return-wide p2
.end method

.method private sortTopics(J)V
    .locals 1

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    return-void
.end method


# virtual methods
.method public applyPinnedOrder(JLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 578
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/TopicsController;->applyPinnedOrder(JLjava/util/ArrayList;Z)V

    return-void
.end method

.method public applyPinnedOrder(JLjava/util/ArrayList;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 586
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 589
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 590
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v5, :cond_1

    goto :goto_2

    .line 594
    :cond_1
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 596
    :goto_1
    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-ne v8, v7, :cond_3

    if-eqz v7, :cond_4

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinnedOrder:I

    if-eq v8, v6, :cond_4

    .line 598
    :cond_3
    iput-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    .line 599
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinnedOrder:I

    .line 600
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, p1, p2, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->updateTopicData(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    const/4 v4, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v1, v4

    :cond_6
    if-eqz p4, :cond_7

    if-eqz v1, :cond_7

    .line 608
    new-instance p1, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/TopicsController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public clearLoadingOffset(J)V
    .locals 1

    .line 759
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->offsets:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    return-void
.end method

.method public databaseCleared()V
    .locals 1

    .line 884
    new-instance v0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/TopicsController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteTopics(JLjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 494
    iget-object v1, p0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/LongSparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 496
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 497
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    .line 498
    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 499
    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz v6, :cond_0

    .line 501
    iget-object v4, p0, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    iget v5, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    invoke-direct {p0, v5, p1, p2}, Lorg/telegram/messenger/TopicsController;->messageHash(IJ)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 502
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 505
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    :cond_2
    const/4 v0, 0x0

    .line 507
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 508
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/telegram/messenger/TopicsController;->deleteTopic(JII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public endIsReached(J)Z
    .locals 2

    .line 768
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->endIsReached:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;
    .locals 1

    .line 400
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/LongSparseArray;

    if-eqz p1, :cond_0

    int-to-long p2, p3

    .line 402
    invoke-virtual {p1, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentPinnedOrder(J)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 561
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object p1

    .line 562
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 564
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 565
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v1, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v2, :cond_1

    .line 570
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getForumUnreadCount(J)[I
    .locals 9

    .line 448
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 449
    sget-object v1, Lorg/telegram/messenger/TopicsController;->countsTmp:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 451
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 452
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 453
    sget-object v4, Lorg/telegram/messenger/TopicsController;->countsTmp:[I

    aget v5, v4, v2

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    const/4 v7, 0x1

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    add-int/2addr v5, v6

    aput v5, v4, v2

    .line 454
    aget v5, v4, v7

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v5, v6

    aput v5, v4, v7

    const/4 v5, 0x2

    .line 455
    aget v6, v4, v5

    iget v8, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    if-lez v8, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 456
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v6, p1

    iget v8, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x3

    .line 457
    aget v6, v4, v5

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    add-int/2addr v6, v3

    aput v6, v4, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_4
    sget-object p1, Lorg/telegram/messenger/TopicsController;->countsTmp:[I

    return-object p1
.end method

.method public getLoadOffset(J)Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;
    .locals 1

    .line 732
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->offsets:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;

    if-eqz p1, :cond_0

    return-object p1

    .line 736
    :cond_0
    new-instance p1, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;-><init>(Lorg/telegram/messenger/TopicsController;Lorg/telegram/messenger/TopicsController$1;)V

    return-object p1
.end method

.method public getTopicIconName(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;Landroid/text/TextPaint;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/TopicsController;->getTopicIconName(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;Landroid/text/TextPaint;[Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTopicIconName(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;Landroid/text/TextPaint;[Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;
    .locals 2

    .line 429
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 432
    :cond_0
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_top_id:I

    if-nez v1, :cond_1

    .line 434
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_msg_id:I

    :cond_1
    if-eqz v1, :cond_2

    .line 437
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 439
    invoke-static {p1, p3, p4}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getTopicName(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;
    .locals 1

    .line 408
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 411
    :cond_0
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_top_id:I

    if-nez v0, :cond_1

    .line 413
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_msg_id:I

    :cond_1
    if-eqz v0, :cond_2

    .line 416
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 418
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public getTopicRepliesCount(JI)V
    .locals 3

    neg-long v0, p1

    .line 1034
    invoke-virtual {p0, v0, v1, p3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1036
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->totalMessagesCount:I

    if-nez v1, :cond_0

    .line 1037
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;-><init>()V

    .line 1038
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1039
    iput p3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->msg_id:I

    const/4 p3, 0x1

    .line 1040
    iput p3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->limit:I

    .line 1041
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v2, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/TopicsController;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;J)V

    invoke-virtual {p3, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_0
    return-void
.end method

.method public getTopics(J)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_forumTopic;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public isLoading(J)Z
    .locals 3

    .line 831
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsIsLoading:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public loadTopic(JILjava/lang/Runnable;)V
    .locals 10

    .line 978
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    neg-long v1, p1

    new-instance v9, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;

    move-object v3, v9

    move-object v4, p0

    move-wide v5, p1

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/TopicsController;JILjava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, v9}, Lorg/telegram/messenger/MessagesStorage;->loadTopics(JLj$/util/function/Consumer;)V

    return-void
.end method

.method public loadTopics(J)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/TopicsController;->loadTopics(JZI)V

    return-void
.end method

.method public loadTopics(JZI)V
    .locals 10

    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsIsLoading:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load topics "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " fromCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " loadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsIsLoading:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    if-eqz p3, :cond_2

    .line 77
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    neg-long v1, p1

    new-instance v9, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda21;

    move-object v3, v9

    move-object v4, p0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/TopicsController;JZI)V

    invoke-virtual {v0, v1, v2, v9}, Lorg/telegram/messenger/MessagesStorage;->loadTopics(JLj$/util/function/Consumer;)V

    return-void

    .line 91
    :cond_2
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopics;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopics;-><init>()V

    .line 92
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopics;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-nez p4, :cond_3

    const/16 v0, 0x14

    .line 94
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopics;->limit:I

    goto :goto_0

    :cond_3
    if-ne p4, v1, :cond_4

    const/16 v0, 0x64

    .line 96
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopics;->limit:I

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->getLoadOffset(J)Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;

    move-result-object v0

    .line 98
    iget v1, v0, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;->lastMessageDate:I

    iput v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopics;->offset_date:I

    .line 99
    iget v1, v0, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;->lastMessageId:I

    iput v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopics;->offset_id:I

    .line 100
    iget v1, v0, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;->lastTopicId:I

    iput v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopics;->offset_topic:I

    .line 102
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_4

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset_date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;->lastMessageDate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " offset_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;->lastMessageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " offset_topic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;->lastTopicId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 107
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2, p4}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/TopicsController;JI)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public markAllReactionsAsRead(JI)V
    .locals 1

    .line 722
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 723
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 724
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    .line 725
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    :cond_0
    return-void
.end method

.method public onTopicCreated(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 10

    .line 466
    iget-object v1, p0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    neg-long v8, p1

    invoke-virtual {v1, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/LongSparseArray;

    .line 467
    iget v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {p0, v8, v9, v2}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 471
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 472
    iget-object v2, p0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v8, v9, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 474
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 476
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    iget-object v5, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v8, v9, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 479
    :cond_2
    iget v5, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 480
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_3

    .line 482
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-wide v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->saveTopics(JLjava/util/List;ZZ)V

    :cond_3
    const/4 v0, 0x1

    .line 484
    invoke-virtual {p0, v8, v9, v0}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    return-void
.end method

.method public onTopicEdited(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 2

    .line 488
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/MessagesStorage;->updateTopicData(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    neg-long p1, p1

    .line 489
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    return-void
.end method

.method public onTopicFragmentPause(J)V
    .locals 2

    .line 1025
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->openedTopicsBuChatId:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1030
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->openedTopicsBuChatId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    return-void
.end method

.method public onTopicFragmentResume(J)V
    .locals 2

    .line 1019
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->openedTopicsBuChatId:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    .line 1020
    iget-object v1, p0, Lorg/telegram/messenger/TopicsController;->openedTopicsBuChatId:Lorg/telegram/messenger/support/LongSparseIntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, p2, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 1021
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    return-void
.end method

.method public onTopicsDeletedServerSide(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessagesStorage$TopicKey;",
            ">;)V"
        }
    .end annotation

    .line 835
    new-instance v0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/TopicsController;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pinTopic(JIZLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 8

    .line 646
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedForumTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedForumTopic;-><init>()V

    .line 647
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedForumTopic;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 648
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedForumTopic;->topic_id:I

    .line 649
    iput-boolean p4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedForumTopic;->pinned:Z

    .line 651
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->getCurrentPinnedOrder(J)Ljava/util/ArrayList;

    move-result-object v7

    .line 652
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 653
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    .line 655
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p4, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 657
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/messenger/TopicsController;->applyPinnedOrder(JLjava/util/ArrayList;)V

    .line 659
    iget p3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda25;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p5

    move-wide v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/TopicsController;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/util/ArrayList;)V

    invoke-virtual {p3, v0, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public preloadTopics(J)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/TopicsController;->loadTopics(JZI)V

    return-void
.end method

.method public processEditedMessage(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 4

    .line 970
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    neg-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/TopicsController;->messageHash(IJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_0

    .line 972
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 973
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    neg-long v0, v0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    :cond_0
    return-void
.end method

.method public processEditedMessages(Landroidx/collection/LongSparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;)V"
        }
    .end annotation

    .line 953
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 954
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 955
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 956
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 957
    iget-object v5, p0, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    neg-long v7, v7

    invoke-direct {p0, v6, v7, v8}, Lorg/telegram/messenger/TopicsController;->messageHash(IJ)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_0

    .line 959
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 960
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 965
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public processTopics(JLjava/util/ArrayList;Landroid/util/SparseArray;ZII)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_forumTopic;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZII)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 145
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v8, :cond_1

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processTopics=new_topics_size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_0
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " fromCache="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " load_type="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " totalCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 148
    :cond_1
    iget-object v8, v0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 150
    iget-object v10, v0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/collection/LongSparseArray;

    if-nez v8, :cond_2

    .line 153
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v11, v0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v1, v2, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    if-nez v10, :cond_3

    .line 157
    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 158
    iget-object v11, v0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v1, v2, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    if-eqz v3, :cond_a

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 163
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v13, v9, :cond_b

    .line 164
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 165
    instance-of v12, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopicDeleted;

    if-eqz v12, :cond_4

    goto :goto_2

    .line 168
    :cond_4
    iget v12, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v11, v12

    invoke-virtual {v10, v11, v12}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v11

    if-nez v11, :cond_9

    if-eqz v4, :cond_5

    .line 170
    iget v11, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 171
    iget v11, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 173
    :cond_5
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v11, :cond_7

    iget-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->isShort:Z

    if-nez v11, :cond_7

    if-nez v14, :cond_6

    .line 175
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 177
    :cond_6
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_7
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v11, :cond_8

    .line 180
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iput-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    const-string v12, ""

    .line 181
    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 182
    iget v12, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iput v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 183
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    neg-long v3, v1

    invoke-virtual {v12, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v3

    iput-object v3, v11, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 184
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 185
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    .line 187
    :cond_8
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget v3, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v3, v3

    invoke-virtual {v10, v3, v4, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 189
    iget-object v3, v0, Lorg/telegram/messenger/TopicsController;->topicsByTopMsgId:Landroidx/collection/LongSparseArray;

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    invoke-direct {v0, v4, v1, v2}, Lorg/telegram/messenger/TopicsController;->messageHash(IJ)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v15, 0x1

    :cond_9
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    goto/16 :goto_1

    :cond_a
    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_b
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 196
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_e

    .line 197
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v9, :cond_d

    .line 198
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v10, :cond_d

    add-int/lit8 v10, v4, 0x1

    .line 200
    iget v11, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinnedOrder:I

    if-eq v11, v4, :cond_c

    .line 201
    iput v4, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinnedOrder:I

    move v4, v10

    const/4 v15, 0x1

    goto :goto_4

    :cond_c
    move v4, v10

    :cond_d
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    const/4 v3, 0x2

    if-eqz v14, :cond_f

    if-eq v6, v3, :cond_f

    const/4 v4, 0x0

    .line 208
    invoke-virtual {v0, v1, v2, v14, v4}, Lorg/telegram/messenger/TopicsController;->reloadTopics(JLjava/util/ArrayList;Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_f
    if-nez v6, :cond_11

    if-eqz v5, :cond_10

    goto :goto_5

    :cond_10
    const/4 v4, 0x1

    goto :goto_6

    :cond_11
    :goto_5
    const/4 v4, 0x1

    if-ne v6, v4, :cond_12

    .line 209
    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v7, :cond_12

    if-ltz v7, :cond_12

    .line 210
    iget-object v7, v0, Lorg/telegram/messenger/TopicsController;->endIsReached:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v7, v1, v2, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "topics_end_reached_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v15, 0x1

    :cond_12
    :goto_7
    if-eqz v15, :cond_13

    .line 216
    invoke-direct/range {p0 .. p2}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    .line 219
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v9, 0x1

    aput-object v8, v3, v9

    invoke-virtual {v4, v7, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz v6, :cond_14

    if-nez v6, :cond_15

    if-nez v5, :cond_15

    :cond_14
    if-eqz v5, :cond_15

    .line 221
    iget-object v3, v0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 222
    new-instance v3, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/TopicsController;J)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method

.method public processUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/TopicsController$TopicUpdate;",
            ">;)V"
        }
    .end annotation

    .line 772
    new-instance v0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/TopicsController;Ljava/util/List;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadTopics(J)V
    .locals 1

    const/4 v0, 0x1

    .line 864
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/TopicsController;->reloadTopics(JZ)V

    return-void
.end method

.method public reloadTopics(JLjava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_forumTopic;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 360
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopicsByID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopicsByID;-><init>()V

    const/4 v1, 0x0

    .line 361
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 362
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopicsByID;->topics:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p3

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getForumTopicsByID;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 365
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v1, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1, p2, p4}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/TopicsController;JLjava/lang/Runnable;)V

    invoke-virtual {p3, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public reloadTopics(JZ)V
    .locals 1

    .line 868
    new-instance v0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/TopicsController;JZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reorderPinnedTopics(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 683
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_reorderPinnedForumTopics;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_reorderPinnedForumTopics;-><init>()V

    .line 684
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_reorderPinnedForumTopics;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz p3, :cond_0

    .line 686
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_reorderPinnedForumTopics;->order:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v1, 0x1

    .line 688
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_reorderPinnedForumTopics;->force:Z

    const/4 v1, 0x0

    .line 689
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/telegram/messenger/TopicsController;->applyPinnedOrder(JLjava/util/ArrayList;Z)V

    .line 690
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public saveLoadOffset(JIII)V
    .locals 2

    .line 746
    new-instance v0, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;-><init>(Lorg/telegram/messenger/TopicsController;Lorg/telegram/messenger/TopicsController$1;)V

    .line 747
    iput p3, v0, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;->lastMessageId:I

    .line 748
    iput p4, v0, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;->lastMessageDate:I

    .line 749
    iput p5, v0, Lorg/telegram/messenger/TopicsController$TopicsLoadOffset;->lastTopicId:I

    .line 750
    iget-object p3, p0, Lorg/telegram/messenger/TopicsController;->offsets:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public sortTopics(JZ)V
    .locals 3

    .line 242
    iget-object v0, p0, Lorg/telegram/messenger/TopicsController;->topicsByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 244
    iget-object v1, p0, Lorg/telegram/messenger/TopicsController;->openedTopicsBuChatId:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v1

    if-lez v1, :cond_0

    .line 245
    sget-object v1, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda19;->INSTANCE:Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda19;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 259
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p2, v1, p1

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public toggleCloseTopic(JIZ)V
    .locals 4

    .line 535
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;-><init>()V

    .line 536
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 537
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;->topic_id:I

    .line 538
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;->flags:I

    .line 539
    iput-boolean p4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;->closed:Z

    .line 541
    iget-object v1, p0, Lorg/telegram/messenger/TopicsController;->topicsMapByChatId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/LongSparseArray;

    if-eqz v1, :cond_0

    int-to-long v2, p3

    .line 543
    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p3, :cond_0

    .line 545
    iput-boolean p4, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    .line 546
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    neg-long p1, p1

    const/16 v1, 0x8

    invoke-virtual {p4, p1, p2, p3, v1}, Lorg/telegram/messenger/MessagesStorage;->updateTopicData(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    .line 550
    :cond_0
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/TopicsController$2;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/TopicsController$2;-><init>(Lorg/telegram/messenger/TopicsController;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public toggleShowTopic(JIZ)V
    .locals 2

    .line 615
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;-><init>()V

    .line 616
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 617
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;->topic_id:I

    const/16 v1, 0x8

    .line 618
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;->flags:I

    const/4 v1, 0x1

    xor-int/2addr p4, v1

    .line 620
    iput-boolean p4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;->hidden:Z

    .line 622
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 625
    iget-boolean p4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editForumTopic;->hidden:Z

    iput-boolean p4, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz p4, :cond_0

    .line 627
    iput-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    :cond_0
    neg-long p1, p1

    const/16 p4, 0x2c

    .line 634
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/TopicsController;->updateTopicInUi(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    .line 635
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/telegram/messenger/MessagesStorage;->updateTopicData(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    .line 638
    :cond_1
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda26;->INSTANCE:Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda26;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public updateMaxReadId(JIIII)V
    .locals 0

    .line 388
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 390
    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    .line 391
    iput p5, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-ltz p6, :cond_0

    .line 393
    iput p6, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    .line 395
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    :cond_1
    return-void
.end method

.method public updateMentionsUnread(JII)V
    .locals 7

    .line 694
    new-instance v6, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda4;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/TopicsController;JII)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateReactionsUnread(JIIZ)I
    .locals 0

    neg-long p1, p1

    .line 704
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_0

    .line 708
    iget p5, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    add-int/2addr p5, p4

    iput p5, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    if-gez p5, :cond_1

    const/4 p4, 0x0

    .line 710
    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    goto :goto_0

    .line 713
    :cond_0
    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    .line 715
    :cond_1
    :goto_0
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    const/4 p4, 0x1

    .line 716
    invoke-virtual {p0, p1, p2, p4}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    goto :goto_1

    :cond_2
    const/4 p3, -0x1

    :goto_1
    return p3
.end method

.method public updateReadOutbox(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/MessagesStorage$TopicKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 909
    new-instance v0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/TopicsController;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTopicInUi(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V
    .locals 3

    neg-long p1, p1

    .line 931
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    if-eqz v0, :cond_5

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_1

    .line 937
    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    :cond_1
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_2

    .line 940
    iget-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    :cond_2
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_3

    .line 943
    iget-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    :cond_3
    and-int/lit8 p4, p4, 0x20

    if-eqz p4, :cond_4

    .line 946
    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    .line 948
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/TopicsController;->sortTopics(J)V

    :cond_5
    return-void
.end method

.method public updateTopicsWithDeletedMessages(JLjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    return-void

    :cond_0
    neg-long v8, p1

    .line 269
    new-instance v0, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda7;

    move-object v3, v0

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/TopicsController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/TopicsController;JLjava/util/ArrayList;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
