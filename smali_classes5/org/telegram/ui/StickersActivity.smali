.class public Lorg/telegram/ui/StickersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "StickersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StickersActivity$ListAdapter;,
        Lorg/telegram/ui/StickersActivity$TouchHelperCallback;
    }
.end annotation


# instance fields
.field private activeReorderingRequests:I

.field private archivedInfoRow:I

.field private archivedRow:I

.field private currentType:I

.field private deleteMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dynamicPackOrder:I

.field private dynamicPackOrderInfo:I

.field private emojiPacksRow:I

.field private featuredEmojiEnabledRow:I

.field private featuredStickersEndRow:I

.field private featuredStickersHeaderRow:I

.field private featuredStickersShadowRow:I

.field private featuredStickersShowMoreRow:I

.field private featuredStickersStartRow:I

.field frozenEmojiPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private isListeningForFeaturedUpdate:Z

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private largeEmojiRow:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loopInfoRow:I

.field private loopRow:I

.field private masksInfoRow:I

.field private masksRow:I

.field private needReorder:Z

.field private reactionsDoubleTapRow:I

.field private rowCount:I

.field private selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private stickersBotInfo:I

.field private stickersEndRow:I

.field private stickersHeaderRow:I

.field private stickersShadowRow:I

.field private stickersSizeRow:I

.field private stickersStartRow:I

.field private suggestAnimatedEmojiInfoRow:I

.field private suggestAnimatedEmojiRow:I

.field private suggestRow:I

.field private trendingStickersAlert:Lorg/telegram/ui/Components/TrendingStickersAlert;

.field private updateSuggestStickers:Z


