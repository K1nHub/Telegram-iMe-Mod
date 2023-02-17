.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field public VIEW_TYPE_BUTTON:I

.field public VIEW_TYPE_EMOJI:I

.field public VIEW_TYPE_EXPAND:I

.field public VIEW_TYPE_HEADER:I

.field public VIEW_TYPE_HINT:I

.field public VIEW_TYPE_IMAGE:I

.field public VIEW_TYPE_REACTION:I

.field public VIEW_TYPE_SEARCH:I

.field public VIEW_TYPE_STICKER:I

.field public VIEW_TYPE_TOPIC_ICON:I

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method public static synthetic $r8$lambda$F3osaq8PF4y5yUxg9ASwqxgXr_8(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;Lorg/telegram/ui/Components/EmojiView$EmojiPack;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->lambda$onBindViewHolder$1(Lorg/telegram/ui/Components/EmojiView$EmojiPack;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gtyS4SgC3NfK0IMXPQsjWW5UnO0(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 1948
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 p1, 0x0

    .line 1950
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_HEADER:I

    const/4 p1, 0x1

    .line 1951
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_REACTION:I

    const/4 p1, 0x2

    .line 1952
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_IMAGE:I

    const/4 p1, 0x3

    .line 1953
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_EMOJI:I

    const/4 p1, 0x4

    .line 1954
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_EXPAND:I

    const/4 p1, 0x5

    .line 1955
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_BUTTON:I

    const/4 p1, 0x6

    .line 1956
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_HINT:I

    const/4 p1, 0x7

    .line 1957
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_SEARCH:I

    const/16 p1, 0x8

    .line 1958
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_TOPIC_ICON:I

    const/16 p1, 0x9

    .line 1959
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_STICKER:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;)V
    .locals 0

    .line 1948
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 2082
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lorg/telegram/ui/Components/EmojiView$EmojiPack;ILandroid/view/View;)V
    .locals 6

    .line 2190
    iget-boolean p3, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez p3, :cond_0

    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p3

    if-nez p3, :cond_0

    .line 2191
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IIZ)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void

    :cond_0
    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 2196
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 2197
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    if-eqz v1, :cond_1

    .line 2198
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2199
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 2200
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 2201
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object p2, v2

    move-object v1, p2

    :goto_1
    if-eqz p2, :cond_3

    .line 2208
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expand(ILandroid/view/View;)V

    .line 2211
    :cond_3
    iget-object p2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v2, p2, p3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->installSet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V

    .line 2212
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2213
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZ)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2332
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 2027
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2028
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_SEARCH:I

    return p1

    .line 2029
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 2030
    :cond_2
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_REACTION:I

    return p1

    .line 2031
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 2032
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_EXPAND:I

    return p1

    .line 2033
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_5

    .line 2034
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_BUTTON:I

    return p1

    .line 2035
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 2036
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_HINT:I

    return p1

    .line 2037
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_0

    .line 2039
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 2040
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_TOPIC_ICON:I

    return p1

    .line 2042
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2043
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_EMOJI:I

    return p1

    .line 2045
    :cond_9
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_EMOJI:I

    return p1

    .line 2038
    :cond_a
    :goto_0
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_HEADER:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1963
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    .line 1964
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_IMAGE:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_REACTION:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_EMOJI:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_TOPIC_ICON:I

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

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2052
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    .line 2053
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_TOPIC_ICON:I

    if-ne v3, v4, :cond_0

    .line 2054
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2055
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 2056
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    return-void

    .line 2059
    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2060
    :cond_1
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 2061
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    .line 2063
    :cond_2
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_HINT:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_3

    .line 2064
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 2065
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 2066
    sget v2, Lorg/telegram/messenger/R$string;->EmojiStatusExpireHint:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatStatusExpireDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "EmojiStatusExpireHint"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 2068
    :cond_3
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_HEADER:I

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-ne v3, v4, :cond_a

    .line 2069
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;

    .line 2070
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2071
    sget v2, Lorg/telegram/messenger/R$string;->SelectTopicIconHint:I

    const-string v3, "SelectTopicIconHint"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    .line 2072
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2075
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 2076
    sget v2, Lorg/telegram/messenger/R$string;->RecentlyUsed:I

    const-string v3, "RecentlyUsed"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    .line 2077
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    if-ne v2, v8, :cond_5

    .line 2078
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2080
    :cond_5
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2081
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    .line 2087
    :cond_6
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2088
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 2089
    sget v2, Lorg/telegram/messenger/R$string;->PopularReactions:I

    const-string v3, "PopularReactions"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    return-void

    .line 2093
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ltz v2, :cond_9

    .line 2095
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 2096
    iget-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v2, :cond_8

    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    if-eq v2, v8, :cond_8

    const/4 v5, 0x1

    :cond_8
    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_24

    .line 2098
    :cond_9
    invoke-virtual {v1, v9, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_24

    .line 2100
    :cond_a
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_REACTION:I

    const/4 v10, 0x3

    if-ne v3, v4, :cond_12

    .line 2101
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2102
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 2104
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-lt v2, v3, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 2105
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2106
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    goto :goto_1

    .line 2108
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2109
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2112
    :goto_1
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v3, :cond_c

    .line 2113
    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x7

    .line 2114
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 2115
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 2117
    :cond_c
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2118
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    .line 2119
    iput-boolean v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 2120
    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 2121
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    .line 2122
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v3, :cond_e

    .line 2124
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const v5, 0x3e4ccccd    # 0.2f

    const-string v6, "windowBackgroundWhiteGrayIcon"

    invoke-static {v4, v6, v5}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v18

    .line 2125
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLiteMode()Lorg/telegram/messenger/SharedConfig$LiteMode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2126
    iget-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v4, 0x0

    const/16 v21, 0x0

    const-string v13, "60_60_firstframe"

    const-string v19, "tgs"

    move-object/from16 v16, v18

    move-wide/from16 v17, v4

    move-object/from16 v20, v2

    invoke-virtual/range {v11 .. v21}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 2128
    :cond_d
    iget-object v11, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v23, 0x0

    const-string v13, "60_60_pcache"

    const-string v15, "30_30_firstframe"

    const-string v21, "tgs"

    move-object/from16 v22, v2

    invoke-virtual/range {v11 .. v23}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 2130
    :goto_2
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lorg/telegram/messenger/MediaDataController;->preloadImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)V

    goto :goto_3

    .line 2132
    :cond_e
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2133
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2135
    :goto_3
    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2136
    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2137
    invoke-virtual {v1, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2138
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v2, :cond_44

    .line 2139
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2140
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    goto/16 :goto_24

    .line 2143
    :cond_f
    iput-boolean v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    .line 2144
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v6, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v3, v6, v7, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2145
    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2146
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2147
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2148
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_10

    .line 2151
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    .line 2152
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2154
    :cond_10
    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2156
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    if-eq v2, v8, :cond_44

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    if-eq v2, v10, :cond_44

    .line 2157
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-nez v2, :cond_11

    .line 2158
    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_STICKERS_PREMIUM_LOCKED:I

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/16 v3, 0x55

    const/16 v4, 0xc

    .line 2159
    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2161
    :cond_11
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_24

    .line 2164
    :cond_12
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_EXPAND:I

    const/16 v7, 0x18

    const/16 v11, 0x28

    const/4 v12, -0x1

    if-ne v3, v4, :cond_17

    .line 2165
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    .line 2166
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ltz v2, :cond_13

    .line 2167
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_4

    :cond_13
    move-object v3, v9

    :goto_4
    const-string v4, "+"

    if-ne v2, v12, :cond_14

    .line 2169
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6002(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    .line 2171
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v11

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    :cond_14
    if-eqz v3, :cond_16

    .line 2173
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    move-result-object v2

    if-ne v2, v1, :cond_15

    .line 2174
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6002(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    .line 2177
    :cond_15
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 2179
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    move-result-object v2

    if-ne v2, v1, :cond_44

    .line 2180
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6002(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    goto/16 :goto_24

    .line 2183
    :cond_17
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_BUTTON:I

    if-ne v3, v4, :cond_19

    .line 2184
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;

    .line 2185
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ltz v2, :cond_44

    .line 2186
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 2187
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz v3, :cond_44

    .line 2189
    iget-object v4, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-boolean v7, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v7, :cond_18

    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v7

    if-nez v7, :cond_18

    const/4 v5, 0x1

    :cond_18
    iget-boolean v6, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    new-instance v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v3, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;Lorg/telegram/ui/Components/EmojiView$EmojiPack;I)V

    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->set(Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)V

    goto/16 :goto_24

    .line 2217
    :cond_19
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_SEARCH:I

    if-ne v3, v4, :cond_1a

    goto/16 :goto_24

    .line 2219
    :cond_1a
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_STICKER:I

    if-ne v3, v4, :cond_1f

    .line 2221
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_44

    .line 2222
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 2223
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v6

    sub-int v3, v5, v3

    if-ltz v3, :cond_1b

    .line 2224
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_6

    :cond_1b
    move-object v3, v9

    :goto_6
    if-nez v3, :cond_1c

    goto :goto_8

    .line 2228
    :cond_1c
    iget-boolean v4, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_7

    :cond_1d
    iget-object v4, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_7
    if-le v2, v1, :cond_1e

    add-int/lit8 v8, v1, 0x1

    add-int/2addr v8, v4

    if-gt v2, v8, :cond_1e

    .line 2230
    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    sub-int v1, v2, v1

    sub-int/2addr v1, v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_1e
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2238
    :cond_1f
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2239
    iput-boolean v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    .line 2240
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 2241
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v1, v3, v4, v13, v14}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2245
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v8, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2246
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_b

    .line 2247
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v8, :cond_23

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v10, :cond_21

    goto :goto_a

    .line 2250
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v11, :cond_22

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_9

    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v4

    add-int v11, v3, v4

    :goto_9
    move v3, v11

    goto :goto_b

    .line 2248
    :cond_23
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2253
    :goto_b
    invoke-virtual {v1, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2254
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v12, :cond_24

    const/4 v4, 0x1

    goto :goto_c

    :cond_24
    const/4 v4, 0x0

    :goto_c
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v10

    if-eq v10, v12, :cond_25

    const/4 v10, 0x1

    goto :goto_d

    :cond_25
    const/4 v10, 0x0

    :goto_d
    add-int/2addr v4, v10

    if-ne v2, v4, :cond_26

    .line 2255
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2256
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    const/4 v3, 0x5

    .line 2257
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v6, v7, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2258
    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2259
    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2260
    iput-boolean v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2261
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v3, :cond_41

    .line 2262
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_22

    .line 2264
    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v12, :cond_27

    const/4 v4, 0x1

    goto :goto_e

    :cond_27
    const/4 v4, 0x0

    :goto_e
    sub-int v4, v2, v4

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v10

    if-eq v10, v12, :cond_28

    const/4 v10, 0x1

    goto :goto_f

    :cond_28
    const/4 v10, 0x0

    :goto_f
    sub-int/2addr v4, v10

    if-ge v4, v3, :cond_2e

    .line 2265
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v12, :cond_29

    const/4 v3, 0x1

    goto :goto_10

    :cond_29
    const/4 v3, 0x0

    :goto_10
    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v12, :cond_2a

    const/4 v3, 0x1

    goto :goto_11

    :cond_2a
    const/4 v3, 0x0

    :goto_11
    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    sub-int/2addr v2, v3

    .line 2266
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v8, :cond_2b

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2267
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2268
    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    const/4 v2, 0x0

    goto/16 :goto_22

    .line 2271
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v2, :cond_2c

    move-object v3, v9

    goto :goto_12

    .line 2272
    :cond_2c
    iget-object v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_12
    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_2d

    .line 2273
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_13

    :cond_2d
    const/4 v6, 0x0

    .line 2274
    :goto_13
    iput-boolean v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2275
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_40

    .line 2276
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_21

    .line 2279
    :cond_2e
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v12, :cond_2f

    const/4 v4, 0x1

    goto :goto_14

    :cond_2f
    const/4 v4, 0x0

    :goto_14
    sub-int v4, v2, v4

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    if-eq v8, v12, :cond_30

    const/4 v8, 0x1

    goto :goto_15

    :cond_30
    const/4 v8, 0x0

    :goto_15
    sub-int/2addr v4, v8

    sub-int/2addr v4, v3

    sub-int/2addr v4, v6

    if-ltz v4, :cond_37

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v12, :cond_31

    const/4 v4, 0x1

    goto :goto_16

    :cond_31
    const/4 v4, 0x0

    :goto_16
    sub-int v4, v2, v4

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    if-eq v8, v12, :cond_32

    const/4 v8, 0x1

    goto :goto_17

    :cond_32
    const/4 v8, 0x0

    :goto_17
    sub-int/2addr v4, v8

    sub-int/2addr v4, v3

    sub-int/2addr v4, v6

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_37

    .line 2280
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v12, :cond_33

    const/4 v4, 0x1

    goto :goto_18

    :cond_33
    const/4 v4, 0x0

    :goto_18
    sub-int/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v12, :cond_34

    const/4 v4, 0x1

    goto :goto_19

    :cond_34
    const/4 v4, 0x0

    :goto_19
    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    sub-int/2addr v2, v6

    .line 2281
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v2, :cond_35

    move-object v3, v9

    goto :goto_1a

    .line 2282
    :cond_35
    iget-object v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_1a
    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_36

    .line 2283
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_1b

    :cond_36
    const/4 v6, 0x0

    .line 2284
    :goto_1b
    iput-boolean v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2285
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_40

    .line 2286
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_21

    :cond_37
    const/4 v3, 0x0

    .line 2289
    :goto_1c
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 2290
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2291
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v6

    sub-int v8, v3, v8

    if-ltz v8, :cond_38

    .line 2292
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_1d

    :cond_38
    move-object v8, v9

    :goto_1d
    if-nez v8, :cond_39

    goto :goto_20

    .line 2296
    :cond_39
    iget-boolean v10, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v10, :cond_3a

    iget-object v10, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    goto :goto_1e

    :cond_3a
    iget-object v10, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_1e
    if-le v2, v4, :cond_3d

    add-int/lit8 v11, v4, 0x1

    add-int/2addr v11, v10

    if-gt v2, v11, :cond_3d

    .line 2298
    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    sub-int v4, v2, v4

    sub-int/2addr v4, v6

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_3d

    .line 2300
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 2301
    invoke-virtual {v1, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_1f

    .line 2303
    :cond_3b
    iput-boolean v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2304
    iget-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v8, :cond_3c

    .line 2305
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2307
    :cond_3c
    new-instance v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v8, v4, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    iput-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2309
    :goto_1f
    iput-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_3d
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2313
    :cond_3e
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v2, :cond_3f

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_21

    :cond_3f
    const/4 v6, 0x0

    :cond_40
    :goto_21
    move v2, v6

    .line 2316
    :cond_41
    :goto_22
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v3, :cond_43

    .line 2317
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v3, :cond_42

    .line 2319
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    iget-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    .line 2320
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2322
    :cond_42
    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    .line 2324
    :cond_43
    invoke-virtual {v1, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2326
    :goto_23
    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_44
    :goto_24
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1976
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_HEADER:I

    if-ne p2, p1, :cond_0

    .line 1977
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1978
    :cond_0
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_IMAGE:I

    if-ne p2, p1, :cond_1

    .line 1979
    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1980
    :cond_1
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_EMOJI:I

    const/4 v0, 0x1

    if-eq p2, p1, :cond_9

    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_REACTION:I

    if-eq p2, p1, :cond_9

    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_TOPIC_ICON:I

    if-ne p2, p1, :cond_2

    goto/16 :goto_1

    .line 1990
    :cond_2
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_EXPAND:I

    if-ne p2, p1, :cond_3

    .line 1991
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_2

    .line 1992
    :cond_3
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_BUTTON:I

    if-ne p2, p1, :cond_4

    .line 1993
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1994
    :cond_4
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_HINT:I

    if-ne p2, p1, :cond_7

    .line 1995
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$1;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;Landroid/content/Context;)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 2001
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2002
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 2003
    sget p2, Lorg/telegram/messenger/R$string;->SelectTopicIconHint:I

    const-string v0, "SelectTopicIconHint"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2004
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p2

    if-nez p2, :cond_6

    .line 2005
    sget p2, Lorg/telegram/messenger/R$string;->EmojiLongtapHint:I

    const-string v0, "EmojiLongtapHint"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2007
    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->ReactionsLongtapHint:I

    const-string v0, "ReactionsLongtapHint"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 p2, 0x11

    .line 2009
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2010
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    const-string v0, "windowBackgroundWhiteGrayText"

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 2012
    :cond_7
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_SEARCH:I

    if-ne p2, p1, :cond_8

    .line 2013
    new-instance p1, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x34

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    const-string p2, "searchbox"

    .line 2014
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 2016
    :cond_8
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    goto :goto_2

    .line 1981
    :cond_9
    :goto_1
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    .line 1982
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->VIEW_TYPE_TOPIC_ICON:I

    if-ne p2, v1, :cond_a

    .line 1983
    iput-boolean v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 1984
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    .line 1985
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 1986
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4802(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/16 p2, 0x8

    .line 1987
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2018
    :cond_a
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 p2, 0x0

    .line 2019
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 2020
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 2022
    :cond_b
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
