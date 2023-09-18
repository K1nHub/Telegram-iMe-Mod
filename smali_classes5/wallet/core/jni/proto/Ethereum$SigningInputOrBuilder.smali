.class public interface abstract Lwallet/core/jni/proto/Ethereum$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Ethereum.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getChainId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getGasLimit()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGasPrice()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMaxFeePerGas()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMaxInclusionFeePerGas()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNonce()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getToAddress()Ljava/lang/String;
.end method

.method public abstract getToAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTransaction()Lwallet/core/jni/proto/Ethereum$Transaction;
.end method

.method public abstract getTxMode()Lwallet/core/jni/proto/Ethereum$TransactionMode;
.end method

.method public abstract getTxModeValue()I
.end method

.method public abstract getUserOperation()Lwallet/core/jni/proto/Ethereum$UserOperation;
.end method

.method public abstract hasTransaction()Z
.end method

.method public abstract hasUserOperation()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
