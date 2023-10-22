.class public final synthetic Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ContactsActivity;

.field public final synthetic f$1:Lcom/iMe/fork/enums/ContactsActionType;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/fork/enums/ContactsActionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/ContactsActivity;

    iput-object p2, p0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;->f$1:Lcom/iMe/fork/enums/ContactsActionType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/ContactsActivity;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;->f$1:Lcom/iMe/fork/enums/ContactsActionType;

    invoke-static {v0, v1}, Lorg/telegram/ui/ContactsActivity;->$r8$lambda$yFdUkhZ0u96X3jScctq5JRiaas0(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/fork/enums/ContactsActionType;)V

    return-void
.end method
