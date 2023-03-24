.class public final Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$TransactionIDOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera$TransactionID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Hedera$TransactionID;",
        "Lwallet/core/jni/proto/Hedera$TransactionID$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$TransactionIDOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 814
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$600()Lwallet/core/jni/proto/Hedera$TransactionID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Hedera$1;)V
    .locals 0

    .line 807
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionID$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccountID()Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1

    .line 938
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 939
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$1100(Lwallet/core/jni/proto/Hedera$TransactionID;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1052
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$1600(Lwallet/core/jni/proto/Hedera$TransactionID;)V

    return-object p0
.end method

.method public clearScheduled()Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1

    .line 993
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 994
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$1400(Lwallet/core/jni/proto/Hedera$TransactionID;)V

    return-object p0
.end method

.method public clearTransactionValidStart()Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1

    .line 884
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 885
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$900(Lwallet/core/jni/proto/Hedera$TransactionID;)V

    return-object p0
.end method

.method public getAccountID()Ljava/lang/String;
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->getAccountID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountIDBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->getAccountIDBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->getNonce()I

    move-result v0

    return v0
.end method

.method public getScheduled()Z
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->getScheduled()Z

    move-result v0

    return v0
.end method

.method public getTransactionValidStart()Lwallet/core/jni/proto/Hedera$Timestamp;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->getTransactionValidStart()Lwallet/core/jni/proto/Hedera$Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasTransactionValidStart()Z
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->hasTransactionValidStart()Z

    move-result v0

    return v0
.end method

.method public mergeTransactionValidStart(Lwallet/core/jni/proto/Hedera$Timestamp;)Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$800(Lwallet/core/jni/proto/Hedera$TransactionID;Lwallet/core/jni/proto/Hedera$Timestamp;)V

    return-object p0
.end method

.method public setAccountID(Ljava/lang/String;)Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 926
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$1000(Lwallet/core/jni/proto/Hedera$TransactionID;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAccountIDBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 953
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$1200(Lwallet/core/jni/proto/Hedera$TransactionID;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(I)Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1032
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1033
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$1500(Lwallet/core/jni/proto/Hedera$TransactionID;I)V

    return-object p0
.end method

.method public setScheduled(Z)Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 980
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 981
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$1300(Lwallet/core/jni/proto/Hedera$TransactionID;Z)V

    return-object p0
.end method

.method public setTransactionValidStart(Lwallet/core/jni/proto/Hedera$Timestamp$Builder;)Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 861
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$700(Lwallet/core/jni/proto/Hedera$TransactionID;Lwallet/core/jni/proto/Hedera$Timestamp;)V

    return-object p0
.end method

.method public setTransactionValidStart(Lwallet/core/jni/proto/Hedera$Timestamp;)Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 848
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->access$700(Lwallet/core/jni/proto/Hedera$TransactionID;Lwallet/core/jni/proto/Hedera$Timestamp;)V

    return-object p0
.end method
