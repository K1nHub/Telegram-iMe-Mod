.class final Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HeaderWithNetworkSwitcherProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/ui/custom/NetworkTypeView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaderWithNetworkSwitcherProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderWithNetworkSwitcherProvider.kt\ncom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,51:1\n68#2,4:52\n40#2:56\n56#2:57\n75#2:58\n*S KotlinDebug\n*F\n+ 1 HeaderWithNetworkSwitcherProvider.kt\ncom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1\n*L\n37#1:52,4\n37#1:56\n37#1:57\n37#1:58\n*E\n"
.end annotation


# instance fields
.field final synthetic $item:Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;


# direct methods
.method constructor <init>(Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->$item:Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    iput-object p2, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/smedialink/ui/custom/NetworkTypeView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->invoke(Lcom/smedialink/ui/custom/NetworkTypeView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/ui/custom/NetworkTypeView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    .line 68
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->getOnNetworkViewLayoutAction()Lorg/fork/utils/Callbacks$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1;-><init>(Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->$item:Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/custom/NetworkTypeView;->setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method
