.class public final Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegisterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;",
        "Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegisterOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4948
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$7800()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 4941
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAutoStake()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1

    .line 5099
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5100
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$8800(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public clearCandidate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1

    .line 4994
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4995
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$8100(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public clearOwnerAddress()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1

    .line 5153
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5154
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$9000(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1

    .line 5196
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5197
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$9300(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public clearStakedAmount()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1

    .line 5032
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$8300(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public clearStakedDuration()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1

    .line 5071
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5072
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$8600(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public getAutoStake()Z
    .locals 1

    .line 5082
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getAutoStake()Z

    move-result v0

    return v0
.end method

.method public getCandidate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
    .locals 1

    .line 4964
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getCandidate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 5114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5127
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5179
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakedAmount()Ljava/lang/String;
    .locals 1

    .line 5005
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getStakedAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStakedAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getStakedAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakedDuration()I
    .locals 1

    .line 5054
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getStakedDuration()I

    move-result v0

    return v0
.end method

.method public hasCandidate()Z
    .locals 1

    .line 4957
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->hasCandidate()Z

    move-result v0

    return v0
.end method

.method public mergeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4987
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4988
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$8000(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public setAutoStake(Z)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5090
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5091
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$8700(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Z)V

    return-object p0
.end method

.method public setCandidate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4979
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4980
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$7900(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public setCandidate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4970
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4971
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$7900(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5140
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5141
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$8900(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5168
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5169
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$9100(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5187
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5188
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$9200(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStakedAmount(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5023
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5024
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$8200(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStakedAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5043
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5044
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$8400(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStakedDuration(I)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5062
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5063
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->access$8500(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;I)V

    return-object p0
.end method
