.class public final Lcom/smedialink/mapper/transaction/TransactionUiMappingKt;
.super Ljava/lang/Object;
.source "TransactionUiMapping.kt"


# direct methods
.method public static final mapToUI(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/model/wallet/transaction/TransactionItem;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    invoke-direct {v0, p0}, Lcom/smedialink/model/wallet/transaction/TransactionItem;-><init>(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)V

    return-object v0
.end method
