.class final Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoAccountProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoAccountItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;


# direct methods
.method public static synthetic $r8$lambda$wDp47lr8OzUHy3KVUkB-WbWdYtI(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lcom/iMe/model/wallet/home/CryptoAccountItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->invoke$lambda$0(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lcom/iMe/model/wallet/home/CryptoAccountItem;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lcom/iMe/model/wallet/home/CryptoAccountItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lcom/iMe/model/wallet/home/CryptoAccountItem;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->getOnAddressClickAction()Lcom/iMe/fork/utils/Callbacks$Callback1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->invoke(Landroidx/appcompat/widget/AppCompatTextView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 3

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    new-instance v2, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lcom/iMe/model/wallet/home/CryptoAccountItem;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
