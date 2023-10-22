.class public final synthetic Lcom/iMe/storage/domain/manager/ton/TonController$-CC;
.super Ljava/lang/Object;
.source "TonController.kt"


# direct methods
.method public static synthetic sendTransaction$default(Lcom/iMe/storage/domain/manager/ton/TonController;Ljava/lang/String;JLcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;IILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const/4 p5, 0x3

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 16
    invoke-interface/range {v0 .. v5}, Lcom/iMe/storage/domain/manager/ton/TonController;->sendTransaction(Ljava/lang/String;JLcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendTransaction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
