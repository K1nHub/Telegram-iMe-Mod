.class public interface abstract Lwallet/core/jni/proto/Theta$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Theta.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Theta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getChainId()Ljava/lang/String;
.end method

.method public abstract getChainIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getFee()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSequence()J
.end method

.method public abstract getTfuelAmount()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getThetaAmount()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getToAddress()Ljava/lang/String;
.end method

.method public abstract getToAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
