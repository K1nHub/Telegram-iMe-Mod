.class public Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder;
.super Lmoxy/PresenterBinder;
.source "ManageLinksActivity$$PresentersBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$StakingCalculatorPresenterBinder;,
        Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$DonationsPresenterBinder;,
        Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$BinanceReceivePresenterBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/PresenterBinder<",
        "Lorg/telegram/ui/ManageLinksActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
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
            "Lorg/telegram/ui/ManageLinksActivity;",
            ">;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$BinanceReceivePresenterBinder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$BinanceReceivePresenterBinder;-><init>(Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$DonationsPresenterBinder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$DonationsPresenterBinder;-><init>(Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$StakingCalculatorPresenterBinder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder$StakingCalculatorPresenterBinder;-><init>(Lorg/telegram/ui/ManageLinksActivity$$PresentersBinder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
