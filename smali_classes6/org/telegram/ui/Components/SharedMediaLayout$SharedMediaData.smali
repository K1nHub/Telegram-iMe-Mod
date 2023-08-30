.class public Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;
.super Ljava/lang/Object;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedMediaData"
.end annotation


# instance fields
.field private endLoadingStubs:I

.field public endReached:[Z

.field public fastScrollDataLoaded:Z

.field public fastScrollPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/SharedMediaLayout$Period;",
            ">;"
        }
    .end annotation
.end field

.field public filterType:I

.field public frozenEndLoadingStubs:I

.field public frozenMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public frozenStartOffset:I

.field private hasPhotos:Z

.field private hasVideos:Z

.field public isFrozen:Z

.field public loading:Z

.field public loadingAfterFastScroll:Z

.field public max_id:[I

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public messagesDict:[Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public min_id:I

.field recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field public requestIndex:I

.field public sectionArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startOffset:I

.field public startReached:Z

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/util/SparseArray;

    .line 1397
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    .line 1398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    .line 1399
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    .line 1400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    new-array v1, v0, [Z

    .line 1404
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    new-array v0, v0, [I

    .line 1405
    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    .line 1407
    iput-boolean v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    .line 1413
    iput v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    .line 1415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenMessages:Ljava/util/ArrayList;

    .line 1421
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)Z
    .locals 0

    .line 1395
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasPhotos:Z

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)Z
    .locals 0

    .line 1395
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasVideos:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I
    .locals 0

    .line 1395
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startOffset:I

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I
    .locals 0

    .line 1395
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startOffset:I

    return p1
.end method

.method static synthetic access$810(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I
    .locals 2

    .line 1395
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startOffset:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startOffset:I

    return v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I
    .locals 0

    .line 1395
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endLoadingStubs:I

    return p0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I
    .locals 0

    .line 1395
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endLoadingStubs:I

    return p1
.end method

.method static synthetic access$8310(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I
    .locals 2

    .line 1395
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endLoadingStubs:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endLoadingStubs:I

    return v0
.end method


# virtual methods
.method public addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z
    .locals 4

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    .line 1439
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 1444
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1446
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 1450
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1451
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1453
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object p3, p3, p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez p4, :cond_4

    .line 1458
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p3

    if-lez p3, :cond_5

    .line 1459
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v0, v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    aput p4, p3, p2

    .line 1460
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iget p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    goto :goto_2

    .line 1463
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v0, v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    aput p4, p3, p2

    .line 1464
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iget p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    .line 1466
    :cond_5
    :goto_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasVideos:Z

    const/4 p3, 0x1

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1467
    iput-boolean p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasVideos:Z

    .line 1469
    :cond_6
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasPhotos:Z

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1470
    iput-boolean p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->hasPhotos:Z

    :cond_7
    return p3
.end method

.method public deleteMessage(II)Lorg/telegram/messenger/MessageObject;
    .locals 3

    .line 1476
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1480
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return-object v0

    .line 1484
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1485
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object p2, v0, p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1487
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1488
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1491
    :cond_2
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    if-gez p2, :cond_3

    const/4 p2, 0x0

    .line 1493
    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    :cond_3
    return-object p1
.end method

.method public getEndLoadingStubs()I
    .locals 1

    .line 1530
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->isFrozen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenEndLoadingStubs:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endLoadingStubs:I

    :goto_0
    return v0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    .line 1509
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->isFrozen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    :goto_0
    return-object v0
.end method

.method public getStartOffset()I
    .locals 1

    .line 1513
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->isFrozen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenStartOffset:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startOffset:I

    :goto_0
    return v0
.end method

.method public replaceMid(II)V
    .locals 3

    .line 1499
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1502
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1503
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 1504
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v0, p1, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    aput p2, p1, v1

    :cond_0
    return-void
.end method

.method public setEndReached(IZ)V
    .locals 1

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setListFrozen(Z)V
    .locals 1

    .line 1517
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->isFrozen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1520
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->isFrozen:Z

    if-eqz p1, :cond_1

    .line 1522
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startOffset:I

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenStartOffset:I

    .line 1523
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endLoadingStubs:I

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenEndLoadingStubs:I

    .line 1524
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1525
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->frozenMessages:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public setMaxId(II)V
    .locals 1

    .line 1428
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aput p2, v0, p1

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 1424
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    return-void
.end method
