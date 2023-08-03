.class public final Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$BlockHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$BlockHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$BlockHeader;",
        "Lwallet/core/jni/proto/Tron$BlockHeader$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$BlockHeaderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10632
    invoke-static {}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$17500()Lwallet/core/jni/proto/Tron$BlockHeader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 10625
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNumber()Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1

    .line 10779
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$18300(Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-object p0
.end method

.method public clearParentHash()Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1

    .line 10751
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10752
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$18100(Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-object p0
.end method

.method public clearTimestamp()Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1

    .line 10671
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10672
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$17700(Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-object p0
.end method

.method public clearTxTrieRoot()Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1

    .line 10711
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$17900(Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-object p0
.end method

.method public clearVersion()Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1

    .line 10835
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$18700(Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-object p0
.end method

.method public clearWitnessAddress()Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1

    .line 10807
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10808
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$18500(Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-object p0
.end method

.method public getNumber()J
    .locals 2

    .line 10762
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->getNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParentHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->getParentHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 10646
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxTrieRoot()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10686
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->getTxTrieRoot()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 10818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->getVersion()I

    move-result v0

    return v0
.end method

.method public getWitnessAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->getWitnessAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setNumber(J)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10770
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$18200(Lwallet/core/jni/proto/Tron$BlockHeader;J)V

    return-object p0
.end method

.method public setParentHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10738
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10739
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$18000(Lwallet/core/jni/proto/Tron$BlockHeader;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestamp(J)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10658
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$17600(Lwallet/core/jni/proto/Tron$BlockHeader;J)V

    return-object p0
.end method

.method public setTxTrieRoot(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10698
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10699
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$17800(Lwallet/core/jni/proto/Tron$BlockHeader;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVersion(I)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10826
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$18600(Lwallet/core/jni/proto/Tron$BlockHeader;I)V

    return-object p0
.end method

.method public setWitnessAddress(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10798
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10799
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$BlockHeader;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$BlockHeader;->access$18400(Lwallet/core/jni/proto/Tron$BlockHeader;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
