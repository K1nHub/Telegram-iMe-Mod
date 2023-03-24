.class public final Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SideChainUndelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SideChainUndelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$SideChainUndelegate;",
        "Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SideChainUndelegateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13609
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24000()Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 13602
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1

    .line 13711
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24700(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V

    return-object p0
.end method

.method public clearChainId()Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1

    .line 13749
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24900(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V

    return-object p0
.end method

.method public clearDelegatorAddr()Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1

    .line 13636
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13637
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24200(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V

    return-object p0
.end method

.method public clearValidatorAddr()Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1

    .line 13664
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13665
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24400(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V

    return-object p0
.end method

.method public getAmount()Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1

    .line 13681
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getAmount()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 13722
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getChainId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13731
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getChainIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13619
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getDelegatorAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13647
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getValidatorAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 13674
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->hasAmount()Z

    move-result v0

    return v0
.end method

.method public mergeAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13704
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13705
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24600(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13696
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13697
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24500(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13687
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13688
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24500(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setChainId(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13740
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13741
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24800(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChainIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13760
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13761
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$25000(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDelegatorAddr(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13628
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24100(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorAddr(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13655
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13656
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->access$24300(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
