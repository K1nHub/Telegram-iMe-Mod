.class public final synthetic Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ContactsController;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lcom/iMe/fork/utils/Callbacks$Callback1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;->f$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;->f$3:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;->f$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;->f$3:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ContactsController;->$r8$lambda$auaymT-fcu2JKvsd5TFVWgMR36Y(Lorg/telegram/messenger/ContactsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method
