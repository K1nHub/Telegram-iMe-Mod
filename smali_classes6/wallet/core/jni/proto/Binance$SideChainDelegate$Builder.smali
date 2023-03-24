.class public final Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SideChainDelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SideChainDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$SideChainDelegate;",
        "Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SideChainDelegateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12498
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$21400()Lwallet/core/jni/proto/Binance$SideChainDelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 12491
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChainId()Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1

    .line 12638
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12639
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$22300(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V

    return-object p0
.end method

.method public clearDelegation()Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1

    .line 12600
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12601
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$22100(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V

    return-object p0
.end method

.method public clearDelegatorAddr()Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1

    .line 12525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12526
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$21600(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V

    return-object p0
.end method

.method public clearValidatorAddr()Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1

    .line 12553
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12554
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$21800(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V

    return-object p0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 12611
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getChainId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12620
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getChainIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDelegation()Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1

    .line 12570
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getDelegation()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12508
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getDelegatorAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12536
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getValidatorAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDelegation()Z
    .locals 1

    .line 12563
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->hasDelegation()Z

    move-result v0

    return v0
.end method

.method public mergeDelegation(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12593
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12594
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$22000(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setChainId(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12629
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12630
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$22200(Lwallet/core/jni/proto/Binance$SideChainDelegate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChainIdBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12649
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12650
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$22400(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDelegation(Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;)Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12586
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$21900(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setDelegation(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12576
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12577
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$21900(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-object p0
.end method

.method public setDelegatorAddr(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12516
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12517
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$21500(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorAddr(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12544
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12545
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->access$21700(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
