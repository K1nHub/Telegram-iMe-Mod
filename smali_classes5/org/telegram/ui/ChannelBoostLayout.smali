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

.field boosters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_booster;",
            ">;"
        }
    .end annotation
.end field

.field boostsStatus:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

.field currentAccount:I

.field private final dialogId:J

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field hasNext:Z

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;",
            ">;"
        }
    .end annotation
.end field

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field nextRemaining:I

.field private progressLayout:Landroid/widget/LinearLayout;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field usersLoading:Z


# direct methods
.method public static synthetic $r8$lambda$LsvxhQ01V--9RwW1sMrxDI5CrzY(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadUsers$3(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TvfhOV9qCrdFUhuaf228vtPsA8o(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pPqW5UjUuRJWvoRpG4IiPrQ-Z-A(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadStatistic$1(Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vIVuDwCrUrrF7l8THW_PtromGlA(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadUsers$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yT5XZoRxXrrfmZRU4XJqRaE9W4A(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadStatistic$2(Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 213
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lorg/telegram/ui/ChannelBoostLayout$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelBoostLayout$1;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    .line 214
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 215
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    iput-object p4, p0, Lorg/telegram/ui/ChannelBoostLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 217
    iput-wide p2, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    .line 218
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 219
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 220
    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const/4 p3, 0x0

    .line 221
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 222
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 223
    iget-object p4, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 224
    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p4, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 235
    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->loadStatistic()V

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 237
    invoke-direct {p0, p3}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    .line 238
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->createEmptyView(Landroid/content/Context;)V

    .line 239
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 240
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

.method static synthetic access$000(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelBoostLayout;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelBoostLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private synthetic lambda$loadStatistic$1(Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V
    .locals 2

    .line 280
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    .line 281
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 282
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

    .line 288
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    .line 289
    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->loadUsers()V

    return-void
.end method

.method private synthetic lambda$loadStatistic$2(Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V
    .locals 1

    .line 279
    new-instance v0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUsers$3(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    if-eqz p1, :cond_1

    .line 306
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stories_boostersList;

    .line 307
    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_boostersList;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_boostersList;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 309
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_boostersList;->next_offset:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_boostersList;->count:I

    if-ge v1, v3, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->hasNext:Z

    .line 310
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_boostersList;->count:I

    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextRemaining:I

    .line 311
    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadUsers$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 303
    new-instance p2, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 2

    .line 225
    instance-of v0, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v0, :cond_0

    .line 226
    check-cast p2, Lorg/telegram/ui/Cells/UserCell;

    .line 227
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 229
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    .line 230
    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->loadUsers()V

    :cond_1
    return-void
.end method

.method private loadStatistic()V
    .locals 4

    .line 279
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

.method private loadUsers()V
    .locals 4

    .line 295
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    .line 299
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getBoostersList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_getBoostersList;-><init>()V

    const/16 v1, 0x19

    .line 300
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getBoostersList;->limit:I

    const-string v1, ""

    .line 301
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getBoostersList;->offset:Ljava/lang/String;

    .line 302
    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getBoostersList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 303
    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private updateRows(Z)V
    .locals 8

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    if-eqz v1, :cond_3

    .line 247
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v3, Lorg/telegram/messenger/R$string;->StatisticOverview:I

    const-string v5, "StatisticOverview"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v2, p0, v5, v3}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v2, p0, v4, v5}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v6, Lorg/telegram/messenger/R$string;->Boosters:I

    const-string v7, "Boosters"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, p0, v5, v6}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/16 v6, 0x8

    invoke-direct {v2, p0, v6, v4}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    move v1, v4

    .line 258
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 259
    iget-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v6, 0x5

    iget-object v7, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_booster;

    invoke-direct {v3, p0, v6, v7}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILorg/telegram/tgnet/TLRPC$TL_booster;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->hasNext:Z

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v3, 0x6

    sget v6, Lorg/telegram/messenger/R$string;->BoostersInfoDescription:I

    const-string v7, "BoostersInfoDescription"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, p0, v3, v6}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v3, Lorg/telegram/messenger/R$string;->LinkForBoosting:I

    const-string v6, "LinkForBoosting"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v5, v3}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 274
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method


# virtual methods
.method public createEmptyView(Landroid/content/Context;)V
    .locals 11

    .line 355
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 358
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 360
    sget v2, Lorg/telegram/messenger/R$raw;->statistic_preload:I

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 361
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 364
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 365
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "fonts/rmedium.ttf"

    .line 366
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 367
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 369
    sget v3, Lorg/telegram/messenger/R$string;->LoadingStats:I

    const-string v4, "LoadingStats"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 372
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 373
    invoke-virtual {v3, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 374
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 376
    sget p1, Lorg/telegram/messenger/R$string;->LoadingStatsDescription:I

    const-string v4, "LoadingStatsDescription"

    invoke-static {v4, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 379
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

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v10, 0xa

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v0, -0x2

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
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
