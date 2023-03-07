.class final Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectMessageSignBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;-><init>(JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectMessageSignBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectMessageSignBottomSheetDialog.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,146:1\n56#2,6:147\n*S KotlinDebug\n*F\n+ 1 WalletConnectMessageSignBottomSheetDialog.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2\n*L\n36#1:147,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

.field final synthetic $requestId:J

.field final synthetic $sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

.field final synthetic $walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;

    iput-wide p2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->$requestId:J

    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->$sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->$message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    iput-object p6, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->$walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;

    new-instance v7, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2$1;

    iget-wide v2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->$requestId:J

    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->$sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    iget-object v5, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->$message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    iget-object v6, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->$walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2$1;-><init>(JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;)V

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2$invoke$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v7}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;->invoke()Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;

    move-result-object v0

    return-object v0
.end method
