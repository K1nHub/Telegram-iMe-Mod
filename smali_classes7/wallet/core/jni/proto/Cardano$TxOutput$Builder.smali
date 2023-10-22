.class public final Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TxOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$TxOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$TxOutput;",
        "Lwallet/core/jni/proto/Cardano$TxOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TxOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2306
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$3200()Lwallet/core/jni/proto/Cardano$TxOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 2299
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTokenAmount(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
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
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)",
            "Lwallet/core/jni/proto/Cardano$TxOutput$Builder;"
        }
    .end annotation

    .line 2540
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$4100(Lwallet/core/jni/proto/Cardano$TxOutput;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
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

    .line 2526
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2527
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    .line 2528
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 2527
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$4000(Lwallet/core/jni/proto/Cardano$TxOutput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
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

    .line 2500
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2501
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$4000(Lwallet/core/jni/proto/Cardano$TxOutput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addTokenAmount(Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$3900(Lwallet/core/jni/proto/Cardano$TxOutput;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addTokenAmount(Lwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2487
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2488
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$3900(Lwallet/core/jni/proto/Cardano$TxOutput;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public clearAddress()Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1

    .line 2359
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2360
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$3400(Lwallet/core/jni/proto/Cardano$TxOutput;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1

    .line 2414
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$3700(Lwallet/core/jni/proto/Cardano$TxOutput;)V

    return-object p0
.end method

.method public clearTokenAmount()Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1

    .line 2552
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2553
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$4200(Lwallet/core/jni/proto/Cardano$TxOutput;)V

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 2320
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxOutput;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2333
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxOutput;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()J
    .locals 2

    .line 2389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxOutput;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTokenAmount(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2450
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->getTokenAmount(I)Lwallet/core/jni/proto/Cardano$TokenAmount;

    move-result-object p1

    return-object p1
.end method

.method public getTokenAmountCount()I
    .locals 1

    .line 2440
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxOutput;->getTokenAmountCount()I

    move-result v0

    return v0
.end method

.method public getTokenAmountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 2428
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    .line 2429
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxOutput;->getTokenAmountList()Ljava/util/List;

    move-result-object v0

    .line 2428
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeTokenAmount(I)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2564
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2565
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$4300(Lwallet/core/jni/proto/Cardano$TxOutput;I)V

    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2346
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2347
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$3300(Lwallet/core/jni/proto/Cardano$TxOutput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2374
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2375
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$3500(Lwallet/core/jni/proto/Cardano$TxOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$3600(Lwallet/core/jni/proto/Cardano$TxOutput;J)V

    return-object p0
.end method

.method public setTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
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

    .line 2474
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2475
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    .line 2476
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 2475
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$3800(Lwallet/core/jni/proto/Cardano$TxOutput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public setTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
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

    .line 2461
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxOutput;->access$3800(Lwallet/core/jni/proto/Cardano$TxOutput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method
