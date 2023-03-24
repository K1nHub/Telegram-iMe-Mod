.class public final Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$VoteWitnessContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$VoteWitnessContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContract;",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8731
    invoke-static {}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14100()Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 8724
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllVotes(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;",
            ">;)",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;"
        }
    .end annotation

    .line 8925
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8926
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14800(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addVotes(ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 8911
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8912
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    .line 8913
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    .line 8912
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14700(Lwallet/core/jni/proto/Tron$VoteWitnessContract;ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-object p0
.end method

.method public addVotes(ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 8885
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14700(Lwallet/core/jni/proto/Tron$VoteWitnessContract;ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-object p0
.end method

.method public addVotes(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14600(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-object p0
.end method

.method public addVotes(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14600(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-object p0
.end method

.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1

    .line 8784
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14300(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V

    return-object p0
.end method

.method public clearSupport()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1

    .line 8977
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8978
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$15200(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V

    return-object p0
.end method

.method public clearVotes()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1

    .line 8937
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8938
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14900(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V

    return-object p0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 8745
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSupport()Z
    .locals 1

    .line 8960
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->getSupport()Z

    move-result v0

    return v0
.end method

.method public getVotes(I)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->getVotes(I)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    move-result-object p1

    return-object p1
.end method

.method public getVotesCount()I
    .locals 1

    .line 8825
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->getVotesCount()I

    move-result v0

    return v0
.end method

.method public getVotesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;",
            ">;"
        }
    .end annotation

    .line 8813
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    .line 8814
    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->getVotesList()Ljava/util/List;

    move-result-object v0

    .line 8813
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeVotes(I)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8949
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8950
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$15000(Lwallet/core/jni/proto/Tron$VoteWitnessContract;I)V

    return-object p0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8771
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8772
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14200(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8799
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8800
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14400(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSupport(Z)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8968
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8969
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$15100(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Z)V

    return-object p0
.end method

.method public setVotes(ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 8859
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    .line 8861
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    .line 8860
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14500(Lwallet/core/jni/proto/Tron$VoteWitnessContract;ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-object p0
.end method

.method public setVotes(ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 8846
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8847
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->access$14500(Lwallet/core/jni/proto/Tron$VoteWitnessContract;ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-object p0
.end method
