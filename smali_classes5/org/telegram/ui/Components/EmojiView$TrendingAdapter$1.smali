.class Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;Landroid/content/Context;)V
    .locals 0

    .line 7161
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 7164
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7165
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->access$17900(Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7166
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 7167
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->access$17900(Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)Z

    move-result v2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->isStickerPackUnread(ZJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$18000(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xe

    .line 7169
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x3

    .line 7170
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$18000(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
