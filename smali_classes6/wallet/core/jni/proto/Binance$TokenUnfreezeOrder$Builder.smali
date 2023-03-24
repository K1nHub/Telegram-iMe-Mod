.class public final Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TokenUnfreezeOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;",
        "Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TokenUnfreezeOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8311
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->access$13900()Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 8304
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;
    .locals 1

    .line 8459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->access$14600(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;
    .locals 1

    .line 8350
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8351
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->access$14100(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V

    return-object p0
.end method

.method public clearSymbol()Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;
    .locals 1

    .line 8404
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8405
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->access$14300(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 8434
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8325
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 8365
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8378
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8446
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->access$14500(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;J)V

    return-object p0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8337
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8338
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->access$14000(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8391
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8392
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->access$14200(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8419
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->access$14400(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
