.class public final Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->invoke(Lcom/iMe/ui/custom/NetworkTypeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 HeaderWithNetworkSwitcherProvider.kt\ncom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1\n*L\n1#1,432:1\n72#2:433\n73#2:435\n37#3:434\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1;->this$0:Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 37
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1;->this$0:Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    invoke-virtual {p1}, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->getOnNetworkViewLayoutAction()Lcom/iMe/fork/utils/Callbacks$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    :cond_0
    return-void
.end method
