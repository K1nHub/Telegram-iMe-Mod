.class public interface abstract Lwallet/core/jni/proto/Tezos$OperationOrBuilder;
.super Ljava/lang/Object;
.source "Tezos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationOrBuilder"
.end annotation


# virtual methods
.method public abstract getCounter()J
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDelegationOperationData()Lwallet/core/jni/proto/Tezos$DelegationOperationData;
.end method

.method public abstract getFee()J
.end method

.method public abstract getGasLimit()J
.end method

.method public abstract getKind()Lwallet/core/jni/proto/Tezos$Operation$OperationKind;
.end method

.method public abstract getKindValue()I
.end method

.method public abstract getOperationDataCase()Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;
.end method

.method public abstract getRevealOperationData()Lwallet/core/jni/proto/Tezos$RevealOperationData;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getSourceBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStorageLimit()J
.end method

.method public abstract getTransactionOperationData()Lwallet/core/jni/proto/Tezos$TransactionOperationData;
.end method

.method public abstract hasDelegationOperationData()Z
.end method

.method public abstract hasRevealOperationData()Z
.end method

.method public abstract hasTransactionOperationData()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
