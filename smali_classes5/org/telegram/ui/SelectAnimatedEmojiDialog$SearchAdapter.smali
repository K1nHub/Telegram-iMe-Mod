.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field private count:I

.field emojiHeaderRow:I

.field emojiStartRow:I

.field private rowHashCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field stickersHeaderRow:I

.field stickersStartRow:I

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 1795
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 p1, -0x1

    .line 1805
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiHeaderRow:I

    .line 1806
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersHeaderRow:I

    const/4 p1, 0x1

    .line 1959
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    .line 1960
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;)V
    .locals 0

    .line 1795
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1964
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 6

    .line 1839
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiHeaderRow:I

    if-eq p1, v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersHeaderRow:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1842
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    if-le p1, v0, :cond_1

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x5

    return p1

    .line 1845
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    return v1

    .line 1848
    :cond_2
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiStartRow:I

    if-le p1, v0, :cond_3

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1849
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiStartRow:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x4

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x6

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1810
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

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
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1858
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x6

    if-ne v3, v6, :cond_1

    .line 1859
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;

    .line 1860
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiHeaderRow:I

    if-ne v2, v3, :cond_0

    .line 1861
    sget v2, Lorg/telegram/messenger/R$string;->Emoji:I

    const-string v3, "Emoji"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1863
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrStickers:I

    const-string v3, "AccDescrStickers"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->setText(Ljava/lang/String;Z)V

    .line 1865
    :goto_0
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1866
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v6, 0x5

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v3, v6, :cond_2

    .line 1867
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v8

    .line 1868
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1869
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 1870
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->createImageReceiver(Landroid/view/View;)V

    .line 1871
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v2, v3, v7}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v15

    .line 1872
    iget-object v10, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    const-string v12, "100_100_firstframe"

    const-string v18, "tgs"

    move-object/from16 v19, v2

    invoke-virtual/range {v10 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1873
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    .line 1874
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1875
    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    goto/16 :goto_5

    .line 1876
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_a

    .line 1877
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 1878
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 1879
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_9

    if-ltz v2, :cond_9

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    goto/16 :goto_3

    .line 1882
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 1884
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v3, :cond_4

    .line 1885
    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x7

    .line 1886
    invoke-virtual {v3, v6}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1887
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 1889
    :cond_4
    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1890
    iput-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 1891
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    .line 1892
    iput-boolean v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 1893
    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    .line 1894
    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 1895
    iput-boolean v8, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    .line 1896
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v3, :cond_6

    .line 1898
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v17

    const/16 v5, 0x2008

    .line 1899
    invoke-static {v5}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1900
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

    goto :goto_1

    .line 1902
    :cond_5
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

    .line 1904
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

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

    goto :goto_2

    .line 1906
    :cond_6
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1907
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1909
    :goto_2
    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 1910
    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1911
    invoke-virtual {v1, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1912
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v2, :cond_d

    .line 1913
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1914
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    goto/16 :goto_5

    .line 1917
    :cond_7
    iput-boolean v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    .line 1918
    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v3, v4, v5, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iput-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 1919
    iput-object v9, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1920
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1921
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1922
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v2, :cond_8

    .line 1925
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    .line 1926
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1928
    :cond_8
    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_9
    :goto_3
    return-void

    .line 1935
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    .line 1936
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 1937
    iput-boolean v5, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    .line 1938
    iput v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 1939
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v1, v3, v4, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1941
    invoke-virtual {v1, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1942
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_c

    if-ltz v2, :cond_c

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 1943
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    .line 1944
    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v4, v2, v3, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iput-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 1945
    iget-object v4, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1946
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1948
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v3, :cond_b

    .line 1950
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$2800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    iget-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    .line 1951
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1953
    :cond_b
    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_c
    move v2, v5

    .line 1955
    :goto_4
    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_d
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1818
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    if-ne p2, p1, :cond_1

    .line 1820
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;Landroid/content/Context;)V

    const-string p2, "searchbox"

    .line 1826
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1828
    :cond_1
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    .line 1830
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 1831
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1832
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1834
    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public updateRows(Z)V
    .locals 7

    .line 1968
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p1

    .line 1971
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 1973
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    .line 1974
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1976
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1977
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1978
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiHeaderRow:I

    .line 1979
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1982
    :cond_1
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->emojiStartRow:I

    move v1, p1

    .line 1983
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1984
    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    .line 1985
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    new-array v5, v2, [Ljava/lang/Object;

    const/16 v6, -0x10f6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1989
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1990
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1991
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersHeaderRow:I

    .line 1992
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    :cond_3
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->stickersStartRow:I

    move v0, p1

    .line 1996
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1997
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    .line 1998
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->rowHashCodes:Ljava/util/ArrayList;

    new-array v4, v2, [Ljava/lang/Object;

    const/16 v5, -0x1d1d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p1

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2025
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2028
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->count:I

    if-nez v1, :cond_5

    move p1, v3

    :cond_5
    invoke-virtual {v0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->switchSearchEmptyView(Z)V

    return-void
.end method
