.class public Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public animated:Z

.field public emojis:Z

.field public flags:I

.field public masks:Z

.field public short_name:Ljava/lang/String;

.field public software:Ljava/lang/String;

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;",
            ">;"
        }
    .end annotation
.end field

.field public thumb:Lorg/telegram/tgnet/TLRPC$InputDocument;

.field public title:Ljava/lang/String;

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public videos:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61325
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 61337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->stickers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 61341
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    const v0, -0x6fde5499

    .line 61345
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61346
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->masks:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->flags:I

    .line 61347
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->animated:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->flags:I

    .line 61348
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->videos:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x11

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->flags:I

    .line 61349
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->emojis:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->flags:I

    .line 61350
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61351
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61352
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 61353
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 61354
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 61355
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->thumb:Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_4
    const v0, 0x1cb5c415

    .line 61357
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61358
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 61359
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_5

    .line 61361
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 61363
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 61364
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;->software:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
