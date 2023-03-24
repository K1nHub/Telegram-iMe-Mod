.class public final Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TokenFreezeOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$TokenFreezeOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$TokenFreezeOrder;",
        "Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TokenFreezeOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7782
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->access$13000()Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 7775
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;
    .locals 1

    .line 7930
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7931
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->access$13700(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;
    .locals 1

    .line 7821
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7822
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->access$13200(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V

    return-object p0
.end method

.method public clearSymbol()Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;
    .locals 1

    .line 7875
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7876
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->access$13400(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 7905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7796
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 7836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->access$13600(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;J)V

    return-object p0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7808
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7809
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->access$13100(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7862
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7863
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->access$13300(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7890
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7891
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->access$13500(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
