.class public final Lorg/ton/contract/wallet/WalletContract$DefaultImpls;
.super Ljava/lang/Object;
.source "WalletContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/contract/wallet/WalletContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getData(Lorg/ton/contract/wallet/WalletContract;)Lorg/ton/cell/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/contract/wallet/WalletContract<",
            "TT;>;)",
            "Lorg/ton/cell/Cell;"
        }
    .end annotation

    .line 6
    invoke-static {p0}, Lorg/ton/contract/SmartContract$DefaultImpls;->getData(Lorg/ton/contract/SmartContract;)Lorg/ton/cell/Cell;

    move-result-object p0

    return-object p0
.end method

.method public static sendExternalMessage(Lorg/ton/contract/wallet/WalletContract;Lorg/ton/lite/api/LiteApi;Lorg/ton/cell/Cell;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/contract/wallet/WalletContract<",
            "TT;>;",
            "Lorg/ton/lite/api/LiteApi;",
            "Lorg/ton/cell/Cell;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1, p2, p3}, Lorg/ton/contract/SmartContract$DefaultImpls;->sendExternalMessage(Lorg/ton/contract/SmartContract;Lorg/ton/lite/api/LiteApi;Lorg/ton/cell/Cell;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sendExternalMessage(Lorg/ton/contract/wallet/WalletContract;Lorg/ton/lite/api/LiteApi;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/contract/wallet/WalletContract<",
            "TT;>;",
            "Lorg/ton/lite/api/LiteApi;",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/block/Message<",
            "TX;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ton/contract/SmartContract$DefaultImpls;->sendExternalMessage(Lorg/ton/contract/SmartContract;Lorg/ton/lite/api/LiteApi;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
