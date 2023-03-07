.class public final synthetic Lcom/smedialink/ui/shop/BotInfoActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/shop/BotInfoActivity;

.field public final synthetic f$1:Lcom/smedialink/bots/domain/model/ShopItem;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/shop/BotInfoActivity;Lcom/smedialink/bots/domain/model/ShopItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/shop/BotInfoActivity$$ExternalSyntheticLambda3;->f$0:Lcom/smedialink/ui/shop/BotInfoActivity;

    iput-object p2, p0, Lcom/smedialink/ui/shop/BotInfoActivity$$ExternalSyntheticLambda3;->f$1:Lcom/smedialink/bots/domain/model/ShopItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/shop/BotInfoActivity$$ExternalSyntheticLambda3;->f$0:Lcom/smedialink/ui/shop/BotInfoActivity;

    iget-object v1, p0, Lcom/smedialink/ui/shop/BotInfoActivity$$ExternalSyntheticLambda3;->f$1:Lcom/smedialink/bots/domain/model/ShopItem;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/smedialink/ui/shop/BotInfoActivity;->$r8$lambda$qr8JYukKYR09ccPvlLhpijZmTpc(Lcom/smedialink/ui/shop/BotInfoActivity;Lcom/smedialink/bots/domain/model/ShopItem;Ljava/util/List;)V

    return-void
.end method
