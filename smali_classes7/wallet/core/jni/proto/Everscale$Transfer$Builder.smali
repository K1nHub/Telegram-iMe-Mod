.class public final Lwallet/core/jni/proto/Everscale$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Everscale.java"

# interfaces
.implements Lwallet/core/jni/proto/Everscale$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Everscale$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Everscale$Transfer;",
        "Lwallet/core/jni/proto/Everscale$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Everscale$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 706
    invoke-static {}, Lwallet/core/jni/proto/Everscale$Transfer;->access$000()Lwallet/core/jni/proto/Everscale$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Everscale$1;)V
    .locals 0

    .line 699
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccountStateOneof()Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1

    .line 716
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 717
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->access$100(Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1

    .line 863
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 864
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->access$800(Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-object p0
.end method

.method public clearBehavior()Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1

    .line 823
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 824
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->access$600(Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-object p0
.end method

.method public clearBounce()Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->access$300(Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-object p0
.end method

.method public clearEncodedContractData()Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1

    .line 1038
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1039
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->access$1500(Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-object p0
.end method

.method public clearExpiredAt()Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1

    .line 903
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 904
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->access$1000(Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1

    .line 957
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 958
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->access$1200(Lwallet/core/jni/proto/Everscale$Transfer;)V

    return-object p0
.end method

.method public getAccountStateOneofCase()Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getAccountStateOneofCase()Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()J
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBehavior()Lwallet/core/jni/proto/Everscale$MessageBehavior;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getBehavior()Lwallet/core/jni/proto/Everscale$MessageBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getBehaviorValue()I
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getBehaviorValue()I

    move-result v0

    return v0
.end method

.method public getBounce()Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getBounce()Z

    move-result v0

    return v0
.end method

.method public getEncodedContractData()Ljava/lang/String;
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getEncodedContractData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedContractDataBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getEncodedContractDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExpiredAt()I
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getExpiredAt()I

    move-result v0

    return v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasEncodedContractData()Z
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->hasEncodedContractData()Z

    move-result v0

    return v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 850
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Everscale$Transfer;->access$700(Lwallet/core/jni/proto/Everscale$Transfer;J)V

    return-object p0
.end method

.method public setBehavior(Lwallet/core/jni/proto/Everscale$MessageBehavior;)Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 810
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 811
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->access$500(Lwallet/core/jni/proto/Everscale$Transfer;Lwallet/core/jni/proto/Everscale$MessageBehavior;)V

    return-object p0
.end method

.method public setBehaviorValue(I)Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 784
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 785
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->access$400(Lwallet/core/jni/proto/Everscale$Transfer;I)V

    return-object p0
.end method

.method public setBounce(Z)Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 745
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->access$200(Lwallet/core/jni/proto/Everscale$Transfer;Z)V

    return-object p0
.end method

.method public setEncodedContractData(Ljava/lang/String;)Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1025
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1026
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->access$1400(Lwallet/core/jni/proto/Everscale$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEncodedContractDataBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1053
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1054
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->access$1600(Lwallet/core/jni/proto/Everscale$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExpiredAt(I)Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 890
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 891
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->access$900(Lwallet/core/jni/proto/Everscale$Transfer;I)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 944
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 945
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->access$1100(Lwallet/core/jni/proto/Everscale$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 972
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 973
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->access$1300(Lwallet/core/jni/proto/Everscale$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
