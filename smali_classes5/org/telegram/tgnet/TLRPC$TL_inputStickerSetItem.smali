.class public Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5f5b6a


# instance fields
.field public document:Lorg/telegram/tgnet/TLRPC$InputDocument;

.field public emoji:Ljava/lang/String;

.field public flags:I

.field public mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4666
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 4688
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->flags:I

    .line 4689
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 4690
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->emoji:Ljava/lang/String;

    .line 4691
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4692
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 4697
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4698
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4699
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4700
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->emoji:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4701
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4702
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_0
    return-void
.end method
