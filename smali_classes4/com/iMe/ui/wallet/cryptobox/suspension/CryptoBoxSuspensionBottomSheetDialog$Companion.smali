.class public final Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "CryptoBoxSuspensionBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;
    .locals 1

    const-string/jumbo v0, "transactionAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;

    invoke-direct {v0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;-><init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-object v0
.end method
