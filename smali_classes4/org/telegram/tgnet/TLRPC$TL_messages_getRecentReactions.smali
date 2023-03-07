.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentReactions;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x39461db2


# instance fields
.field public hash:J

.field public limit:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65507
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 65514
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Reactions;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Reactions;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 65518
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentReactions;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 65519
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentReactions;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 65520
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentReactions;->hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
