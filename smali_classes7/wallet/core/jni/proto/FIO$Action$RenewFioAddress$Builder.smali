.class public final Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$Action$RenewFioAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;",
        "Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$Action$RenewFioAddressOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3953
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->access$6000()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 3946
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFee()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    .locals 1

    .line 4130
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4131
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->access$6800(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V

    return-object p0
.end method

.method public clearFioAddress()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    .locals 1

    .line 4006
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4007
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->access$6200(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V

    return-object p0
.end method

.method public clearOwnerFioPublicKey()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    .locals 1

    .line 4075
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4076
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->access$6500(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V

    return-object p0
.end method

.method public getFee()J
    .locals 2

    .line 4105
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getFee()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFioAddress()Ljava/lang/String;
    .locals 1

    .line 3967
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getFioAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFioAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3980
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getFioAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerFioPublicKey()Ljava/lang/String;
    .locals 1

    .line 4036
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getOwnerFioPublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerFioPublicKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4049
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getOwnerFioPublicKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setFee(J)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4117
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4118
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->access$6700(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;J)V

    return-object p0
.end method

.method public setFioAddress(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3993
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3994
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->access$6100(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFioAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4021
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4022
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->access$6300(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOwnerFioPublicKey(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4062
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4063
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->access$6400(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOwnerFioPublicKeyBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4090
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4091
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->access$6600(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
