.class public Lorg/telegram/ui/Stories/UserListPoller;
.super Ljava/lang/Object;
.source "UserListPoller.java"


# static fields
.field private static istances:[Lorg/telegram/ui/Stories/UserListPoller;


# instance fields
.field collectedDialogIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final currentAccount:I

.field dialogIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field requestCollectedRunnables:Ljava/lang/Runnable;

.field userPollLastTime:Lorg/telegram/messenger/support/LongSparseLongArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/Stories/UserListPoller;

    .line 24
    sput-object v0, Lorg/telegram/ui/Stories/UserListPoller;->istances:[Lorg/telegram/ui/Stories/UserListPoller;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/telegram/messenger/support/LongSparseLongArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/UserListPoller;->userPollLastTime:Lorg/telegram/messenger/support/LongSparseLongArray;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/UserListPoller;->dialogIds:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/UserListPoller;->collectedDialogIds:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v0, Lorg/telegram/ui/Stories/UserListPoller$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/UserListPoller$1;-><init>(Lorg/telegram/ui/Stories/UserListPoller;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/UserListPoller;->requestCollectedRunnables:Ljava/lang/Runnable;

    .line 29
    iput p1, p0, Lorg/telegram/ui/Stories/UserListPoller;->currentAccount:I

    return-void
.end method

.method public static getInstance(I)Lorg/telegram/ui/Stories/UserListPoller;
    .locals 2

    .line 33
    sget-object v0, Lorg/telegram/ui/Stories/UserListPoller;->istances:[Lorg/telegram/ui/Stories/UserListPoller;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lorg/telegram/ui/Stories/UserListPoller;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/UserListPoller;-><init>(I)V

    aput-object v1, v0, p0

    .line 36
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/UserListPoller;->istances:[Lorg/telegram/ui/Stories/UserListPoller;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public checkList(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 9

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    iget-object v2, p0, Lorg/telegram/ui/Stories/UserListPoller;->dialogIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 84
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 86
    instance-of v4, v3, Lorg/telegram/ui/Cells/DialogCell;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    .line 87
    check-cast v3, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v3

    goto :goto_1

    .line 88
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_1

    .line 89
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide v3, v5

    :goto_1
    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 93
    iget v7, p0, Lorg/telegram/ui/Stories/UserListPoller;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 94
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v8, :cond_2

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v8, :cond_2

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v8, :cond_2

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_2

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusEmpty;

    if-nez v7, :cond_2

    .line 95
    iget-object v7, p0, Lorg/telegram/ui/Stories/UserListPoller;->userPollLastTime:Lorg/telegram/messenger/support/LongSparseLongArray;

    invoke-virtual {v7, v3, v4, v5, v6}, Lorg/telegram/messenger/support/LongSparseLongArray;->get(JJ)J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/32 v7, 0x36ee80

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 97
    iget-object v5, p0, Lorg/telegram/ui/Stories/UserListPoller;->userPollLastTime:Lorg/telegram/messenger/support/LongSparseLongArray;

    invoke-virtual {v5, v3, v4, v0, v1}, Lorg/telegram/messenger/support/LongSparseLongArray;->put(JJ)V

    .line 98
    iget-object v5, p0, Lorg/telegram/ui/Stories/UserListPoller;->dialogIds:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/UserListPoller;->dialogIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Stories/UserListPoller;->collectedDialogIds:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/UserListPoller;->dialogIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Stories/UserListPoller;->requestCollectedRunnables:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Stories/UserListPoller;->requestCollectedRunnables:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    return-void
.end method
