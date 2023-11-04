.class public final synthetic Lcom/iMe/storage/domain/manager/ton/TonController$-CC;
.super Ljava/lang/Object;
.source "TonController.kt"


# direct methods
.method public static synthetic sendTransaction$default(Lcom/iMe/storage/domain/manager/ton/TonController;Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;IILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 7

    if-nez p8, :cond_2

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x10

    if-eqz p5, :cond_1

    const/4 p6, 0x3

    :cond_1
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 16
    invoke-interface/range {v0 .. v6}, Lcom/iMe/storage/domain/manager/ton/TonController;->sendTransaction(Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendTransaction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
