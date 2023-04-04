.class final Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletPrivacySettingPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->savePrivacySettings(Ljava/util/ArrayList;Ljava/util/ArrayList;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $accountRankAllowType:I

.field final synthetic $allowUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $prevAccountRankAllowType:I

.field final synthetic $prevAllowUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $prevPublicWalletAllowType:I

.field final synthetic $publicWalletAllowType:I

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Ljava/util/ArrayList;Ljava/util/ArrayList;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;IIII)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$prevAllowUsers:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$allowUsers:Ljava/util/ArrayList;

    iput p4, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$prevPublicWalletAllowType:I

    iput p5, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$publicWalletAllowType:I

    iput p6, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$prevAccountRankAllowType:I

    iput p7, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$accountRankAllowType:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    .line 40
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$prevAllowUsers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$allowUsers:Ljava/util/ArrayList;

    iget v3, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$prevPublicWalletAllowType:I

    iget v4, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$publicWalletAllowType:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$saveWalletAddressSettingsObservable(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lio/reactivex/Observable;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;

    iget v3, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$prevAccountRankAllowType:I

    iget v4, p0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$savePrivacySettings$action$1;->$accountRankAllowType:I

    invoke-static {v2, v3, v4}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$saveAccountRankSettingsObservable(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;II)Lio/reactivex/Observable;

    move-result-object v2

    .line 39
    invoke-static {v0, v1, v2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->access$saveSettings(Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    return-void
.end method
