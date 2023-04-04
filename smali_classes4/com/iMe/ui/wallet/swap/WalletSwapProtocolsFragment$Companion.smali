.class public final Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;
.super Ljava/lang/Object;
.source "WalletSwapProtocolsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;ILjava/lang/Object;)Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 160
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;->newInstance(Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    invoke-direct {v0, p1, p2}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;-><init>(Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V

    return-object v0
.end method
