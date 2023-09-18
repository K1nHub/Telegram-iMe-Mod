.class public interface abstract Lwallet/core/jni/proto/Tezos$SigningInputOrBuilder;
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
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getEncodedOperations()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOperationList()Lwallet/core/jni/proto/Tezos$OperationList;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasOperationList()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