# direct methods
.method public static synthetic $r8$lambda$1IDBYSPgzUG-ZVwLocNDvHUbYP4(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/StickersActivity;->lambda$createView$3(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9FxVOu4eAnVd1JCqxtc1v1lYAtk(Lorg/telegram/ui/StickersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StickersActivity;->lambda$sendReorder$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ExLYkFtZgC-illZbXV44jdnDPpQ(Lorg/telegram/ui/StickersActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StickersActivity;->lambda$createView$4(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Lvk5k_T4Ts31osYTtrMHiiMW6Qg(Lorg/telegram/ui/StickersActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StickersActivity;->lambda$showStickersSizeDialog$0(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pe2RRdzxdzObHu_UZhB6HBpOohs(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/StickersActivity;->lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RXapYd3TMO5SbZ1nbVLjtZFLrLY(Lorg/telegram/ui/StickersActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StickersActivity;->lambda$createView$2(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jNNEY1prKCtSh5WkQ1ZCpl1_OIw(Lorg/telegram/ui/StickersActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->lambda$sendReorder$5()V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;)V"
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 266
    iput p1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    .line 267
    iput-object p2, p0, Lorg/telegram/ui/StickersActivity;->frozenEmojiPacks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/StickersActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->sendReorder()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/StickersActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/StickersActivity;->isListeningForFeaturedUpdate:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/StickersActivity;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/StickersActivity;->isListeningForFeaturedUpdate:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersEndRow:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/StickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity;->getLinkForSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/StickersActivity;)Landroid/view/View;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersHeaderRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersHeaderRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersBotInfo:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->loopInfoRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiInfoRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrderInfo:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/StickersActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersSizeRow:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/StickersActivity;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShowMoreRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->emojiPacksRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->suggestRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->activeReorderingRequests:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/StickersActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/StickersActivity;->updateSuggestStickers:Z

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/StickersActivity;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/StickersActivity;->updateSuggestStickers:Z

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredEmojiEnabledRow:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->loopRow:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->largeEmojiRow:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrder:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShadowRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->reactionsDoubleTapRow:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity;->deleteMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/StickersActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    return p0
.end method

.method private getFeaturedSets()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation

    .line 198
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    .line 200
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 202
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 203
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v4, v5, v2}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(JZ)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v4, v3, -0x1

    .line 204
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private getLinkForSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Ljava/lang/String;
    .locals 4

    .line 1653
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v2, :cond_0

    const-string v2, "addemoji"

    goto :goto_0

    :cond_0
    const-string v2, "addstickers"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    .line 499
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 500
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setSuggestStickers(I)V

    const/4 p2, 0x1

    .line 501
    iput-boolean p2, p0, Lorg/telegram/ui/StickersActivity;->updateSuggestStickers:Z

    .line 502
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->suggestRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 503
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/content/Context;Landroid/view/View;I)V
    .locals 10

    .line 395
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersSizeRow:I

    if-ne p3, v0, :cond_0

    .line 396
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->showStickersSizeDialog()V

    goto/16 :goto_4

    .line 397
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredEmojiEnabledRow:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_1

    .line 398
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    xor-int/2addr p1, v2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setSuggestPremiumReactionsEmoji(Z)V

    .line 399
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 400
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 401
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 403
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    const/4 v3, 0x5

    if-lt p3, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersEndRow:I

    if-ge p3, v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$800(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    sub-int/2addr p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 405
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 406
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide p2, v7, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 407
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide p1, v7, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 408
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne p1, v3, :cond_2

    .line 409
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 413
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 415
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShowMoreRow:I

    const/4 v4, 0x0

    if-ne p3, v0, :cond_7

    .line 416
    iget p2, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne p2, v3, :cond_6

    .line 417
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->getFeaturedSets()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 420
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_5

    .line 421
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz p3, :cond_4

    .line 422
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_4

    .line 423
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 424
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 425
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 426
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_5
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2, v2, v2}, Lorg/telegram/messenger/MediaDataController;->markFeaturedStickersAsRead(ZZ)V

    .line 431
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 433
    :cond_6
    new-instance p2, Lorg/telegram/ui/StickersActivity$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/StickersActivity$3;-><init>(Lorg/telegram/ui/StickersActivity;)V

    .line 444
    new-instance p3, Lorg/telegram/ui/Components/TrendingStickersAlert;

    new-instance v0, Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/TrendingStickersLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;)V

    invoke-direct {p3, p1, p0, v0, v4}, Lorg/telegram/ui/Components/TrendingStickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/TrendingStickersLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/StickersActivity;->trendingStickersAlert:Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 445
    invoke-virtual {p3}, Lorg/telegram/ui/Components/TrendingStickersAlert;->show()V

    goto/16 :goto_4

    .line 447
    :cond_7
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    if-lt p3, p1, :cond_c

    iget p1, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    if-ge p3, p1, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 448
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result p1

    if-nez p1, :cond_b

    .line 449
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$700(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    sub-int/2addr p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 450
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    .line 451
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 454
    :cond_8
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_9

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz p1, :cond_9

    .line 455
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 457
    iget-object p3, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 458
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 459
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 462
    :cond_9
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    :cond_a
    :goto_1
    return-void

    .line 465
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/StickersActivity$ListAdapter;->toggleSelected(I)V

    goto/16 :goto_4

    .line 467
    :cond_c
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    if-ne p3, p1, :cond_d

    .line 468
    new-instance p1, Lorg/telegram/ui/ArchivedStickersActivity;

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-direct {p1, p2}, Lorg/telegram/ui/ArchivedStickersActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4

    .line 469
    :cond_d
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    if-ne p3, p1, :cond_e

    .line 470
    new-instance p1, Lorg/telegram/ui/StickersActivity;

    invoke-direct {p1, v2, v4}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4

    .line 471
    :cond_e
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->emojiPacksRow:I

    if-ne p3, p1, :cond_f

    .line 472
    new-instance p1, Lorg/telegram/ui/StickersActivity;

    invoke-direct {p1, v3, v4}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4

    .line 473
    :cond_f
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->suggestRow:I

    if-ne p3, p1, :cond_13

    .line 475
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_10

    return-void

    .line 478
    :cond_10
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 479
    sget p2, Lorg/telegram/messenger/R$string;->SuggestStickers:I

    const-string p3, "SuggestStickers"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 p2, 0x3

    new-array p3, p2, [Ljava/lang/String;

    .line 480
    sget v0, Lorg/telegram/messenger/R$string;->SuggestStickersAll:I

    const-string v3, "SuggestStickersAll"

    .line 481
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    sget v0, Lorg/telegram/messenger/R$string;->SuggestStickersInstalled:I

    const-string v3, "SuggestStickersInstalled"

    .line 482
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    sget v0, Lorg/telegram/messenger/R$string;->SuggestStickersNone:I

    const-string v3, "SuggestStickersNone"

    .line 483
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, p3, v3

    .line 486
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 487
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 488
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p2, :cond_12

    .line 491
    new-instance v5, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x4

    .line 492
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v7, v1, v6, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 493
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const-string v6, "radioBackground"

    .line 494
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "dialogRadioBackgroundChecked"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 495
    aget-object v6, p3, v4

    sget v7, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-ne v7, v4, :cond_11

    const/4 v7, 0x1

    goto :goto_3

    :cond_11
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    const-string v6, "listSelectorSDK21"

    .line 496
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 497
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    new-instance v6, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/StickersActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 506
    :cond_12
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_4

    .line 508
    :cond_13
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->loopRow:I

    if-ne p3, p1, :cond_14

    .line 509
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleLoopStickers()V

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->loopRow:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_4

    .line 511
    :cond_14
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->largeEmojiRow:I

    if-ne p3, p1, :cond_15

    .line 512
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleBigEmoji()V

    .line 513
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_4

    .line 514
    :cond_15
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiRow:I

    if-ne p3, p1, :cond_16

    .line 515
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSuggestAnimatedEmoji()V

    .line 516
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_4

    .line 517
    :cond_16
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->reactionsDoubleTapRow:I

    if-ne p3, p1, :cond_17

    .line 518
    new-instance p1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-direct {p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_4

    .line 519
    :cond_17
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrder:I

    if-ne p3, p1, :cond_18

    .line 520
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleUpdateStickersOrderOnSend()V

    .line 521
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_18
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;I)Z
    .locals 0

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    if-lt p2, p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    if-ge p2, p1, :cond_0

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->toggleSelected(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$sendReorder$5()V
    .locals 1

    .line 580
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->activeReorderingRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->activeReorderingRequests:I

    return-void
.end method

.method private synthetic lambda$sendReorder$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 580
    new-instance p1, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showStickersSizeDialog$0(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 130
    invoke-static {}, Lorg/fork/enums/StickersSize;->values()[Lorg/fork/enums/StickersSize;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p2, v0, p2

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setSelectedStickersSize(Lorg/fork/enums/StickersSize;)V

    .line 131
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersSizeRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 132
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private sendReorder()V
    .locals 7

    .line 568
    iget-boolean v0, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->calcNewHash(I)V

    const/4 v0, 0x0

    .line 572
    iput-boolean v0, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    .line 573
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->activeReorderingRequests:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->activeReorderingRequests:I

    .line 574
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;-><init>()V

    .line 575
    iget v3, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v3, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->masks:Z

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 576
    :goto_1
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->emojis:Z

    const/4 v3, 0x0

    .line 577
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {v4}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$700(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 578
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->order:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {v5}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$700(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 580
    :cond_3
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 581
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private showStickersSizeDialog()V
    .locals 9

    .line 110
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    sget v1, Lorg/telegram/messenger/R$string;->stickers_size_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 115
    invoke-static {}, Lorg/fork/enums/StickersSize;->getTitles()[Ljava/lang/String;

    move-result-object v1

    .line 117
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 118
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 121
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 122
    new-instance v6, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    .line 123
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v8, v4, v7, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const-string v7, "radioBackground"

    .line 125
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    const-string v8, "dialogRadioBackgroundChecked"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 126
    aget-object v7, v1, v5

    sget-object v8, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lorg/fork/enums/StickersSize;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-ne v8, v5, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 127
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v7, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/StickersActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateRows(Z)V
    .locals 13

    .line 585
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    .line 587
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_0

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->frozenEmojiPacks:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 589
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity;->frozenEmojiPacks:Ljava/util/ArrayList;

    .line 591
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->frozenEmojiPacks:Ljava/util/ArrayList;

    goto :goto_0

    .line 593
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 598
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->getFeaturedSets()Ljava/util/List;

    move-result-object v1

    .line 599
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v4, :cond_3

    .line 600
    invoke-interface {v1, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 603
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 608
    iget v7, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v7, v2, :cond_7

    .line 609
    iget v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v8, 0x0

    .line 613
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 614
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v7, :cond_7

    const/4 v7, 0x0

    .line 621
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 622
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 630
    :cond_7
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    const/4 v7, 0x0

    if-eqz v1, :cond_9

    .line 631
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v1, :cond_8

    .line 632
    new-instance v1, Lorg/telegram/ui/StickersActivity$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/StickersActivity$4;-><init>(Lorg/telegram/ui/StickersActivity;Ljava/util/List;)V

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v7

    .line 658
    new-instance v1, Lorg/telegram/ui/StickersActivity$5;

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/StickersActivity$5;-><init>(Lorg/telegram/ui/StickersActivity;Ljava/util/List;)V

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    goto :goto_6

    :cond_8
    move-object v1, v7

    .line 684
    :goto_6
    iget-object v8, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->setStickerSets(Ljava/util/List;)V

    .line 685
    iget-object v8, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/StickersActivity$ListAdapter;->setFeaturedStickerSets(Ljava/util/List;)V

    goto :goto_7

    :cond_9
    move-object v1, v7

    .line 688
    :goto_7
    iput v5, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 690
    iget v8, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v9, -0x1

    if-nez v8, :cond_a

    const/4 v10, 0x0

    add-int/2addr v10, v6

    .line 691
    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/StickersActivity;->suggestRow:I

    add-int/lit8 v11, v10, 0x1

    .line 692
    iput v11, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->largeEmojiRow:I

    add-int/lit8 v10, v11, 0x1

    .line 693
    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v11, p0, Lorg/telegram/ui/StickersActivity;->stickersSizeRow:I

    add-int/lit8 v11, v10, 0x1

    .line 694
    iput v11, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->loopRow:I

    add-int/lit8 v10, v11, 0x1

    .line 695
    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v11, p0, Lorg/telegram/ui/StickersActivity;->loopInfoRow:I

    goto :goto_8

    .line 697
    :cond_a
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersSizeRow:I

    .line 698
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->suggestRow:I

    .line 699
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->largeEmojiRow:I

    .line 700
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->loopRow:I

    .line 701
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->loopInfoRow:I

    :goto_8
    if-ne v8, v2, :cond_b

    .line 705
    iget v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiRow:I

    add-int/lit8 v10, v11, 0x1

    .line 706
    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v11, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiInfoRow:I

    goto :goto_9

    .line 708
    :cond_b
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiRow:I

    .line 709
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiInfoRow:I

    :goto_9
    if-nez v8, :cond_c

    .line 713
    iget v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    add-int/lit8 v10, v11, 0x1

    .line 714
    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v11, p0, Lorg/telegram/ui/StickersActivity;->emojiPacksRow:I

    goto :goto_a

    .line 716
    :cond_c
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    .line 717
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->emojiPacksRow:I

    .line 720
    :goto_a
    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MediaDataController;->getArchivedStickersCount(I)I

    move-result v0

    const/4 v8, 0x2

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-eq v0, v2, :cond_10

    .line 721
    iget v10, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    if-ne v10, v9, :cond_d

    const/4 v10, 0x1

    goto :goto_b

    :cond_d
    const/4 v10, 0x0

    .line 723
    :goto_b
    iget v11, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v11, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    if-ne v0, v6, :cond_e

    add-int/lit8 v0, v12, 0x1

    .line 724
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    goto :goto_c

    :cond_e
    const/4 v12, -0x1

    :goto_c
    iput v12, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v0, :cond_12

    if-eqz v10, :cond_12

    if-eq v12, v9, :cond_f

    goto :goto_d

    :cond_f
    const/4 v8, 0x1

    .line 727
    :goto_d
    invoke-virtual {v0, v11, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_f

    .line 730
    :cond_10
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    .line 731
    iget v10, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    .line 733
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    .line 734
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    .line 736
    iget-object v11, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v11, :cond_12

    if-eq v0, v9, :cond_12

    if-eq v10, v9, :cond_11

    goto :goto_e

    :cond_11
    const/4 v8, 0x1

    .line 737
    :goto_e
    invoke-virtual {v11, v0, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 741
    :cond_12
    :goto_f
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-nez v0, :cond_13

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    if-eqz v8, :cond_13

    .line 742
    iget v8, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v10, v8, 0x1

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/StickersActivity;->reactionsDoubleTapRow:I

    goto :goto_10

    .line 744
    :cond_13
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->reactionsDoubleTapRow:I

    .line 747
    :goto_10
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersBotInfo:I

    if-nez v0, :cond_14

    .line 749
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->stickersBotInfo:I

    .line 752
    :cond_14
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersHeaderRow:I

    .line 753
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->featuredEmojiEnabledRow:I

    .line 754
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    .line 755
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersEndRow:I

    .line 756
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShowMoreRow:I

    .line 757
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShadowRow:I

    .line 758
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-nez v0, :cond_16

    .line 759
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersHeaderRow:I

    .line 760
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    .line 761
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v8, v0

    iput v8, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 762
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersEndRow:I

    if-eqz v3, :cond_15

    add-int/lit8 v0, v8, 0x1

    .line 765
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShowMoreRow:I

    .line 767
    :cond_15
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShadowRow:I

    .line 770
    :cond_16
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-nez v0, :cond_17

    .line 771
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrder:I

    add-int/lit8 v0, v8, 0x1

    .line 772
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrderInfo:I

    goto :goto_11

    .line 774
    :cond_17
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrder:I

    .line 775
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrderInfo:I

    .line 778
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1c

    .line 780
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-eq v0, v2, :cond_19

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-nez v0, :cond_18

    goto :goto_12

    .line 783
    :cond_18
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersHeaderRow:I

    goto :goto_13

    .line 781
    :cond_19
    :goto_12
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->stickersHeaderRow:I

    .line 786
    :goto_13
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    add-int/2addr v0, p1

    .line 787
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 788
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    .line 790
    iget v8, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-eq v8, v6, :cond_1a

    if-eq v8, v2, :cond_1a

    add-int/lit8 v6, v0, 0x1

    .line 791
    iput v6, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    .line 792
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    goto :goto_14

    :cond_1a
    if-ne v8, v6, :cond_1b

    add-int/lit8 v6, v0, 0x1

    .line 794
    iput v6, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    .line 795
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    goto :goto_14

    .line 797
    :cond_1b
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    .line 798
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    goto :goto_14

    .line 801
    :cond_1c
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersHeaderRow:I

    .line 802
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    .line 803
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    .line 804
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    .line 805
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    .line 808
    :goto_14
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v0, v2, :cond_1e

    if-lez p1, :cond_1d

    .line 810
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShadowRow:I

    .line 813
    :cond_1d
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersHeaderRow:I

    add-int/lit8 p1, v0, 0x1

    .line 814
    iput p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->featuredEmojiEnabledRow:I

    .line 815
    iput p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    .line 816
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 817
    iput p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersEndRow:I

    if-eqz v3, :cond_1e

    add-int/lit8 v0, p1, 0x1

    .line 820
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShowMoreRow:I

    .line 824
    :cond_1e
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne p1, v2, :cond_1f

    .line 825
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/StickersActivity;->stickersBotInfo:I

    .line 828
    :cond_1f
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz p1, :cond_23

    if-eqz v7, :cond_21

    .line 830
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    if-ltz v0, :cond_20

    goto :goto_15

    :cond_20
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 831
    :goto_15
    invoke-virtual {p1, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 832
    new-instance p1, Lorg/telegram/ui/StickersActivity$6;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/StickersActivity$6;-><init>(Lorg/telegram/ui/StickersActivity;I)V

    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    :cond_21
    if-eqz v1, :cond_23

    .line 857
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    if-ltz p1, :cond_22

    goto :goto_16

    :cond_22
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 858
    :goto_16
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0, v5, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 859
    new-instance v0, Lorg/telegram/ui/StickersActivity$7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/StickersActivity$7;-><init>(Lorg/telegram/ui/StickersActivity;I)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    :cond_23
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 312
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v3, 0x5

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->StickersName:I

    const-string v5, "StickersName"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->Masks:I

    const-string v5, "Masks"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->Emoji:I

    const-string v5, "Emoji"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 319
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/StickersActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StickersActivity$1;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 340
    new-instance v4, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x12

    .line 341
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 342
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 343
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v5, "actionBarActionModeDefaultIcon"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 344
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x48

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget-object v5, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v4, 0x2

    .line 347
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_share:I

    const/16 v6, 0x36

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v0, v4, v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 348
    iget v4, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-eq v4, v3, :cond_3

    .line 349
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 351
    :cond_3
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/StickersActivity;->deleteMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 354
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->frozenEmojiPacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 357
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->getFeaturedSets()Ljava/util/List;

    move-result-object v3

    .line 360
    new-instance v4, Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-direct {v4, p0, p1, v0, v3}, Lorg/telegram/ui/StickersActivity$ListAdapter;-><init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v4, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    .line 362
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 363
    check-cast v0, Landroid/widget/FrameLayout;

    const-string v3, "windowBackgroundGray"

    .line 364
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 366
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 367
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 368
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 369
    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v4, 0x15e

    .line 370
    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 371
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 373
    new-instance v3, Lorg/telegram/ui/StickersActivity$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/StickersActivity$2;-><init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 384
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 385
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 386
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v3, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;

    invoke-direct {v3, p0}, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lorg/telegram/ui/StickersActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 387
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 388
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 389
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 391
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 524
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 533
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 548
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 549
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 550
    iget p2, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$600(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 552
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity;->updateRows(Z)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_5

    if-ne p1, v0, :cond_5

    .line 554
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 556
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    if-eq p1, p2, :cond_4

    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 558
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoad:I

    if-ne p1, p2, :cond_3

    .line 559
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne p1, p2, :cond_5

    .line 560
    invoke-direct {p0, v0}, Lorg/telegram/ui/StickersActivity;->updateRows(Z)V

    goto :goto_1

    .line 562
    :cond_3
    sget p1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    goto :goto_1

    .line 557
    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/StickersActivity;->updateRows(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/StickerSetCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "windowBackgroundGray"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v20, "actionBarDefault"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v20, "actionBarDefaultTitle"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    const-string v20, "actionBarActionModeDefaultIcon"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    const-string v10, "actionBarActionModeDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const-string v20, "actionBarActionModeDefaultTop"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    const-string v10, "actionBarActionModeDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v20, "actionBarActionModeDefaultIcon"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v10, "listSelectorSDK21"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v11

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    const-string v20, "divider"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v11

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "windowBackgroundWhiteBlackText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    const-string v4, "checkBox"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "switchTrack"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1681
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v6, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "switchTrackChecked"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1683
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v3, v11

    const/16 v17, 0x0

    const-string v20, "windowBackgroundGrayShadow"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v6, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const/16 v26, 0x0

    const-string v29, "windowBackgroundWhiteGrayText4"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v6

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteLinkText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v6, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v3, v11

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const-string v21, "windowBackgroundWhiteValueText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v8, v7, v11

    const/16 v26, 0x0

    const-string v29, "windowBackgroundGrayShadow"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v7

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v7, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v7, v5, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteGrayText2"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v15, v3, v5

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v3, v11

    const-string v5, "optionsButton"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "stickers_menuSelector"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v7, v6, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "stickers_menu"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v3, v11

    const-string v5, "reorderButton"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const-string v21, "stickers_menu"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhite"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "checkboxCheck"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    iget-object v2, v0, Lorg/telegram/ui/StickersActivity;->trendingStickersAlert:Lorg/telegram/ui/Components/TrendingStickersAlert;

    if-eqz v2, :cond_0

    .line 1701
    invoke-virtual {v2}, Lorg/telegram/ui/Components/TrendingStickersAlert;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->clearSelected()V

    const/4 v0, 0x0

    return v0

    .line 543
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 272
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 273
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 274
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 275
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedStickers()V

    .line 276
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 277
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 279
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedEmoji()V

    .line 280
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 282
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 283
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 284
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 285
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, v0}, Lorg/telegram/ui/StickersActivity;->updateRows(Z)V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 292
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 293
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 294
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 296
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 297
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 298
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 299
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 886
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 887
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
