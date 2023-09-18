.class public final Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$DelegateResourceContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$DelegateResourceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tron$DelegateResourceContract;",
        "Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$DelegateResourceContractOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4981
    invoke-static {}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$7600()Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tron$1;)V
    .locals 0

    .line 4974
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBalance()Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1

    .line 5158
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5159
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$8400(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V

    return-object p0
.end method

.method public clearLock()Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1

    .line 5273
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5274
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$8900(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V

    return-object p0
.end method

.method public clearOwnerAddress()Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1

    .line 5034
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5035
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$7800(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V

    return-object p0
.end method

.method public clearReceiverAddress()Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1

    .line 5212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$8600(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V

    return-object p0
.end method

.method public clearResource()Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1

    .line 5103
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5104
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$8100(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V

    return-object p0
.end method

.method public getBalance()J
    .locals 2

    .line 5133
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getBalance()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLock()Z
    .locals 1

    .line 5244
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getLock()Z

    move-result v0

    return v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 4995
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5008
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getOwnerAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddress()Ljava/lang/String;
    .locals 1

    .line 5173
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getReceiverAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5186
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getReceiverAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 5064
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5077
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setBalance(J)Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5146
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$8300(Lwallet/core/jni/proto/Tron$DelegateResourceContract;J)V

    return-object p0
.end method

.method public setLock(Z)Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5258
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5259
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$8800(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Z)V

    return-object p0
.end method

.method public setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5021
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5022
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$7700(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5049
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5050
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$7900(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReceiverAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5199
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5200
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$8500(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5227
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5228
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$8700(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$8000(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResourceBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5118
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5119
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->access$8200(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
