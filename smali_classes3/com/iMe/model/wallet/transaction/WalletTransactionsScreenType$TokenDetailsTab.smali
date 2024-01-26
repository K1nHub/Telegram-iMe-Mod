.class public final Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;
.super Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;
.source "WalletTransactionsScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenDetailsTab"
.end annotation


# instance fields
.field private final transactionsGroup:Lcom/iMe/model/wallet/details/TransactionsGroup;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/details/TransactionsGroup;)V
    .locals 1

    const-string v0, "transactionsGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    iput-object p1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;->transactionsGroup:Lcom/iMe/model/wallet/details/TransactionsGroup;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;Lcom/iMe/model/wallet/details/TransactionsGroup;ILjava/lang/Object;)Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;->transactionsGroup:Lcom/iMe/model/wallet/details/TransactionsGroup;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;->copy(Lcom/iMe/model/wallet/details/TransactionsGroup;)Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/model/wallet/details/TransactionsGroup;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;->transactionsGroup:Lcom/iMe/model/wallet/details/TransactionsGroup;

    return-object v0
.end method

.method public final copy(Lcom/iMe/model/wallet/details/TransactionsGroup;)Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;
    .locals 1

    const-string v0, "transactionsGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;

    invoke-direct {v0, p1}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;-><init>(Lcom/iMe/model/wallet/details/TransactionsGroup;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;->transactionsGroup:Lcom/iMe/model/wallet/details/TransactionsGroup;

    iget-object p1, p1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;->transactionsGroup:Lcom/iMe/model/wallet/details/TransactionsGroup;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTransactionsGroup()Lcom/iMe/model/wallet/details/TransactionsGroup;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;->transactionsGroup:Lcom/iMe/model/wallet/details/TransactionsGroup;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;->transactionsGroup:Lcom/iMe/model/wallet/details/TransactionsGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenDetailsTab(transactionsGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$TokenDetailsTab;->transactionsGroup:Lcom/iMe/model/wallet/details/TransactionsGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
