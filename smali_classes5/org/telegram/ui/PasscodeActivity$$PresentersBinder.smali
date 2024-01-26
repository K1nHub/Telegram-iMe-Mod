.class public Lorg/telegram/ui/PasscodeActivity$$PresentersBinder;
.super Lmoxy/PresenterBinder;
.source "PasscodeActivity$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PasscodeActivity$$PresentersBinder$WalletEnterPasswordPresenterBinder;,
        Lorg/telegram/ui/PasscodeActivity$$PresentersBinder$WalletCreatePinPresenterBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/PresenterBinder<",
        "Lorg/telegram/ui/PasscodeActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmoxy/PresenterBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public getPresenterFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmoxy/presenter/PresenterField<",
            "-",
            "Lorg/telegram/ui/PasscodeActivity;",
            ">;>;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$PresentersBinder$WalletCreatePinPresenterBinder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$PresentersBinder$WalletCreatePinPresenterBinder;-><init>(Lorg/telegram/ui/PasscodeActivity$$PresentersBinder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$$PresentersBinder$WalletEnterPasswordPresenterBinder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$$PresentersBinder$WalletEnterPasswordPresenterBinder;-><init>(Lorg/telegram/ui/PasscodeActivity$$PresentersBinder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
