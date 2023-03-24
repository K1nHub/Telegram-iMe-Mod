.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x57f17692


# instance fields
.field public emojis:Z

.field public flags:I

.field public limit:I

.field public masks:Z

.field public offset_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54943
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 54953
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 54957
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54958
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->masks:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->flags:I

    .line 54959
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->emojis:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->flags:I

    .line 54960
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54961
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->offset_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 54962
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
