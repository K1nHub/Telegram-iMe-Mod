.class public final Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;
.super Ljava/lang/Object;
.source "WalletAirdropDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog;

    invoke-direct {v0, p1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-object v0
.end method