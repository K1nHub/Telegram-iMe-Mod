.class public interface abstract Lwallet/core/jni/proto/Aptos$SigningOutputOrBuilder;
.super Ljava/lang/Object;
.source "Aptos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningOutputOrBuilder"
.end annotation


# virtual methods
.method public abstract getAuthenticator()Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getEncoded()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getJson()Ljava/lang/String;
.end method

.method public abstract getJsonBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRawTxn()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAuthenticator()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
