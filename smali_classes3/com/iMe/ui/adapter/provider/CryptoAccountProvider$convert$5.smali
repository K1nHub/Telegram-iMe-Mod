.class final Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$5;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoAccountProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoAccountItem;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/CryptoAccountItem;Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$5;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$5;->this$0:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$5;->invoke(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 5

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$5;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object v0

    .line 73
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1, v4, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    if-eqz v0, :cond_1

    .line 75
    invoke-static {p1, v4, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 76
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 77
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$5;->this$0:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$5;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$5;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->access$setupMenuItems(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
