.class final Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HeaderWithNetworkSwitcherProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/ui/custom/NetworkTypeView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaderWithNetworkSwitcherProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderWithNetworkSwitcherProvider.kt\ncom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,48:1\n68#2,4:49\n40#2:53\n56#2:54\n75#2:55\n*S KotlinDebug\n*F\n+ 1 HeaderWithNetworkSwitcherProvider.kt\ncom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1\n*L\n34#1:49,4\n34#1:53\n34#1:54\n34#1:55\n*E\n"
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->invoke(Lcom/iMe/ui/custom/NetworkTypeView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/ui/custom/NetworkTypeView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    .line 68
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->getOnNetworkViewLayoutAction()Lcom/iMe/fork/utils/Callbacks$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1;

    invoke-direct {v1, v0}, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1;-><init>(Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method
