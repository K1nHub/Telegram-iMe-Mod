.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x33473058


# instance fields
.field public id:Lorg/telegram/tgnet/TLRPC$InputDocument;

.field public query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29774
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 29781
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29782
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z

    .line 29783
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 29784
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 29785
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    .line 29787
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 29788
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->query:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 29793
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29794
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 29795
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29796
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 29797
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 29798
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29800
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 29801
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
