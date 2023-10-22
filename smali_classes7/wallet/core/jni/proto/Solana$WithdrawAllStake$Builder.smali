.class public final Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$WithdrawAllStakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$WithdrawAllStake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Solana$WithdrawAllStake;",
        "Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$WithdrawAllStakeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3443
    invoke-static {}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->access$5100()Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Solana$1;)V
    .locals 0

    .line 3436
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllStakeAccounts(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
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
            "Lwallet/core/jni/proto/Solana$StakeAccountValue;",
            ">;)",
            "Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;"
        }
    .end annotation

    .line 3528
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3529
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->access$5500(Lwallet/core/jni/proto/Solana$WithdrawAllStake;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addStakeAccounts(ILwallet/core/jni/proto/Solana$StakeAccountValue$Builder;)Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 3518
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3519
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    .line 3520
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    .line 3519
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->access$5400(Lwallet/core/jni/proto/Solana$WithdrawAllStake;ILwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-object p0
.end method

.method public addStakeAccounts(ILwallet/core/jni/proto/Solana$StakeAccountValue;)Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
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

    .line 3500
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3501
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->access$5400(Lwallet/core/jni/proto/Solana$WithdrawAllStake;ILwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-object p0
.end method

.method public addStakeAccounts(Lwallet/core/jni/proto/Solana$StakeAccountValue$Builder;)Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3509
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3510
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->access$5300(Lwallet/core/jni/proto/Solana$WithdrawAllStake;Lwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-object p0
.end method

.method public addStakeAccounts(Lwallet/core/jni/proto/Solana$StakeAccountValue;)Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3491
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3492
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->access$5300(Lwallet/core/jni/proto/Solana$WithdrawAllStake;Lwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-object p0
.end method

.method public clearStakeAccounts()Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
    .locals 1

    .line 3536
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->access$5600(Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V

    return-object p0
.end method

.method public getStakeAccounts(I)Lwallet/core/jni/proto/Solana$StakeAccountValue;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3466
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->getStakeAccounts(I)Lwallet/core/jni/proto/Solana$StakeAccountValue;

    move-result-object p1

    return-object p1
.end method

.method public getStakeAccountsCount()I
    .locals 1

    .line 3460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->getStakeAccountsCount()I

    move-result v0

    return v0
.end method

.method public getStakeAccountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Solana$StakeAccountValue;",
            ">;"
        }
    .end annotation

    .line 3452
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    .line 3453
    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->getStakeAccountsList()Ljava/util/List;

    move-result-object v0

    .line 3452
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeStakeAccounts(I)Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3544
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3545
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->access$5700(Lwallet/core/jni/proto/Solana$WithdrawAllStake;I)V

    return-object p0
.end method

.method public setStakeAccounts(ILwallet/core/jni/proto/Solana$StakeAccountValue$Builder;)Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 3482
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3483
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    .line 3484
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    .line 3483
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->access$5200(Lwallet/core/jni/proto/Solana$WithdrawAllStake;ILwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-object p0
.end method

.method public setStakeAccounts(ILwallet/core/jni/proto/Solana$StakeAccountValue;)Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
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

    .line 3473
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3474
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->access$5200(Lwallet/core/jni/proto/Solana$WithdrawAllStake;ILwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-object p0
.end method
