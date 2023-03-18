.class public final Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;
.super Ljava/lang/Object;
.source "WalletTokenDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    invoke-direct {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;-><init>(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    return-object v0
.end method
