.class public Lorg/telegram/ui/Stories/StoriesController$StoriesList;
.super Ljava/lang/Object;
.source "StoriesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoriesList"
.end annotation


# static fields
.field private static lastLoadTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cachedObjects:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final currentAccount:I

.field private destroyRunnable:Ljava/lang/Runnable;

.field private done:Z

.field private error:Z

.field public final groupedByDay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private invalidateAfterPreload:Z

.field private final links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final loadedObjects:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loading:Z

.field private maxLinkId:I

.field public final messageObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private final messageObjectsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private final notify:Ljava/lang/Runnable;

.field private preloading:Z

.field private saving:Z

.field private showPhotos:Z

.field private showVideos:Z

.field private final tempArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$CallbackReturn<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:I

.field public final type:I

.field public final userId:J


# direct methods
.method public static synthetic $r8$lambda$-VdRBEgJlRpYPkE9crDilqp9eaQ(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$invalidateCache$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$3LOKETVzbsVZz8xtOF-uEiXrSCo(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$saveCache$8(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DXQjCpoROd7n6IPpkjKanAGsfko(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$HN8GaXCAyg3YYGoFavHzL_VPZtE(Lorg/telegram/ui/Stories/StoriesController$StoriesList;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$12(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L2xftvC1LHmKqTqiQOOd7IUyEcM(Lorg/telegram/ui/Stories/StoriesController$StoriesList;ZILjava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$9(ZILjava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SDyKs8uBiAPvye_wbXrvvNRd19I(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$new$1(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T-CR2WOM-mG-AXdSIRFSF7KSmNw(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VnRWTUnJ7ffifHErUT0hVauqGQI(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$getDays$4(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mJX2tOpNHUNN5z3Upow8wu5hHbs(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_stories_stories;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$load$10(Lorg/telegram/tgnet/TLRPC$TL_stories_stories;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ntMLQhFZePL20AyDX1Y9HaIQ_YU(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$preloadCache$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rVramFH-vwCh1RLekAM7WaPjGPM(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$saveCache$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$xGlyH1-xwT5QO34xLAevQnwVRFo(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$invalidateCache$6(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zyAVoyvpMFimrbE5RUmbJ-caEmU(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lambda$preloadCache$3(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method private constructor <init>(IJILorg/telegram/messenger/Utilities$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/ui/Stories/StoriesController$StoriesList;",
            ">;)V"
        }
    .end annotation

    .line 1829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1716
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->maxLinkId:I

    .line 1717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    .line 1739
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    .line 1741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    .line 1742
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    .line 1744
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    .line 1745
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    const/4 v0, 0x1

    .line 1747
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    .line 1748
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    .line 1768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    .line 1770
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 1821
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    .line 1830
    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    .line 1831
    iput-wide p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    .line 1832
    iput p4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    .line 1833
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    .line 1835
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloadCache()V

    return-void
.end method

.method synthetic constructor <init>(IJILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/StoriesController$1;)V
    .locals 0

    .line 1712
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;-><init>(IJILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private canLoad()Z
    .locals 8

    .line 2055
    sget-object v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2058
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 2059
    sget-object v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    return v1

    .line 2063
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method public static day(Lorg/telegram/messenger/MessageObject;)J
    .locals 6

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1941
    :cond_0
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v0, p0

    .line 1942
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1943
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    .line 1944
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 1945
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 1946
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v2, v0

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    int-to-long v0, v1

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    int-to-long v0, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private fill(Ljava/util/ArrayList;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1789
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1791
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1792
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1793
    invoke-direct {p0, v4, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->filter(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1794
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ge v3, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 1800
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-nez v0, :cond_6

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1802
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-ge v3, v4, :cond_6

    .line 1803
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v1, :cond_5

    if-ge v3, v2, :cond_3

    .line 1805
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1806
    invoke-direct {p0, v3, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->filter(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1807
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1812
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1813
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->tempArr:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private filter(Lorg/telegram/messenger/MessageObject;ZZ)Z
    .locals 1

    if-eqz p1, :cond_3

    .line 1817
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$getDays$4(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 2

    .line 1956
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private synthetic lambda$invalidateCache$5()V
    .locals 1

    .line 1989
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    const/4 v0, 0x1

    .line 1990
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    return-void
.end method

.method private synthetic lambda$invalidateCache$6(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 7

    .line 1978
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    .line 1979
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1980
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "DELETE FROM profile_stories WHERE dialog_id = %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    const-string v1, "DELETE FROM archived_stories"

    .line 1982
    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1985
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    .line 1988
    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$load$10(Lorg/telegram/tgnet/TLRPC$TL_stories_stories;Ljava/util/ArrayList;I)V
    .locals 5

    const/4 v0, 0x0

    .line 2114
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    .line 2116
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->count:I

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    move p1, v0

    .line 2117
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 2118
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pushObject(Lorg/telegram/messenger/MessageObject;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2120
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    const/4 v1, 0x1

    if-lt p1, p2, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-nez p1, :cond_5

    const/4 p1, -0x1

    if-ne p3, p1, :cond_2

    .line 2122
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 2123
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v0

    .line 2124
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 2125
    :cond_4
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2126
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2127
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-lt v2, p3, :cond_4

    if-gt v2, p1, :cond_4

    .line 2128
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 2129
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    goto :goto_3

    .line 2133
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2134
    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2136
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 2137
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 2138
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    goto :goto_4

    .line 2142
    :cond_7
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    .line 2144
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-eqz p1, :cond_9

    .line 2145
    sget-object p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    if-nez p1, :cond_8

    .line 2146
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    .line 2148
    :cond_8
    sget-object p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    const/4 p3, 0x2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-static {p2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2150
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->resetCanLoad()V

    .line 2153
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    return-void
.end method

.method private synthetic lambda$load$11()V
    .locals 5

    const/4 v0, 0x0

    .line 2157
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    const/4 v1, 0x1

    .line 2158
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    .line 2160
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$12(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 2106
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;

    if-eqz p3, :cond_1

    .line 2107
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2108
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;

    const/4 v0, 0x0

    .line 2109
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2110
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 2111
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toMessageObject(Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2113
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_stories_stories;Ljava/util/ArrayList;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2156
    :cond_1
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$load$9(ZILjava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 2077
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZI)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 1771
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 1833
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$preloadCache$2(Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    .line 1878
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    .line 1879
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateAfterPreload:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1880
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateAfterPreload:Z

    .line 1881
    iput-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    .line 1882
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateCache()V

    return-void

    .line 1886
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->clear()V

    move v1, v0

    .line 1887
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 1888
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pushObject(Lorg/telegram/messenger/MessageObject;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1890
    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    .line 1892
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    if-eqz p1, :cond_2

    .line 1893
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    iput-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    .line 1897
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$preloadCache$3(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 10

    .line 1847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1849
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    .line 1850
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 1851
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SELECT data FROM profile_stories WHERE dialog_id = %d ORDER BY story_id DESC"

    new-array v7, v4, [Ljava/lang/Object;

    iget-wide v8, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v3, "SELECT data FROM archived_stories ORDER BY story_id DESC"

    new-array v6, v5, [Ljava/lang/Object;

    .line 1853
    invoke-virtual {v2, v3, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 1855
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1856
    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1858
    invoke-virtual {v2, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    invoke-static {v2, v3, v4}, Lorg/telegram/tgnet/TLRPC$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object v3

    .line 1859
    iget-wide v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 1860
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->messageId:I

    .line 1861
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v7, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-direct {v6, v7, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 1862
    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 1863
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_0

    .line 1867
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 1869
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    .line 1872
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1877
    :cond_3
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_4

    .line 1872
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1875
    :cond_4
    throw p1
.end method

.method private synthetic lambda$saveCache$7()V
    .locals 1

    const/4 v0, 0x0

    .line 2049
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saving:Z

    return-void
.end method

.method private synthetic lambda$saveCache$8(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 10

    .line 2005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 2006
    invoke-direct {p0, v0, v1, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Ljava/util/ArrayList;ZZ)V

    const/4 v2, 0x0

    .line 2008
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    .line 2009
    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 2010
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "DELETE FROM profile_stories WHERE dialog_id = %d"

    new-array v7, v1, [Ljava/lang/Object;

    iget-wide v8, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v4, "REPLACE INTO profile_stories VALUES(?, ?, ?)"

    .line 2011
    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v4, "DELETE FROM archived_stories"

    .line 2013
    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v4, "REPLACE INTO archived_stories VALUES(?, ?)"

    .line 2014
    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    .line 2017
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_3

    .line 2018
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 2019
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-nez v3, :cond_1

    goto :goto_2

    .line 2024
    :cond_1
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v6

    invoke-direct {v4, v6}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 2025
    invoke-virtual {v3, v4}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2027
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 2028
    iget v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v7, 0x2

    if-nez v6, :cond_2

    .line 2029
    iget-wide v8, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-virtual {v2, v1, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2030
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v2, v7, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x3

    .line 2031
    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    goto :goto_1

    .line 2033
    :cond_2
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2034
    invoke-virtual {v2, v7, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 2036
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2037
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 2040
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    .line 2043
    :goto_3
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2048
    :cond_4
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_5

    .line 2043
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2046
    :cond_5
    throw p1
.end method

.method private preloadCache()V
    .locals 3

    .line 1839
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1843
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    .line 1844
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 1845
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private pushObject(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1906
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 1907
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1909
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->day(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v0

    .line 1910
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/TreeSet;

    if-nez p2, :cond_2

    .line 1912
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v1

    .line 1914
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeObject(IZ)Z
    .locals 3

    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_0

    .line 1920
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 1922
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 1924
    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->day(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v0

    .line 1925
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/SortedSet;

    if-eqz p2, :cond_1

    .line 1927
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 1928
    invoke-interface {p2}, Ljava/util/SortedSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1929
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private resetCanLoad()V
    .locals 5

    .line 2067
    sget-object v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->lastLoadTime:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2068
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private saveCache()V
    .locals 3

    .line 1998
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2001
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saving:Z

    .line 2002
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 2003
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private toMessageObject(Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/messenger/MessageObject;
    .locals 2

    .line 2268
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 2269
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->messageId:I

    .line 2270
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-direct {v0, v1, p1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$StoryItem;)V

    const/4 p1, 0x0

    .line 2271
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    return-object v0
.end method


# virtual methods
.method public equal(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$StoryItem;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez p2, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    if-eq p1, p2, :cond_5

    .line 2259
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-ne v2, v3, :cond_4

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->caption:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->caption:Ljava/lang/String;

    .line 2263
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    return v0
.end method

.method public fill(Z)V
    .locals 5

    .line 1775
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Ljava/util/ArrayList;ZZ)V

    const-string v0, ""

    const/4 v1, 0x0

    .line 1777
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1778
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    int-to-long v2, v2

    if-lez v1, :cond_0

    .line 1779
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1780
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1783
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1784
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->notify:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public findMessageObject(I)Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 2249
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 2292
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    if-eqz v0, :cond_1

    .line 2293
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-gez v0, :cond_0

    .line 2294
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 2296
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2298
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDays()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1955
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1956
    sget-object v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda10;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda10;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1957
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1958
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1959
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->groupedByDay:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeSet;

    if-eqz v2, :cond_0

    .line 1961
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getLoadedCount()I
    .locals 1

    .line 2288
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    return v0
.end method

.method public invalidateCache()V
    .locals 3

    .line 1968
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1969
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->invalidateAfterPreload:Z

    return-void

    .line 1973
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->resetCanLoad()V

    .line 1975
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 1976
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isFull()Z
    .locals 1

    .line 2280
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 2276
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOnlyCache()Z
    .locals 1

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->canLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public link()I
    .locals 3

    .line 1719
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->maxLinkId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->maxLinkId:I

    .line 1720
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return v0
.end method

.method public load(ZI)Z
    .locals 4

    .line 2073
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->error:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->canLoad()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 2076
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->preloading:Z

    if-eqz v0, :cond_2

    .line 2077
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;ZI)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toLoad:Lorg/telegram/messenger/Utilities$CallbackReturn;

    return v1

    .line 2083
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 2084
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_stories_getPinnedStories;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_stories_getPinnedStories;-><init>()V

    .line 2085
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_getPinnedStories;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 2086
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2087
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_getPinnedStories;->offset_id:I

    .line 2091
    :cond_3
    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_getPinnedStories;->limit:I

    goto :goto_0

    .line 2094
    :cond_4
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesArchive;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesArchive;-><init>()V

    .line 2095
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2096
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesArchive;->offset_id:I

    .line 2100
    :cond_5
    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesArchive;->limit:I

    :goto_0
    const/4 p2, 0x1

    .line 2104
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loading:Z

    .line 2105
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;I)V

    invoke-virtual {v1, p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return p2

    :cond_6
    :goto_1
    return v1
.end method

.method public showPhotos()Z
    .locals 1

    .line 1761
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    return v0
.end method

.method public showVideos()Z
    .locals 1

    .line 1765
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    return v0
.end method

.method public unlink(I)V
    .locals 2

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1726
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->links:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1727
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1728
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->destroyRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public updateDeletedStories(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2184
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_6

    .line 2185
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-nez v3, :cond_1

    goto :goto_3

    .line 2189
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v4

    :goto_2
    if-eqz v5, :cond_5

    .line 2192
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 2193
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 2194
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    add-int/lit8 v2, v2, -0x1

    .line 2195
    iput v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    :cond_4
    move v2, v4

    .line 2198
    :cond_5
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    .line 2201
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    .line 2202
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    :cond_7
    return-void
.end method

.method public updateFilters(ZZ)V
    .locals 0

    .line 1751
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos:Z

    .line 1752
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos:Z

    const/4 p1, 0x1

    .line 1753
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    return-void
.end method

.method public updateStories(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2211
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_b

    .line 2212
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 2216
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->loadedObjects:Ljava/util/SortedSet;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->cachedObjects:Ljava/util/SortedSet;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v4

    .line 2217
    :goto_2
    iget v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-ne v6, v4, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    .line 2218
    :goto_3
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v7, :cond_5

    move v6, v0

    :cond_5
    if-eq v5, v6, :cond_8

    const/4 v2, -0x1

    if-nez v6, :cond_6

    .line 2224
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->removeObject(IZ)Z

    .line 2225
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-eq v3, v2, :cond_7

    add-int/lit8 v3, v3, -0x1

    .line 2226
    iput v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    goto :goto_4

    .line 2229
    :cond_6
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toMessageObject(Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pushObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2230
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    if-eq v3, v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 2231
    iput v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->totalCount:I

    :cond_7
    :goto_4
    move v2, v4

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    .line 2235
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_9

    .line 2236
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {p0, v5, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->equal(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2237
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjectsMap:Ljava/util/HashMap;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->toMessageObject(Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_c

    .line 2243
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->fill(Z)V

    .line 2244
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->saveCache()V

    :cond_c
    return-void
.end method
