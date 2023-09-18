.class public interface abstract Lwallet/core/jni/proto/Ethereum$SigningOutputOrBuilder;
.super Ljava/lang/Object;
.source "Ethereum.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningOutputOrBuilder"
.end annotation


# virtual methods
.method public abstract getData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getEncoded()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getError()Lwallet/core/jni/proto/Common$SigningError;
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getErrorMessageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getErrorValue()I
.end method

.method public abstract getR()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getS()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getV()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
