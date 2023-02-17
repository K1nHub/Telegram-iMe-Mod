.class public abstract Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;
.super Ljava/lang/Object;
.source "DomainRxEvents.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$AppUpdateRequired;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessRestoreWallet;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessRecreateWalletByPassword;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$BackupFlowStarted;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$RefreshTransactions;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$BinanceTokensSettingsChanged;,
        Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$BinanceExpiredSession;
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

    invoke-direct {p0}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;-><init>()V

    return-void
.end method
