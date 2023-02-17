.class public Lorg/telegram/messenger/FileLoaderPriorityQueue;
.super Ljava/lang/Object;
.source "FileLoaderPriorityQueue.java"


# instance fields
.field private PRIORITY_VALUE_LOW:I

.field private PRIORITY_VALUE_MAX:I

.field private PRIORITY_VALUE_NORMAL:I

.field activeOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->activeOperations:Ljava/util/ArrayList;

    const/high16 v0, 0x100000

    .line 13
    iput v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_MAX:I

    const/high16 v0, 0x10000

    .line 14
    iput v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_NORMAL:I

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_LOW:I

    .line 18
    iput-object p1, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->name:Ljava/lang/String;

    .line 19
    iput p2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->maxActiveOperationsCount:I

    return-void
.end method

.method private remove()Lorg/telegram/messenger/FileLoadOperation;
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileLoadOperation;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 27
    iget-object v1, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 29
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v3

    if-le v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    .line 35
    iget-object v1, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 37
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public cancel(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->cancel()V

    return-void
.end method

.method public checkLoadingOperations()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 53
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 54
    iget-object v3, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation;

    if-lez v0, :cond_0

    if-nez v1, :cond_0

    .line 56
    iget v4, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_LOW:I

    if-le v2, v4, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v2

    iget v4, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->PRIORITY_VALUE_LOW:I

    if-ne v2, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    .line 60
    iget v2, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->maxActiveOperationsCount:I

    if-ge v0, v2, :cond_1

    .line 61
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->pause()V

    .line 68
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
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoaderPriorityQueue;->allOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
