.class public final Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$MsgVoteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$MsgVote;",
        "Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$MsgVoteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16373
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->access$29400()Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 16366
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOption()Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    .locals 1

    .line 16495
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16496
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->access$30200(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V

    return-object p0
.end method

.method public clearProposalId()Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    .locals 1

    .line 16400
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16401
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->access$29600(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V

    return-object p0
.end method

.method public clearVoter()Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    .locals 1

    .line 16438
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16439
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->access$29800(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V

    return-object p0
.end method

.method public getOption()Lwallet/core/jni/proto/Cosmos$Message$VoteOption;
    .locals 1

    .line 16478
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->getOption()Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    move-result-object v0

    return-object v0
.end method

.method public getOptionValue()I
    .locals 1

    .line 16460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->getOptionValue()I

    move-result v0

    return v0
.end method

.method public getProposalId()J
    .locals 2

    .line 16383
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->getProposalId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVoter()Ljava/lang/String;
    .locals 1

    .line 16411
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->getVoter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->getVoterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setOption(Lwallet/core/jni/proto/Cosmos$Message$VoteOption;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16486
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16487
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->access$30100(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;Lwallet/core/jni/proto/Cosmos$Message$VoteOption;)V

    return-object p0
.end method

.method public setOptionValue(I)Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16468
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16469
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->access$30000(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;I)V

    return-object p0
.end method

.method public setProposalId(J)Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16391
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16392
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->access$29500(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;J)V

    return-object p0
.end method

.method public setVoter(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16429
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16430
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->access$29700(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVoterBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16449
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16450
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->access$29900(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
