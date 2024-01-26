.class public final Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;
.super Ljava/lang/Object;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getByIndex(I)Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;->getValuesOrdered()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    if-nez p1, :cond_0

    sget-object p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    :cond_0
    return-object p1
.end method

.method public final getValuesOrdered()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    .line 42
    sget-object v1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
