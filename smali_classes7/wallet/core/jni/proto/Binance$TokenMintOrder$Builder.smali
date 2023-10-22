.class public final Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TokenMintOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$TokenMintOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$TokenMintOrder;",
        "Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TokenMintOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6724
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->access$11200()Lwallet/core/jni/proto/Binance$TokenMintOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 6717
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
    .locals 1

    .line 6872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->access$11900(Lwallet/core/jni/proto/Binance$TokenMintOrder;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
    .locals 1

    .line 6763
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->access$11400(Lwallet/core/jni/proto/Binance$TokenMintOrder;)V

    return-object p0
.end method

.method public clearSymbol()Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
    .locals 1

    .line 6817
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->access$11600(Lwallet/core/jni/proto/Binance$TokenMintOrder;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 6847
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 6778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6859
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->access$11800(Lwallet/core/jni/proto/Binance$TokenMintOrder;J)V

    return-object p0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6750
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->access$11300(Lwallet/core/jni/proto/Binance$TokenMintOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6804
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6805
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->access$11500(Lwallet/core/jni/proto/Binance$TokenMintOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6832
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6833
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->access$11700(Lwallet/core/jni/proto/Binance$TokenMintOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
