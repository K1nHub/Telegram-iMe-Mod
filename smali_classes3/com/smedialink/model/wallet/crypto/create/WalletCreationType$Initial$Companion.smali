.class public final Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Companion;
.super Ljava/lang/Object;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getByIndex(I)Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Companion;->getValuesOrdered(Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;

    if-nez p1, :cond_0

    sget-object p1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    :cond_0
    return-object p1
.end method

.method public final getValuesOrdered(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;

    .line 46
    sget-object v1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 47
    sget-object v1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    if-eqz p1, :cond_0

    .line 48
    sget-object p1, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Restore;->INSTANCE:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Restore;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 45
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
