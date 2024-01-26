.class final Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HeaderWithNetworkSwitcherProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;Ljava/util/List;)V
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


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$2;->invoke(Lcom/iMe/ui/custom/NetworkTypeView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/ui/custom/NetworkTypeView;)V
    .locals 1

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    return-void
.end method
