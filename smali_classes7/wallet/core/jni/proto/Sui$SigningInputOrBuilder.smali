.class public interface abstract Lwallet/core/jni/proto/Sui$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Sui.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Sui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSignDirectMessage()Lwallet/core/jni/proto/Sui$SignDirect;
.end method

.method public abstract getTransactionPayloadCase()Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;
.end method

.method public abstract hasSignDirectMessage()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
