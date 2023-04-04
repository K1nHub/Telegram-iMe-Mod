.class public abstract Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;
.super Ljava/lang/Object;
.source "DomainRxEvents.kt"

# interfaces
.implements Lcom/iMe/storage/domain/utils/rx/event/RxEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$AppUpdateRequired;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BackupFlowStarted;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BinanceExpiredSession;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BinanceTokensSettingsChanged;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$RefreshTransactions;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessRecreateWalletByPassword;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessRestoreWallet;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;,
        Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;-><init>()V

    return-void
.end method
