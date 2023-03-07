.class public Lcom/smedialink/ui/base/JavaWalletAuthFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "JavaWalletAuthFragment.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 15
    invoke-static {}, Lorg/koin/java/KoinJavaComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
