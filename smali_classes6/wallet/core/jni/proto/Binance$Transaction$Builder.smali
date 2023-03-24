.class public final Lwallet/core/jni/proto/Binance$Transaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Binance$Transaction;",
        "Lwallet/core/jni/proto/Binance$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TransactionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 570
    invoke-static {}, Lwallet/core/jni/proto/Binance$Transaction;->access$000()Lwallet/core/jni/proto/Binance$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Binance$1;)V
    .locals 0

    .line 563
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMsgs(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lwallet/core/jni/proto/Binance$Transaction$Builder;"
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 654
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->access$300(Lwallet/core/jni/proto/Binance$Transaction;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSignatures(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lwallet/core/jni/proto/Binance$Transaction$Builder;"
        }
    .end annotation

    .line 750
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->access$700(Lwallet/core/jni/proto/Binance$Transaction;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addMsgs(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 639
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->access$200(Lwallet/core/jni/proto/Binance$Transaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addSignatures(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 735
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->access$600(Lwallet/core/jni/proto/Binance$Transaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearData()Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1

    .line 912
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 913
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$Transaction;->access$1500(Lwallet/core/jni/proto/Binance$Transaction;)V

    return-object p0
.end method

.method public clearMemo()Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$Transaction;->access$1000(Lwallet/core/jni/proto/Binance$Transaction;)V

    return-object p0
.end method

.method public clearMsgs()Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 667
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$Transaction;->access$400(Lwallet/core/jni/proto/Binance$Transaction;)V

    return-object p0
.end method

.method public clearSignatures()Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1

    .line 763
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$Transaction;->access$800(Lwallet/core/jni/proto/Binance$Transaction;)V

    return-object p0
.end method

.method public clearSource()Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1

    .line 872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$Transaction;->access$1300(Lwallet/core/jni/proto/Binance$Transaction;)V

    return-object p0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Transaction;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Transaction;->getMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Transaction;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMsgs(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->getMsgs(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMsgsCount()I
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Transaction;->getMsgsCount()I

    move-result v0

    return v0
.end method

.method public getMsgsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    .line 586
    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Transaction;->getMsgsList()Ljava/util/List;

    move-result-object v0

    .line 585
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSignatures(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->getSignatures(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSignaturesCount()I
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Transaction;->getSignaturesCount()I

    move-result v0

    return v0
.end method

.method public getSignaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    .line 683
    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Transaction;->getSignaturesList()Ljava/util/List;

    move-result-object v0

    .line 682
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSource()J
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Transaction;->getSource()J

    move-result-wide v0

    return-wide v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$Transaction$Builder;
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

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->access$1400(Lwallet/core/jni/proto/Binance$Transaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 804
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 805
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->access$900(Lwallet/core/jni/proto/Binance$Transaction;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 832
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 833
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->access$1100(Lwallet/core/jni/proto/Binance$Transaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMsgs(ILcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 624
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 625
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$Transaction;->access$100(Lwallet/core/jni/proto/Binance$Transaction;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSignatures(ILcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 722
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$Transaction;->access$500(Lwallet/core/jni/proto/Binance$Transaction;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSource(J)Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Binance$Transaction;->access$1200(Lwallet/core/jni/proto/Binance$Transaction;J)V

    return-object p0
.end method
