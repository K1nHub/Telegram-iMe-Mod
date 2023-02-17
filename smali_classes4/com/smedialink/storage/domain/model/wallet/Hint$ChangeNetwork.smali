.class public abstract Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork;
.super Lcom/smedialink/storage/domain/model/wallet/Hint;
.source "Hint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/Hint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChangeNetwork"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$CryptoHomeScreen;,
        Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$WalletConnectScreen;,
        Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;,
        Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x12c

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/smedialink/storage/domain/model/wallet/Hint;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork;-><init>(Ljava/lang/String;)V

    return-void
.end method
