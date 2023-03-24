.class public final Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TimeUnlockOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$TimeUnlockOrder;",
        "Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TimeUnlockOrderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15835
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->access$28400()Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 15828
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFromAddress()Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;
    .locals 1

    .line 15874
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15875
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->access$28600(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V

    return-object p0
.end method

.method public clearId()Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;
    .locals 1

    .line 15914
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15915
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->access$28800(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V

    return-object p0
.end method

.method public getFromAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->getFromAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 15889
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public setFromAddress(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15861
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->access$28500(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setId(J)Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15901
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15902
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->access$28700(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;J)V

    return-object p0
.end method
