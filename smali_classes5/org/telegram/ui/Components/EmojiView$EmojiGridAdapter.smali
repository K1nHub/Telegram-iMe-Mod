.class public Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmojiGridAdapter"
.end annotation


# instance fields
.field private firstTrendingRow:I

.field private frozenEmojiPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private itemCount:I

.field private packStartPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public plainEmojisCount:I

.field private positionToExpand:Landroid/util/SparseIntArray;

.field private positionToSection:Landroid/util/SparseIntArray;

.field private positionToUnlock:Landroid/util/SparseIntArray;

.field private recentlyUsedHeaderRow:I

.field private rowHashCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionToPosition:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private trendingHeaderRow:I

.field private trendingRow:I


# direct methods
.method public static synthetic $r8$lambda$-xhcjpuGCZ44e7oQ04pwFVzTanQ(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->lambda$onCreateViewHolder$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6R__soE2WmVl0cLgJg7WX5diASM(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$keHupgOg0Mav9dXM4ujZ_-hEH1k(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;FI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->lambda$expand$2(FI)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 7762
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 p1, -0x1

    .line 7772
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingHeaderRow:I

    .line 7773
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingRow:I

    .line 7774
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->firstTrendingRow:I

    .line 7775
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->recentlyUsedHeaderRow:I

    .line 7778
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    .line 7779
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToSection:Landroid/util/SparseIntArray;

    .line 7780
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->sectionToPosition:Landroid/util/SparseIntArray;

    .line 7781
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToUnlock:Landroid/util/SparseIntArray;

    .line 7782
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToExpand:Landroid/util/SparseIntArray;

    .line 7783
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->packStartPosition:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$14700(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 7762
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->packStartPosition:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$15000(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;
    .locals 0

    .line 7762
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToExpand:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$19900(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 7762
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$23100(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 7762
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->frozenEmojiPacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)I
    .locals 0

    .line 7762
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingRow:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)I
    .locals 0

    .line 7762
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingHeaderRow:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)I
    .locals 0

    .line 7762
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->recentlyUsedHeaderRow:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;
    .locals 0

    .line 7762
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToSection:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;
    .locals 0

    .line 7762
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToUnlock:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;
    .locals 0

    .line 7762
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->sectionToPosition:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method private synthetic lambda$expand$2(FI)V
    .locals 3

    .line 8237
    :try_start_0
    new-instance v0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;IF)V

    .line 8238
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 8239
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8241
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 3

    .line 7813
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez p1, :cond_0

    goto :goto_0

    .line 7816
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    .line 7817
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "emoji_featured_hidden"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7818
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7819
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 7821
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7822
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    .line 7824
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->updateRows()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Landroid/view/View;I)V
    .locals 8

    .line 7841
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz p2, :cond_5

    .line 7842
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 7843
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7844
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 7846
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7847
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v3, :cond_0

    .line 7848
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v4, :cond_0

    .line 7849
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 7850
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 7851
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 7852
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 7854
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v4, :cond_0

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7860
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/MediaDataController;->markFeaturedStickersAsRead(ZZ)V

    .line 7861
    new-instance p1, Lorg/telegram/ui/Components/EmojiPacksAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    :goto_1
    invoke-direct {p1, v0, v2, v3, p2}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    if-ltz v1, :cond_3

    .line 7863
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->highlight(I)V

    .line 7865
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 7866
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_2

    .line 7868
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->show()V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public expand(ILandroid/view/View;)V
    .locals 8

    .line 8192
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToExpand:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-ltz p1, :cond_b

    .line 8193
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_6

    .line 8196
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 8197
    iget-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 8200
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 8202
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->packStartPosition:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8203
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$19800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8205
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$8700(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 8206
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    .line 8207
    iget-boolean v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-nez v6, :cond_5

    iget-boolean v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v6, :cond_6

    if-nez v2, :cond_6

    :cond_5
    iget-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_3

    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8209
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    if-le v6, v5, :cond_8

    add-int/lit8 v6, p1, 0x1

    add-int/2addr v6, v2

    .line 8210
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    :cond_8
    move-object v6, v7

    .line 8212
    :goto_4
    iput-boolean v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 8213
    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-lez v0, :cond_9

    add-int/2addr p1, v4

    add-int/2addr p1, v2

    .line 8215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 8216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 8219
    :cond_9
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->processEmoji(Z)V

    .line 8220
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->updateRows()V

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    .line 8223
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$14202(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;)Landroid/view/View;

    .line 8224
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$14302(Lorg/telegram/ui/Components/EmojiView;I)I

    .line 8225
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$14402(Lorg/telegram/ui/Components/EmojiView;I)I

    .line 8226
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->access$14102(Lorg/telegram/ui/Components/EmojiView;J)J

    .line 8229
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 8230
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-eqz v1, :cond_b

    .line 8233
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8234
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p2

    div-int/lit8 v5, v5, 0x2

    if-le p2, v5, :cond_a

    const/high16 p2, 0x3fc00000    # 1.5f

    goto :goto_5

    :cond_a
    const/high16 p2, 0x40800000    # 4.0f

    .line 8235
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;FI)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :goto_6
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 7789
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 8057
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingRow:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 8059
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingHeaderRow:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->recentlyUsedHeaderRow:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 8061
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 8062
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    sget-object v0, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    const/4 v1, 0x5

    :cond_2
    return v1

    .line 8063
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7900(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    const/4 p1, 0x2

    return p1

    .line 8065
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToUnlock:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_5

    const/4 p1, 0x3

    return p1

    .line 8067
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToExpand:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_6

    const/4 p1, 0x6

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_0
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 7799
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 8328
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged(Z)V

    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 10

    .line 8332
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8334
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    .line 8335
    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v2

    .line 8336
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 8337
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 8338
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 8339
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v7, v7, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8340
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8344
    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->processEmoji(Z)V

    .line 8345
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->updateRows()V

    .line 8346
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$19500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8347
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$19500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8351
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$2;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$2;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;Ljava/util/ArrayList;)V

    invoke-static {p1, v4}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    .line 8371
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 7892
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_6

    const/4 v5, 0x5

    if-eq v0, v5, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    goto/16 :goto_c

    .line 7998
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;

    .line 7999
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToExpand:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    .line 8000
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    if-ltz p2, :cond_1

    .line 8001
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    :cond_1
    if-eqz v4, :cond_1e

    .line 8003
    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;->textView:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 8044
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    .line 8045
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    .line 8046
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$19700(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr p2, v0

    .line 8047
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    sub-int/2addr p2, v2

    if-ltz p2, :cond_3

    .line 8048
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    :cond_3
    if-eqz v0, :cond_4

    .line 8049
    iget-boolean p2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz p2, :cond_4

    if-eqz v4, :cond_5

    iget-boolean p2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez p2, :cond_5

    iget-boolean p2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 8050
    :cond_5
    :goto_0
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->setStickerSet(Lorg/telegram/ui/Components/EmojiView$EmojiPack;Z)V

    goto/16 :goto_c

    .line 7979
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    .line 7980
    iput p2, p1, Lorg/telegram/ui/Cells/StickerSetNameCell;->position:I

    .line 7981
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 7982
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingHeaderRow:I

    if-ne p2, v1, :cond_7

    .line 7983
    sget p2, Lorg/telegram/messenger/R$string;->FeaturedEmojiPacks:I

    const-string v0, "FeaturedEmojiPacks"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_close:I

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrCloseTrendingEmoji:I

    const-string v2, "AccDescrCloseTrendingEmoji"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 7984
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->recentlyUsedHeaderRow:I

    if-ne p2, v1, :cond_8

    .line 7985
    sget p2, Lorg/telegram/messenger/R$string;->RecentlyUsed:I

    const-string v0, "RecentlyUsed"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_c

    .line 7986
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$19700(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-lt v0, p2, :cond_9

    .line 7988
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$19700(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object p2, p2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_c

    :catch_0
    const-string p2, ""

    .line 7990
    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_c

    .line 7993
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$19700(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_c

    .line 7894
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 7895
    iput p2, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->position:I

    .line 7896
    invoke-static {p1, v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$19602(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 7903
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7900(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 p2, p2, -0x1

    .line 7906
    :cond_b
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->recentlyUsedHeaderRow:I

    if-ltz v0, :cond_c

    add-int/lit8 p2, p2, -0x1

    .line 7909
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingRow:I

    if-ltz v0, :cond_d

    add-int/lit8 p2, p2, -0x2

    .line 7913
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_f

    .line 7915
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_e

    const-string v0, "animated_"

    .line 7916
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x9

    .line 7918
    :try_start_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    move-object v5, v0

    goto :goto_1

    :catch_1
    :cond_e
    move-object v0, p2

    move-object v5, v0

    move-object p2, v4

    :goto_1
    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_9

    :cond_f
    const/4 v5, 0x0

    .line 7927
    :goto_2
    sget-object v6, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_12

    .line 7928
    aget-object v7, v6, v5

    array-length v7, v7

    add-int/2addr v7, v2

    sub-int v8, p2, v0

    sub-int/2addr v8, v2

    if-ltz v8, :cond_11

    add-int v9, v0, v7

    if-ge p2, v9, :cond_11

    .line 7930
    aget-object p2, v6, v5

    aget-object p2, p2, v8

    .line 7931
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 7933
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, p2

    goto :goto_4

    :cond_10
    move-object v0, p2

    goto :goto_3

    :cond_11
    add-int/2addr v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_12
    move-object v0, v4

    :goto_3
    move-object v5, v0

    :goto_4
    if-nez v5, :cond_18

    .line 7940
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    .line 7941
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    .line 7942
    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->packStartPosition:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_18

    .line 7943
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 7944
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->packStartPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v2

    .line 7945
    iget-boolean v10, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-eqz v10, :cond_13

    iget-boolean v10, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-nez v10, :cond_13

    iget-boolean v10, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v10, :cond_14

    if-nez p2, :cond_14

    :cond_13
    iget-boolean v10, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v10, :cond_15

    :cond_14
    iget-object v10, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    goto :goto_6

    :cond_15
    iget-object v10, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7946
    :goto_6
    iget v11, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->position:I

    if-lt v11, v9, :cond_17

    sub-int/2addr v11, v9

    if-ge v11, v10, :cond_17

    .line 7947
    invoke-static {p1, v8}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$19602(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 7948
    iget-object p2, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    iget v2, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->position:I

    sub-int/2addr v2, v9

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p2, :cond_16

    move-object v2, v4

    goto :goto_7

    .line 7949
    :cond_16
    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_7
    move-object v12, v2

    move-object v2, p2

    move-object p2, v12

    goto :goto_8

    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_18
    move-object p2, v4

    move-object v2, p2

    :goto_8
    move-object v6, v5

    move-object v5, v2

    const/4 v2, 0x0

    :goto_9
    if-eqz p2, :cond_19

    .line 7957
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v3, v7, v8, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_a

    .line 7959
    :cond_19
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_a
    if-eqz p2, :cond_1c

    .line 7962
    invoke-virtual {p1, v4, v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 7963
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v1, v7

    if-eqz v3, :cond_1d

    :cond_1a
    if-eqz v5, :cond_1b

    .line 7965
    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p2, v5, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    goto :goto_b

    .line 7967
    :cond_1b
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    goto :goto_b

    .line 7971
    :cond_1c
    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 7972
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    .line 7974
    :cond_1d
    :goto_b
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7975
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1e
    :goto_c
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    .line 7882
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7883
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 7878
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_1

    .line 7828
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    goto :goto_1

    .line 7831
    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$TrendingListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    invoke-direct {v4, v3, p1}, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Z)V

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/EmojiView;->access$19502(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    move-result-object p1

    invoke-direct {p2, v1, v2, p1}, Lorg/telegram/ui/Components/EmojiView$TrendingListView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 p1, 0x8

    .line 7832
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 7833
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 7834
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7840
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto :goto_0

    .line 7875
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$EmojiPackButton;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPackButton;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    goto :goto_1

    .line 7811
    :cond_4
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7812
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setOnIconClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 7808
    :cond_5
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;-><init>(Landroid/content/Context;)V

    .line 7886
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public processEmoji(Z)V
    .locals 11

    .line 8074
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8075
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3100(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8079
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez p1, :cond_1

    .line 8080
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->frozenEmojiPacks:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    .line 8081
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->frozenEmojiPacks:Ljava/util/ArrayList;

    .line 8083
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->frozenEmojiPacks:Ljava/util/ArrayList;

    .line 8084
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$8700(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_6

    const/4 v4, 0x0

    .line 8087
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 8088
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v5, :cond_5

    .line 8089
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 8090
    new-instance v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 8092
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v7, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 8093
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 8094
    iput-boolean v3, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 8095
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v5

    iput-boolean v5, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 8096
    iput-boolean v2, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 8097
    iput-boolean v3, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 8098
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v4, -0x1

    .line 8099
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v4, v5

    :cond_5
    add-int/2addr v4, v3

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 8103
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 8104
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v1, :cond_7

    .line 8106
    new-instance v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 8108
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v7, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 8109
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v5, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 8110
    iput-boolean v2, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 8111
    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v5

    iput-boolean v5, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 8112
    iput-boolean v2, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 8113
    iput-boolean v3, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 8114
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 8116
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8117
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_9

    .line 8118
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    .line 8119
    :goto_4
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 8120
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 8121
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 8123
    :cond_8
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 8127
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 8128
    new-instance v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 8130
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v9, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 8131
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 8132
    iput-boolean v3, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 8133
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v9, v10}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v6

    iput-boolean v6, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 8134
    iput-boolean v2, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 8135
    iput-boolean v3, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 8136
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8138
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 8139
    new-instance v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 8141
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 8142
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 8143
    iput-boolean v2, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 8144
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v5

    iput-boolean v5, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 8145
    iput-boolean v2, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 8146
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$19800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 8147
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 8152
    :cond_c
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 8153
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_12

    .line 8154
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 8158
    new-instance v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 8160
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 8161
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 8162
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v6, :cond_d

    .line 8163
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    iput-object v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    goto :goto_8

    .line 8164
    :cond_d
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v6, :cond_e

    .line 8165
    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v5

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 8167
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    goto :goto_8

    .line 8170
    :cond_e
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    iput-object v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    :cond_f
    :goto_8
    const/4 v1, 0x0

    .line 8174
    :goto_9
    iget-object v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_11

    .line 8175
    iget-object v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_a
    xor-int/2addr v1, v3

    .line 8180
    iput-boolean v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 8181
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$19800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 8182
    iput-boolean v3, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 8183
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_7

    .line 8186
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 8187
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    :cond_13
    return-void
.end method

.method public updateRows()V
    .locals 14

    .line 8249
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 8250
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->sectionToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 8251
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToUnlock:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 8252
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToExpand:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 8253
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->packStartPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8254
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 8255
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    .line 8256
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$8700(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 8257
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$7900(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    .line 8258
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    .line 8259
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    .line 8261
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$3100(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v3, v3, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide/16 v5, 0x0

    const-string v7, "emoji_featured_hidden"

    invoke-interface {v3, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    .line 8262
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingHeaderRow:I

    add-int/lit8 v3, v5, 0x1

    .line 8263
    iput v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingRow:I

    add-int/lit8 v5, v3, 0x1

    .line 8264
    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->recentlyUsedHeaderRow:I

    goto :goto_2

    .line 8266
    :cond_3
    iput v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingHeaderRow:I

    .line 8267
    iput v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->trendingRow:I

    .line 8268
    iput v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->recentlyUsedHeaderRow:I

    .line 8270
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v3

    .line 8271
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 8272
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showRecent(Z)V

    .line 8274
    :cond_4
    iget v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    const/4 v5, 0x0

    .line 8275
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v5, v6, :cond_5

    .line 8276
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    new-array v7, v7, [Ljava/lang/Object;

    const v8, -0xa8ff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v7}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 8279
    :goto_4
    sget-object v6, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v8, v6

    if-ge v3, v8, :cond_7

    .line 8280
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    invoke-virtual {v8, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 8281
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->sectionToPosition:Landroid/util/SparseIntArray;

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    invoke-virtual {v8, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 8282
    iget v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    aget-object v6, v6, v3

    array-length v6, v6

    add-int/2addr v6, v2

    add-int/2addr v8, v6

    iput v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    .line 8283
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    new-array v8, v7, [Ljava/lang/Object;

    const v9, 0xa8ed

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v8}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 8284
    :goto_5
    sget-object v8, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    aget-object v9, v8, v3

    array-length v9, v9

    if-ge v6, v9, :cond_6

    .line 8285
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    aget-object v8, v8, v3

    aget-object v8, v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 8289
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    .line 8290
    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->plainEmojisCount:I

    .line 8291
    iput v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->firstTrendingRow:I

    .line 8293
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    .line 8294
    :goto_6
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_12

    .line 8295
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    invoke-virtual {v6, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 8296
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->sectionToPosition:Landroid/util/SparseIntArray;

    iget v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    invoke-virtual {v6, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 8297
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->packStartPosition:Ljava/util/ArrayList;

    iget v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8299
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 8300
    iget-boolean v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v8, :cond_8

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->firstTrendingRow:I

    if-gez v9, :cond_8

    .line 8301
    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    iput v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->firstTrendingRow:I

    .line 8303
    :cond_8
    iget-boolean v9, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-eqz v9, :cond_9

    if-nez v8, :cond_9

    iget-boolean v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v8, :cond_a

    if-nez v1, :cond_a

    :cond_9
    iget-boolean v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v8, :cond_b

    :cond_a
    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_7

    :cond_b
    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_7
    add-int/2addr v8, v2

    .line 8304
    iget-boolean v9, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-nez v9, :cond_c

    iget-object v9, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v3, :cond_c

    add-int/lit8 v8, v8, -0x1

    .line 8307
    :cond_c
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    new-array v10, v7, [Ljava/lang/Object;

    iget-boolean v11, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v11, :cond_d

    const v11, 0xdc19

    goto :goto_8

    :cond_d
    const v11, -0x9d86f

    :goto_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v0

    iget-object v11, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v11, :cond_e

    int-to-long v11, v4

    goto :goto_9

    :cond_e
    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    :goto_9
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v10}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :goto_a
    if-ge v9, v8, :cond_10

    .line 8309
    iget-object v10, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    new-array v11, v7, [Ljava/lang/Object;

    iget-boolean v12, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v12, :cond_f

    const/16 v12, 0xd72

    goto :goto_b

    :cond_f
    const/16 v12, 0xc8d

    :goto_b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v0

    iget-object v12, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-static {v11}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 8311
    :cond_10
    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    add-int/2addr v9, v8

    iput v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    .line 8312
    iget-boolean v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-nez v8, :cond_11

    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v3, :cond_11

    .line 8313
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->positionToExpand:Landroid/util/SparseIntArray;

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    invoke-virtual {v8, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 8314
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->rowHashCodes:Ljava/util/ArrayList;

    new-array v9, v7, [Ljava/lang/Object;

    const v10, -0xfe96

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v2

    invoke-static {v9}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8315
    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->itemCount:I

    :cond_11
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_12
    return-void
.end method
