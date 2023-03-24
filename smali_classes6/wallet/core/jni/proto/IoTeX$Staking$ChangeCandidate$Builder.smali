.class public final Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;",
        "Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3252
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->access$4900()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 3245
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBucketIndex()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;
    .locals 1

    .line 3291
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3292
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->access$5100(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public clearCandidateName()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;
    .locals 1

    .line 3345
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3346
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->access$5300(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;
    .locals 1

    .line 3400
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3401
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->access$5600(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public getBucketIndex()J
    .locals 2

    .line 3266
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->getBucketIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCandidateName()Ljava/lang/String;
    .locals 1

    .line 3306
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->getCandidateName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3319
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->getCandidateNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3375
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setBucketIndex(J)Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3278
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3279
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->access$5000(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;J)V

    return-object p0
.end method

.method public setCandidateName(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3332
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3333
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->access$5200(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCandidateNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3360
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3361
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->access$5400(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3387
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3388
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->access$5500(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
