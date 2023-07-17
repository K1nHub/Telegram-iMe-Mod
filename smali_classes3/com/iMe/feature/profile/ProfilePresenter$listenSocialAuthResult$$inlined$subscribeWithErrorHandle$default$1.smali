.class public final Lcom/iMe/feature/profile/ProfilePresenter$listenSocialAuthResult$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/profile/ProfilePresenter;->listenSocialAuthResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/model/twitter/SocialAuthResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ProfilePresenter.kt\ncom/iMe/feature/profile/ProfilePresenter\n*L\n1#1,111:1\n196#2:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $receiver$inlined:Lcom/iMe/feature/profile/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/feature/profile/ProfilePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter$listenSocialAuthResult$$inlined$subscribeWithErrorHandle$default$1;->$receiver$inlined:Lcom/iMe/feature/profile/ProfilePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter$listenSocialAuthResult$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/twitter/SocialAuthResult;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/model/twitter/SocialAuthResult;

    .line 196
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter$listenSocialAuthResult$$inlined$subscribeWithErrorHandle$default$1;->$receiver$inlined:Lcom/iMe/feature/profile/ProfilePresenter;

    invoke-static {v0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->access$onSocialAuthResult(Lcom/iMe/feature/profile/ProfilePresenter;Lcom/iMe/model/twitter/SocialAuthResult;)V

    return-void
.end method
