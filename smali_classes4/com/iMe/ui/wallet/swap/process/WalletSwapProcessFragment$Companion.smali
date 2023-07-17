.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;
.super Ljava/lang/Object;
.source "WalletSwapProcessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-direct {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)V

    return-object v0
.end method
