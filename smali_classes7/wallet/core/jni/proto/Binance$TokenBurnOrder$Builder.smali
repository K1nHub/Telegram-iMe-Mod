.class public final Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TokenBurnOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$TokenBurnOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$TokenBurnOrder;",
        "Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TokenBurnOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7253
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->access$12100()Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 7246
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
    .locals 1

    .line 7401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->access$12800(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
    .locals 1

    .line 7292
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7293
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->access$12300(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V

    return-object p0
.end method

.method public clearSymbol()Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
    .locals 1

    .line 7346
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7347
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->access$12500(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 7376
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7267
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 7307
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7320
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7388
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->access$12700(Lwallet/core/jni/proto/Binance$TokenBurnOrder;J)V

    return-object p0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7279
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7280
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->access$12200(Lwallet/core/jni/proto/Binance$TokenBurnOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7333
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7334
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->access$12400(Lwallet/core/jni/proto/Binance$TokenBurnOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7361
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7362
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->access$12600(Lwallet/core/jni/proto/Binance$TokenBurnOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
