.class public interface abstract Lwallet/core/jni/proto/Tron$VoteWitnessContractOrBuilder;
.super Ljava/lang/Object;
.source "Tron.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoteWitnessContractOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getOwnerAddress()Ljava/lang/String;
.end method

.method public abstract getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSupport()Z
.end method

.method public abstract getVotes(I)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getVotesCount()I
.end method

.method public abstract getVotesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic isInitialized()Z
.end method
