.class public final Lcom/smedialink/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "WalletConnectNewSessionBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/smedialink/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;-><init>(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-object v0
.end method
