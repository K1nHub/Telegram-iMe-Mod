.class Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "GroupStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field private lastCallback:Ljava/lang/Runnable;

.field private lastQuery:Ljava/lang/String;

.field private localSearchEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private reqId:I

.field private searchEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;


# direct methods
.method public static synthetic $r8$lambda$Ln7ibdsutjS1tWfq3M7HStTZnSk(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->lambda$onSearchStickers$0(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-cyTHncxVyP1qHizMhjNCNodq8(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->lambda$onSearchStickers$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z8CrOlz2UkqEYLUCqosGo4cbyE0(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->lambda$onSearchStickers$1(Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/GroupStickersActivity;Landroid/content/Context;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 445
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    .line 446
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->localSearchEntries:Ljava/util/List;

    .line 453
    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 454
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->onSearchStickers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;
    .locals 0

    .line 440
    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;)Ljava/util/List;
    .locals 0

    .line 440
    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->localSearchEntries:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$onSearchStickers$0(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    .line 527
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    .line 528
    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->localSearchEntries:Ljava/util/List;

    .line 529
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 531
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChooseStickerNoResultsFound:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    return-void
.end method

.method private synthetic lambda$onSearchStickers$1(Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 506
    iget-object p4, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->lastQuery:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;->q:Ljava/lang/String;

    invoke-static {p4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 510
    :cond_0
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickerSets;

    if-eqz p1, :cond_5

    .line 511
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickerSets;

    .line 513
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickerSets;->sets:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 514
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 515
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 516
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 517
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 519
    :cond_1
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 520
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1500(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 522
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 523
    :cond_3
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 526
    :cond_4
    new-instance p3, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p4, p2}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$onSearchStickers$2(Ljava/lang/String;)V
    .locals 3

    .line 501
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->lastQuery:Ljava/lang/String;

    .line 503
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;-><init>()V

    .line 504
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;->q:Ljava/lang/String;

    .line 505
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;Ljava/lang/String;)V

    const/16 p1, 0x42

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->reqId:I

    return-void
.end method

.method private onSearchStickers(Ljava/lang/String;)V
    .locals 4

    .line 470
    iget v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->reqId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->reqId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 472
    iput v1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->reqId:I

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->lastCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 476
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 477
    iput-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->lastCallback:Ljava/lang/Runnable;

    .line 479
    :cond_1
    iput-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->lastQuery:Ljava/lang/String;

    .line 481
    invoke-virtual {p0}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 483
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 484
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->localSearchEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 485
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 488
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    return-void

    .line 494
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_0

    .line 498
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 500
    :goto_0
    new-instance v0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->lastCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->localSearchEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->localSearchEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 459
    invoke-virtual {p0, p1}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->localSearchEntries:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    .line 461
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 463
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 597
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 562
    invoke-virtual {p0, p2}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 564
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 565
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->localSearchEntries:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    :goto_1
    if-eqz v0, :cond_3

    .line 566
    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->searchEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr p2, v4

    sub-int/2addr p2, v2

    .line 567
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    .line 568
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 569
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq p2, v3, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    xor-int/2addr v0, v2

    invoke-virtual {p1, v4, p2, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ZZ)V

    .line 570
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->lastQuery:Ljava/lang/String;

    if-eqz p2, :cond_5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    const-string p2, ""

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-virtual {p1, v4, p2, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->setSearchQuery(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 572
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 573
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    goto :goto_4

    .line 574
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupStickersActivity;->access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupStickersActivity;->access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_7

    .line 575
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupStickersActivity;->access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    goto :goto_4

    :cond_7
    const-wide/16 v5, 0x0

    .line 579
    :goto_4
    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long p2, v3, v5

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    move v2, v1

    :goto_5
    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    if-eqz p2, :cond_0

    .line 551
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    const-string v2, "windowBackgroundWhiteGrayText4"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 552
    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 553
    sget p2, Lorg/telegram/messenger/R$string;->ChooseStickerMyStickerSets:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 546
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/StickerSetCell;

    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/StickerSetCell;-><init>(Landroid/content/Context;I)V

    const-string p2, "windowBackgroundWhite"

    .line 547
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 556
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
