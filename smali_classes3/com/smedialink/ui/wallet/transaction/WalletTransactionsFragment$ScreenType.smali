.class public abstract Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;
.super Ljava/lang/Object;
.source "WalletTransactionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScreenType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;,
        Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;,
        Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;,
        Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$TokenDetailsTab;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;-><init>()V

    return-void
.end method


# virtual methods
.method public final isStaking()Z
    .locals 1

    .line 241
    instance-of v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
