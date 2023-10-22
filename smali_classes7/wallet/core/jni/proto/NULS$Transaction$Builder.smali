.class public final Lwallet/core/jni/proto/NULS$Transaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NULS.java"

# interfaces
.implements Lwallet/core/jni/proto/NULS$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NULS$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NULS$Transaction;",
        "Lwallet/core/jni/proto/NULS$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NULS$TransactionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2717
    invoke-static {}, Lwallet/core/jni/proto/NULS$Transaction;->access$3800()Lwallet/core/jni/proto/NULS$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NULS$1;)V
    .locals 0

    .line 2710
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$Transaction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHash()Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1

    .line 3158
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3159
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Transaction;->access$5800(Lwallet/core/jni/proto/NULS$Transaction;)V

    return-object p0
.end method

.method public clearInput()Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1

    .line 2976
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2977
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Transaction;->access$5000(Lwallet/core/jni/proto/NULS$Transaction;)V

    return-object p0
.end method

.method public clearOutput()Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1

    .line 3047
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3048
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Transaction;->access$5300(Lwallet/core/jni/proto/NULS$Transaction;)V

    return-object p0
.end method

.method public clearRemark()Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1

    .line 2850
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2851
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Transaction;->access$4400(Lwallet/core/jni/proto/NULS$Transaction;)V

    return-object p0
.end method

.method public clearTimestamp()Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1

    .line 2796
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2797
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Transaction;->access$4200(Lwallet/core/jni/proto/NULS$Transaction;)V

    return-object p0
.end method

.method public clearTxData()Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1

    .line 2905
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2906
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Transaction;->access$4700(Lwallet/core/jni/proto/NULS$Transaction;)V

    return-object p0
.end method

.method public clearTxSigs()Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1

    .line 3118
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3119
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Transaction;->access$5600(Lwallet/core/jni/proto/NULS$Transaction;)V

    return-object p0
.end method

.method public clearType()Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1

    .line 2756
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2757
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Transaction;->access$4000(Lwallet/core/jni/proto/NULS$Transaction;)V

    return-object p0
.end method

.method public getHash()I
    .locals 1

    .line 3133
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getHash()I

    move-result v0

    return v0
.end method

.method public getInput()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
    .locals 1

    .line 2930
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getInput()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    move-result-object v0

    return-object v0
.end method

.method public getOutput()Lwallet/core/jni/proto/NULS$TransactionCoinTo;
    .locals 1

    .line 3001
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getOutput()Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    move-result-object v0

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 2811
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getRemark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemarkBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2824
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getRemarkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 2771
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getTimestamp()I

    move-result v0

    return v0
.end method

.method public getTxData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2880
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getTxData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTxSigs()Lwallet/core/jni/proto/NULS$Signature;
    .locals 1

    .line 3072
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getTxSigs()Lwallet/core/jni/proto/NULS$Signature;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 2731
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getType()I

    move-result v0

    return v0
.end method

.method public hasInput()Z
    .locals 1

    .line 2919
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->hasInput()Z

    move-result v0

    return v0
.end method

.method public hasOutput()Z
    .locals 1

    .line 2990
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->hasOutput()Z

    move-result v0

    return v0
.end method

.method public hasTxSigs()Z
    .locals 1

    .line 3061
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->hasTxSigs()Z

    move-result v0

    return v0
.end method

.method public mergeInput(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2965
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$4900(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-object p0
.end method

.method public mergeOutput(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3036
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3037
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$5200(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V

    return-object p0
.end method

.method public mergeTxSigs(Lwallet/core/jni/proto/NULS$Signature;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3107
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3108
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$5500(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$Signature;)V

    return-object p0
.end method

.method public setHash(I)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3146
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$5700(Lwallet/core/jni/proto/NULS$Transaction;I)V

    return-object p0
.end method

.method public setInput(Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2953
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2954
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$4800(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-object p0
.end method

.method public setInput(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2940
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2941
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$4800(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-object p0
.end method

.method public setOutput(Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3024
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3025
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$5100(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V

    return-object p0
.end method

.method public setOutput(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3011
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3012
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$5100(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V

    return-object p0
.end method

.method public setRemark(Ljava/lang/String;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2837
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$4300(Lwallet/core/jni/proto/NULS$Transaction;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRemarkBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2865
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$4500(Lwallet/core/jni/proto/NULS$Transaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestamp(I)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2783
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2784
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$4100(Lwallet/core/jni/proto/NULS$Transaction;I)V

    return-object p0
.end method

.method public setTxData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2892
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2893
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$4600(Lwallet/core/jni/proto/NULS$Transaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTxSigs(Lwallet/core/jni/proto/NULS$Signature$Builder;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3095
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3096
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NULS$Signature;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$5400(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$Signature;)V

    return-object p0
.end method

.method public setTxSigs(Lwallet/core/jni/proto/NULS$Signature;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3082
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3083
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$5400(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$Signature;)V

    return-object p0
.end method

.method public setType(I)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2743
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2744
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->access$3900(Lwallet/core/jni/proto/NULS$Transaction;I)V

    return-object p0
.end method
