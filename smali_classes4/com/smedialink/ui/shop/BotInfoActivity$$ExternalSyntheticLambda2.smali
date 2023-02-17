.class public final synthetic Lcom/smedialink/ui/shop/BotInfoActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/shop/BotInfoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/shop/BotInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/shop/BotInfoActivity$$ExternalSyntheticLambda2;->f$0:Lcom/smedialink/ui/shop/BotInfoActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/shop/BotInfoActivity$$ExternalSyntheticLambda2;->f$0:Lcom/smedialink/ui/shop/BotInfoActivity;

    check-cast p1, Lcom/smedialink/bots/domain/model/ShopItem;

    invoke-static {v0, p1}, Lcom/smedialink/ui/shop/BotInfoActivity;->$r8$lambda$o6ZiA0NyKH1TdpFGIrtcJSoB9pk(Lcom/smedialink/ui/shop/BotInfoActivity;Lcom/smedialink/bots/domain/model/ShopItem;)V

    return-void
.end method
