.class public Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x2d03522f


# instance fields
.field public credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

.field public flags:I

.field public form_id:J

.field public invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

.field public requested_info_id:Ljava/lang/String;

.field public shipping_option_id:Ljava/lang/String;

.field public tip_amount:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58611
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 58623
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$payments_PaymentResult;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$payments_PaymentResult;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 58627
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 58628
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 58629
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->form_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 58630
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 58631
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 58632
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->requested_info_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 58634
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 58635
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->shipping_option_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 58637
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 58638
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 58639
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->tip_amount:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    :cond_2
    return-void
.end method
