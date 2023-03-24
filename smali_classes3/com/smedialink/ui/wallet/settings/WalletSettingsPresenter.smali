.class public final Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletSettingsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/settings/WalletSettingsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSettingsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSettingsPresenter.kt\ncom/smedialink/ui/wallet/settings/WalletSettingsPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1549#2:38\n1620#2,3:39\n*S KotlinDebug\n*F\n+ 1 WalletSettingsPresenter.kt\ncom/smedialink/ui/wallet/settings/WalletSettingsPresenter\n*L\n22#1:38\n22#1:39,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    return-void
.end method


# virtual methods
.method public final loadSettingsMenu()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    .line 18
    iget-object v1, p0, Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->CRYPTO_ACCOUNT:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 20
    sget-object v2, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->INTERFACE:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 21
    sget-object v2, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->HELP:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    aput-object v2, v0, v1

    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    .line 22
    new-instance v3, Lcom/smedialink/model/wallet/settings/SettingUiItem;

    invoke-direct {v3, v2}, Lcom/smedialink/model/wallet/settings/SettingUiItem;-><init>(Lcom/smedialink/model/wallet/settings/SettingMenuItem;)V

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/settings/WalletSettingsView;

    invoke-interface {v1, v0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsView;->setupSettingsItems(Ljava/util/List;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;->loadSettingsMenu()V

    return-void
.end method
