.class public final Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "WalletTransactionDetailsBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$0ZV-oX5uRxZthX1iYRcOTIIdmTM(Lcom/iMe/model/wallet/ActionItem;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;->newInstance$lambda$0(Lcom/iMe/model/wallet/ActionItem;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 336
    sget-object p3, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion$$ExternalSyntheticLambda0;

    .line 333
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final newInstance$lambda$0(Lcom/iMe/model/wallet/ActionItem;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/wallet/ActionItem;",
            ">;)",
            "Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "screenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-object v0
.end method
