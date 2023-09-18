.class public interface abstract Lwallet/core/jni/proto/Nervos$CellOrBuilder;
.super Ljava/lang/Object;
.source "Nervos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CellOrBuilder"
.end annotation


# virtual methods
.method public abstract getBlockHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBlockNumber()J
.end method

.method public abstract getCapacity()J
.end method

.method public abstract getData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getInputType()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLock()Lwallet/core/jni/proto/Nervos$Script;
.end method

.method public abstract getOutPoint()Lwallet/core/jni/proto/Nervos$OutPoint;
.end method

.method public abstract getOutputType()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSince()J
.end method

.method public abstract getType()Lwallet/core/jni/proto/Nervos$Script;
.end method

.method public abstract hasLock()Z
.end method

.method public abstract hasOutPoint()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
