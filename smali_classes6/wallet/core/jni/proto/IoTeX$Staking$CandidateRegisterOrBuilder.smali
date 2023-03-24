.class public interface abstract Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegisterOrBuilder;
.super Ljava/lang/Object;
.source "IoTeX.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CandidateRegisterOrBuilder"
.end annotation


# virtual methods
.method public abstract getAutoStake()Z
.end method

.method public abstract getCandidate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getOwnerAddress()Ljava/lang/String;
.end method

.method public abstract getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPayload()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStakedAmount()Ljava/lang/String;
.end method

.method public abstract getStakedAmountBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStakedDuration()I
.end method

.method public abstract hasCandidate()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
