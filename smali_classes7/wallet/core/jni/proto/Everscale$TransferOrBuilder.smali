.class public interface abstract Lwallet/core/jni/proto/Everscale$TransferOrBuilder;
.super Ljava/lang/Object;
.source "Everscale.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Everscale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransferOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccountStateOneofCase()Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;
.end method

.method public abstract getAmount()J
.end method

.method public abstract getBehavior()Lwallet/core/jni/proto/Everscale$MessageBehavior;
.end method

.method public abstract getBehaviorValue()I
.end method

.method public abstract getBounce()Z
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getEncodedContractData()Ljava/lang/String;
.end method

.method public abstract getEncodedContractDataBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getExpiredAt()I
.end method

.method public abstract getTo()Ljava/lang/String;
.end method

.method public abstract getToBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasEncodedContractData()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
