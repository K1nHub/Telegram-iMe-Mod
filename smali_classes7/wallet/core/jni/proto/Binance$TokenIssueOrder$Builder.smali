.class public final Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TokenIssueOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$TokenIssueOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$TokenIssueOrder;",
        "Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TokenIssueOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6084
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$9800()Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 6077
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFrom()Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1

    .line 6123
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6124
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$10000(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V

    return-object p0
.end method

.method public clearMintable()Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1

    .line 6341
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6342
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$11000(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V

    return-object p0
.end method

.method public clearName()Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1

    .line 6177
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6178
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$10200(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V

    return-object p0
.end method

.method public clearSymbol()Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1

    .line 6246
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6247
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$10500(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V

    return-object p0
.end method

.method public clearTotalSupply()Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1

    .line 6301
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$10800(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V

    return-object p0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6098
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMintable()Z
    .locals 1

    .line 6316
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getMintable()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 6138
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 6207
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6220
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSupply()J
    .locals 2

    .line 6276
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getTotalSupply()J

    move-result-wide v0

    return-wide v0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6110
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6111
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$9900(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMintable(Z)Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6328
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6329
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$10900(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Z)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6164
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6165
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$10100(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6192
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6193
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$10300(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6233
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6234
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$10400(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6261
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6262
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$10600(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTotalSupply(J)Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6288
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6289
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->access$10700(Lwallet/core/jni/proto/Binance$TokenIssueOrder;J)V

    return-object p0
.end method
