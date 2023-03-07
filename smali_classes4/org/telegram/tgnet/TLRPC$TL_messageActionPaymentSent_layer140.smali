.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent_layer140;
.super Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x40699cd0


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25321
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 25325
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    .line 25326
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 25330
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent_layer140;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25331
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25332
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
