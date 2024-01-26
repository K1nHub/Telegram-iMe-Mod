.class public interface abstract Lwallet/core/jni/proto/Bitcoin$UnspentTransactionOrBuilder;
.super Ljava/lang/Object;
.source "Bitcoin.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnspentTransactionOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount()J
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getOutPoint()Lwallet/core/jni/proto/Bitcoin$OutPoint;
.end method

.method public abstract getScript()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasOutPoint()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
