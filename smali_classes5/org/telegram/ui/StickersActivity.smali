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

.field private featuredRow:I

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

.field private stickersSettingsRow:I

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

    .line 268
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 269
    iput p1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    .line 270
    iput-object p2, p0, Lorg/telegram/ui/StickersActivity;->frozenEmojiPacks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/StickersActivity;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->sendReorder()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/StickersActivity;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lorg/telegram/ui/StickersActivity;->isListeningForFeaturedUpdate:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/StickersActivity;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lorg/telegram/ui/StickersActivity;->isListeningForFeaturedUpdate:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersEndRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/StickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity;->getLinkForSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/StickersActivity;)Landroid/view/View;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersHeaderRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersSettingsRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersBotInfo:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->loopInfoRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiInfoRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/StickersActivity;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/StickersActivity;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrderInfo:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersSizeRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShowMoreRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->activeReorderingRequests:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/StickersActivity;)Ljava/util/List;
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->getFeaturedSets()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->emojiPacksRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->suggestRow:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/StickersActivity;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lorg/telegram/ui/StickersActivity;->updateSuggestStickers:Z

    return p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/StickersActivity;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lorg/telegram/ui/StickersActivity;->updateSuggestStickers:Z

    return p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredEmojiEnabledRow:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->loopRow:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->largeEmojiRow:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiRow:I

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrder:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShadowRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->reactionsDoubleTapRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity;->deleteMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/StickersActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersHeaderRow:I

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/StickersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

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

    .line 201
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    .line 203
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move v3, v2

    .line 205
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 206
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

    .line 207
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private getLinkForSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Ljava/lang/String;
    .locals 4

    .line 1676
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

    .line 514
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 515
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setSuggestStickers(I)V

    const/4 p2, 0x1

    .line 516
    iput-boolean p2, p0, Lorg/telegram/ui/StickersActivity;->updateSuggestStickers:Z

    .line 517
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->suggestRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 518
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/content/Context;Landroid/view/View;I)V
    .locals 10

    .line 410
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersSizeRow:I

    if-ne p3, v0, :cond_0

    .line 411
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->showStickersSizeDialog()V

    goto/16 :goto_5

    .line 412
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredEmojiEnabledRow:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_1

    .line 413
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    xor-int/2addr p1, v2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setSuggestPremiumReactionsEmoji(Z)V

    .line 414
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 415
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 416
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 418
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    const/4 v3, 0x5

    if-lt p3, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersEndRow:I

    if-ge p3, v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 419
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$1100(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    sub-int/2addr p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 420
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 421
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide p2, v7, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 422
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide p1, v7, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 423
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne p1, v3, :cond_2

    .line 424
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 428
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

    goto/16 :goto_5

    .line 430
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShowMoreRow:I

    const/4 v4, 0x0

    if-eq p3, v0, :cond_15

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredRow:I

    if-ne p3, v0, :cond_4

    goto/16 :goto_3

    .line 462
    :cond_4
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    if-lt p3, p1, :cond_9

    iget p1, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    if-ge p3, p1, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result p1

    if-nez p1, :cond_8

    .line 464
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$1000(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    sub-int/2addr p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 465
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 466
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 469
    :cond_5
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_6

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz p1, :cond_6

    .line 470
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 471
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 472
    iget-object p3, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 473
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 474
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 477
    :cond_6
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    :cond_7
    :goto_0
    return-void

    .line 480
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/StickersActivity$ListAdapter;->toggleSelected(I)V

    goto/16 :goto_5

    .line 482
    :cond_9
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    if-ne p3, p1, :cond_a

    .line 483
    new-instance p1, Lorg/telegram/ui/ArchivedStickersActivity;

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-direct {p1, p2}, Lorg/telegram/ui/ArchivedStickersActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    .line 484
    :cond_a
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    if-ne p3, p1, :cond_b

    .line 485
    new-instance p1, Lorg/telegram/ui/StickersActivity;

    invoke-direct {p1, v2, v4}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    .line 486
    :cond_b
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->emojiPacksRow:I

    if-ne p3, p1, :cond_c

    .line 487
    new-instance p1, Lorg/telegram/ui/StickersActivity;

    invoke-direct {p1, v3, v4}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    .line 488
    :cond_c
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->suggestRow:I

    if-ne p3, p1, :cond_10

    .line 490
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    .line 493
    :cond_d
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    sget p2, Lorg/telegram/messenger/R$string;->SuggestStickers:I

    const-string p3, "SuggestStickers"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 p2, 0x3

    new-array p3, p2, [Ljava/lang/String;

    .line 495
    sget v0, Lorg/telegram/messenger/R$string;->SuggestStickersAll:I

    const-string v3, "SuggestStickersAll"

    .line 496
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    sget v0, Lorg/telegram/messenger/R$string;->SuggestStickersInstalled:I

    const-string v3, "SuggestStickersInstalled"

    .line 497
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    sget v0, Lorg/telegram/messenger/R$string;->SuggestStickersNone:I

    const-string v3, "SuggestStickersNone"

    .line 498
    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, p3, v3

    .line 501
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 502
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 503
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move v4, v1

    :goto_1
    if-ge v4, p2, :cond_f

    .line 506
    new-instance v5, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x4

    .line 507
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v7, v1, v6, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 508
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 509
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 510
    aget-object v6, p3, v4

    sget v7, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-ne v7, v4, :cond_e

    move v7, v2

    goto :goto_2

    :cond_e
    move v7, v1

    :goto_2
    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 511
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 512
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 513
    new-instance v6, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/StickersActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 521
    :cond_f
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 523
    :cond_10
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->loopRow:I

    if-ne p3, p1, :cond_11

    .line 524
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleLoopStickers()V

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->loopRow:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 526
    :cond_11
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->largeEmojiRow:I

    if-ne p3, p1, :cond_12

    .line 527
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleBigEmoji()V

    .line 528
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_5

    .line 529
    :cond_12
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiRow:I

    if-ne p3, p1, :cond_13

    .line 530
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSuggestAnimatedEmoji()V

    .line 531
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_5

    .line 532
    :cond_13
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->reactionsDoubleTapRow:I

    if-ne p3, p1, :cond_14

    .line 533
    new-instance p1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;

    invoke-direct {p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    .line 534
    :cond_14
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrder:I

    if-ne p3, p1, :cond_19

    .line 535
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleUpdateStickersOrderOnSend()V

    .line 536
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_5

    .line 431
    :cond_15
    :goto_3
    iget p2, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne p2, v3, :cond_18

    .line 432
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->getFeaturedSets()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 435
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_17

    .line 436
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz p3, :cond_16

    .line 437
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_16

    .line 438
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 439
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 440
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 441
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 445
    :cond_17
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2, v2, v2}, Lorg/telegram/messenger/MediaDataController;->markFeaturedStickersAsRead(ZZ)V

    .line 446
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_5

    .line 448
    :cond_18
    new-instance p2, Lorg/telegram/ui/StickersActivity$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/StickersActivity$5;-><init>(Lorg/telegram/ui/StickersActivity;)V

    .line 459
    new-instance p3, Lorg/telegram/ui/Components/TrendingStickersAlert;

    new-instance v0, Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/TrendingStickersLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;)V

    invoke-direct {p3, p1, p0, v0, v4}, Lorg/telegram/ui/Components/TrendingStickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/TrendingStickersLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/StickersActivity;->trendingStickersAlert:Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 460
    invoke-virtual {p3}, Lorg/telegram/ui/Components/TrendingStickersAlert;->show()V

    :cond_19
    :goto_5
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;I)Z
    .locals 0

    .line 540
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    if-lt p2, p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    if-ge p2, p1, :cond_0

    .line 541
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

    .line 595
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->activeReorderingRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->activeReorderingRequests:I

    return-void
.end method

.method private synthetic lambda$sendReorder$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 595
    new-instance p1, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showStickersSizeDialog$0(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 131
    invoke-static {}, Lcom/iMe/fork/enums/StickersSize;->values()[Lcom/iMe/fork/enums/StickersSize;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p2, v0, p2

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setSelectedStickersSize(Lcom/iMe/fork/enums/StickersSize;)V

    .line 132
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersSizeRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 133
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private sendReorder()V
    .locals 7

    .line 583
    iget-boolean v0, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->calcNewHash(I)V

    const/4 v0, 0x0

    .line 587
    iput-boolean v0, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    .line 588
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->activeReorderingRequests:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->activeReorderingRequests:I

    .line 589
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;-><init>()V

    .line 590
    iget v3, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v3, v2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->masks:Z

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 591
    :goto_1
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->emojis:Z

    move v3, v0

    .line 592
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {v4}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$1000(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 593
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->order:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {v5}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$1000(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

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

    .line 595
    :cond_3
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 596
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

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 598
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrder:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 599
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleUpdateStickersOrderOnSend()V

    .line 600
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->filter_reorder:I

    sget v3, Lorg/telegram/messenger/R$string;->DynamicPackOrderOff:I

    const-string v4, "DynamicPackOrderOff"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->DynamicPackOrderOffInfo:I

    const-string v5, "DynamicPackOrderOffInfo"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 602
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 603
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 604
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 605
    iget v3, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrder:I

    if-ne v2, v3, :cond_4

    instance-of v2, v1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_4

    .line 606
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private showStickersSizeDialog()V
    .locals 9

    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    sget v1, Lorg/telegram/messenger/R$string;->stickers_size_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 116
    invoke-static {}, Lcom/iMe/fork/enums/StickersSize;->getTitles()[Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 119
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v4, 0x0

    move v5, v4

    .line 122
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 123
    new-instance v6, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    .line 124
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v8, v4, v7, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 126
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 127
    aget-object v7, v1, v5

    sget-object v8, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lcom/iMe/fork/enums/StickersSize;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-ne v8, v5, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 128
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v7, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/StickersActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateRows(Z)V
    .locals 13

    .line 614
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    .line 616
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_0

    .line 617
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->frozenEmojiPacks:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 618
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

    .line 620
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->frozenEmojiPacks:Ljava/util/ArrayList;

    goto :goto_0

    .line 622
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

    .line 627
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->getFeaturedSets()Ljava/util/List;

    move-result-object v1

    .line 628
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v4, :cond_3

    .line 629
    invoke-interface {v1, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v5

    .line 632
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 637
    iget v7, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v7, v2, :cond_7

    .line 638
    iget v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v7

    if-nez v7, :cond_5

    move v8, v5

    .line 642
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 643
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v9

    if-nez v9, :cond_4

    move v7, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v7, :cond_7

    move v7, v5

    .line 650
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 651
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

    .line 659
    :cond_7
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    const/4 v7, 0x0

    if-eqz v1, :cond_9

    .line 660
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v1, :cond_8

    .line 661
    new-instance v1, Lorg/telegram/ui/StickersActivity$6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/StickersActivity$6;-><init>(Lorg/telegram/ui/StickersActivity;Ljava/util/List;)V

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v7

    .line 687
    new-instance v1, Lorg/telegram/ui/StickersActivity$7;

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/StickersActivity$7;-><init>(Lorg/telegram/ui/StickersActivity;Ljava/util/List;)V

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    goto :goto_6

    :cond_8
    move-object v1, v7

    .line 713
    :goto_6
    iget-object v8, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->setStickerSets(Ljava/util/List;)V

    .line 714
    iget-object v8, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/StickersActivity$ListAdapter;->setFeaturedStickerSets(Ljava/util/List;)V

    goto :goto_7

    :cond_9
    move-object v1, v7

    .line 717
    :goto_7
    iput v5, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    const/4 v8, -0x1

    .line 719
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->loopRow:I

    .line 720
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->loopInfoRow:I

    .line 721
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    .line 723
    iget v9, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-nez v9, :cond_c

    const/4 v10, 0x0

    add-int/2addr v10, v6

    .line 724
    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/StickersActivity;->featuredRow:I

    .line 725
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    .line 726
    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MediaDataController;->getArchivedStickersCount(I)I

    move-result v0

    if-eqz v0, :cond_b

    .line 727
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    if-ne v0, v8, :cond_a

    move v0, v6

    goto :goto_8

    :cond_a
    move v0, v5

    .line 728
    :goto_8
    iget v9, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v9, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    .line 729
    iget-object v10, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v10, :cond_b

    if-eqz v0, :cond_b

    .line 730
    invoke-virtual {v10, v9, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 733
    :cond_b
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    .line 734
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->emojiPacksRow:I

    goto :goto_d

    .line 736
    :cond_c
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->featuredRow:I

    .line 737
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    .line 738
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->emojiPacksRow:I

    .line 740
    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MediaDataController;->getArchivedStickersCount(I)I

    move-result v0

    const/4 v9, 0x2

    if-eqz v0, :cond_10

    .line 741
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    if-ne v0, v8, :cond_d

    move v0, v6

    goto :goto_9

    :cond_d
    move v0, v5

    .line 743
    :goto_9
    iget v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    .line 744
    iget v12, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v12, v6, :cond_e

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    goto :goto_a

    :cond_e
    move v11, v8

    :goto_a
    iput v11, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    .line 746
    iget-object v12, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v12, :cond_12

    if-eqz v0, :cond_12

    if-eq v11, v8, :cond_f

    goto :goto_b

    :cond_f
    move v9, v6

    .line 747
    :goto_b
    invoke-virtual {v12, v10, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_d

    .line 750
    :cond_10
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    .line 751
    iget v10, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    .line 753
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    .line 754
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    .line 756
    iget-object v11, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v11, :cond_12

    if-eq v0, v8, :cond_12

    if-eq v10, v8, :cond_11

    goto :goto_c

    :cond_11
    move v9, v6

    .line 757
    :goto_c
    invoke-virtual {v11, v0, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 762
    :cond_12
    :goto_d
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v0, v2, :cond_13

    .line 763
    iget v9, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v9, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiRow:I

    add-int/lit8 v9, v10, 0x1

    .line 764
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiInfoRow:I

    goto :goto_e

    .line 766
    :cond_13
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiRow:I

    .line 767
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->suggestAnimatedEmojiInfoRow:I

    :goto_e
    if-nez v0, :cond_14

    .line 770
    sget-boolean v9, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    if-eqz v9, :cond_14

    .line 771
    iget v9, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v9, p0, Lorg/telegram/ui/StickersActivity;->reactionsDoubleTapRow:I

    goto :goto_f

    .line 773
    :cond_14
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->reactionsDoubleTapRow:I

    .line 776
    :goto_f
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->stickersBotInfo:I

    if-nez v0, :cond_15

    .line 778
    iget v9, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersBotInfo:I

    .line 781
    :cond_15
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersHeaderRow:I

    .line 782
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->featuredEmojiEnabledRow:I

    .line 783
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    .line 784
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersEndRow:I

    .line 785
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShowMoreRow:I

    .line 786
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShadowRow:I

    if-nez v0, :cond_16

    .line 800
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->stickersSettingsRow:I

    add-int/lit8 v0, v9, 0x1

    .line 801
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v9, p0, Lorg/telegram/ui/StickersActivity;->suggestRow:I

    add-int/lit8 v9, v0, 0x1

    .line 802
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->largeEmojiRow:I

    add-int/lit8 v0, v9, 0x1

    .line 803
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v9, p0, Lorg/telegram/ui/StickersActivity;->stickersSizeRow:I

    add-int/lit8 v9, v0, 0x1

    .line 804
    iput v9, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrder:I

    add-int/lit8 v0, v9, 0x1

    .line 805
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v9, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrderInfo:I

    goto :goto_10

    .line 807
    :cond_16
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->stickersSizeRow:I

    .line 808
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->stickersSettingsRow:I

    .line 809
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->suggestRow:I

    .line 810
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->largeEmojiRow:I

    .line 811
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrder:I

    .line 812
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->dynamicPackOrderInfo:I

    .line 815
    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 817
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-eq v0, v2, :cond_18

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-nez v0, :cond_17

    goto :goto_11

    .line 820
    :cond_17
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->stickersHeaderRow:I

    goto :goto_12

    .line 818
    :cond_18
    :goto_11
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->stickersHeaderRow:I

    .line 823
    :goto_12
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    add-int/2addr v0, p1

    .line 824
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 825
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    .line 827
    iget v9, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-eq v9, v6, :cond_19

    if-eq v9, v2, :cond_19

    add-int/lit8 v6, v0, 0x1

    .line 828
    iput v6, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    .line 829
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    goto :goto_13

    :cond_19
    if-ne v9, v6, :cond_1a

    add-int/lit8 v6, v0, 0x1

    .line 831
    iput v6, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    .line 832
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    goto :goto_13

    .line 834
    :cond_1a
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    .line 835
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    goto :goto_13

    .line 838
    :cond_1b
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->stickersHeaderRow:I

    .line 839
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    .line 840
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    .line 841
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    .line 842
    iput v8, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    .line 845
    :goto_13
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v0, v2, :cond_1d

    if-lez p1, :cond_1c

    .line 847
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShadowRow:I

    .line 850
    :cond_1c
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersHeaderRow:I

    add-int/lit8 p1, v0, 0x1

    .line 851
    iput p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->featuredEmojiEnabledRow:I

    .line 852
    iput p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    .line 853
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 854
    iput p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersEndRow:I

    if-eqz v3, :cond_1d

    add-int/lit8 v0, p1, 0x1

    .line 857
    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersShowMoreRow:I

    .line 861
    :cond_1d
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne p1, v2, :cond_1e

    .line 862
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/StickersActivity;->stickersBotInfo:I

    .line 865
    :cond_1e
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz p1, :cond_22

    if-eqz v7, :cond_20

    .line 867
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    if-ltz v0, :cond_1f

    goto :goto_14

    :cond_1f
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 868
    :goto_14
    invoke-virtual {p1, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 869
    new-instance p1, Lorg/telegram/ui/StickersActivity$8;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/StickersActivity$8;-><init>(Lorg/telegram/ui/StickersActivity;I)V

    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    :cond_20
    if-eqz v1, :cond_22

    .line 894
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->featuredStickersStartRow:I

    if-ltz p1, :cond_21

    goto :goto_15

    :cond_21
    iget p1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 895
    :goto_15
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0, v5, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 896
    new-instance v0, Lorg/telegram/ui/StickersActivity$9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/StickersActivity$9;-><init>(Lorg/telegram/ui/StickersActivity;I)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    :cond_22
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 315
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v3, 0x5

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->StickersName:I

    const-string v5, "StickersName"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->Masks:I

    const-string v5, "Masks"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->Emoji:I

    const-string v5, "Emoji"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/StickersActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StickersActivity$1;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 343
    new-instance v4, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x12

    .line 344
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 345
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 346
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 347
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

    .line 348
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget-object v5, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda2;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v4, 0x2

    .line 350
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_share:I

    const/16 v6, 0x36

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v0, v4, v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 351
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 352
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/StickersActivity;->deleteMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 355
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->frozenEmojiPacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 358
    :cond_3
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

    .line 360
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->getFeaturedSets()Ljava/util/List;

    move-result-object v3

    .line 361
    new-instance v4, Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-direct {v4, p0, p1, v0, v3}, Lorg/telegram/ui/StickersActivity$ListAdapter;-><init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v4, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    .line 363
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 364
    check-cast v0, Landroid/widget/FrameLayout;

    .line 365
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 367
    new-instance v3, Lorg/telegram/ui/StickersActivity$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/StickersActivity$2;-><init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 376
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 377
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 378
    new-instance v3, Lorg/telegram/ui/StickersActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/StickersActivity$3;-><init>(Lorg/telegram/ui/StickersActivity;)V

    const-wide/16 v4, 0x15e

    .line 385
    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 386
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 388
    new-instance v3, Lorg/telegram/ui/StickersActivity$4;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/StickersActivity$4;-><init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 399
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 400
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 401
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v3, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;

    invoke-direct {v3, p0}, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lorg/telegram/ui/StickersActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 402
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 403
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 404
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 406
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 539
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/StickersActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 548
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 563
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 564
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 565
    iget p2, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 566
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->access$900(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 567
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity;->updateRows(Z)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_5

    if-ne p1, v0, :cond_5

    .line 569
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 571
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    if-eq p1, p2, :cond_4

    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 573
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoad:I

    if-ne p1, p2, :cond_3

    .line 574
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne p1, p2, :cond_5

    .line 575
    invoke-direct {p0, v0}, Lorg/telegram/ui/StickersActivity;->updateRows(Z)V

    goto :goto_1

    .line 577
    :cond_3
    sget p1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    goto :goto_1

    .line 572
    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/StickersActivity;->updateRows(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1681
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1683
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

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v20

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1689
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    move-object v13, v2

    move/from16 v20, v10

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultTop:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/StickersActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1702
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v11

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v24, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move/from16 v30, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v11

    const-string v7, "checkBox"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v11

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v20, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v9, v8, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v8

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1708
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v9, v8, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v35

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    const/16 v38, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v8

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v9, v8, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v31

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v8

    move/from16 v35, v6

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v9, v8, v11

    const-string v9, "valueTextView"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v39

    sget v43, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v37, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v8

    invoke-direct/range {v35 .. v43}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v8, v12, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v10, v8, v11

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v8

    move/from16 v29, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v8, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v31

    const/16 v29, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    move/from16 v35, v6

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v4, v11

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v39

    sget v43, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v4

    invoke-direct/range {v35 .. v43}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v24, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v4, v11

    const-string v5, "optionsButton"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v35

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move/from16 v39, v30

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v4, v11

    const-string v5, "reorderButton"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v4, v3, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v4, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    iget-object v2, v0, Lorg/telegram/ui/StickersActivity;->trendingStickersAlert:Lorg/telegram/ui/Components/TrendingStickersAlert;

    if-eqz v2, :cond_0

    .line 1724
    invoke-virtual {v2}, Lorg/telegram/ui/Components/TrendingStickersAlert;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->clearSelected()V

    const/4 v0, 0x0

    return v0

    .line 558
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 275
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 276
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 277
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 278
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedStickers()V

    .line 279
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 280
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 282
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedEmoji()V

    .line 283
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 285
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 286
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 287
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 288
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, v0}, Lorg/telegram/ui/StickersActivity;->updateRows(Z)V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 295
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 296
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 297
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 299
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 300
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 301
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 302
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 923
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
