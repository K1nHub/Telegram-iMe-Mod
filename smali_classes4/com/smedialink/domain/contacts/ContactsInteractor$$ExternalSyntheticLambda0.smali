.class public final synthetic Lcom/smedialink/domain/contacts/ContactsInteractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/domain/contacts/ContactsInteractor;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/domain/contacts/ContactsInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/domain/contacts/ContactsInteractor$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/domain/contacts/ContactsInteractor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/domain/contacts/ContactsInteractor$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/domain/contacts/ContactsInteractor;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/smedialink/domain/contacts/ContactsInteractor;->$r8$lambda$NY268qblnhH52ElGOXJOftHVKio(Lcom/smedialink/domain/contacts/ContactsInteractor;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
