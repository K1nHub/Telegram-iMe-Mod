.class public final Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CryptoBoxStatusInfoPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 2

    .line 11
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;->renderItems(Ljava/util/List;)V

    return-void
.end method
