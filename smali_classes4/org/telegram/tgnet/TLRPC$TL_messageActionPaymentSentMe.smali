.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x70ce4cd9


# instance fields
.field public flags:I

.field public info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

.field public payload:[B

.field public shipping_option_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26798
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 26807
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->flags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 26808
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->recurring_init:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v2, v3

    .line 26809
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->recurring_used:Z

    .line 26810
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    .line 26811
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    .line 26812
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->payload:[B

    .line 26813
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 26814
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 26816
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 26817
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->shipping_option_id:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 26822
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26823
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->recurring_init:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->flags:I

    .line 26824
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->recurring_used:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->flags:I

    .line 26825
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26826
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 26827
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 26828
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->payload:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 26829
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 26830
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26832
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 26833
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSentMe;->shipping_option_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
