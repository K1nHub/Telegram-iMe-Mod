.class Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrendingAdapter"
.end annotation


# instance fields
.field private emoji:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 7155
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 7156
    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    return-void
.end method

.method static synthetic access$17900(Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)Z
    .locals 0

    .line 7152
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 7276
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$18100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 7189
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/BackupImageView;

    .line 7190
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$18100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 7191
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7194
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 7195
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    goto :goto_1

    .line 7196
    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz p2, :cond_3

    .line 7197
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_1

    .line 7201
    :cond_2
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    goto :goto_1

    .line 7204
    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    .line 7208
    :goto_1
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_7

    .line 7210
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 7211
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    .line 7212
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 7213
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_5

    .line 7214
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move-object v3, v1

    :goto_3
    if-nez v3, :cond_8

    .line 7220
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_4

    :cond_7
    move-object v3, v1

    :cond_8
    :goto_4
    if-nez v3, :cond_9

    return-void

    .line 7227
    :cond_9
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    if-eqz p2, :cond_b

    .line 7228
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p2

    if-eqz p2, :cond_a

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_a
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 7231
    :cond_b
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x5a

    invoke-static {p2, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    .line 7232
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    const v4, 0x3e4ccccd    # 0.2f

    const-string v5, "emptyListPlaceholder"

    invoke-static {v2, v5, v4}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v4

    if-eqz v4, :cond_c

    const/16 v2, 0x200

    .line 7234
    invoke-virtual {v4, v2, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_c
    if-eqz p2, :cond_d

    .line 7236
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move-object p2, v3

    .line 7241
    :cond_e
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_f

    .line 7242
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    .line 7243
    invoke-static {p2, v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    goto :goto_5

    .line 7244
    :cond_f
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_17

    .line 7245
    check-cast p2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 7246
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    .line 7247
    invoke-static {p2, v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForSticker(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    :goto_5
    if-nez p2, :cond_10

    return-void

    .line 7255
    :cond_10
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_11

    const/4 v1, 0x4

    goto :goto_6

    :cond_11
    const/4 v1, 0x1

    :goto_6
    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "30_30_firstframe"

    goto :goto_7

    :cond_12
    const-string v1, "30_30"

    :goto_7
    move-object v6, v1

    if-eqz v2, :cond_15

    .line 7256
    invoke-static {v3, v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_13
    if-eqz v4, :cond_14

    .line 7258
    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 p2, 0x0

    move-object v2, v6

    move-object v3, v4

    move v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_8

    .line 7260
    :cond_14
    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v6

    move-object v3, p2

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_8

    .line 7262
    :cond_15
    iget v1, p2, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v1, v5, :cond_16

    const-string v3, "tgs"

    move-object v1, p2

    move-object v2, v6

    move-object v5, p1

    .line 7263
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_8

    :cond_16
    const/4 v2, 0x0

    const-string v3, "webp"

    move-object v1, p2

    move-object v5, p1

    .line 7265
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :cond_17
    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 7166
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;-><init>(Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;Landroid/content/Context;)V

    .line 7180
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    const/16 v0, 0x18

    const/16 v1, 0x1e

    if-eqz p2, :cond_0

    const/16 p2, 0x18

    goto :goto_0

    :cond_0
    const/16 p2, 0x1e

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x1e

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    const/4 p2, 0x1

    .line 7181
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 7182
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 7183
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    const/16 v1, 0x22

    const/16 v2, 0x2a

    if-eqz v0, :cond_2

    const/16 v0, 0x22

    goto :goto_2

    :cond_2
    const/16 v0, 0x2a

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->emoji:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/16 v1, 0x2a

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7184
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
