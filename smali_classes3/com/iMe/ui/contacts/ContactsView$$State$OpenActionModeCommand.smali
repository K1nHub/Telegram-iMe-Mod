.class public Lcom/iMe/ui/contacts/ContactsView$$State$OpenActionModeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ContactsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/contacts/ContactsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenActionModeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/contacts/ContactsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/contacts/ContactsView$$State;)V
    .locals 1

    .line 145
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "openActionMode"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/contacts/ContactsView;)V
    .locals 0

    .line 150
    invoke-interface {p1}, Lcom/iMe/ui/contacts/ContactsView;->openActionMode()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 143
    check-cast p1, Lcom/iMe/ui/contacts/ContactsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/contacts/ContactsView$$State$OpenActionModeCommand;->apply(Lcom/iMe/ui/contacts/ContactsView;)V

    return-void
.end method
