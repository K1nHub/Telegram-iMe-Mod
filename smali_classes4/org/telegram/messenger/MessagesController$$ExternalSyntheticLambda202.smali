.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda202;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Updates;

.field public final synthetic f$2:Lorg/fork/utils/Callbacks$Callback1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda202;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda202;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda202;->f$2:Lorg/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda202;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda202;->f$1:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda202;->f$2:Lorg/fork/utils/Callbacks$Callback1;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$wFBmXAa_DLU2D63Od1iSld6Bi6Y(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method
