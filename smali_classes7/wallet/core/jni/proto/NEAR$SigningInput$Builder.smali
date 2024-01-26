.class public final Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$SigningInput;",
        "Lwallet/core/jni/proto/NEAR$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6252
    invoke-static {}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$10400()Lwallet/core/jni/proto/NEAR$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 6245
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addActions(ILwallet/core/jni/proto/NEAR$Action$Builder;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
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

    .line 6581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    .line 6583
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/NEAR$Action;

    .line 6582
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11700(Lwallet/core/jni/proto/NEAR$SigningInput;ILwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public addActions(ILwallet/core/jni/proto/NEAR$Action;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
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

    .line 6555
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6556
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11700(Lwallet/core/jni/proto/NEAR$SigningInput;ILwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public addActions(Lwallet/core/jni/proto/NEAR$Action$Builder;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6568
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6569
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11600(Lwallet/core/jni/proto/NEAR$SigningInput;Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public addActions(Lwallet/core/jni/proto/NEAR$Action;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6542
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11600(Lwallet/core/jni/proto/NEAR$SigningInput;Lwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public addAllActions(Ljava/lang/Iterable;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
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
            "Lwallet/core/jni/proto/NEAR$Action;",
            ">;)",
            "Lwallet/core/jni/proto/NEAR$SigningInput$Builder;"
        }
    .end annotation

    .line 6595
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6596
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11800(Lwallet/core/jni/proto/NEAR$SigningInput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public clearActions()Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1

    .line 6607
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6608
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11900(Lwallet/core/jni/proto/NEAR$SigningInput;)V

    return-object p0
.end method

.method public clearBlockHash()Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1

    .line 6469
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6470
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11400(Lwallet/core/jni/proto/NEAR$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1

    .line 6360
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6361
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$10900(Lwallet/core/jni/proto/NEAR$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1

    .line 6659
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6660
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$12200(Lwallet/core/jni/proto/NEAR$SigningInput;)V

    return-object p0
.end method

.method public clearReceiverId()Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1

    .line 6414
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11100(Lwallet/core/jni/proto/NEAR$SigningInput;)V

    return-object p0
.end method

.method public clearSignerId()Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1

    .line 6305
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6306
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$10600(Lwallet/core/jni/proto/NEAR$SigningInput;)V

    return-object p0
.end method

.method public getActions(I)Lwallet/core/jni/proto/NEAR$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6505
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->getActions(I)Lwallet/core/jni/proto/NEAR$Action;

    move-result-object p1

    return-object p1
.end method

.method public getActionsCount()I
    .locals 1

    .line 6495
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getActionsCount()I

    move-result v0

    return v0
.end method

.method public getActionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEAR$Action;",
            ">;"
        }
    .end annotation

    .line 6483
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    .line 6484
    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getActionsList()Ljava/util/List;

    move-result-object v0

    .line 6483
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6444
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 6335
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6634
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverId()Ljava/lang/String;
    .locals 1

    .line 6375
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getReceiverId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6388
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getReceiverIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignerId()Ljava/lang/String;
    .locals 1

    .line 6266
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getSignerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6279
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningInput;->getSignerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeActions(I)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6619
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6620
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$12000(Lwallet/core/jni/proto/NEAR$SigningInput;I)V

    return-object p0
.end method

.method public setActions(ILwallet/core/jni/proto/NEAR$Action$Builder;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
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

    .line 6529
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6530
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    .line 6531
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/NEAR$Action;

    .line 6530
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11500(Lwallet/core/jni/proto/NEAR$SigningInput;ILwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public setActions(ILwallet/core/jni/proto/NEAR$Action;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
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

    .line 6516
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6517
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11500(Lwallet/core/jni/proto/NEAR$SigningInput;ILwallet/core/jni/proto/NEAR$Action;)V

    return-object p0
.end method

.method public setBlockHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6456
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11300(Lwallet/core/jni/proto/NEAR$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6347
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6348
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$10800(Lwallet/core/jni/proto/NEAR$SigningInput;J)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6646
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6647
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$12100(Lwallet/core/jni/proto/NEAR$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReceiverId(Ljava/lang/String;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11000(Lwallet/core/jni/proto/NEAR$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReceiverIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6429
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6430
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$11200(Lwallet/core/jni/proto/NEAR$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignerId(Ljava/lang/String;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6292
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6293
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$10500(Lwallet/core/jni/proto/NEAR$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSignerIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6320
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$SigningInput;->access$10700(Lwallet/core/jni/proto/NEAR$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
