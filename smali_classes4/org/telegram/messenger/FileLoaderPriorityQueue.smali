.class public Lorg/telegram/messenger/FileLoaderPriorityQueue;
.super Ljava/lang/Object;
.source "FileLoaderPriorityQueue.java"


# instance fields
.field private PRIORITY_VALUE_LOW:I

.field private PRIORITY_VALUE_MAX:I

.field private PRIORITY_VALUE_NORMAL:I

.field allOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final maxActiveOperationsCount:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    const/high16 v0, 0x100000

    .line 15
    iput v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_MAX:I

    const/high16 v0, 0x10000

    .line 16
    iput v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_NORMAL:I

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_LOW:I

    .line 20
    iput-object p1, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->name:Ljava/lang/String;

    .line 21
    iput p2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->maxActiveOperationsCount:I

    return-void
.end method


# virtual methods
.method public add(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 29
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 30
    iget-object v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoadOperation;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 36
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v2

    if-le v1, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    :goto_2
    if-ltz v0, :cond_6

    .line 42
    iget-object v1, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 44
    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method public cancel(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->cancel()V

    return-void
.end method

.method public checkLoadingOperations()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 60
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 61
    iget-object v3, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation;

    if-lez v0, :cond_0

    if-nez v1, :cond_0

    .line 63
    iget v4, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_LOW:I

    if-le v2, v4, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v2

    iget v4, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_LOW:I

    if-ne v2, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    .line 67
    iget v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->maxActiveOperationsCount:I

    if-ge v0, v2, :cond_1

    .line 68
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->pause()V

    .line 75
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public remove(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    iget v0, p1, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 85
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->cancel()V

    .line 87
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
