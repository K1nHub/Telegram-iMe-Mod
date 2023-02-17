.class public final synthetic Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ContactsController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ContactsController;ILorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/messenger/ContactsController;

    iput p2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/messenger/ContactsController;

    iget v1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->$r8$lambda$KuyENjedMX5WmO3vwEhlVxlwDNU(Lorg/telegram/messenger/ContactsController;ILorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method
