.class public final synthetic Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$2:Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iput-object p3, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda1;->f$2:Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iget-object v2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda1;->f$2:Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->$r8$lambda$8UCTwcxcxZIEpxiT1OnTP6qflVM(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
