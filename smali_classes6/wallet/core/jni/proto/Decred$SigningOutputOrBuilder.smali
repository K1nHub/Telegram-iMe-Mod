.class public interface abstract Lwallet/core/jni/proto/Decred$SigningOutputOrBuilder;
.super Ljava/lang/Object;
.source "Decred.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Decred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningOutputOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getEncoded()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getError()Lwallet/core/jni/proto/Common$SigningError;
.end method

.method public abstract getErrorValue()I
.end method

.method public abstract getTransaction()Lwallet/core/jni/proto/Decred$Transaction;
.end method

.method public abstract getTransactionId()Ljava/lang/String;
.end method

.method public abstract getTransactionIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasTransaction()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
