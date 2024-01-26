.class public final Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SendOrder$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
        "Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3509
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->access$5700()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 3502
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;
    .locals 1

    .line 3617
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3618
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->access$6200(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public clearDenom()Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;
    .locals 1

    .line 3562
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->access$5900(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 3592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDenom()Ljava/lang/String;
    .locals 1

    .line 3523
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDenom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDenomBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3536
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDenomBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3604
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3605
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->access$6100(Lwallet/core/jni/proto/Binance$SendOrder$Token;J)V

    return-object p0
.end method

.method public setDenom(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3549
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->access$5800(Lwallet/core/jni/proto/Binance$SendOrder$Token;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDenomBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3577
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3578
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->access$6000(Lwallet/core/jni/proto/Binance$SendOrder$Token;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
