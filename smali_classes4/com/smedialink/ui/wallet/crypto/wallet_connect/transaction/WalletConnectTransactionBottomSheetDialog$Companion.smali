.class public final Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "WalletConnectTransactionBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;-><init>(Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-object v0
.end method
