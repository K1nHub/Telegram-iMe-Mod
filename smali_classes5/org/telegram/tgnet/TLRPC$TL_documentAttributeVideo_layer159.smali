.class public Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo_layer159;
.super Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0xef02ce6


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2299
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 2303
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2304
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->round_message:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 2305
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->supports_streaming:Z

    .line 2306
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 2307
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 2308
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 2312
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo_layer159;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2313
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->round_message:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 2314
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->supports_streaming:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 2315
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2316
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2317
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2318
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
