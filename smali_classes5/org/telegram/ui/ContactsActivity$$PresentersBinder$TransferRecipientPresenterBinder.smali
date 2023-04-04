.class public Lorg/telegram/ui/ContactsActivity$$PresentersBinder$TransferRecipientPresenterBinder;
.super Lmoxy/presenter/PresenterField;
.source "ContactsActivity$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ContactsActivity$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransferRecipientPresenterBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/presenter/PresenterField<",
        "Lorg/telegram/ui/ContactsActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ContactsActivity$$PresentersBinder;)V
    .locals 2

    .line 39
    const-class p1, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    const-string v0, "transferRecipientPresenter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmoxy/presenter/PresenterField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/telegram/ui/ContactsActivity;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity$$PresentersBinder$TransferRecipientPresenterBinder;->bind(Lorg/telegram/ui/ContactsActivity;Lmoxy/MvpPresenter;)V

    return-void
.end method

.method public bind(Lorg/telegram/ui/ContactsActivity;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    iput-object p2, p1, Lorg/telegram/ui/ContactsActivity;->transferRecipientPresenter:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    return-void
.end method

.method public bridge synthetic providePresenter(Ljava/lang/Object;)Lmoxy/MvpPresenter;
    .locals 0

    .line 37
    check-cast p1, Lorg/telegram/ui/ContactsActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ContactsActivity$$PresentersBinder$TransferRecipientPresenterBinder;->providePresenter(Lorg/telegram/ui/ContactsActivity;)Lmoxy/MvpPresenter;

    move-result-object p1

    return-object p1
.end method

.method public providePresenter(Lorg/telegram/ui/ContactsActivity;)Lmoxy/MvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ContactsActivity;",
            ")",
            "Lmoxy/MvpPresenter<",
            "*>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lorg/telegram/ui/ContactsActivity;->provideTransferRecipientPresenter()Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    move-result-object p1

    return-object p1
.end method
