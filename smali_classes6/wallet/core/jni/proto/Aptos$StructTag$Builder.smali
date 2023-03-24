.class public final Lwallet/core/jni/proto/Aptos$StructTag$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$StructTagOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$StructTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$StructTag;",
        "Lwallet/core/jni/proto/Aptos$StructTag$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$StructTagOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 826
    invoke-static {}, Lwallet/core/jni/proto/Aptos$StructTag;->access$700()Lwallet/core/jni/proto/Aptos$StructTag;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 819
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$StructTag$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccountAddress()Lwallet/core/jni/proto/Aptos$StructTag$Builder;
    .locals 1

    .line 879
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 880
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->access$900(Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-object p0
.end method

.method public clearModule()Lwallet/core/jni/proto/Aptos$StructTag$Builder;
    .locals 1

    .line 948
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->access$1200(Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-object p0
.end method

.method public clearName()Lwallet/core/jni/proto/Aptos$StructTag$Builder;
    .locals 1

    .line 1017
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->access$1500(Lwallet/core/jni/proto/Aptos$StructTag;)V

    return-object p0
.end method

.method public getAccountAddress()Ljava/lang/String;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->getAccountAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->getAccountAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->getModule()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModuleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->getModuleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$StructTag;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAccountAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$StructTag$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 866
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 867
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$StructTag;->access$800(Lwallet/core/jni/proto/Aptos$StructTag;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAccountAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$StructTag$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 894
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 895
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$StructTag;->access$1000(Lwallet/core/jni/proto/Aptos$StructTag;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setModule(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$StructTag$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 935
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 936
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$StructTag;->access$1100(Lwallet/core/jni/proto/Aptos$StructTag;Ljava/lang/String;)V

    return-object p0
.end method

.method public setModuleBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$StructTag$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 963
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 964
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$StructTag;->access$1300(Lwallet/core/jni/proto/Aptos$StructTag;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$StructTag$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1004
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1005
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$StructTag;->access$1400(Lwallet/core/jni/proto/Aptos$StructTag;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$StructTag$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1032
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$StructTag;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$StructTag;->access$1600(Lwallet/core/jni/proto/Aptos$StructTag;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
