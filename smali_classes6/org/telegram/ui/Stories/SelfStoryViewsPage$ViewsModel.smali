.class public Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;
.super Ljava/lang/Object;
.source "SelfStoryViewsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewsModel"
.end annotation


# instance fields
.field animateDateForUsers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field currentAccount:I

.field hasNext:Z

.field initial:Z

.field isExpiredViews:Z

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsPage;",
            ">;"
        }
    .end annotation
.end field

.field loading:Z

.field offsetDate:I

.field offsetId:J

.field reqId:I

.field storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field public totalCount:I

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_storyView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$NA4msLBJLyLajQOTW45b4Ld9V_4(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->lambda$loadNext$1(Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S5976LLD_uXTd9KoRqmZ_X0ifdo(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->lambda$loadNext$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;)V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 4

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    const/4 v1, -0x1

    .line 365
    iput v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    .line 366
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    .line 371
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    .line 372
    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 373
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->views_count:I

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    .line 374
    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesUtilities;->hasExpiredViews(Lorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-nez p1, :cond_1

    .line 376
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    .line 377
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    if-eqz p1, :cond_1

    move p1, v1

    .line 378
    :goto_1
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 379
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storyView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storyView;-><init>()V

    .line 380
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    .line 381
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_storyView;->date:I

    .line 382
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadNext$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;)V
    .locals 5

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    const/4 v1, -0x1

    .line 401
    iput v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    if-eqz p1, :cond_6

    .line 403
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;

    .line 404
    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 405
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    if-eqz v1, :cond_1

    .line 406
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    move v1, v0

    .line 407
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 408
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_storyView;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 412
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 414
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 415
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_storyView;

    .line 416
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->date:I

    iput v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offsetDate:I

    .line 417
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    iput-wide v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offsetId:J

    .line 418
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->limit:I

    if-ne v1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    goto :goto_2

    .line 420
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    .line 423
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    if-nez v1, :cond_4

    .line 424
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_storyViews;-><init>()V

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    .line 426
    :cond_4
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->count:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->views_count:I

    if-le p2, v2, :cond_7

    .line 427
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    move p2, v0

    :goto_3
    const/4 v1, 0x3

    .line 428
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p2, v1, :cond_5

    .line 429
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->recent_viewers:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 431
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->count:I

    iput p1, p2, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->views_count:I

    goto :goto_4

    .line 434
    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    .line 436
    :cond_7
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    .line 437
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->onDataRecieved()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method private synthetic lambda$loadNext$1(Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 399
    new-instance p3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public loadNext()V
    .locals 3

    .line 389
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 392
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;-><init>()V

    .line 393
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->id:I

    .line 394
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->initial:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->limit:I

    .line 395
    iget-wide v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offsetId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->offset_id:J

    .line 396
    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->offsetDate:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;->offset_date:I

    const/4 v1, 0x1

    .line 398
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    .line 399
    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;Lorg/telegram/tgnet/TLRPC$TL_stories_getStoryViewsList;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    :cond_2
    :goto_1
    return-void
.end method

.method public release()V
    .locals 3

    .line 454
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    if-ltz v0, :cond_0

    .line 455
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    const/4 v0, -0x1

    .line 457
    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reqId:I

    return-void
.end method

.method public removeListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
