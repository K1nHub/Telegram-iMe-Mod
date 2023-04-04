.class public final Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;
.super Ljava/lang/Object;
.source "WalletHomeCryptoTokensSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;)Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;
    .locals 2

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
