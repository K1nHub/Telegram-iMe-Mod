.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$3:Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda372;->f$3:Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$DXd2Ambu-ZIehL8wZrOM-91V5cg(Lorg/telegram/messenger/MessagesController;Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
