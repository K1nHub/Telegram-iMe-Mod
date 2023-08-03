.class public interface abstract Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutputOrBuilder;
.super Ljava/lang/Object;
.source "TransactionCompiler.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TransactionCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreSigningOutputOrBuilder"
.end annotation


# virtual methods
.method public abstract getData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDataHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getError()Lwallet/core/jni/proto/Common$SigningError;
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getErrorMessageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getErrorValue()I
.end method

.method public abstract synthetic isInitialized()Z
.end method
