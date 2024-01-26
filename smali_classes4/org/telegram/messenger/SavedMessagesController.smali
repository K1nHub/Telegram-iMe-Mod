.class public Lorg/telegram/messenger/SavedMessagesController;
.super Ljava/lang/Object;
.source "SavedMessagesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    }
.end annotation


# instance fields
.field public allDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final checkMessagesCallbacks:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final currentAccount:I

.field private dialogsCount:I

.field private dialogsCountHidden:I

.field public dialogsEndReached:Z

.field private dialogsLoaded:Z

.field private dialogsLoading:Z

.field private loadedCache:Z

.field private loadedDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private loadingCache:Z

.field private final saveCacheRunnable:Ljava/lang/Runnable;

.field private saving:Z

.field public unsupported:Z


# direct methods
.method public static synthetic $r8$lambda$074Q0o8thjFt6tFFK25regal3jg(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->lambda$saveCache$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$313wzHfmZttJQKyatup_j8Udhm8(Lorg/telegram/messenger/SavedMessagesController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->lambda$hasSavedMessages$16(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4qEkSDxXLMsxZTSss4uiQm_UFHI(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updatePinnedOrder$3(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7efb7VY-o_VqVy-PVleXPa3V47k(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->lambda$deleteCache$14(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BRw27R1AO0h-kWtP_sYUpl9_8rQ(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updateAllDialogs$0(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CRWcjeh2UcQtTwHXqwZL5X9WxcM(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->lambda$saveCache$12(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HMgQDu2fF-BCqWQC4upWY651xzU(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadDialogs$2(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QZ4IIM2tnIQ2q-eilu-u7EiBOEM(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->lambda$hasSavedMessages$15(Lorg/telegram/tgnet/TLObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$aDJSOY10bLf_XL2iCR3fkrYzj_8(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadCache$8(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bB6ZWeTtzR1_YJ7MqMk3wsckyLM(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadCache$7(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bw1jXBdDXPWt0B1QT2es300OCKY(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updatePinnedOrder$4(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$clm7yJzuy9HhdF5gSl5N015z4yE(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updateDialogsLastMessage$10(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$o5COWsxnhOgmX4u5Qsm-IoW6lRs(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadDialogs$1(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oqNNcLYmgr9HpAKe0mDoSrJOCiI(Lorg/telegram/messenger/SavedMessagesController;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updateDialogsCount$5(Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p0D12Y1JVpKeQqFFK7ecfrBuLuw(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updateDialogsLastMessage$9(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pg140iAhT6k-p0ZvoQqIoeX1038(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashSet;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updateDialogsCount$6(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashSet;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$w00qOKA7LlTbMRkDgHEC0jT1AmY(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->lambda$deleteCache$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$w3Ski4fR9okTir1ym3GM9UM4Qt8(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->saveCache()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    .line 950
    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saveCacheRunnable:Ljava/lang/Runnable;

    .line 1083
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    .line 37
    iput p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    .line 38
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo v0, "savedMessagesUnsupported"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    return-void
.end method

.method private deleteCache()V
    .locals 3

    .line 999
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1002
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    .line 1003
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 670
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 671
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 672
    iget-boolean v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v3, :cond_0

    iget-wide v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private invalidate()V
    .locals 10

    .line 497
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 502
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 503
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    const/4 v3, 0x0

    move v4, v0

    .line 505
    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 506
    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 507
    iget-wide v6, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v8, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move-object v3, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 512
    iget-boolean v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-nez v3, :cond_3

    .line 513
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 518
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 519
    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 520
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    .line 521
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    .line 522
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs()V

    return-void
.end method

.method private synthetic lambda$deleteCache$13()V
    .locals 1

    const/4 v0, 0x0

    .line 1012
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    .line 1013
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    return-void
.end method

.method private synthetic lambda$deleteCache$14(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 1

    .line 1005
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    :try_start_0
    const-string v0, "DELETE FROM saved_dialogs"

    .line 1007
    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1009
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1011
    :goto_0
    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$hasSavedMessages$15(Lorg/telegram/tgnet/TLObject;J)V
    .locals 6

    .line 1110
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_3

    .line 1111
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1112
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1113
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v1, :cond_0

    .line 1114
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    .line 1117
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1118
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1119
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-lez v0, :cond_2

    .line 1123
    invoke-virtual {p0, p2, p3, v0}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JI)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1124
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1125
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1, p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromMessage(ILorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object p1

    .line 1126
    iput v0, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 1127
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    .line 1133
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1134
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz p1, :cond_3

    .line 1136
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v3, p2, :cond_3

    .line 1137
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private synthetic lambda$hasSavedMessages$16(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1109
    new-instance p4, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda13;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;J)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadCache$7(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 847
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    const/4 v0, 0x1

    .line 848
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    .line 850
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 851
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 852
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->processDocuments(Ljava/util/ArrayList;)V

    .line 854
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 855
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 856
    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    if-eqz p5, :cond_0

    .line 859
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadCache$8(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V
    .locals 31

    move-object/from16 v0, p1

    .line 785
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    .line 788
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 789
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 790
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 791
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 793
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 794
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 795
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    const-string v10, "SELECT did, date, last_mid, pinned, flags, folder_id, last_mid_group, count FROM saved_dialogs ORDER BY pinned ASC, date DESC"

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    .line 798
    invoke-virtual {v1, v10, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 799
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 800
    new-instance v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    invoke-direct {v12}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;-><init>()V

    .line 801
    invoke-virtual {v10, v11}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v13

    iput-wide v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const/4 v13, 0x1

    .line 802
    invoke-virtual {v10, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    invoke-static {v12, v14}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$102(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)I

    const/4 v14, 0x2

    .line 803
    invoke-virtual {v10, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    iput v15, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    const/4 v15, 0x3

    .line 804
    invoke-virtual {v10, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    invoke-static {v12, v14}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$002(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)I

    .line 805
    invoke-static {v12}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$000(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result v14

    const/16 v13, 0x3e7

    if-eq v14, v13, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v11

    :goto_1
    iput-boolean v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    const/4 v13, 0x7

    .line 806
    invoke-virtual {v10, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 807
    iget-wide v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-gez v18, :cond_1

    neg-long v13, v13

    .line 808
    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v18, v9

    move-object v9, v10

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v18, v9

    move-object v9, v10

    goto/16 :goto_8

    .line 810
    :cond_1
    :try_start_3
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const-string v13, "SELECT data FROM messages_topics WHERE uid = ? AND mid = ? AND topic_id = ?"

    new-array v14, v15, [Ljava/lang/Object;

    .line 813
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v11

    iget v15, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v14, v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v18, v9

    move-object v15, v10

    :try_start_4
    iget-wide v9, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v14, v10

    invoke-virtual {v1, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 814
    :try_start_5
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 815
    invoke-virtual {v9, v11}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v10

    const/4 v13, 0x1

    .line 816
    invoke-virtual {v10, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v14

    invoke-static {v10, v14, v13}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v10

    .line 817
    invoke-static {v10, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 818
    new-instance v13, Lorg/telegram/messenger/MessageObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v14, p0

    :try_start_6
    iget v11, v14, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v16, v13

    move/from16 v17, v11

    move-object/from16 v18, v10

    invoke-direct/range {v16 .. v30}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZJZZZ)V

    iput-object v13, v12, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    goto :goto_3

    :cond_2
    move-object/from16 v14, p0

    .line 820
    :goto_3
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 822
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v10, v15

    const/4 v11, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    :goto_4
    move-object/from16 v18, v9

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v14, p0

    :goto_5
    move-object/from16 v18, v9

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7

    :cond_3
    move-object/from16 v14, p0

    move-object/from16 v18, v9

    move-object v15, v10

    .line 825
    :try_start_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const-string v9, ","

    if-nez v1, :cond_4

    .line 826
    :try_start_8
    invoke-static {v9, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 828
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 829
    invoke-static {v9, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 831
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 832
    invoke-static {v9, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/telegram/messenger/MessagesStorage;->getAnimatedEmoji(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 838
    :cond_6
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v18, :cond_8

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v18, v9

    move-object v15, v10

    :goto_6
    move-object v9, v15

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v18, v9

    move-object v15, v10

    :goto_7
    move-object v9, v15

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v18, v9

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v18, v9

    .line 835
    :goto_8
    :try_start_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-eqz v9, :cond_7

    .line 838
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_7
    if-eqz v18, :cond_8

    .line 842
    :goto_9
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 846
    :cond_8
    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda7;

    move-object v2, v0

    move-object/from16 v3, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_7
    move-exception v0

    :goto_a
    if-eqz v9, :cond_9

    .line 838
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_9
    if-eqz v18, :cond_a

    .line 842
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 845
    :cond_a
    throw v0
.end method

.method private synthetic lambda$loadDialogs$1(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 238
    iget-boolean v4, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    .line 239
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_6

    .line 240
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 241
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;

    .line 242
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 243
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 244
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->users:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v5, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 245
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->messages:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    const-wide/16 v16, 0x0

    invoke-virtual/range {v8 .. v17}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZIJ)V

    move v2, v6

    .line 246
    :goto_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 247
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_savedDialog;

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->messages:Ljava/util/ArrayList;

    invoke-static {v3, v5, v8}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromTL(ILorg/telegram/tgnet/TLRPC$TL_savedDialog;Ljava/util/ArrayList;)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v3

    move v5, v6

    .line 248
    :goto_1
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 249
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 250
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    iput v8, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 251
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v8, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    iput-boolean v8, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    move v5, v6

    .line 256
    :goto_3
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 257
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    move v5, v7

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_4
    if-nez v5, :cond_4

    .line 263
    iget-object v5, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 268
    :cond_5
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    .line 269
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 270
    invoke-direct {v0, v7}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    .line 271
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/SavedMessagesController;->saveCacheSchedule()V

    .line 272
    iput-boolean v6, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    goto/16 :goto_e

    .line 273
    :cond_6
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;

    if-eqz v5, :cond_f

    .line 274
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 275
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;

    .line 276
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 277
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 278
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->users:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v5, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 279
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->messages:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    const-wide/16 v16, 0x0

    invoke-virtual/range {v8 .. v17}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZIJ)V

    move v2, v6

    .line 280
    :goto_5
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 281
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_savedDialog;

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->messages:Ljava/util/ArrayList;

    invoke-static {v3, v5, v8}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromTL(ILorg/telegram/tgnet/TLRPC$TL_savedDialog;Ljava/util/ArrayList;)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v3

    move v5, v6

    .line 282
    :goto_6
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_8

    .line 283
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 284
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    iput v8, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 285
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v8, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    iput-boolean v8, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    goto :goto_7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    move v5, v6

    .line 290
    :goto_8
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_a

    .line 291
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v8, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    move v5, v7

    goto :goto_9

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_a
    move v5, v6

    :goto_9
    if-nez v5, :cond_b

    .line 297
    iget-object v5, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 299
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 302
    :cond_c
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->count:I

    iput v2, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 303
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SavedMessagesController;->getPinnedCount()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    if-ge v2, v3, :cond_e

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_a

    :cond_d
    move v1, v6

    goto :goto_b

    :cond_e
    :goto_a
    move v1, v7

    :goto_b
    iput-boolean v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    .line 304
    invoke-direct {v0, v7}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    .line 305
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/SavedMessagesController;->saveCacheSchedule()V

    .line 306
    iput-boolean v6, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    goto :goto_e

    .line 307
    :cond_f
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsNotModified;

    if-eqz v5, :cond_13

    .line 308
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 309
    iget-object v3, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 310
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsNotModified;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsNotModified;->count:I

    iput v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 311
    iput v6, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    move v1, v6

    .line 312
    :goto_c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_11

    .line 313
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 314
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 317
    :cond_11
    iget-object v1, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    if-lt v1, v2, :cond_12

    goto :goto_d

    :cond_12
    move v7, v6

    :goto_d
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    .line 318
    iput-boolean v6, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    goto :goto_e

    :cond_13
    if-eqz v3, :cond_14

    .line 320
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 321
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "SAVED_DIALOGS_UNSUPPORTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 322
    iput-boolean v7, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    .line 325
    :cond_14
    :goto_e
    iget-boolean v1, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    if-eq v1, v4, :cond_15

    .line 326
    iget v1, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-boolean v2, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    const-string/jumbo v3, "savedMessagesUnsupported"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    :cond_15
    iput-boolean v6, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    return-void
.end method

.method private synthetic lambda$loadDialogs$2(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 237
    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$saveCache$11()V
    .locals 1

    const/4 v0, 0x0

    .line 994
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    return-void
.end method

.method private synthetic lambda$saveCache$12(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 6

    .line 965
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM saved_dialogs"

    .line 968
    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v1, "REPLACE INTO saved_dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?)"

    .line 969
    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 p1, 0x0

    move v1, p1

    .line 970
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 971
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 972
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 973
    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v3, 0x2

    .line 974
    invoke-virtual {v2}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x3

    .line 975
    iget v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    invoke-virtual {v0, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x4

    .line 976
    iget-boolean v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/16 v4, 0x3e7

    :goto_1
    invoke-virtual {v0, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x5

    .line 977
    invoke-virtual {v0, v3, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x6

    .line 978
    invoke-virtual {v0, v3, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x7

    .line 979
    invoke-virtual {v0, v3, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v3, 0x8

    .line 980
    iget v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 981
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 983
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 986
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 989
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 993
    :cond_2
    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_3
    if-eqz v0, :cond_3

    .line 989
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 992
    :cond_3
    throw p1
.end method

.method private static synthetic lambda$updateAllDialogs$0(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    .line 97
    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$updateDialogsCount$5(Landroidx/collection/LongSparseArray;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 759
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 760
    invoke-virtual {p1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 761
    invoke-virtual {p1, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 763
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/SavedMessagesController;->findSavedDialog(J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 764
    iget v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-eq v3, v4, :cond_0

    .line 765
    iput v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 770
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateDialogsCount$6(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashSet;J)V
    .locals 9

    .line 738
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    .line 739
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    .line 742
    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "SELECT COUNT(*) FROM messages_topics WHERE uid = ? AND topic_id = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 743
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {p1, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 744
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 745
    invoke-virtual {v1, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 747
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 750
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 753
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 757
    :cond_2
    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/SavedMessagesController;Landroidx/collection/LongSparseArray;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    if-eqz v1, :cond_3

    .line 753
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 756
    :cond_3
    throw p1
.end method

.method private synthetic lambda$updateDialogsLastMessage$10(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V
    .locals 19

    move-object/from16 v0, p1

    .line 869
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    .line 872
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 873
    new-instance v8, Landroidx/collection/LongSparseArray;

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 875
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 876
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 877
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 879
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 880
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 881
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 884
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    move-object/from16 v13, p2

    .line 885
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    const-string v15, "SELECT mid, data FROM messages_topics WHERE uid = ? AND topic_id = ? ORDER BY mid DESC LIMIT 1"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 887
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v10, v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    :try_start_1
    iget-wide v5, v14, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v10, v6

    invoke-virtual {v1, v15, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 888
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 889
    invoke-virtual {v11, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    .line 890
    invoke-virtual {v11, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v10

    .line 891
    invoke-virtual {v10, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v15

    invoke-static {v10, v15, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v6

    .line 892
    invoke-static {v6, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 893
    iget-wide v14, v14, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-virtual {v8, v14, v15, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 895
    iget-wide v14, v14, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    :goto_1
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto :goto_0

    :cond_1
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 900
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, ","

    if-nez v1, :cond_2

    .line 901
    :try_start_2
    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v6, v17

    :try_start_3
    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    move-object/from16 v6, v17

    .line 903
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 904
    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v10, v18

    :try_start_4
    invoke-virtual {v0, v1, v10}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_3
    move-object/from16 v10, v18

    .line 906
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 907
    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lorg/telegram/messenger/MessagesStorage;->getAnimatedEmoji(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    if-eqz v11, :cond_5

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v6, v17

    :goto_4
    move-object/from16 v10, v18

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v10, v6

    move-object v6, v5

    .line 910
    :goto_5
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_5

    .line 913
    :goto_6
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 917
    :cond_5
    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda6;

    move-object v2, v0

    move-object/from16 v3, p0

    move-object v4, v6

    move-object v5, v10

    move-object v6, v9

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_7
    if-eqz v11, :cond_6

    .line 913
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 916
    :cond_6
    throw v0
.end method

.method private synthetic lambda$updateDialogsLastMessage$9(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 918
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 919
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v4, p2

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 920
    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->processDocuments(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    move v3, v2

    .line 922
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object/from16 v4, p4

    .line 923
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 925
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 926
    invoke-virtual {v1, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 927
    invoke-virtual {v1, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    .line 928
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v8, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v7, v6

    invoke-direct/range {v7 .. v21}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZJZZZ)V

    move v7, v2

    .line 929
    :goto_2
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 930
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 931
    iget-wide v9, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    .line 932
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    iput v9, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    .line 933
    iput-object v6, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v2

    .line 936
    :goto_3
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 937
    iget-object v8, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 938
    iget-wide v9, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_3

    .line 939
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    iput v9, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    .line 940
    iput-object v6, v8, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 945
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method private static synthetic lambda$updatePinnedOrder$3(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    .line 723
    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private static synthetic lambda$updatePinnedOrder$4(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    .line 726
    invoke-static {p0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$000(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$000(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private loadCache(Ljava/lang/Runnable;)V
    .locals 8

    .line 778
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 781
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    .line 782
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    .line 783
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    .line 784
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda9;

    move-object v1, v7

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static openSavedMessages()V
    .locals 5

    .line 1074
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1078
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1079
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    const-string/jumbo v4, "user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1080
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private processUpdateInternal(Lorg/telegram/tgnet/TLRPC$Update;)Z
    .locals 12

    .line 635
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 636
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;

    .line 637
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$DialogPeer;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    if-nez v3, :cond_0

    return v2

    .line 638
    :cond_0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/util/ArrayList;

    .line 640
    iget-object v6, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    aput-object v6, v5, v2

    iget-object v6, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    aput-object v6, v5, v1

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v6, v0, :cond_3

    move v8, v2

    .line 642
    :goto_1
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 643
    aget-object v9, v5, v6

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 644
    iget-wide v10, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v10, v10, v3

    if-nez v10, :cond_1

    iget-boolean v10, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    iget-boolean v11, p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;->pinned:Z

    if-eq v10, v11, :cond_1

    .line 645
    iput-boolean v11, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    move v7, v1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return v7

    .line 651
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;

    if-eqz v0, :cond_9

    .line 652
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    .line 654
    :goto_2
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 655
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$DialogPeer;

    .line 656
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    if-nez v5, :cond_5

    goto :goto_3

    .line 659
    :cond_5
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 661
    :cond_6
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    .line 662
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez p1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :cond_8
    :goto_4
    return v1

    :cond_9
    return v2
.end method

.method private removeDialog(J)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 539
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 540
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v3, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 541
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v3, v1

    .line 547
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 548
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v4, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 549
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 554
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 555
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v4, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_4

    .line 556
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 560
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 678
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 681
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 682
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private saveCache()V
    .locals 4

    .line 958
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 961
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    .line 962
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 963
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    .line 964
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveCacheSchedule()V
    .locals 3

    .line 952
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saveCacheRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 953
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saveCacheRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1c2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateAllDialogs(Z)V
    .locals 7

    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 66
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 67
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 68
    iget-boolean v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v4, :cond_0

    iget-wide v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-wide v3, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 73
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 74
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 75
    iget-boolean v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v4, :cond_2

    iget-wide v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v4

    if-nez v4, :cond_2

    .line 76
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-wide v3, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 81
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 82
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 83
    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v5

    if-nez v5, :cond_4

    .line 84
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-wide v4, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 88
    :cond_5
    iget-boolean v3, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    if-nez v3, :cond_7

    move v3, v1

    .line 89
    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 90
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 91
    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v5

    if-nez v5, :cond_6

    .line 92
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-wide v4, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 97
    :cond_7
    sget-object v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda16;->INSTANCE:Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda16;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_8

    .line 100
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method private updateDialogsCount(Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 735
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    .line 736
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    .line 737
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda12;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashSet;J)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateDialogsLastMessage(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;)V"
        }
    .end annotation

    .line 865
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    .line 866
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    .line 867
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 690
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 691
    invoke-direct {p0, p2, v0}, Lorg/telegram/messenger/SavedMessagesController;->sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 696
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 697
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 698
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 699
    iget-boolean v5, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v5, :cond_1

    .line 700
    iput-boolean v1, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    .line 701
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/2addr v2, v4

    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 710
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 711
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 713
    iget-wide v5, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 714
    invoke-static {v3, v5}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$002(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)I

    .line 715
    iput-boolean v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    .line 716
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v4

    goto :goto_1

    .line 723
    :cond_4
    sget-object p2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda15;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 726
    sget-object p2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda17;->INSTANCE:Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda17;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 729
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return v4
.end method

.method private updatePinnedOrderToServer(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 611
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 613
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;-><init>()V

    const/4 v1, 0x1

    .line 614
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;->force:Z

    const/4 v1, 0x0

    .line 615
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 616
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 617
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDialogPeer;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDialogPeer;-><init>()V

    .line 618
    iget v5, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_inputDialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_1

    .line 620
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_2
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 624
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    :cond_3
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    .line 45
    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 46
    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    .line 47
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    .line 49
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->deleteCache()V

    .line 50
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    .line 51
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "savedMessagesUnsupported"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public containsDialog(J)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 186
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 187
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 188
    iget-wide v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public deleteDialog(J)V
    .locals 1

    .line 526
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    .line 527
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method public deleteDialogs(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 531
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 532
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method public findSavedDialog(J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->findSavedDialog(Ljava/util/ArrayList;J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object p1

    return-object p1
.end method

.method public findSavedDialog(Ljava/util/ArrayList;J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;J)",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 133
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 134
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 135
    iget-wide v2, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllCount()I
    .locals 2

    .line 105
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 108
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    if-eqz v0, :cond_1

    .line 109
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    sub-int/2addr v0, v1

    return v0

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLoadedCount()I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMessagesCount(J)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 177
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 178
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 179
    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 180
    iget p1, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getPinnedCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 120
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 121
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasSavedMessages(JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 1087
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->findSavedDialog(J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1088
    iget v0, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-lez v0, :cond_1

    .line 1089
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 1093
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1095
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1098
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    iget-object p3, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1102
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;-><init>()V

    .line 1103
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 v0, 0x1

    .line 1104
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->limit:I

    const-wide/16 v0, 0x0

    .line 1105
    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->hash:J

    const v0, 0x7fffffff

    .line 1106
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->offset_id:I

    .line 1107
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->offset_date:I

    const/4 v0, -0x1

    .line 1108
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->add_offset:I

    .line 1109
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/SavedMessagesController;J)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public loadDialogs()V
    .locals 8

    .line 201
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 204
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->loadCache(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    .line 210
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;-><init>()V

    .line 211
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 214
    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_id:I

    .line 215
    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_date:I

    .line 216
    iget v3, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    :cond_3
    const v0, 0x7fffffff

    .line 218
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_id:I

    .line 219
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_date:I

    .line 220
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :goto_1
    const/16 v0, 0x14

    .line 222
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->limit:I

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->limit:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 225
    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 229
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 230
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 231
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    iget-boolean v6, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x1

    goto :goto_3

    :cond_4
    const-wide/16 v6, 0x0

    :goto_3
    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    .line 232
    iget-wide v6, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    .line 233
    iget v6, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    .line 234
    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 237
    :cond_5
    iget v2, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_6
    :goto_4
    return-void
.end method

.method public preloadDialogs()V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs()V

    :cond_0
    return-void
.end method

.method public processUpdate(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    .line 629
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->processUpdateInternal(Lorg/telegram/tgnet/TLRPC$Update;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 630
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    :cond_0
    return-void
.end method

.method public searchDialogs(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 146
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 147
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    const/4 v3, 0x0

    .line 150
    iget-wide v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const-wide/32 v6, 0x28ae10

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 151
    sget v4, Lorg/telegram/messenger/R$string;->AnonymousForward:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 152
    :cond_1
    iget v6, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 153
    sget v3, Lorg/telegram/messenger/R$string;->MyNotes:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    sget v3, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 155
    :cond_2
    iget-wide v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 156
    iget v4, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 157
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 159
    :cond_3
    iget v4, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 160
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, ""

    :goto_1
    if-nez v4, :cond_5

    goto :goto_3

    .line 163
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_9

    .line 167
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 169
    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 165
    :cond_8
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x1

    .line 564
    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    .line 565
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->saveCacheSchedule()V

    return-void
.end method

.method public update(JLorg/telegram/tgnet/TLRPC$messages_Messages;)V
    .locals 4

    .line 445
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateSavedDialogs(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 446
    :goto_0
    instance-of v3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v3, :cond_3

    .line 447
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JI)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_2

    .line 448
    :cond_3
    instance-of v3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz v3, :cond_4

    .line 449
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JI)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 452
    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public updateDeleted(Landroidx/collection/LongSparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 459
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 460
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 461
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move v7, v1

    move v8, v7

    .line 463
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 464
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    move v9, v1

    .line 467
    :goto_2
    iget-object v10, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 468
    iget-object v10, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v10, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v10, v10, v4

    if-nez v10, :cond_1

    .line 469
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x1

    if-eqz v7, :cond_5

    .line 474
    iget v5, v7, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v9, v7, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-eq v5, v9, :cond_3

    .line 475
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v9, v3

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    move v3, v4

    .line 478
    :cond_3
    iget v5, v7, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-gtz v5, :cond_4

    .line 479
    iget-wide v5, v7, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-direct {p0, v5, v6}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    :goto_4
    move v3, v4

    goto :goto_5

    .line 481
    :cond_4
    iget v5, v7, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    if-gt v5, v8, :cond_5

    .line 482
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_8

    .line 488
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 489
    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateDialogsLastMessage(Ljava/util/ArrayList;)V

    goto :goto_6

    .line 491
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    :cond_8
    :goto_6
    return-void
.end method

.method public updatePinned(Ljava/util/ArrayList;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 570
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 571
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_2

    .line 572
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    if-eqz p2, :cond_0

    .line 573
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 574
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 576
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 580
    :cond_2
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 581
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitPremium:I

    goto :goto_2

    .line 582
    :cond_3
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitDefault:I

    .line 584
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_4

    return v4

    .line 587
    :cond_4
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/SavedMessagesController;->sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 588
    invoke-direct {p0, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrderToServer(Ljava/util/ArrayList;)V

    :cond_5
    return v3
.end method

.method public updatePinnedOrder(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 596
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitPremium:I

    goto :goto_0

    .line 598
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitDefault:I

    .line 600
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 603
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SavedMessagesController;->sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 604
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrderToServer(Ljava/util/ArrayList;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public updateSavedDialog(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 416
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    .line 417
    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId(JLorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v1

    move v3, v0

    .line 418
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 419
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 420
    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v5, v5, v1

    if-nez v5, :cond_1

    .line 421
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-direct {v1, v2, p1, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v1, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    .line 422
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public updateSavedDialogs(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 337
    :cond_0
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 338
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 339
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 340
    iget v4, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    move v6, v0

    .line 341
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_6

    .line 342
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Message;

    .line 343
    invoke-static {v4, v5, v7}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId(JLorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-eqz v11, :cond_1

    .line 344
    iget v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz v11, :cond_5

    iget v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v11, :cond_1

    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v11, :cond_1

    goto :goto_2

    .line 348
    :cond_1
    invoke-virtual {v1, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v11, :cond_2

    .line 349
    iget v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v11, v12, :cond_3

    .line 350
    :cond_2
    invoke-virtual {v1, v9, v10, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 352
    :cond_3
    invoke-virtual {v2, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_4

    move v7, v0

    goto :goto_1

    .line 353
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v9, v10, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    move p1, v0

    move v4, p1

    .line 357
    :goto_3
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge p1, v5, :cond_13

    .line 358
    invoke-virtual {v1, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 359
    invoke-virtual {v1, p1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Message;

    .line 360
    invoke-virtual {v2, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move v10, v0

    .line 362
    :goto_4
    iget-object v11, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 363
    iget-object v11, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 364
    iget-wide v12, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v12, v12, v5

    if-nez v12, :cond_9

    .line 366
    iget v10, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lt v10, v12, :cond_7

    if-gez v12, :cond_8

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v11}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v12

    if-le v10, v12, :cond_8

    .line 368
    :cond_7
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget v10, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-direct {v4, v10, v7, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    .line 369
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    move v4, v8

    .line 371
    :cond_8
    iget-wide v10, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v10, v8

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    move v10, v0

    :goto_5
    if-nez v10, :cond_c

    .line 376
    iget v4, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v4, v7}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromMessage(ILorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v4

    if-eqz v9, :cond_b

    .line 378
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 380
    :cond_b
    iget-object v10, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v8

    :cond_c
    move v10, v0

    .line 384
    :goto_6
    iget-object v11, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_10

    .line 385
    iget-object v11, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 386
    iget-wide v12, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v12, v12, v5

    if-nez v12, :cond_f

    .line 388
    iget v5, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lt v5, v6, :cond_d

    if-gez v6, :cond_e

    iget v5, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v11}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v6

    if-le v5, v6, :cond_e

    .line 390
    :cond_d
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget v5, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-direct {v4, v5, v7, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    .line 391
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    move v4, v8

    .line 393
    :cond_e
    iget-wide v5, v11, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_7

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_10
    move v5, v0

    :goto_7
    if-nez v5, :cond_12

    .line 398
    iget v4, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v4, v7}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromMessage(ILorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v4

    if-eqz v9, :cond_11

    .line 400
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    .line 402
    :cond_11
    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v8

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    .line 406
    :cond_13
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    .line 407
    invoke-direct {p0, v3}, Lorg/telegram/messenger/SavedMessagesController;->updateDialogsCount(Ljava/util/HashSet;)V

    :cond_14
    return v4
.end method

.method public updatedDialogCount(JI)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 430
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 431
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 432
    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 433
    iget p1, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-eq p1, p3, :cond_1

    .line 434
    iput p3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
