.class public interface abstract Lwallet/core/jni/proto/Hedera$TransactionBodyOrBuilder;
.super Ljava/lang/Object;
.source "Hedera.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransactionBodyOrBuilder"
.end annotation


# virtual methods
.method public abstract getDataCase()Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getMemo()Ljava/lang/String;
.end method

.method public abstract getMemoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNodeAccountID()Ljava/lang/String;
.end method

.method public abstract getNodeAccountIDBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTransactionFee()J
.end method

.method public abstract getTransactionID()Lwallet/core/jni/proto/Hedera$TransactionID;
.end method

.method public abstract getTransactionValidDuration()J
.end method

.method public abstract getTransfer()Lwallet/core/jni/proto/Hedera$TransferMessage;
.end method

.method public abstract hasTransactionID()Z
.end method

.method public abstract hasTransfer()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
