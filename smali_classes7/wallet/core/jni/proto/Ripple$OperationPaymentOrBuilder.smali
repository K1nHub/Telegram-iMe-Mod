.class public interface abstract Lwallet/core/jni/proto/Ripple$OperationPaymentOrBuilder;
.super Ljava/lang/Object;
.source "Ripple.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationPaymentOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount()J
.end method

.method public abstract getAmountOneofCase()Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;
.end method

.method public abstract getCurrencyAmount()Lwallet/core/jni/proto/Ripple$CurrencyAmount;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDestination()Ljava/lang/String;
.end method

.method public abstract getDestinationBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDestinationTag()J
.end method

.method public abstract hasAmount()Z
.end method

.method public abstract hasCurrencyAmount()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
