.class public final Lcom/smedialink/utils/helper/wallet/WalletConnectHelper;
.super Ljava/lang/Object;
.source "WalletConnectHelper.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/utils/helper/wallet/WalletConnectHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/wallet/WalletConnectHelper;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final handleIntent(Landroid/content/Intent;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {p1, p0}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;->connect(Ljava/lang/String;)V

    return-void
.end method

.method public static final isWalletConnectIntent(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/trustwallet/walletconnect/models/session/WCSession;->Companion:Lcom/trustwallet/walletconnect/models/session/WCSession$Companion;

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Lcom/trustwallet/walletconnect/models/session/WCSession$Companion;->from(Ljava/lang/String;)Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
