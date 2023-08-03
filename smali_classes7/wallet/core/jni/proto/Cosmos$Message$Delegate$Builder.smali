.class public final Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$DelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$Delegate;",
        "Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$DelegateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4418
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$6300()Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 4411
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1

    .line 4562
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$7200(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V

    return-object p0
.end method

.method public clearDelegatorAddress()Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1

    .line 4455
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4456
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$6500(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V

    return-object p0
.end method

.method public clearTypePrefix()Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1

    .line 4600
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4601
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$7400(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V

    return-object p0
.end method

.method public clearValidatorAddress()Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1

    .line 4504
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4505
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$6800(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V

    return-object p0
.end method

.method public getAmount()Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1

    .line 4532
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getAmount()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 4428
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4437
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefix()Ljava/lang/String;
    .locals 1

    .line 4573
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getTypePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getTypePrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 4477
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getValidatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 4525
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->hasAmount()Z

    move-result v0

    return v0
.end method

.method public mergeAmount(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4555
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4556
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$7100(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4547
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4548
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$7000(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4538
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4539
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$7000(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setDelegatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4446
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$6400(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4466
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4467
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$6600(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTypePrefix(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4591
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$7300(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypePrefixBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4611
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4612
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$7500(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4495
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4496
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$6700(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4515
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4516
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->access$6900(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
