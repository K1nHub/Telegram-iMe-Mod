.class public final Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1;->invoke(Lcom/smedialink/ui/custom/NetworkTypeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 HeaderWithNetworkSwitcherProvider.kt\ncom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1\n*L\n1#1,411:1\n70#2:412\n71#2:414\n37#3:413\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1;->this$0:Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 37
    iget-object p1, p0, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1;->this$0:Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    invoke-virtual {p1}, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->getOnNetworkViewLayoutAction()Lorg/fork/utils/Callbacks$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    :goto_0
    return-void
.end method
