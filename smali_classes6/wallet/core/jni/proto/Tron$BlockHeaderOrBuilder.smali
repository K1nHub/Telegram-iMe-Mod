.class public interface abstract Lwallet/core/jni/proto/Tron$BlockHeaderOrBuilder;
.super Ljava/lang/Object;
.source "Tron.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BlockHeaderOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getNumber()J
.end method

.method public abstract getParentHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getTxTrieRoot()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVersion()I
.end method

.method public abstract getWitnessAddress()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
