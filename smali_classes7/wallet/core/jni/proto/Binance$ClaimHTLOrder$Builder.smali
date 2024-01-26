.class public final Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$ClaimHTLOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$ClaimHTLOrder;",
        "Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$ClaimHTLOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11016
    invoke-static {}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->access$18900()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 11009
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFrom()Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;
    .locals 1

    .line 11055
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11056
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->access$19100(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V

    return-object p0
.end method

.method public clearRandomNumber()Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;
    .locals 1

    .line 11135
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11136
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->access$19500(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V

    return-object p0
.end method

.method public clearSwapId()Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;
    .locals 1

    .line 11095
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11096
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->access$19300(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V

    return-object p0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11030
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRandomNumber()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11110
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getRandomNumber()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSwapId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11070
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getSwapId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11042
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11043
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->access$19000(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRandomNumber(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->access$19400(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSwapId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11082
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11083
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->access$19200(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
