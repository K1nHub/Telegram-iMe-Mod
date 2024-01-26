.class public final Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorizationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorizationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14566
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$25400()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 14559
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllowList()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1

    .line 14732
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14733
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$26100(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V

    return-object p0
.end method

.method public clearAuthorizationType()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1

    .line 14870
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14871
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$26700(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V

    return-object p0
.end method

.method public clearDenyList()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1

    .line 14804
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14805
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$26400(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V

    return-object p0
.end method

.method public clearMaxTokens()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1

    .line 14654
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14655
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$25800(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V

    return-object p0
.end method

.method public clearValidators()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1

    .line 14576
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14577
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$25500(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V

    return-object p0
.end method

.method public getAllowList()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1

    .line 14681
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->getAllowList()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationType()Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;
    .locals 1

    .line 14845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->getAuthorizationType()Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationTypeValue()I
    .locals 1

    .line 14819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->getAuthorizationTypeValue()I

    move-result v0

    return v0
.end method

.method public getDenyList()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 1

    .line 14757
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->getDenyList()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTokens()Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1

    .line 14604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->getMaxTokens()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorsCase()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsCase;
    .locals 1

    .line 14572
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->getValidatorsCase()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAllowList()Z
    .locals 1

    .line 14669
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->hasAllowList()Z

    move-result v0

    return v0
.end method

.method public hasDenyList()Z
    .locals 1

    .line 14746
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->hasDenyList()Z

    move-result v0

    return v0
.end method

.method public hasMaxTokens()Z
    .locals 1

    .line 14592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->hasMaxTokens()Z

    move-result v0

    return v0
.end method

.method public mergeAllowList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14719
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14720
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$26000(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-object p0
.end method

.method public mergeDenyList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14792
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14793
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$26300(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-object p0
.end method

.method public mergeMaxTokens(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14642
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14643
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$25700(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setAllowList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 14706
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14707
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$25900(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-object p0
.end method

.method public setAllowList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14692
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14693
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$25900(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-object p0
.end method

.method public setAuthorizationType(Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14857
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14858
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$26600(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;)V

    return-object p0
.end method

.method public setAuthorizationTypeValue(I)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14831
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14832
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$26500(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;I)V

    return-object p0
.end method

.method public setDenyList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 14780
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14781
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$26200(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-object p0
.end method

.method public setDenyList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14767
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14768
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$26200(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-object p0
.end method

.method public setMaxTokens(Lwallet/core/jni/proto/Cosmos$Amount$Builder;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 14629
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14630
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$25600(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method

.method public setMaxTokens(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14615
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14616
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->access$25600(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-object p0
.end method
