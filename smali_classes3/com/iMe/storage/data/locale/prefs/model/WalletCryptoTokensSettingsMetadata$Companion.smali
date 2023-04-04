.class public final Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;
.super Ljava/lang/Object;
.source "WalletCryptoTokensSettingsMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletCryptoTokensSettingsMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletCryptoTokensSettingsMetadata.kt\ncom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n1549#2:33\n1620#2,3:34\n*S KotlinDebug\n*F\n+ 1 WalletCryptoTokensSettingsMetadata.kt\ncom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion\n*L\n22#1:33\n22#1:34,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultTokensSettings(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;
    .locals 5

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->getTokensByNetwork(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object p1

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 23
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v2, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v2

    .line 24
    new-instance v3, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 25
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getSortPosition()I

    move-result v2

    const/4 v4, 0x1

    .line 24
    invoke-direct {v3, v1, v2, v4}, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;-><init>(Ljava/lang/String;IZ)V

    .line 1621
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;-><init>(Ljava/util/List;)V

    return-object v0
.end method
