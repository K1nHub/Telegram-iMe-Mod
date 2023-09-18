.class public final Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnershipOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;",
        "Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnershipOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3781
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->access$5800()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 3774
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBucketIndex()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
    .locals 1

    .line 3820
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3821
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->access$6000(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
    .locals 1

    .line 3929
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3930
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->access$6500(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public clearVoterAddress()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
    .locals 1

    .line 3874
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3875
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->access$6200(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public getBucketIndex()J
    .locals 2

    .line 3795
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getBucketIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3904
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVoterAddress()Ljava/lang/String;
    .locals 1

    .line 3835
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getVoterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoterAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3848
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getVoterAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setBucketIndex(J)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3807
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3808
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->access$5900(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;J)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3916
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3917
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->access$6400(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVoterAddress(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3861
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->access$6100(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVoterAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3889
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3890
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->access$6300(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
