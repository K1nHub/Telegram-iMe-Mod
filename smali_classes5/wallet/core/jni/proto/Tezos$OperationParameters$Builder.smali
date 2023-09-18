.class public final Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$OperationParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$OperationParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Tezos$OperationParameters;",
        "Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$OperationParametersOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5287
    invoke-static {}, Lwallet/core/jni/proto/Tezos$OperationParameters;->access$9700()Lwallet/core/jni/proto/Tezos$OperationParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Tezos$1;)V
    .locals 0

    .line 5280
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFa12Parameters()Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1

    .line 5346
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5347
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->access$10100(Lwallet/core/jni/proto/Tezos$OperationParameters;)V

    return-object p0
.end method

.method public clearFa2Parameters()Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1

    .line 5394
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5395
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->access$10400(Lwallet/core/jni/proto/Tezos$OperationParameters;)V

    return-object p0
.end method

.method public clearParameters()Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1

    .line 5297
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5298
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->access$9800(Lwallet/core/jni/proto/Tezos$OperationParameters;)V

    return-object p0
.end method

.method public getFa12Parameters()Lwallet/core/jni/proto/Tezos$FA12Parameters;
    .locals 1

    .line 5315
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->getFa12Parameters()Lwallet/core/jni/proto/Tezos$FA12Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getFa2Parameters()Lwallet/core/jni/proto/Tezos$FA2Parameters;
    .locals 1

    .line 5363
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->getFa2Parameters()Lwallet/core/jni/proto/Tezos$FA2Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParametersCase()Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;
    .locals 1

    .line 5293
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->getParametersCase()Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    move-result-object v0

    return-object v0
.end method

.method public hasFa12Parameters()Z
    .locals 1

    .line 5308
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->hasFa12Parameters()Z

    move-result v0

    return v0
.end method

.method public hasFa2Parameters()Z
    .locals 1

    .line 5356
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->hasFa2Parameters()Z

    move-result v0

    return v0
.end method

.method public mergeFa12Parameters(Lwallet/core/jni/proto/Tezos$FA12Parameters;)Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5338
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5339
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;->access$10000(Lwallet/core/jni/proto/Tezos$OperationParameters;Lwallet/core/jni/proto/Tezos$FA12Parameters;)V

    return-object p0
.end method

.method public mergeFa2Parameters(Lwallet/core/jni/proto/Tezos$FA2Parameters;)Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5386
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5387
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;->access$10300(Lwallet/core/jni/proto/Tezos$OperationParameters;Lwallet/core/jni/proto/Tezos$FA2Parameters;)V

    return-object p0
.end method

.method public setFa12Parameters(Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;)Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5330
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5331
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;->access$9900(Lwallet/core/jni/proto/Tezos$OperationParameters;Lwallet/core/jni/proto/Tezos$FA12Parameters;)V

    return-object p0
.end method

.method public setFa12Parameters(Lwallet/core/jni/proto/Tezos$FA12Parameters;)Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5321
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5322
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;->access$9900(Lwallet/core/jni/proto/Tezos$OperationParameters;Lwallet/core/jni/proto/Tezos$FA12Parameters;)V

    return-object p0
.end method

.method public setFa2Parameters(Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;)Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5378
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5379
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;->access$10200(Lwallet/core/jni/proto/Tezos$OperationParameters;Lwallet/core/jni/proto/Tezos$FA2Parameters;)V

    return-object p0
.end method

.method public setFa2Parameters(Lwallet/core/jni/proto/Tezos$FA2Parameters;)Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5369
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5370
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;->access$10200(Lwallet/core/jni/proto/Tezos$OperationParameters;Lwallet/core/jni/proto/Tezos$FA2Parameters;)V

    return-object p0
.end method
