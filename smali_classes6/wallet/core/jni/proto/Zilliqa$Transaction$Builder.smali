.class public final Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Zilliqa.java"

# interfaces
.implements Lwallet/core/jni/proto/Zilliqa$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Zilliqa$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Zilliqa$Transaction;",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Zilliqa$TransactionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1036
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction;->access$1200()Lwallet/core/jni/proto/Zilliqa$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Zilliqa$1;)V
    .locals 0

    .line 1029
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMessageOneof()Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1

    .line 1046
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1047
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->access$1300(Lwallet/core/jni/proto/Zilliqa$Transaction;)V

    return-object p0
.end method

.method public clearRawTransaction()Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1

    .line 1143
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1144
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->access$1900(Lwallet/core/jni/proto/Zilliqa$Transaction;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1

    .line 1095
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1096
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->access$1600(Lwallet/core/jni/proto/Zilliqa$Transaction;)V

    return-object p0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->getMessageOneofCase()Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getRawTransaction()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->getRawTransaction()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->getTransfer()Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasRawTransaction()Z
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->hasRawTransaction()Z

    move-result v0

    return v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeRawTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1135
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1136
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;->access$1800(Lwallet/core/jni/proto/Zilliqa$Transaction;Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V

    return-object p0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1087
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;->access$1500(Lwallet/core/jni/proto/Zilliqa$Transaction;Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)V

    return-object p0
.end method

.method public setRawTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;)Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1127
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1128
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;->access$1700(Lwallet/core/jni/proto/Zilliqa$Transaction;Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V

    return-object p0
.end method

.method public setRawTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1118
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1119
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;->access$1700(Lwallet/core/jni/proto/Zilliqa$Transaction;Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer$Builder;)Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1079
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1080
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;->access$1400(Lwallet/core/jni/proto/Zilliqa$Transaction;Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1071
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;->access$1400(Lwallet/core/jni/proto/Zilliqa$Transaction;Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)V

    return-object p0
.end method
