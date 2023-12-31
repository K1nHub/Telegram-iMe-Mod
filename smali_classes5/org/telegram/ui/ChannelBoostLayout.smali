.class public Lorg/telegram/ui/ChannelBoostLayout;
.super Landroid/widget/FrameLayout;
.source "ChannelBoostLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

.field private final boosters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$TL_boost;",
            ">;"
        }
    .end annotation
.end field

.field boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private boostsTabs:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

.field currentAccount:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final dialogId:J

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final gifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$TL_boost;",
            ">;"
        }
    .end annotation
.end field

.field private hasBoostsNext:Z

.field private hasGiftsNext:Z

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;",
            ">;"
        }
    .end annotation
.end field

.field private lastBoostsOffset:Ljava/lang/String;

.field private lastGiftsOffset:Ljava/lang/String;

.field private limitBoosts:I

.field private limitGifts:I

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private nextBoostRemaining:I

.field private nextGiftsRemaining:I

.field private progressLayout:Landroid/widget/LinearLayout;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedTab:I

.field private totalBoosts:I

.field private totalGifts:I

.field usersLoading:Z


# direct methods
.method public static synthetic $r8$lambda$6iiLKjdLRaXTdzTryfk_fSYTUxc(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadOnlyGifts$9(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9HcbZWeRe6nImnHhX3PsVgZL17k(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadOnlyBoosts$7(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9NzsfC8IsUWiETHYwZNOf9sTEQI(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FdJYtdmmDyEQg8yjjuK8k7hsE5s(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadOnlyBoosts$8(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KDaoE0q78uruefFvJ8hhGPylSuo(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadUsers$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$cQYZaGxBDc0UvWakvIeF5_mBBck(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadStatistic$2(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$heM_MWO-QhsCM48l6bSMBwNrtQ0(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadOnlyGifts$10(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i7ckg5KxXuHn8fHQAjkLLWCFw5g(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadUsers$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$mGwSJ5fyCy5-VvHGBj0h3JFkiME(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadStatistic$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mo-VfeNBx_Mb-HhC6SI9X8z-Ohs(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadUsers$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$oIcbfYZK39PZAYtoOrNtwA4K-mk(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadUsers$4()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 329
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    .line 104
    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelBoostLayout$1;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    const-string v1, ""

    .line 472
    iput-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastBoostsOffset:Ljava/lang/String;

    .line 473
    iput-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastGiftsOffset:Ljava/lang/String;

    const/4 v1, 0x5

    .line 474
    iput v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitGifts:I

    .line 475
    iput v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitBoosts:I

    .line 330
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 331
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 332
    iput-object p4, p0, Lorg/telegram/ui/ChannelBoostLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 333
    iput-wide p2, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    .line 334
    iget v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 335
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 336
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 337
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 338
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 339
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 340
    iget-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 341
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v8, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda10;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 383
    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->loadStatistic()V

    .line 384
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 385
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    .line 386
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->createEmptyView(Landroid/content/Context;)V

    .line 387
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 388
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->boostsTabs:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boostsTabs:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelBoostLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ChannelBoostLayout;I)I
    .locals 0

    .line 66
    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelBoostLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextBoostRemaining:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelBoostLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextGiftsRemaining:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelBoostLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->totalBoosts:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelBoostLayout;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->totalGifts:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelBoostLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private synthetic lambda$loadOnlyBoosts$7(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 520
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    if-eqz p2, :cond_4

    const/16 p1, 0x14

    .line 523
    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitBoosts:I

    .line 524
    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;

    .line 525
    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 526
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastBoostsOffset:Ljava/lang/String;

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->boosts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 529
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    .line 530
    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->multiplier:I

    if-lez v2, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0

    .line 532
    :cond_2
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->count:I

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextBoostRemaining:I

    .line 533
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextBoostRemaining:I

    if-lez p1, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->hasBoostsNext:Z

    .line 534
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->count:I

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->totalBoosts:I

    if-eqz p3, :cond_4

    .line 536
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadOnlyBoosts$8(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 518
    new-instance p4, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadOnlyGifts$10(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 549
    new-instance p4, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadOnlyGifts$9(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    if-eqz p2, :cond_4

    const/16 p1, 0x14

    .line 554
    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitGifts:I

    .line 555
    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;

    .line 556
    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 557
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastGiftsOffset:Ljava/lang/String;

    .line 558
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->boosts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 560
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    .line 561
    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->multiplier:I

    if-lez v2, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0

    .line 563
    :cond_2
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->count:I

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextGiftsRemaining:I

    .line 564
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextGiftsRemaining:I

    if-lez p1, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->hasGiftsNext:Z

    .line 565
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->count:I

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->totalGifts:I

    if-eqz p3, :cond_4

    .line 567
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadStatistic$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 2

    .line 459
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    .line 460
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 461
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ChannelBoostLayout$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelBoostLayout$2;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x1

    .line 467
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    const/4 p1, 0x0

    .line 468
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->loadUsers(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$2(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 1

    .line 458
    new-instance v0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUsers$3()V
    .locals 1

    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    const/4 v0, 0x1

    .line 496
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$loadUsers$4()V
    .locals 2

    .line 486
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v1, 0x0

    .line 487
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChannelBoostLayout;->loadOnlyBoosts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    .line 488
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChannelBoostLayout;->loadOnlyGifts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    .line 490
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :catch_0
    new-instance v0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUsers$5()V
    .locals 1

    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    const/4 v0, 0x1

    .line 502
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$loadUsers$6()V
    .locals 1

    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    const/4 v0, 0x1

    .line 507
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v8, p5

    .line 342
    instance-of v1, v8, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;

    const/4 v9, 0x0

    if-eqz v1, :cond_6

    .line 343
    move-object v1, v8

    check-cast v1, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;

    .line 344
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    move-result-object v2

    .line 345
    iget-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->gift:Z

    const-wide/16 v4, -0x1

    if-nez v3, :cond_0

    iget-boolean v6, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->giveaway:Z

    if-eqz v6, :cond_1

    :cond_0
    iget-wide v10, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->user_id:J

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-gez v6, :cond_4

    :cond_1
    iget-boolean v6, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->unclaimed:Z

    if-eqz v6, :cond_2

    goto :goto_0

    .line 360
    :cond_2
    iget-boolean v6, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->giveaway:Z

    if-eqz v6, :cond_3

    iget-wide v10, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->user_id:J

    cmp-long v2, v10, v4

    if-nez v2, :cond_3

    .line 361
    new-instance v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 362
    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    new-array v3, v9, [Ljava/lang/String;

    const/16 v4, 0x24

    invoke-virtual {v1, v2, v4, v4, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 363
    iget-object v2, v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingRecipientWillBeSelected:I

    const-string v4, "BoostingRecipientWillBeSelected"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v2, v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 365
    iget-object v2, v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v2, 0xabe

    .line 366
    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_2

    :cond_3
    if-nez v3, :cond_6

    if-nez v6, :cond_6

    .line 368
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 346
    :cond_4
    :goto_0
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;-><init>()V

    .line 347
    iget v1, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->giveaway_msg_id:I

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->giveaway_msg_id:I

    .line 348
    iget-wide v10, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->user_id:J

    iput-wide v10, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    .line 349
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ChannelBoostLayout;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v10, v10

    invoke-virtual {v1, v10, v11}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 350
    iget v1, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->date:I

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->date:I

    .line 351
    iget-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->giveaway:Z

    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    .line 352
    iget v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->expires:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x1e

    const v1, 0x15180

    div-int/2addr v3, v1

    iput v3, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->months:I

    .line 353
    iget-boolean v1, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->unclaimed:Z

    if-eqz v1, :cond_5

    .line 354
    iput-wide v4, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    const/4 v1, -0x1

    .line 355
    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    goto :goto_1

    .line 357
    :cond_5
    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    .line 359
    :goto_1
    new-instance v10, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v11, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;->used_gift_slug:Ljava/lang/String;

    move-object v1, v10

    move-object v2, p1

    move-object v5, v6

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 371
    :cond_6
    :goto_2
    instance-of v1, v8, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_7

    .line 372
    invoke-static/range {p1 .. p4}, Lorg/telegram/ui/Components/Premium/boosts/BoostPagerBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 374
    :cond_7
    instance-of v1, v8, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;

    if-eqz v1, :cond_8

    .line 375
    move-object v1, v8

    check-cast v1, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->getPrepaidGiveaway()Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    move-result-object v1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static {p1, v4, v2, v3, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostPagerBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;)V

    .line 377
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget v1, v1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    .line 378
    iget v1, v0, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    move v9, v2

    :cond_9
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChannelBoostLayout;->loadUsers(Ljava/lang/Boolean;)V

    :cond_a
    return-void
.end method

.method private loadOnlyBoosts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 4

    .line 513
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;-><init>()V

    .line 514
    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitBoosts:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->limit:I

    .line 515
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastBoostsOffset:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->offset:Ljava/lang/String;

    .line 516
    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 518
    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private loadOnlyGifts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 4

    .line 543
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;-><init>()V

    .line 544
    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitGifts:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->limit:I

    const/4 v1, 0x1

    .line 545
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->gifts:Z

    .line 546
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastGiftsOffset:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->offset:Ljava/lang/String;

    .line 547
    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 549
    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private loadStatistic()V
    .locals 4

    .line 458
    iget v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    new-instance v3, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private loadUsers(Ljava/lang/Boolean;)V
    .locals 1

    .line 480
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    if-nez p1, :cond_1

    .line 485
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 500
    new-instance p1, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->loadOnlyGifts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 505
    :cond_2
    new-instance p1, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->loadOnlyBoosts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createEmptyView(Landroid/content/Context;)V
    .locals 11

    .line 624
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 625
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 627
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 628
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 629
    sget v2, Lorg/telegram/messenger/R$raw;->statistic_preload:I

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 630
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 633
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 634
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "fonts/rmedium.ttf"

    .line 635
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 636
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 638
    sget v3, Lorg/telegram/messenger/R$string;->LoadingStats:I

    const-string v4, "LoadingStats"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 641
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 642
    invoke-virtual {v3, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 643
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 645
    sget p1, Lorg/telegram/messenger/R$string;->LoadingStatsDescription:I

    const-string v4, "LoadingStatsDescription"

    invoke-static {v4, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 648
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x78

    const/16 v5, 0x78

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v10, 0xa

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v0, -0x2

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0xf0

    const/4 v1, -0x2

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateRows(Z)V
    .locals 17

    move-object/from16 v6, p0

    .line 392
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 393
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 394
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_c

    .line 395
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v2, 0x4

    const/4 v8, 0x0

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v2, Lorg/telegram/messenger/R$string;->StatisticOverview:I

    const-string v3, "StatisticOverview"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    invoke-direct {v1, v6, v9, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v8, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v2, 0x2

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x6

    if-lez v0, :cond_2

    .line 401
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/16 v3, 0xc

    sget v4, Lorg/telegram/messenger/R$string;->BoostingPreparedGiveaways:I

    const-string v5, "BoostingPreparedGiveaways"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v6, v3, v4}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v8

    .line 402
    :goto_0
    iget-object v1, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 403
    iget-object v1, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;

    .line 404
    iget-object v3, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/16 v5, 0xb

    iget-object v11, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v11, v11, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v9

    if-ne v0, v11, :cond_0

    move v11, v9

    goto :goto_1

    :cond_0
    move v11, v8

    :goto_1
    invoke-direct {v4, v6, v5, v1, v11}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingSelectPaidGiveaway:I

    const-string v4, "BoostingSelectPaidGiveaway"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v10, v3}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/16 v3, 0xd

    sget v4, Lorg/telegram/messenger/R$string;->Boosters:I

    const-string v5, "Boosters"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v6, v3, v4}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    const-string v11, "BoostersInfoDescription"

    const/16 v12, 0x9

    const/4 v13, 0x7

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 411
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v3, v6, v1, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_3
    move v14, v8

    .line 415
    :goto_2
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_5

    .line 416
    iget-object v15, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v2, 0x5

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    if-ne v14, v0, :cond_4

    iget-boolean v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->hasBoostsNext:Z

    if-nez v0, :cond_4

    move v4, v9

    goto :goto_3

    :cond_4
    move v4, v8

    :goto_3
    iget v1, v6, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    move-object v0, v5

    move/from16 v16, v1

    move-object/from16 v1, p0

    move-object v10, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILorg/telegram/tgnet/tl/TL_stories$TL_boost;ZI)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x6

    goto :goto_2

    .line 418
    :cond_5
    iget-boolean v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->hasBoostsNext:Z

    if-eqz v0, :cond_6

    .line 419
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v12, v9}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 421
    :cond_6
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v13, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :goto_4
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v2, Lorg/telegram/messenger/R$string;->BoostersInfoDescription:I

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v6, v3, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 426
    :cond_7
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 427
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v3, v6, v1, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    move v10, v8

    .line 430
    :goto_5
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_a

    .line 431
    iget-object v14, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v2, 0x5

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    if-ne v10, v0, :cond_9

    iget-boolean v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->hasGiftsNext:Z

    if-nez v0, :cond_9

    move v4, v9

    goto :goto_6

    :cond_9
    move v4, v8

    :goto_6
    iget v5, v6, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILorg/telegram/tgnet/tl/TL_stories$TL_boost;ZI)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 433
    :cond_a
    iget-boolean v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->hasGiftsNext:Z

    if-eqz v0, :cond_b

    .line 434
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v12, v9}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 436
    :cond_b
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v13, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :goto_7
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v2, Lorg/telegram/messenger/R$string;->BoostersInfoDescription:I

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v6, v3, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :goto_8
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v2, Lorg/telegram/messenger/R$string;->LinkForBoosting:I

    const-string v3, "LinkForBoosting"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v9, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v2, 0x3

    iget-object v3, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boost_url:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->giveawayGiftsPurchaseAvailable:Z

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 445
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingShareThisLink:I

    const-string v3, "BoostingShareThisLink"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v6, v3, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/16 v2, 0xa

    invoke-direct {v1, v6, v2, v9}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingGetMoreBoosts:I

    const-string v3, "BoostingGetMoreBoosts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v6, v3, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz p1, :cond_d

    .line 451
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    iget-object v1, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_9

    .line 453
    :cond_d
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_9
    return-void
.end method
