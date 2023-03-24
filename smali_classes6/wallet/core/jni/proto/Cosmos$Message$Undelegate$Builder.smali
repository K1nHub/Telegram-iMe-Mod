.class public final Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$UndelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$Undelegate;",
        "Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$UndelegateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5044
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$7700()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 5037
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1

    .line 5188
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5189
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8600(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V

    return-object p0
.end method

.method public clearDelegatorAddress()Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1

    .line 5081
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5082
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$7900(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V

    return-object p0
.end method

.method public clearTypePrefix()Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1

    .line 5226
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5227
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8800(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V

    return-object p0
.end method

.method public clearValidatorAddress()Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1

    .line 5130
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5131
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8200(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V

    return-object p0
.end method

.method public getAmount()Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1

    .line 5158
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getAmount()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 5054
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5063
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefix()Ljava/lang/String;
    .locals 1

    .line 5199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getTypePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getTypePrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 5103
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5112
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getValidatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 5151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->hasAmount()Z

    move-result v0

    return v0
.end method

.method public mergeAmount(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5181
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5182
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8500(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5173
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5174
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8400(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5164
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8400(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setDelegatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5072
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5073
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$7800(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5092
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5093
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8000(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTypePrefix(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5217
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5218
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8700(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypePrefixBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5237
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5238
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8900(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5121
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5122
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8100(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5141
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5142
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->access$8300(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
