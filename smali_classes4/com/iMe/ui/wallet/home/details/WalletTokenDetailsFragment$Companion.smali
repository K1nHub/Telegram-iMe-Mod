.class public final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;
.super Ljava/lang/Object;
.source "WalletTokenDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1175
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    invoke-direct {v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;-><init>(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    return-object v0
.end method
