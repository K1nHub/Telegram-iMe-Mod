.class final Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectSwitchNetworkBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;-><init>(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectSwitchNetworkBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectSwitchNetworkBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,154:1\n56#2,6:155\n*S KotlinDebug\n*F\n+ 1 WalletConnectSwitchNetworkBottomSheetDialog.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2\n*L\n29#1:155,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $networkId:Ljava/lang/String;

.field final synthetic $requestId:J

.field final synthetic $sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;

    iput-wide p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;->$requestId:J

    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;->$sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;->$networkId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;
    .locals 6

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog;

    new-instance v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2$1;

    iget-wide v2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;->$requestId:J

    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;->$sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;->$networkId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2$1;-><init>(JLcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Ljava/lang/String;)V

    .line 58
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2$invoke$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkBottomSheetDialog$presenter$2;->invoke()Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;

    move-result-object v0

    return-object v0
.end method
