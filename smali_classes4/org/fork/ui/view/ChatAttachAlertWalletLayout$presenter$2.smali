.class final Lorg/fork/ui/view/ChatAttachAlertWalletLayout$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatAttachAlertWalletLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/ChatAttachAlertWalletLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatAttachAlertWalletLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatAttachAlertWalletLayout.kt\norg/fork/ui/view/ChatAttachAlertWalletLayout$presenter$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,544:1\n56#2,6:545\n*S KotlinDebug\n*F\n+ 1 ChatAttachAlertWalletLayout.kt\norg/fork/ui/view/ChatAttachAlertWalletLayout$presenter$2\n*L\n72#1:545,6\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$presenter$2;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;
    .locals 4

    .line 72
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$presenter$2;->this$0:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$presenter$2$invoke$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$presenter$2$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$presenter$2;->invoke()Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    move-result-object v0

    return-object v0
.end method
