.class public final Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;
.super Ljava/lang/Object;
.source "WalletTransactionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 269
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;
    .locals 1

    const-string/jumbo v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    invoke-direct {v0, p1, p2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/iMe/storage/domain/model/wallet/token/Token;)V

    return-object v0
.end method
