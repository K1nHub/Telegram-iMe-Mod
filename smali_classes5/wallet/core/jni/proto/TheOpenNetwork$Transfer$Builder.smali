.class public final Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TheOpenNetwork.java"

# interfaces
.implements Lwallet/core/jni/proto/TheOpenNetwork$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/TheOpenNetwork$Transfer;",
        "Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/TheOpenNetwork$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 800
    invoke-static {}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$000()Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/TheOpenNetwork$1;)V
    .locals 0

    .line 793
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1

    .line 974
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 975
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$800(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-object p0
.end method

.method public clearComment()Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1

    .line 1157
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1158
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$1600(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-object p0
.end method

.method public clearDest()Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1

    .line 919
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$500(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-object p0
.end method

.method public clearExpireAt()Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1

    .line 1103
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1104
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$1400(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-object p0
.end method

.method public clearMode()Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1

    .line 1063
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1064
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$1200(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-object p0
.end method

.method public clearSequenceNumber()Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1

    .line 1020
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1021
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$1000(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-object p0
.end method

.method public clearWalletVersion()Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1

    .line 865
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$300(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getCommentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDest()Ljava/lang/String;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getDest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getDestBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExpireAt()I
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getExpireAt()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getMode()I

    move-result v0

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getSequenceNumber()I

    move-result v0

    return v0
.end method

.method public getWalletVersion()Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getWalletVersion()Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    move-result-object v0

    return-object v0
.end method

.method public getWalletVersionValue()I
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getWalletVersionValue()I

    move-result v0

    return v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 961
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 962
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$700(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;J)V

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1144
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1145
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$1500(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCommentBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1172
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1173
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$1700(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDest(Ljava/lang/String;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 906
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 907
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$400(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDestBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 934
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 935
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$600(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExpireAt(I)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1090
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1091
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$1300(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;I)V

    return-object p0
.end method

.method public setMode(I)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1049
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1050
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$1100(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;I)V

    return-object p0
.end method

.method public setSequenceNumber(I)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1005
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1006
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$900(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;I)V

    return-object p0
.end method

.method public setWalletVersion(Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 853
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$200(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;)V

    return-object p0
.end method

.method public setWalletVersionValue(I)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 826
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->access$100(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;I)V

    return-object p0
.end method
