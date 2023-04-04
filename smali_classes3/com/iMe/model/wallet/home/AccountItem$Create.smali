.class public final Lcom/iMe/model/wallet/home/AccountItem$Create;
.super Lcom/iMe/model/wallet/home/AccountItem;
.source "AccountItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/AccountItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Create"
.end annotation


# instance fields
.field private balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private final horizontalActionButtonItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "horizontalActionButtonItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/iMe/model/wallet/home/AccountItem;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    iput-object p1, p0, Lcom/iMe/model/wallet/home/AccountItem$Create;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 12
    iput-object p2, p0, Lcom/iMe/model/wallet/home/AccountItem$Create;->horizontalActionButtonItems:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/model/wallet/home/AccountItem$Create;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/AccountItem$Create;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Ljava/util/List;ILjava/lang/Object;)Lcom/iMe/model/wallet/home/AccountItem$Create;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/AccountItem$Create;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/home/AccountItem$Create;->horizontalActionButtonItems:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/wallet/home/AccountItem$Create;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Ljava/util/List;)Lcom/iMe/model/wallet/home/AccountItem$Create;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/AccountItem$Create;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/model/wallet/home/AccountItem$Create;->horizontalActionButtonItems:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Ljava/util/List;)Lcom/iMe/model/wallet/home/AccountItem$Create;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)",
            "Lcom/iMe/model/wallet/home/AccountItem$Create;"
        }
    .end annotation

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "horizontalActionButtonItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/AccountItem$Create;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/wallet/home/AccountItem$Create;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/AccountItem$Create;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/AccountItem$Create;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/AccountItem$Create;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/AccountItem$Create;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/home/AccountItem$Create;->horizontalActionButtonItems:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/model/wallet/home/AccountItem$Create;->horizontalActionButtonItems:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/model/wallet/home/AccountItem$Create;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public final getHorizontalActionButtonItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/iMe/model/wallet/home/AccountItem$Create;->horizontalActionButtonItems:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/AccountItem$Create;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/home/AccountItem$Create;->horizontalActionButtonItems:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/iMe/model/wallet/home/AccountItem$Create;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create(balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/AccountItem$Create;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalActionButtonItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/AccountItem$Create;->horizontalActionButtonItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
