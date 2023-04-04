.class final Lcom/iMe/ui/adapter/provider/CreateAccountProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateAccountProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/CreateAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/AccountItem$Create;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/ui/custom/HorizontalActionButtonsView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/AccountItem$Create;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/AccountItem$Create;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CreateAccountProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/AccountItem$Create;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/CreateAccountProvider$convert$1;->invoke(Lcom/iMe/ui/custom/HorizontalActionButtonsView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/ui/custom/HorizontalActionButtonsView;)V
    .locals 1

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CreateAccountProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/AccountItem$Create;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/AccountItem$Create;->getHorizontalActionButtonItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView;->initButtons(Ljava/util/List;)V

    return-void
.end method
