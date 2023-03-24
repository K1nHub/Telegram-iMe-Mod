.class public final Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationTrustSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$OperationTrustSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Ripple$OperationTrustSet;",
        "Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationTrustSetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 882
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->access$1100()Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Ripple$1;)V
    .locals 0

    .line 875
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLimitAmount()Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;
    .locals 1

    .line 928
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 929
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->access$1400(Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V

    return-object p0
.end method

.method public getLimitAmount()Lwallet/core/jni/proto/Ripple$CurrencyAmount;
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->getLimitAmount()Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    move-result-object v0

    return-object v0
.end method

.method public hasLimitAmount()Z
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->hasLimitAmount()Z

    move-result v0

    return v0
.end method

.method public mergeLimitAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 921
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 922
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->access$1300(Lwallet/core/jni/proto/Ripple$OperationTrustSet;Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-object p0
.end method

.method public setLimitAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;)Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 914
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->access$1200(Lwallet/core/jni/proto/Ripple$OperationTrustSet;Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-object p0
.end method

.method public setLimitAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 904
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->access$1200(Lwallet/core/jni/proto/Ripple$OperationTrustSet;Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-object p0
.end method
