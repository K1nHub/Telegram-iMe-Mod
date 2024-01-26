.class public interface abstract Lwallet/core/jni/proto/Stellar$OperationPaymentOrBuilder;
.super Ljava/lang/Object;
.source "Stellar.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationPaymentOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount()J
.end method

.method public abstract getAsset()Lwallet/core/jni/proto/Stellar$Asset;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDestination()Ljava/lang/String;
.end method

.method public abstract getDestinationBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAsset()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
