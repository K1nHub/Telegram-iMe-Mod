.class public Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x37148dbb


# instance fields
.field public flags:I

.field public invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

.field public theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58552
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 58560
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 58564
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 58565
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 58566
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 58567
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 58568
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_0
    return-void
.end method
