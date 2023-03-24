.class public interface abstract Lwallet/core/jni/proto/Nebulas$RawTransactionOrBuilder;
.super Ljava/lang/Object;
.source "Nebulas.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nebulas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RawTransactionOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlg()I
.end method

.method public abstract getChainId()I
.end method

.method public abstract getData()Lwallet/core/jni/proto/Nebulas$Data;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFrom()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGasLimit()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGasPrice()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNonce()J
.end method

.method public abstract getSign()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getTo()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getValue()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasData()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
