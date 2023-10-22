.class public final Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TimeRelockOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$TimeRelockOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$TimeRelockOrder;",
        "Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TimeRelockOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15201
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$26700()Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 15194
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAmount(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
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
            "Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;"
        }
    .end annotation

    .line 15475
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15476
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27800(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
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

    .line 15461
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    .line 15463
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 15462
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27700(Lwallet/core/jni/proto/Binance$TimeRelockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
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

    .line 15435
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15436
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27700(Lwallet/core/jni/proto/Binance$TimeRelockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 15448
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15449
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27600(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15422
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15423
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27600(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public clearAmount()Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1

    .line 15487
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15488
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27900(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V

    return-object p0
.end method

.method public clearDescription()Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1

    .line 15334
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15335
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27300(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V

    return-object p0
.end method

.method public clearFromAddress()Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1

    .line 15240
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15241
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$26900(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V

    return-object p0
.end method

.method public clearId()Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1

    .line 15280
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15281
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27100(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V

    return-object p0
.end method

.method public clearLockTime()Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1

    .line 15539
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15540
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$28200(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V

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

    .line 15385
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getAmount(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object p1

    return-object p1
.end method

.method public getAmountCount()I
    .locals 1

    .line 15375
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getAmountCount()I

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

    .line 15363
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    .line 15364
    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getAmountList()Ljava/util/List;

    move-result-object v0

    .line 15363
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 15295
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15308
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15215
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getFromAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 15255
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockTime()J
    .locals 2

    .line 15514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getLockTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeAmount(I)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 15499
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15500
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$28000(Lwallet/core/jni/proto/Binance$TimeRelockOrder;I)V

    return-object p0
.end method

.method public setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
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

    .line 15409
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15410
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    .line 15411
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 15410
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27500(Lwallet/core/jni/proto/Binance$TimeRelockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
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

    .line 15396
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15397
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27500(Lwallet/core/jni/proto/Binance$TimeRelockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15321
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15322
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27200(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15349
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15350
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27400(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFromAddress(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15227
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15228
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$26800(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setId(J)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15267
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15268
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$27000(Lwallet/core/jni/proto/Binance$TimeRelockOrder;J)V

    return-object p0
.end method

.method public setLockTime(J)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15526
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15527
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->access$28100(Lwallet/core/jni/proto/Binance$TimeRelockOrder;J)V

    return-object p0
.end method
