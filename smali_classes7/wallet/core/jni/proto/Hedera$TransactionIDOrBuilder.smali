.class public interface abstract Lwallet/core/jni/proto/Hedera$TransactionIDOrBuilder;
.super Ljava/lang/Object;
.source "Hedera.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransactionIDOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccountID()Ljava/lang/String;
.end method

.method public abstract getAccountIDBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getNonce()I
.end method

.method public abstract getScheduled()Z
.end method

.method public abstract getTransactionValidStart()Lwallet/core/jni/proto/Hedera$Timestamp;
.end method

.method public abstract hasTransactionValidStart()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
