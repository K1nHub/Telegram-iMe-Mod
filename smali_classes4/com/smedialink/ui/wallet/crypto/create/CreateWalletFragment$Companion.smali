.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;
.super Ljava/lang/Object;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;
    .locals 1

    const-string v0, "currentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1385
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-direct {v0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)V

    return-object v0
.end method
