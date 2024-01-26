.class public interface abstract Lwallet/core/jni/proto/NEO$TransactionInputOrBuilder;
.super Ljava/lang/Object;
.source "NEO.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransactionInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getAssetId()Ljava/lang/String;
.end method

.method public abstract getAssetIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getPrevHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrevIndex()I
.end method

.method public abstract getValue()J
.end method

.method public abstract synthetic isInitialized()Z
.end method
