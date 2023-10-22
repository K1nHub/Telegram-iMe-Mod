.class public final Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TimeLockOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$TimeLockOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$TimeLockOrder;",
        "Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TimeLockOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14307
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$25200()Lwallet/core/jni/proto/Binance$TimeLockOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 14300
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAmount(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
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
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;)",
            "Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;"
        }
    .end annotation

    .line 14541
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14542
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$26100(Lwallet/core/jni/proto/Binance$TimeLockOrder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
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

    .line 14527
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14528
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    .line 14529
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 14528
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$26000(Lwallet/core/jni/proto/Binance$TimeLockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
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

    .line 14501
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14502
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$26000(Lwallet/core/jni/proto/Binance$TimeLockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 14514
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14515
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$25900(Lwallet/core/jni/proto/Binance$TimeLockOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14488
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14489
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$25900(Lwallet/core/jni/proto/Binance$TimeLockOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1

    .line 14553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$26200(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V

    return-object p0
.end method

.method public clearDescription()Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1

    .line 14400
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14401
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$25600(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V

    return-object p0
.end method

.method public clearFromAddress()Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1

    .line 14346
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14347
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$25400(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V

    return-object p0
.end method

.method public clearLockTime()Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1

    .line 14605
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14606
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$26500(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V

    return-object p0
.end method

.method public getAmount(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14451
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getAmount(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object p1

    return-object p1
.end method

.method public getAmountCount()I
    .locals 1

    .line 14441
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getAmountCount()I

    move-result v0

    return v0
.end method

.method public getAmountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation

    .line 14429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    .line 14430
    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getAmountList()Ljava/util/List;

    move-result-object v0

    .line 14429
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 14361
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14374
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getFromAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLockTime()J
    .locals 2

    .line 14580
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getLockTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeAmount(I)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14565
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14566
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$26300(Lwallet/core/jni/proto/Binance$TimeLockOrder;I)V

    return-object p0
.end method

.method public setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
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

    .line 14475
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14476
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    .line 14477
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 14476
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$25800(Lwallet/core/jni/proto/Binance$TimeLockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
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

    .line 14462
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14463
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$25800(Lwallet/core/jni/proto/Binance$TimeLockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14387
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14388
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$25500(Lwallet/core/jni/proto/Binance$TimeLockOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14415
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14416
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$25700(Lwallet/core/jni/proto/Binance$TimeLockOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFromAddress(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14333
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14334
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$25300(Lwallet/core/jni/proto/Binance$TimeLockOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLockTime(J)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14592
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14593
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->access$26400(Lwallet/core/jni/proto/Binance$TimeLockOrder;J)V

    return-object p0
.end method
