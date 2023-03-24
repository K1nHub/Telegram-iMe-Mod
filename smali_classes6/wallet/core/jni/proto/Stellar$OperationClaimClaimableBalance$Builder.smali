.class public final Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalanceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;",
        "Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalanceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3490
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;->access$5300()Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Stellar$1;)V
    .locals 0

    .line 3483
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBalanceId()Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance$Builder;
    .locals 1

    .line 3529
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3530
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;->access$5500(Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;)V

    return-object p0
.end method

.method public getBalanceId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3504
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;->getBalanceId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setBalanceId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3516
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3517
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;->access$5400(Lwallet/core/jni/proto/Stellar$OperationClaimClaimableBalance;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
