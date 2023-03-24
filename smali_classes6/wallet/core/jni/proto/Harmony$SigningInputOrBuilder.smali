.class public interface abstract Lwallet/core/jni/proto/Harmony$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Harmony.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getChainId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getMessageOneofCase()Lwallet/core/jni/proto/Harmony$SigningInput$MessageOneofCase;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStakingMessage()Lwallet/core/jni/proto/Harmony$StakingMessage;
.end method

.method public abstract getTransactionMessage()Lwallet/core/jni/proto/Harmony$TransactionMessage;
.end method

.method public abstract hasStakingMessage()Z
.end method

.method public abstract hasTransactionMessage()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
