.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ContactsController$Contact;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ContactsController$Contact;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/ContactsController$Contact;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/ContactsController$Contact;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareSearchAdapter;->$r8$lambda$-yES8O8tEselQODOu1DM4LlgIXQ(Lorg/telegram/messenger/ContactsController$Contact;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
