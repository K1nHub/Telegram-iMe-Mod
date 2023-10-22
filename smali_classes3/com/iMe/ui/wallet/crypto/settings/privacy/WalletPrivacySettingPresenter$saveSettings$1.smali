.class final Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletPrivacySettingPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter;->saveSettings(Lio/reactivex/Observable;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$1;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$1;-><init>()V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$1;->INSTANCE:Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    check-cast p2, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/privacy/WalletPrivacySettingPresenter$saveSettings$1;->invoke(Lcom/iMe/storage/domain/model/Result;Lcom/iMe/storage/domain/model/Result;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/Result;Lcom/iMe/storage/domain/model/Result;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "walletAddressResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRankResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/domain/model/Result;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 105
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
