.class public final Lwallet/core/jni/proto/Cardano$Withdraw$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$WithdrawOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$Withdraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$Withdraw;",
        "Lwallet/core/jni/proto/Cardano$Withdraw$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$WithdrawOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5664
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Withdraw;->access$9300()Lwallet/core/jni/proto/Cardano$Withdraw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 5657
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Withdraw$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStakingAddress()Lwallet/core/jni/proto/Cardano$Withdraw$Builder;
    .locals 1

    .line 5717
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5718
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Withdraw;->access$9500(Lwallet/core/jni/proto/Cardano$Withdraw;)V

    return-object p0
.end method

.method public clearWithdrawAmount()Lwallet/core/jni/proto/Cardano$Withdraw$Builder;
    .locals 1

    .line 5772
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5773
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Withdraw;->access$9800(Lwallet/core/jni/proto/Cardano$Withdraw;)V

    return-object p0
.end method

.method public getStakingAddress()Ljava/lang/String;
    .locals 1

    .line 5678
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Withdraw;->getStakingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStakingAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Withdraw;->getStakingAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawAmount()J
    .locals 2

    .line 5747
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Withdraw;->getWithdrawAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public setStakingAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cardano$Withdraw$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5704
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5705
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Withdraw;->access$9400(Lwallet/core/jni/proto/Cardano$Withdraw;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStakingAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$Withdraw$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5732
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5733
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$Withdraw;->access$9600(Lwallet/core/jni/proto/Cardano$Withdraw;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setWithdrawAmount(J)Lwallet/core/jni/proto/Cardano$Withdraw$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5759
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5760
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$Withdraw;->access$9700(Lwallet/core/jni/proto/Cardano$Withdraw;J)V

    return-object p0
.end method
