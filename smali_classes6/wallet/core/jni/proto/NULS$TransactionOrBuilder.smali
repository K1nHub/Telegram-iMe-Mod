.class public interface abstract Lwallet/core/jni/proto/NULS$TransactionOrBuilder;
.super Ljava/lang/Object;
.source "NULS.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NULS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransactionOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getHash()I
.end method

.method public abstract getInput()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
.end method

.method public abstract getOutput()Lwallet/core/jni/proto/NULS$TransactionCoinTo;
.end method

.method public abstract getRemark()Ljava/lang/String;
.end method

.method public abstract getRemarkBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()I
.end method

.method public abstract getTxData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTxSigs()Lwallet/core/jni/proto/NULS$Signature;
.end method

.method public abstract getType()I
.end method

.method public abstract hasInput()Z
.end method

.method public abstract hasOutput()Z
.end method

.method public abstract hasTxSigs()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
