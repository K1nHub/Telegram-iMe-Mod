.class public final Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$ClaimNftMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Aptos$ClaimNftMessage;",
        "Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$ClaimNftMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4830
    invoke-static {}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$7200()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Aptos$1;)V
    .locals 0

    .line 4823
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCollectionName()Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1

    .line 5021
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5022
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$8000(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V

    return-object p0
.end method

.method public clearCreator()Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1

    .line 4952
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4953
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$7700(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V

    return-object p0
.end method

.method public clearName()Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1

    .line 5090
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5091
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$8300(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V

    return-object p0
.end method

.method public clearPropertyVersion()Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1

    .line 5145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5146
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$8600(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V

    return-object p0
.end method

.method public clearSender()Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1

    .line 4883
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4884
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$7400(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V

    return-object p0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .line 4982
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4995
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getCollectionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 4913
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getCreator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4926
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getCreatorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 5051
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5064
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyVersion()J
    .locals 2

    .line 5120
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getPropertyVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 4844
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4857
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getSenderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCollectionName(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5008
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5009
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$7900(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCollectionNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5036
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5037
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$8100(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4939
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4940
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$7600(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCreatorBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4967
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4968
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$7800(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5077
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5078
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$8200(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5105
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5106
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$8400(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPropertyVersion(J)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5132
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5133
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$8500(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;J)V

    return-object p0
.end method

.method public setSender(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4870
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4871
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$7300(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSenderBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->access$7500(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
