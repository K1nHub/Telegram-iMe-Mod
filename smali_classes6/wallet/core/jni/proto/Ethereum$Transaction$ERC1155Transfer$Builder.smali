.class public final Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2496
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$3000()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ethereum$1;)V
    .locals 0

    .line 2489
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1

    .line 2741
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2742
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$4200(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V

    return-object p0
.end method

.method public clearFrom()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1

    .line 2549
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$3200(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1

    .line 2618
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2619
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$3500(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V

    return-object p0
.end method

.method public clearTokenId()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1

    .line 2673
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2674
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$3800(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1

    .line 2713
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2714
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$4000(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;)V

    return-object p0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2724
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 2510
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2523
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->getFromBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 2579
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2648
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->getTokenId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2688
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2732
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2733
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$4100(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2536
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$3100(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFromBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2564
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2565
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$3300(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2605
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2606
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$3400(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2633
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2634
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$3600(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTokenId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2660
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2661
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$3700(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2700
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2701
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;->access$3900(Lwallet/core/jni/proto/Ethereum$Transaction$ERC1155Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
