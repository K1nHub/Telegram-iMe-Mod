.class final Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$getSubscriptionStatusChangeObservable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChannelDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;->getSubscriptionStatusChangeObservable(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$Chat;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isNotSubscribed:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$getSubscriptionStatusChangeObservable$1;->$isNotSubscribed:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-boolean p1, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$getSubscriptionStatusChangeObservable$1;->$isNotSubscribed:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$getSubscriptionStatusChangeObservable$1;->invoke(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
