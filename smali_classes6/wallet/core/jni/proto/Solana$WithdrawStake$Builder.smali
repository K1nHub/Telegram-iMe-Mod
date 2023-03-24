.class public final Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$WithdrawStakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$WithdrawStake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$WithdrawStake;",
        "Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$WithdrawStakeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2594
    invoke-static {}, Lwallet/core/jni/proto/Solana$WithdrawStake;->access$3700()Lwallet/core/jni/proto/Solana$WithdrawStake;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 2587
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStakeAccount()Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;
    .locals 1

    .line 2647
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2648
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$WithdrawStake;->access$3900(Lwallet/core/jni/proto/Solana$WithdrawStake;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;
    .locals 1

    .line 2702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$WithdrawStake;->access$4200(Lwallet/core/jni/proto/Solana$WithdrawStake;)V

    return-object p0
.end method

.method public getStakeAccount()Ljava/lang/String;
    .locals 1

    .line 2608
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$WithdrawStake;->getStakeAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStakeAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2621
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$WithdrawStake;->getStakeAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 2677
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$WithdrawStake;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setStakeAccount(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2634
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2635
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$WithdrawStake;->access$3800(Lwallet/core/jni/proto/Solana$WithdrawStake;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStakeAccountBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2662
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2663
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$WithdrawStake;->access$4000(Lwallet/core/jni/proto/Solana$WithdrawStake;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(J)Lwallet/core/jni/proto/Solana$WithdrawStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2689
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2690
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawStake;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$WithdrawStake;->access$4100(Lwallet/core/jni/proto/Solana$WithdrawStake;J)V

    return-object p0
.end method
