.class public interface abstract Lwallet/core/jni/proto/FIO$Action$TransferOrBuilder;
.super Ljava/lang/Object;
.source "FIO.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransferOrBuilder"
.end annotation


# virtual methods
.method public abstract getAmount()J
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFee()J
.end method

.method public abstract getPayeePublicKey()Ljava/lang/String;
.end method

.method public abstract getPayeePublicKeyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
