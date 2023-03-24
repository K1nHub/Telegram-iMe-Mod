.class public interface abstract Lwallet/core/jni/proto/Filecoin$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Filecoin.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Filecoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getGasFeeCap()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGasLimit()J
.end method

.method public abstract getGasPremium()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNonce()J
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTo()Ljava/lang/String;
.end method

.method public abstract getToBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getValue()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
