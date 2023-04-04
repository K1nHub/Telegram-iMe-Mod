.class final Lcom/iMe/ui/shop/BotInfoActivity$subscribeToBotContent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BotInfoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/shop/BotInfoActivity;->subscribeToBotContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/bots/domain/model/ShopItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/shop/BotInfoActivity;


# direct methods
.method constructor <init>(Lcom/iMe/ui/shop/BotInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/shop/BotInfoActivity$subscribeToBotContent$1;->this$0:Lcom/iMe/ui/shop/BotInfoActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    check-cast p1, Lcom/iMe/bots/domain/model/ShopItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/shop/BotInfoActivity$subscribeToBotContent$1;->invoke(Lcom/iMe/bots/domain/model/ShopItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/bots/domain/model/ShopItem;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/iMe/ui/shop/BotInfoActivity$subscribeToBotContent$1;->this$0:Lcom/iMe/ui/shop/BotInfoActivity;

    const-string v1, "item"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/iMe/ui/shop/BotInfoActivity;->access$displayBotItem(Lcom/iMe/ui/shop/BotInfoActivity;Lcom/iMe/bots/domain/model/ShopItem;)V

    return-void
.end method
