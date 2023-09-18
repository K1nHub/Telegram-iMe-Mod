.class final Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter$convert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletNetworksSettingsRecycleAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/settings/NetworkSettingsItem;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/ui/custom/ImageTextCheckCell;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/settings/NetworkSettingsItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/settings/NetworkSettingsItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter$convert$2;->$item:Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lcom/iMe/ui/custom/ImageTextCheckCell;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter$convert$2;->invoke(Lcom/iMe/ui/custom/ImageTextCheckCell;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/ui/custom/ImageTextCheckCell;)V
    .locals 10

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter$convert$2;->$item:Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/adapter/WalletNetworksSettingsRecycleAdapter$convert$2;->$item:Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    .line 41
    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getFullName()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getLogoUrl()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v1}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->isEnabled()Z

    move-result v6

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v2, p1

    .line 40
    invoke-static/range {v2 .. v9}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setupViewData$default(Lcom/iMe/ui/custom/ImageTextCheckCell;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZILjava/lang/Object;)V

    .line 47
    invoke-virtual {p1}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setupColors()V

    return-void
.end method
