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

    .line 1944
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;)V
    .locals 0

    .line 1944
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 2078
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lorg/telegram/ui/Components/EmojiView$EmojiPack;ILandroid/view/View;)V
    .locals 6

    .line 2179
    iget-boolean p3, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez p3, :cond_0

    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p3

    if-nez p3, :cond_0

    .line 2180
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

    move v0, p3

    .line 2185
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 2186
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    if-eqz v1, :cond_1

    .line 2187
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2188
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 2189
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 2190
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

    .line 2197
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expand(ILandroid/view/View;)V

    .line 2200
    :cond_3
    iget-object p2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v2, p2, p3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->installSet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V

    .line 2201
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZ)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2320
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 2023
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    return p1

    .line 2025
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

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 2027
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 2029
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 2031
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 2033
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_0

    .line 2035
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/16 p1, 0x8

    return p1

    .line 2038
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    const/4 p1, 0x3

    return p1

    :cond_9
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1959
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2048
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2050
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2051
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 2052
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    return-void

    .line 2055
    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2056
    :cond_1
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleX(F)V

    .line 2057
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_3

    .line 2060
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 2061
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 2062
    sget v2, Lorg/telegram/messenger/R$string;->EmojiStatusExpireHint:I

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatStatusExpireDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "EmojiStatusExpireHint"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    :cond_3
    const/4 v5, 0x4

    const/4 v8, 0x0

    if-nez v3, :cond_a

    .line 2065
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;

    .line 2066
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2067
    sget v2, Lorg/telegram/messenger/R$string;->SelectTopicIconHint:I

    const-string v3, "SelectTopicIconHint"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    .line 2068
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2071
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 2072
    sget v2, Lorg/telegram/messenger/R$string;->RecentlyUsed:I

    const-string v3, "RecentlyUsed"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    .line 2073
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 2074
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2076
    :cond_5
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2077
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    .line 2083
    :cond_6
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2084
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 2085
    sget v2, Lorg/telegram/messenger/R$string;->PopularReactions:I

    const-string v3, "PopularReactions"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    return-void

    .line 2089
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ltz v2, :cond_9

    .line 2091
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 2092
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

    if-eq v2, v5, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {v1, v3, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_24

    .line 2094
    :cond_9
    invoke-virtual {v1, v8, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_24

    :cond_a
    const/4 v9, 0x3

    if-ne v3, v7, :cond_10

    .line 2097
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2098
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 2100
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-lt v2, v3, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 2101
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2102
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    goto :goto_1

    .line 2104
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2105
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2108
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->createImageReceiver(Landroid/view/View;)V

    .line 2109
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 2110
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    .line 2111
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 2112
    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 2113
    iput-boolean v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    .line 2114
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v3, :cond_d

    .line 2116
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const v6, 0x3e4ccccd    # 0.2f

    const-string v7, "windowBackgroundWhiteGrayIcon"

    invoke-static {v5, v7, v6}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v17

    const/16 v5, 0x2008

    .line 2117
    invoke-static {v5}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2118
    iget-object v10, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v5, 0x0

    const/16 v20, 0x0

    const-string v12, "60_60_firstframe"

    const-string v18, "tgs"

    move-object/from16 v15, v17

    move-wide/from16 v16, v5

    move-object/from16 v19, v2

    invoke-virtual/range {v10 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 2120
    :cond_c
    iget-object v10, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v22, 0x0

    const-string v12, "60_60_pcache"

    const-string v14, "30_30_firstframe"

    const-string v20, "tgs"

    move-object/from16 v21, v2

    invoke-virtual/range {v10 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 2122
    :goto_2
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v3, v6}, Lorg/telegram/messenger/MediaDataController;->preloadImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)V

    goto :goto_3

    .line 2124
    :cond_d
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2125
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2127
    :goto_3
    iput-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2128
    iput-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2129
    invoke-virtual {v1, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2130
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v2, :cond_42

    .line 2131
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2132
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    goto/16 :goto_24

    .line 2135
    :cond_e
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    .line 2136
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v10, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v3, v10, v11, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2137
    iput-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2138
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2139
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2140
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

    if-nez v2, :cond_f

    .line 2143
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    .line 2144
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2146
    :cond_f
    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2148
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    if-eq v2, v5, :cond_42

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    if-eq v2, v9, :cond_42

    .line 2149
    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->createPremiumLockView()V

    .line 2150
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_24

    :cond_10
    const/16 v4, 0x18

    const/16 v10, 0x28

    const/4 v11, -0x1

    if-ne v3, v5, :cond_15

    .line 2154
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    .line 2155
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ltz v2, :cond_11

    .line 2156
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_4

    :cond_11
    move-object v3, v8

    :goto_4
    const-string v5, "+"

    if-ne v2, v11, :cond_12

    .line 2158
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6002(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    .line 2160
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    :cond_12
    if-eqz v3, :cond_14

    .line 2162
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    move-result-object v2

    if-ne v2, v1, :cond_13

    .line 2163
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6002(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    .line 2166
    :cond_13
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 2168
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    move-result-object v2

    if-ne v2, v1, :cond_42

    .line 2169
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6002(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    goto/16 :goto_24

    :cond_15
    const/4 v12, 0x5

    if-ne v3, v12, :cond_17

    .line 2173
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;

    .line 2174
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ltz v2, :cond_42

    .line 2175
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 2176
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz v3, :cond_42

    .line 2178
    iget-object v4, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-boolean v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    if-nez v5, :cond_16

    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-nez v5, :cond_16

    move v6, v7

    :cond_16
    iget-boolean v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    new-instance v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v3, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;Lorg/telegram/ui/Components/EmojiView$EmojiPack;I)V

    invoke-virtual {v1, v4, v6, v5, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;->set(Ljava/lang/String;ZZLandroid/view/View$OnClickListener;)V

    goto/16 :goto_24

    :cond_17
    const/4 v13, 0x7

    if-ne v3, v13, :cond_18

    goto/16 :goto_24

    :cond_18
    const/16 v13, 0x9

    if-ne v3, v13, :cond_1d

    .line 2210
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_42

    .line 2211
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 2212
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v7

    sub-int v3, v6, v3

    if-ltz v3, :cond_19

    .line 2213
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_6

    :cond_19
    move-object v3, v8

    :goto_6
    if-nez v3, :cond_1a

    goto :goto_8

    .line 2217
    :cond_1a
    iget-boolean v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v5, :cond_1b

    iget-object v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_7

    :cond_1b
    iget-object v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_7
    if-le v2, v1, :cond_1c

    add-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v5

    if-gt v2, v9, :cond_1c

    .line 2219
    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    sub-int v1, v2, v1

    sub-int/2addr v1, v7

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_1c
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2227
    :cond_1d
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 2228
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    .line 2229
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 2230
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v1, v3, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 2234
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v5, :cond_1e

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2235
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_b

    .line 2236
    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v5, :cond_21

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v9, :cond_1f

    goto :goto_a

    .line 2239
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v10, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_9

    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v9

    add-int v10, v3, v9

    :goto_9
    move v3, v10

    goto :goto_b

    .line 2237
    :cond_21
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2242
    :goto_b
    invoke-virtual {v1, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2243
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    if-eq v9, v11, :cond_22

    move v9, v7

    goto :goto_c

    :cond_22
    move v9, v6

    :goto_c
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v10

    if-eq v10, v11, :cond_23

    move v10, v7

    goto :goto_d

    :cond_23
    move v10, v6

    :goto_d
    add-int/2addr v9, v10

    if-ne v2, v9, :cond_24

    .line 2244
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2245
    iput-boolean v7, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    .line 2246
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v1, v3, v4, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 2247
    iput-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2248
    iput-object v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2249
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2250
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v3, :cond_3f

    .line 2251
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_22

    .line 2253
    :cond_24
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    if-eq v9, v11, :cond_25

    move v9, v7

    goto :goto_e

    :cond_25
    move v9, v6

    :goto_e
    sub-int v9, v2, v9

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v10

    if-eq v10, v11, :cond_26

    move v10, v7

    goto :goto_f

    :cond_26
    move v10, v6

    :goto_f
    sub-int/2addr v9, v10

    if-ge v9, v3, :cond_2c

    .line 2254
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v11, :cond_27

    move v3, v7

    goto :goto_10

    :cond_27
    move v3, v6

    :goto_10
    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-eq v3, v11, :cond_28

    move v3, v7

    goto :goto_11

    :cond_28
    move v3, v6

    :goto_11
    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    sub-int/2addr v2, v3

    .line 2255
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ne v3, v5, :cond_29

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2256
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2257
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V

    move v2, v6

    goto/16 :goto_22

    .line 2259
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v2, :cond_2a

    move-object v3, v8

    goto :goto_12

    .line 2260
    :cond_2a
    iget-object v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_12
    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_2b

    .line 2261
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_13

    :cond_2b
    move v7, v6

    .line 2262
    :goto_13
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2263
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_3e

    .line 2264
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_21

    .line 2267
    :cond_2c
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    if-eq v5, v11, :cond_2d

    move v5, v7

    goto :goto_14

    :cond_2d
    move v5, v6

    :goto_14
    sub-int v5, v2, v5

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    if-eq v9, v11, :cond_2e

    move v9, v7

    goto :goto_15

    :cond_2e
    move v9, v6

    :goto_15
    sub-int/2addr v5, v9

    sub-int/2addr v5, v3

    sub-int/2addr v5, v7

    if-ltz v5, :cond_35

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    if-eq v5, v11, :cond_2f

    move v5, v7

    goto :goto_16

    :cond_2f
    move v5, v6

    :goto_16
    sub-int v5, v2, v5

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    if-eq v9, v11, :cond_30

    move v9, v7

    goto :goto_17

    :cond_30
    move v9, v6

    :goto_17
    sub-int/2addr v5, v9

    sub-int/2addr v5, v3

    sub-int/2addr v5, v7

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_35

    .line 2268
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v11, :cond_31

    move v4, v7

    goto :goto_18

    :cond_31
    move v4, v6

    :goto_18
    sub-int/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v11, :cond_32

    move v4, v7

    goto :goto_19

    :cond_32
    move v4, v6

    :goto_19
    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    sub-int/2addr v2, v7

    .line 2269
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v2, :cond_33

    move-object v3, v8

    goto :goto_1a

    .line 2270
    :cond_33
    iget-object v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_1a
    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_34

    .line 2271
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_1b

    :cond_34
    move v7, v6

    .line 2272
    :goto_1b
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2273
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_3e

    .line 2274
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_21

    :cond_35
    move v3, v6

    .line 2277
    :goto_1c
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_3c

    .line 2278
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2279
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v7

    sub-int v9, v3, v9

    if-ltz v9, :cond_36

    .line 2280
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_1d

    :cond_36
    move-object v9, v8

    :goto_1d
    if-nez v9, :cond_37

    goto :goto_20

    .line 2284
    :cond_37
    iget-boolean v10, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v10, :cond_38

    iget-object v10, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    goto :goto_1e

    :cond_38
    iget-object v10, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_1e
    if-le v2, v5, :cond_3b

    add-int/lit8 v11, v5, 0x1

    add-int/2addr v11, v10

    if-gt v2, v11, :cond_3b

    .line 2286
    iget-object v9, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    sub-int v5, v2, v5

    sub-int/2addr v5, v7

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_3b

    .line 2288
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 2289
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v9, v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v5, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V

    goto :goto_1f

    .line 2291
    :cond_39
    iput-boolean v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 2292
    iget-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v9, :cond_3a

    .line 2293
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2295
    :cond_3a
    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v9, v5, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 2297
    :goto_1f
    iput-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_3b
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1c

    .line 2301
    :cond_3c
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v2, :cond_3d

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_21

    :cond_3d
    move v7, v6

    :cond_3e
    :goto_21
    move v2, v7

    .line 2304
    :cond_3f
    :goto_22
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v3, :cond_41

    .line 2305
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v3, :cond_40

    .line 2307
    invoke-static {}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1500()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    .line 2308
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2310
    :cond_40
    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    .line 2312
    :cond_41
    invoke-virtual {v1, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2314
    :goto_23
    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_42
    :goto_24
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    if-nez p2, :cond_0

    .line 1973
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 1975
    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_1
    const/4 p1, 0x3

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eq p2, p1, :cond_9

    if-eq p2, v0, :cond_9

    if-ne p2, v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 1987
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_2

    :cond_3
    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    .line 1989
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_7

    .line 1991
    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$1;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;Landroid/content/Context;)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 1997
    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1998
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne v0, p1, :cond_5

    .line 1999
    sget p1, Lorg/telegram/messenger/R$string;->SelectTopicIconHint:I

    const-string v0, "SelectTopicIconHint"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2000
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p1

    if-nez p1, :cond_6

    .line 2001
    sget p1, Lorg/telegram/messenger/R$string;->EmojiLongtapHint:I

    const-string v0, "EmojiLongtapHint"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2003
    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->ReactionsLongtapHint:I

    const-string v0, "ReactionsLongtapHint"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 p1, 0x11

    .line 2005
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2006
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    const-string v0, "windowBackgroundWhiteGrayText"

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object p1, p2

    goto :goto_2

    :cond_7
    const/4 p1, 0x7

    if-ne p2, p1, :cond_8

    .line 2009
    new-instance p1, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x34

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    const-string p2, "searchbox"

    .line 2010
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 2012
    :cond_8
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    goto :goto_2

    .line 1977
    :cond_9
    :goto_1
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    if-ne p2, v1, :cond_a

    .line 1979
    iput-boolean v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 1980
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p2, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    .line 1981
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 1982
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4802(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 1983
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 2014
    :cond_a
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 p2, 0x0

    .line 2015
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 2016
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 2018
    :cond_b
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
