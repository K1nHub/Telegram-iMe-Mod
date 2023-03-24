.class public final Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2ContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;",
        "Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2ContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3893
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->access$6100()Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 3886
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;
    .locals 1

    .line 3946
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3947
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->access$6300(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public clearResource()Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;
    .locals 1

    .line 4055
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4056
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->access$6800(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public clearUnfreezeBalance()Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;
    .locals 1

    .line 4001
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4002
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->access$6600(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V

    return-object p0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 3907
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 4016
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->getResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUnfreezeBalance()J
    .locals 2

    .line 3976
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->getUnfreezeBalance()J

    move-result-wide v0

    return-wide v0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3933
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3934
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->access$6200(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3961
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3962
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->access$6400(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4042
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4043
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->access$6700(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResourceBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4070
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4071
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->access$6900(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUnfreezeBalance(J)Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3988
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3989
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->access$6500(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;J)V

    return-object p0
.end method
