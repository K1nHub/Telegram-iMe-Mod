.class public final Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$TriggerSmartContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$TriggerSmartContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$TriggerSmartContract;",
        "Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$TriggerSmartContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9891
    invoke-static {}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$15900()Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 9884
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCallTokenValue()Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1

    .line 10148
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10149
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$17100(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-object p0
.end method

.method public clearCallValue()Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1

    .line 10068
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10069
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$16700(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-object p0
.end method

.method public clearContractAddress()Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1

    .line 10013
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$16400(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-object p0
.end method

.method public clearData()Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1

    .line 10108
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10109
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$16900(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-object p0
.end method

.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1

    .line 9944
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9945
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$16100(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-object p0
.end method

.method public clearTokenId()Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1

    .line 10188
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10189
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$17300(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-object p0
.end method

.method public getCallTokenValue()J
    .locals 2

    .line 10123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getCallTokenValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallValue()J
    .locals 2

    .line 10043
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getCallValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 9974
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getContractAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10083
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 9905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenId()J
    .locals 2

    .line 10163
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getTokenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public setCallTokenValue(J)Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10135
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10136
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$17000(Lwallet/core/jni/proto/Tron$TriggerSmartContract;J)V

    return-object p0
.end method

.method public setCallValue(J)Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10055
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10056
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$16600(Lwallet/core/jni/proto/Tron$TriggerSmartContract;J)V

    return-object p0
.end method

.method public setContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10000
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10001
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$16300(Lwallet/core/jni/proto/Tron$TriggerSmartContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContractAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10028
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$16500(Lwallet/core/jni/proto/Tron$TriggerSmartContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10095
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10096
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$16800(Lwallet/core/jni/proto/Tron$TriggerSmartContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9931
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$16000(Lwallet/core/jni/proto/Tron$TriggerSmartContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9959
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9960
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$16200(Lwallet/core/jni/proto/Tron$TriggerSmartContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenId(J)Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10175
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10176
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->access$17200(Lwallet/core/jni/proto/Tron$TriggerSmartContract;J)V

    return-object p0
.end method
