.class public Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

.field public flags:I

.field public form_id:J

.field public invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

.field public requested_info_id:Ljava/lang/String;

.field public shipping_option_id:Ljava/lang/String;

.field public tip_amount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62160
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 62172
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$payments_PaymentResult;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$payments_PaymentResult;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x2d03522f

    .line 62176
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 62177
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 62178
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->form_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 62179
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 62180
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 62181
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->requested_info_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 62183
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 62184
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->shipping_option_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 62186
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 62187
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 62188
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->tip_amount:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    :cond_2
    return-void
.end method
