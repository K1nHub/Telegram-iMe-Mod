.class public final Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "WalletConnectSessionDetailsBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;)Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;"
        }
    .end annotation

    const-string v0, "sessionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disconnectAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsBottomSheetDialog;-><init>(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
