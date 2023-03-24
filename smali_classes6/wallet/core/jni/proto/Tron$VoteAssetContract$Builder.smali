.class public final Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$VoteAssetContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$VoteAssetContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$VoteAssetContract;",
        "Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$VoteAssetContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7560
    invoke-static {}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$12000()Lwallet/core/jni/proto/Tron$VoteAssetContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 7553
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllVoteAddress(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;"
        }
    .end annotation

    .line 7728
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7729
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$12600(Lwallet/core/jni/proto/Tron$VoteAssetContract;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addVoteAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7713
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7714
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$12500(Lwallet/core/jni/proto/Tron$VoteAssetContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public addVoteAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7756
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7757
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$12800(Lwallet/core/jni/proto/Tron$VoteAssetContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearCount()Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1

    .line 7812
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7813
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$13200(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V

    return-object p0
.end method

.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1

    .line 7613
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7614
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$12200(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V

    return-object p0
.end method

.method public clearSupport()Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1

    .line 7784
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$13000(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V

    return-object p0
.end method

.method public clearVoteAddress()Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1

    .line 7741
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7742
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$12700(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V

    return-object p0
.end method

.method public getCount()I
    .locals 1

    .line 7795
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getCount()I

    move-result v0

    return v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 7574
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7587
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSupport()Z
    .locals 1

    .line 7767
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getSupport()Z

    move-result v0

    return v0
.end method

.method public getVoteAddress(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7670
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getVoteAddress(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVoteAddressBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7684
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getVoteAddressBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getVoteAddressCount()I
    .locals 1

    .line 7657
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getVoteAddressCount()I

    move-result v0

    return v0
.end method

.method public getVoteAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7644
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    .line 7645
    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getVoteAddressList()Ljava/util/List;

    move-result-object v0

    .line 7644
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setCount(I)Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7803
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$13100(Lwallet/core/jni/proto/Tron$VoteAssetContract;I)V

    return-object p0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7600
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7601
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$12100(Lwallet/core/jni/proto/Tron$VoteAssetContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7628
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7629
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$12300(Lwallet/core/jni/proto/Tron$VoteAssetContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSupport(Z)Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7775
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7776
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$12900(Lwallet/core/jni/proto/Tron$VoteAssetContract;Z)V

    return-object p0
.end method

.method public setVoteAddress(ILjava/lang/String;)Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;
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

    .line 7698
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7699
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->access$12400(Lwallet/core/jni/proto/Tron$VoteAssetContract;ILjava/lang/String;)V

    return-object p0
.end method
