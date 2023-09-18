.class public interface abstract Lwallet/core/jni/proto/Cosmos$Message$MsgVoteOrBuilder;
.super Ljava/lang/Object;
.source "Cosmos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MsgVoteOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getOption()Lwallet/core/jni/proto/Cosmos$Message$VoteOption;
.end method

.method public abstract getOptionValue()I
.end method

.method public abstract getProposalId()J
.end method

.method public abstract getVoter()Ljava/lang/String;
.end method

.method public abstract getVoterBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method
