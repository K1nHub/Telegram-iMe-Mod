.class public Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$DonationsPresenterBinder;
.super Lmoxy/presenter/PresenterField;
.source "ManageLinksActivity$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DonationsPresenterBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/presenter/PresenterField<",
        "Lorg/telegram/ui/ManageLinksActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder;)V
    .locals 2

    .line 77
    const-class p1, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    const-string v0, "donationsPresenter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmoxy/presenter/PresenterField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 75
    check-cast p1, Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$DonationsPresenterBinder;->bind(Lorg/telegram/ui/ManageLinksActivity;Lmoxy/MvpPresenter;)V

    return-void
.end method

.method public bind(Lorg/telegram/ui/ManageLinksActivity;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 82
    check-cast p2, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    iput-object p2, p1, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    return-void
.end method

.method public bridge synthetic providePresenter(Ljava/lang/Object;)Lmoxy/MvpPresenter;
    .locals 0

    .line 75
    check-cast p1, Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$DonationsPresenterBinder;->providePresenter(Lorg/telegram/ui/ManageLinksActivity;)Lmoxy/MvpPresenter;

    move-result-object p1

    return-object p1
.end method

.method public providePresenter(Lorg/telegram/ui/ManageLinksActivity;)Lmoxy/MvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ManageLinksActivity;",
            ")",
            "Lmoxy/MvpPresenter<",
            "*>;"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lorg/telegram/ui/ManageLinksActivity;->provideDonationsPresenter()Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    move-result-object p1

    return-object p1
.end method
