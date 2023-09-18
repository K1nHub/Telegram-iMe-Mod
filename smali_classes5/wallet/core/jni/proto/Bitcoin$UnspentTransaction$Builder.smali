.class public final Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$UnspentTransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
        "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$UnspentTransactionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2669
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->access$4100()Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Bitcoin$1;)V
    .locals 0

    .line 2662
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;
    .locals 1

    .line 2819
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2820
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->access$4800(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public clearOutPoint()Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;
    .locals 1

    .line 2739
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2740
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->access$4400(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public clearScript()Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;
    .locals 1

    .line 2779
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->access$4600(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 2794
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutPoint()Lwallet/core/jni/proto/Bitcoin$OutPoint;
    .locals 1

    .line 2693
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->getOutPoint()Lwallet/core/jni/proto/Bitcoin$OutPoint;

    move-result-object v0

    return-object v0
.end method

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2754
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOutPoint()Z
    .locals 1

    .line 2682
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->hasOutPoint()Z

    move-result v0

    return v0
.end method

.method public mergeOutPoint(Lwallet/core/jni/proto/Bitcoin$OutPoint;)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2728
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2729
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->access$4300(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2806
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->access$4700(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;J)V

    return-object p0
.end method

.method public setOutPoint(Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2716
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2717
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->access$4200(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public setOutPoint(Lwallet/core/jni/proto/Bitcoin$OutPoint;)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2703
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2704
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->access$4200(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-object p0
.end method

.method public setScript(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2766
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2767
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->access$4500(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
