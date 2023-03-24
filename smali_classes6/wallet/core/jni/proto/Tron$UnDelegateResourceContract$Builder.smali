.class public final Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$UnDelegateResourceContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;",
        "Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$UnDelegateResourceContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5782
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$9100()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 5775
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBalance()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1

    .line 5959
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5960
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$9900(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V

    return-object p0
.end method

.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1

    .line 5835
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$9300(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V

    return-object p0
.end method

.method public clearReceiverAddress()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1

    .line 6013
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$10100(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V

    return-object p0
.end method

.method public clearResource()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1

    .line 5904
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$9600(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V

    return-object p0
.end method

.method public getBalance()J
    .locals 2

    .line 5934
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getBalance()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 5796
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5809
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddress()Ljava/lang/String;
    .locals 1

    .line 5974
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getReceiverAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getReceiverAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 5865
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5878
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setBalance(J)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5946
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5947
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$9800(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;J)V

    return-object p0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5822
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5823
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$9200(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5850
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$9400(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReceiverAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6000
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6001
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$10000(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6028
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$10200(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5891
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$9500(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResourceBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5919
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->access$9700(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
