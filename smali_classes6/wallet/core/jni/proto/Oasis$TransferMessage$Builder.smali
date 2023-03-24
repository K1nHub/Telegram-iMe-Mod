.class public final Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Oasis.java"

# interfaces
.implements Lwallet/core/jni/proto/Oasis$TransferMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Oasis$TransferMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Oasis$TransferMessage;",
        "Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Oasis$TransferMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 572
    invoke-static {}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$000()Lwallet/core/jni/proto/Oasis$TransferMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Oasis$1;)V
    .locals 0

    .line 565
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$1000(Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-object p0
.end method

.method public clearContext()Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1

    .line 912
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 913
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$1500(Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-object p0
.end method

.method public clearGasAmount()Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 735
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$700(Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1

    .line 680
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 681
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$500(Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1

    .line 858
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 859
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$1300(Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-object p0
.end method

.method public clearTo()Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 626
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$200(Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-object p0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getContext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getContextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasAmount()Ljava/lang/String;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getGasAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGasAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getGasAmountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasPrice()J
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getGasPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNonce()J
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$900(Lwallet/core/jni/proto/Oasis$TransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$1100(Lwallet/core/jni/proto/Oasis$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setContext(Ljava/lang/String;)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 899
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 900
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$1400(Lwallet/core/jni/proto/Oasis$TransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContextBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 927
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 928
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$1600(Lwallet/core/jni/proto/Oasis$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasAmount(Ljava/lang/String;)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 722
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$600(Lwallet/core/jni/proto/Oasis$TransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGasAmountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 749
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$800(Lwallet/core/jni/proto/Oasis$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGasPrice(J)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 668
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$400(Lwallet/core/jni/proto/Oasis$TransferMessage;J)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 845
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 846
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$1200(Lwallet/core/jni/proto/Oasis$TransferMessage;J)V

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 613
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$100(Lwallet/core/jni/proto/Oasis$TransferMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->access$300(Lwallet/core/jni/proto/Oasis$TransferMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
