.class public final synthetic Lcom/smedialink/domain/contacts/ContactsInteractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/domain/contacts/ContactsInteractor;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/domain/contacts/ContactsInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/domain/contacts/ContactsInteractor$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/domain/contacts/ContactsInteractor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/domain/contacts/ContactsInteractor$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/domain/contacts/ContactsInteractor;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/smedialink/domain/contacts/ContactsInteractor;->$r8$lambda$OjiWnhm0HysRFIUgQbGcUluI01U(Lcom/smedialink/domain/contacts/ContactsInteractor;Ljava/util/List;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
