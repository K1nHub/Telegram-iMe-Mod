.class final Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider$convert$4;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoAccountProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/CryptoAccountItem;Ljava/util/List;)V
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
.field final synthetic $item:Lcom/smedialink/model/wallet/home/CryptoAccountItem;

.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;Lcom/smedialink/model/wallet/home/CryptoAccountItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider$convert$4;->this$0:Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;

    iput-object p2, p0, Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider$convert$4;->$item:Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider$convert$4;->invoke(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 3

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider$convert$4;->this$0:Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider$convert$4;->$item:Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/home/CryptoAccountItem;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider$convert$4;->$item:Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    invoke-virtual {v2}, Lcom/smedialink/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;->access$setupMenuItems(Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)V

    return-void
.end method
