.class public final Lwallet/core/jni/proto/Binance$TransferOut$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TransferOutOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$TransferOut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$TransferOut;",
        "Lwallet/core/jni/proto/Binance$TransferOut$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TransferOutOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11935
    invoke-static {}, Lwallet/core/jni/proto/Binance$TransferOut;->access$20300()Lwallet/core/jni/proto/Binance$TransferOut;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 11928
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TransferOut$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1

    .line 12085
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12086
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->access$21000(Lwallet/core/jni/proto/Binance$TransferOut;)V

    return-object p0
.end method

.method public clearExpireTime()Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1

    .line 12125
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12126
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->access$21200(Lwallet/core/jni/proto/Binance$TransferOut;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1

    .line 11974
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11975
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->access$20500(Lwallet/core/jni/proto/Binance$TransferOut;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1

    .line 12014
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->access$20700(Lwallet/core/jni/proto/Binance$TransferOut;)V

    return-object p0
.end method

.method public getAmount()Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1

    .line 12039
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->getAmount()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v0

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .line 12100
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->getExpireTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11989
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->getTo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 12028
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->hasAmount()Z

    move-result v0

    return v0
.end method

.method public mergeAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12074
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12075
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TransferOut;->access$20900(Lwallet/core/jni/proto/Binance$TransferOut;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12062
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12063
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TransferOut;->access$20800(Lwallet/core/jni/proto/Binance$TransferOut;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12049
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12050
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TransferOut;->access$20800(Lwallet/core/jni/proto/Binance$TransferOut;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setExpireTime(J)Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12112
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12113
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$TransferOut;->access$21100(Lwallet/core/jni/proto/Binance$TransferOut;J)V

    return-object p0
.end method

.method public setFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11961
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11962
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TransferOut;->access$20400(Lwallet/core/jni/proto/Binance$TransferOut;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12001
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12002
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$TransferOut;->access$20600(Lwallet/core/jni/proto/Binance$TransferOut;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
