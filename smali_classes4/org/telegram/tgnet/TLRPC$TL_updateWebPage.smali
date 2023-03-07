.class public Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x7f891213


# instance fields
.field public pts:I

.field public pts_count:I

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32278
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 32286
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebPage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 32287
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;->pts:I

    .line 32288
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;->pts_count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 32292
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 32293
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 32294
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 32295
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;->pts_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
