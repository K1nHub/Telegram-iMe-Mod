.class public final Lwallet/core/jni/proto/Binance$RefundHTLTOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$RefundHTLTOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$RefundHTLTOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$RefundHTLTOrder;",
        "Lwallet/core/jni/proto/Binance$RefundHTLTOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$RefundHTLTOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11430
    invoke-static {}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;->access$19700()Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 11423
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFrom()Lwallet/core/jni/proto/Binance$RefundHTLTOrder$Builder;
    .locals 1

    .line 11469
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11470
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;->access$19900(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V

    return-object p0
.end method

.method public clearSwapId()Lwallet/core/jni/proto/Binance$RefundHTLTOrder$Builder;
    .locals 1

    .line 11509
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11510
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;->access$20100(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V

    return-object p0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11444
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSwapId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11484
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;->getSwapId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$RefundHTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11456
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;->access$19800(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSwapId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$RefundHTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11496
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11497
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;->access$20000(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
