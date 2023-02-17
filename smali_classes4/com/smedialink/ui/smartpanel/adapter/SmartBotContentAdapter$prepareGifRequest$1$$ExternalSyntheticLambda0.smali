.class public final synthetic Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$3:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$4:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p2, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/messenger/MessagesController;

    iput-object p4, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/messenger/MessagesStorage;

    iput-object p5, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;->f$4:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/messenger/MessagesController;

    iget-object v3, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/messenger/MessagesStorage;

    iget-object v4, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;->f$4:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->$r8$lambda$EkFQCcGwS21YwuS6f072LOtrTYk(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)V

    return-void
.end method
