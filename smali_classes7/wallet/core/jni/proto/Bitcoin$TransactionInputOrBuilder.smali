.class public interface abstract Lwallet/core/jni/proto/Bitcoin$TransactionInputOrBuilder;
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
    name = "TransactionInputOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getPreviousOutput()Lwallet/core/jni/proto/Bitcoin$OutPoint;
.end method

.method public abstract getScript()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSequence()I
.end method

.method public abstract hasPreviousOutput()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
