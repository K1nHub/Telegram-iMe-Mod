.class public interface abstract Lwallet/core/jni/proto/Stellar$ClaimantOrBuilder;
.super Ljava/lang/Object;
.source "Stellar.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClaimantOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getAccountBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getPredicate()Lwallet/core/jni/proto/Stellar$ClaimPredicate;
.end method

.method public abstract getPredicateValue()I
.end method

.method public abstract synthetic isInitialized()Z
.end method
