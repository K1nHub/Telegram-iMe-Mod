.class public Lcom/smedialink/ui/contacts/ContactsView$$State$OnSelectedQtyChangeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ContactsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/contacts/ContactsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSelectedQtyChangeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/contacts/ContactsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final newQty:I


# direct methods
.method constructor <init>(Lcom/smedialink/ui/contacts/ContactsView$$State;I)V
    .locals 1

    .line 180
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onSelectedQtyChange"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 182
    iput p2, p0, Lcom/smedialink/ui/contacts/ContactsView$$State$OnSelectedQtyChangeCommand;->newQty:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/contacts/ContactsView;)V
    .locals 1

    .line 187
    iget v0, p0, Lcom/smedialink/ui/contacts/ContactsView$$State$OnSelectedQtyChangeCommand;->newQty:I

    invoke-interface {p1, v0}, Lcom/smedialink/ui/contacts/ContactsView;->onSelectedQtyChange(I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 176
    check-cast p1, Lcom/smedialink/ui/contacts/ContactsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/contacts/ContactsView$$State$OnSelectedQtyChangeCommand;->apply(Lcom/smedialink/ui/contacts/ContactsView;)V

    return-void
.end method
