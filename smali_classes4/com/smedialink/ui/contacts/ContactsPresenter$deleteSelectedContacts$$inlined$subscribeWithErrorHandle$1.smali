.class public final Lcom/smedialink/ui/contacts/ContactsPresenter$deleteSelectedContacts$$inlined$subscribeWithErrorHandle$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/contacts/ContactsPresenter;->deleteSelectedContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$5\n+ 2 ContactsPresenter.kt\ncom/smedialink/ui/contacts/ContactsPresenter\n*L\n1#1,111:1\n34#2,2:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/contacts/ContactsPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/contacts/ContactsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/contacts/ContactsPresenter$deleteSelectedContacts$$inlined$subscribeWithErrorHandle$1;->this$0:Lcom/smedialink/ui/contacts/ContactsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/smedialink/ui/contacts/ContactsPresenter$deleteSelectedContacts$$inlined$subscribeWithErrorHandle$1;->this$0:Lcom/smedialink/ui/contacts/ContactsPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/contacts/ContactsPresenter;->access$deleteAction(Lcom/smedialink/ui/contacts/ContactsPresenter;)V

    return-void
.end method
