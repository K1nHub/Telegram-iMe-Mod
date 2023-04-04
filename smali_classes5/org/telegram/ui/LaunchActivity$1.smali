.class Lorg/telegram/ui/LaunchActivity$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method public static synthetic $r8$lambda$4C2bI-NRVeWNm8wG7PHVOss_Jtg(Lorg/telegram/ui/LaunchActivity$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LaunchActivity$1;->lambda$onSuccess$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9eKftiBZ14cHhSjb6pkjcgxeaUA(Lorg/telegram/ui/LaunchActivity$1;Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LaunchActivity$1;->lambda$onTransactionProcessing$2(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FVgYrlfLuVl_LT0lCe5h4QzQo68(Lorg/telegram/ui/LaunchActivity$1;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity$1;->lambda$onWalletChangeNetwork$4(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QBVCb8IGXYwyELxwaPiI4oD5_cQ(Lorg/telegram/ui/LaunchActivity$1;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LaunchActivity$1;->lambda$onSessionRequest$1(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z38CkxHCEYb7pEVLW8fOAuKF8VE(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/LaunchActivity$1;->lambda$onSessionRequest$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iPsT09Ipvsl1GlObdyl7h_e13JA(Lorg/telegram/ui/LaunchActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity$1;->lambda$onWalletChangeUnsupportedNetwork$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$iavXb7dEeydmjIi86MwkV1yvYUk(Lorg/telegram/ui/LaunchActivity$1;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity$1;->lambda$onEthSign$3(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onEthSign$3(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 7

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    .line 340
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$000(Lorg/telegram/ui/LaunchActivity;)Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {p3, v1}, Lcom/iMe/mapper/wallet/wallet_connect/WCSessionStoreUiMappingKt;->mapToUi(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object v3

    iget-object p3, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object p3, p3, Lorg/telegram/ui/LaunchActivity;->walletConnectManager:Lkotlin/Lazy;

    .line 342
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    move-wide v1, p1

    move-object v4, p4

    move-object v6, v0

    .line 338
    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->newInstance(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;

    move-result-object p1

    .line 337
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onSessionRequest$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    .line 306
    invoke-static {p1, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;->newInstance(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionBottomSheetDialog;

    move-result-object p1

    .line 305
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onSessionRequest$1(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 4

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 303
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$400(Lorg/telegram/ui/LaunchActivity;)Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    .line 304
    invoke-static {v2}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p1}, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    const/4 p1, 0x0

    .line 303
    invoke-virtual {v1, v2, v3, p1}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->startAction(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onSuccess$6(I)V
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$000(Lorg/telegram/ui/LaunchActivity;)Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onTransactionProcessing$2(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->newInstance(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;

    move-result-object p1

    .line 323
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onWalletChangeNetwork$4(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    .line 358
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$000(Lorg/telegram/ui/LaunchActivity;)Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {p3, v1}, Lcom/iMe/mapper/wallet/wallet_connect/WCSessionStoreUiMappingKt;->mapToUi(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object p3

    .line 356
    invoke-static {p1, p2, p3, p4, v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;->newInstance(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;

    move-result-object p1

    .line 355
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onWalletChangeUnsupportedNetwork$5()V
    .locals 7

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v2, Lcom/iMe/model/dialog/DialogModel;

    .line 376
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$000(Lorg/telegram/ui/LaunchActivity;)Lkotlin/Lazy;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_connect_error_alert_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    .line 377
    invoke-static {v4}, Lorg/telegram/ui/LaunchActivity;->access$000(Lorg/telegram/ui/LaunchActivity;)Lkotlin/Lazy;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_connect_error_unsupported_network:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    .line 379
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->access$000(Lorg/telegram/ui/LaunchActivity;)Lkotlin/Lazy;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {v1, v2, v6, v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public onEthSign(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 7

    .line 334
    new-instance v6, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda4;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LaunchActivity$1;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 398
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 399
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v0, "ErrorOccurred"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSessionRequest(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 1

    .line 297
    new-instance v0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LaunchActivity$1;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 1

    .line 390
    new-instance v0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LaunchActivity$1;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;Z)V
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$1;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$000(Lorg/telegram/ui/LaunchActivity;)Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {p3, v0}, Lcom/iMe/mapper/wallet/wallet_connect/WCSessionStoreUiMappingKt;->mapToUi(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object p3

    if-eqz p5, :cond_0

    .line 318
    new-instance p5, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Sign;-><init>(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;)V

    goto :goto_0

    .line 319
    :cond_0
    new-instance p5, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Send;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType$Send;-><init>(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;)V

    .line 320
    :goto_0
    new-instance p1, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LaunchActivity$1;Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWalletChangeNetwork(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 7

    .line 352
    new-instance v6, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LaunchActivity$1;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWalletChangeUnsupportedNetwork()V
    .locals 1

    .line 369
    new-instance v0, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LaunchActivity$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
