.class public Lorg/telegram/ui/PasscodeActivity$$PresentersBinder$WalletEnterPasswordPresenterBinder;
.super Lmoxy/presenter/PresenterField;
.source "PasscodeActivity$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PasscodeActivity$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WalletEnterPasswordPresenterBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/presenter/PresenterField<",
        "Lorg/telegram/ui/PasscodeActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PasscodeActivity$$PresentersBinder;)V
    .locals 2

    .line 39
    const-class p1, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    const-string v0, "walletEnterPasswordPresenter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lmoxy/presenter/PresenterField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/PasscodeActivity$$PresentersBinder$WalletEnterPasswordPresenterBinder;->bind(Lorg/telegram/ui/PasscodeActivity;Lmoxy/MvpPresenter;)V

    return-void
.end method

.method public bind(Lorg/telegram/ui/PasscodeActivity;Lmoxy/MvpPresenter;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    iput-object p2, p1, Lorg/telegram/ui/PasscodeActivity;->walletEnterPasswordPresenter:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    return-void
.end method

.method public bridge synthetic providePresenter(Ljava/lang/Object;)Lmoxy/MvpPresenter;
    .locals 0

    .line 37
    check-cast p1, Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PasscodeActivity$$PresentersBinder$WalletEnterPasswordPresenterBinder;->providePresenter(Lorg/telegram/ui/PasscodeActivity;)Lmoxy/MvpPresenter;

    move-result-object p1

    return-object p1
.end method

.method public providePresenter(Lorg/telegram/ui/PasscodeActivity;)Lmoxy/MvpPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/PasscodeActivity;",
            ")",
            "Lmoxy/MvpPresenter<",
            "*>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lorg/telegram/ui/PasscodeActivity;->provideWalletEnterPasswordPresenter()Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    move-result-object p1

    return-object p1
.end method
