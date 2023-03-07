.class public interface abstract Lcom/smedialink/ui/base/mvp/SwitchNetworkView;
.super Ljava/lang/Object;
.source "SwitchNetworkView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method
