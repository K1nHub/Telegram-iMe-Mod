.class public Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;
.super Ljava/lang/Object;
.source "StickerCategoriesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerCategoriesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiCategory"
.end annotation


# instance fields
.field public animated:Z

.field public documentId:J

.field public emojis:Ljava/lang/String;

.field public iconResId:I

.field public remote:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static remote(Lorg/telegram/tgnet/TLRPC$TL_emojiGroup;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;
    .locals 3

    .line 858
    new-instance v0, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    invoke-direct {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;-><init>()V

    const/4 v1, 0x1

    .line 859
    iput-boolean v1, v0, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->remote:Z

    .line 860
    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiGroup;->icon_emoji_id:J

    iput-wide v1, v0, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->documentId:J

    .line 861
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiGroup;->emoticons:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->emojis:Ljava/lang/String;

    .line 862
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiGroup;->title:Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->title:Ljava/lang/String;

    return-object v0
.end method
