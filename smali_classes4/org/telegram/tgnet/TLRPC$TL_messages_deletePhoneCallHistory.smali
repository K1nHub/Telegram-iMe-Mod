.class public Lorg/telegram/tgnet/TLRPC$TL_messages_deletePhoneCallHistory;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6341bf7


# instance fields
.field public flags:I

.field public revoke:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56447
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 56454
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 56458
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deletePhoneCallHistory;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 56459
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deletePhoneCallHistory;->revoke:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deletePhoneCallHistory;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deletePhoneCallHistory;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deletePhoneCallHistory;->flags:I

    .line 56460
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
