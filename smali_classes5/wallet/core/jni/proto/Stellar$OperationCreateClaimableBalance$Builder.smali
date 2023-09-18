.class public final Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalanceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;",
        "Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalanceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2984
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4000()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 2977
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllClaimants(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Stellar$Claimant;",
            ">;)",
            "Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;"
        }
    .end annotation

    .line 3220
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4900(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addClaimants(ILwallet/core/jni/proto/Stellar$Claimant$Builder;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 3206
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3207
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    .line 3208
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Stellar$Claimant;

    .line 3207
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4800(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;ILwallet/core/jni/proto/Stellar$Claimant;)V

    return-object p0
.end method

.method public addClaimants(ILwallet/core/jni/proto/Stellar$Claimant;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 3180
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3181
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4800(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;ILwallet/core/jni/proto/Stellar$Claimant;)V

    return-object p0
.end method

.method public addClaimants(Lwallet/core/jni/proto/Stellar$Claimant$Builder;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3193
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3194
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4700(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;Lwallet/core/jni/proto/Stellar$Claimant;)V

    return-object p0
.end method

.method public addClaimants(Lwallet/core/jni/proto/Stellar$Claimant;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3167
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3168
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4700(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;Lwallet/core/jni/proto/Stellar$Claimant;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1

    .line 3094
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3095
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4500(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V

    return-object p0
.end method

.method public clearAsset()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1

    .line 3054
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3055
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4300(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V

    return-object p0
.end method

.method public clearClaimants()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1

    .line 3232
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3233
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$5000(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 3069
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsset()Lwallet/core/jni/proto/Stellar$Asset;
    .locals 1

    .line 3008
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->getAsset()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v0

    return-object v0
.end method

.method public getClaimants(I)Lwallet/core/jni/proto/Stellar$Claimant;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3130
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->getClaimants(I)Lwallet/core/jni/proto/Stellar$Claimant;

    move-result-object p1

    return-object p1
.end method

.method public getClaimantsCount()I
    .locals 1

    .line 3120
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->getClaimantsCount()I

    move-result v0

    return v0
.end method

.method public getClaimantsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Stellar$Claimant;",
            ">;"
        }
    .end annotation

    .line 3108
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    .line 3109
    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->getClaimantsList()Ljava/util/List;

    move-result-object v0

    .line 3108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAsset()Z
    .locals 1

    .line 2997
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->hasAsset()Z

    move-result v0

    return v0
.end method

.method public mergeAsset(Lwallet/core/jni/proto/Stellar$Asset;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3043
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3044
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4200(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public removeClaimants(I)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3244
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3245
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$5100(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;I)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3081
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3082
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4400(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;J)V

    return-object p0
.end method

.method public setAsset(Lwallet/core/jni/proto/Stellar$Asset$Builder;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3031
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3032
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4100(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public setAsset(Lwallet/core/jni/proto/Stellar$Asset;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3018
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3019
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4100(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;Lwallet/core/jni/proto/Stellar$Asset;)V

    return-object p0
.end method

.method public setClaimants(ILwallet/core/jni/proto/Stellar$Claimant$Builder;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 3154
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3155
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    .line 3156
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Stellar$Claimant;

    .line 3155
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4600(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;ILwallet/core/jni/proto/Stellar$Claimant;)V

    return-object p0
.end method

.method public setClaimants(ILwallet/core/jni/proto/Stellar$Claimant;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 3141
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3142
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->access$4600(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;ILwallet/core/jni/proto/Stellar$Claimant;)V

    return-object p0
.end method
