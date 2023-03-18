.class final Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$2$1;
.super Ljava/lang/Object;
.source "WalletAccountSettingsFragment.kt"

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$2$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$2$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    return-void
.end method
