.class public Lorg/telegram/messenger/FileLoaderPriorityQueue;
.super Ljava/lang/Object;
.source "FileLoaderPriorityQueue.java"


# static fields
.field public static final TYPE_LARGE:I = 0x1

.field public static final TYPE_SMALL:I


# instance fields
.field private PRIORITY_VALUE_LOW:I

.field private PRIORITY_VALUE_MAX:I

.field private PRIORITY_VALUE_NORMAL:I

.field private allOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field currentAccount:I

.field name:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
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
    iput p1, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->currentAccount:I

    .line 21
    iput-object p2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->name:Ljava/lang/String;

    .line 22
    iput p3, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->type:I

    return-void
.end method


# virtual methods
.method public add(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 30
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 31
    iget-object v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 32
    iget-object v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 37
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v2

    if-le v1, v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    .line 43
    iget-object v1, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 45
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method public cancel(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->cancel()V

    :cond_1
    return-void
.end method

.method public checkLoadingOperations()V
    .locals 7

    .line 62
    iget v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->largeQueueMaxActiveOperations:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->smallQueueMaxActiveOperations:I

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 63
    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 64
    iget-object v5, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/FileLoadOperation;

    if-lez v2, :cond_1

    if-nez v3, :cond_1

    .line 66
    iget v6, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_LOW:I

    if-le v4, v6, :cond_1

    invoke-virtual {v5}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v4

    iget v6, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_LOW:I

    if-ne v4, v6, :cond_1

    move v3, v1

    .line 70
    :cond_1
    iget-boolean v4, v5, Lorg/telegram/messenger/FileLoadOperation;->preFinished:Z

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    if-ge v2, v0, :cond_3

    .line 75
    invoke-virtual {v5}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {v5}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 79
    invoke-virtual {v5}, Lorg/telegram/messenger/FileLoadOperation;->pause()V

    .line 82
    :cond_4
    :goto_2
    invoke-virtual {v5}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPosition(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public remove(Lorg/telegram/messenger/FileLoadOperation;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
