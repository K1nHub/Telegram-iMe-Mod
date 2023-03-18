.class public Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x4f706dd6


# instance fields
.field public flags:I

.field public just_clear:Z

.field public max_date:I

.field public max_id:I

.field public min_date:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public revoke:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51986
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 51998
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 52002
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52003
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->just_clear:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    .line 52004
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->revoke:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    .line 52005
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52006
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 52007
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52008
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 52009
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->min_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52011
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 52012
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->max_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_3
    return-void
.end method
