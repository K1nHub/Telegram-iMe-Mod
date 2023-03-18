.class public final Lcom/smedialink/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/profile/ProfilePresenter;->loadTwitterProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ProfilePresenter.kt\ncom/smedialink/ui/profile/ProfilePresenter\n*L\n1#1,111:1\n266#2,25:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/profile/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/profile/ProfilePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;

    invoke-static {v0, v1}, Lcom/smedialink/ui/profile/ProfilePresenter;->access$setTwitterProfileInfo$p(Lcom/smedialink/ui/profile/ProfilePresenter;Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;)V

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    .line 116
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;

    .line 118
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;->getTwitterUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-static {p1}, Lcom/smedialink/ui/profile/ProfilePresenter;->access$getTwitterPreferenceHelper$p(Lcom/smedialink/ui/profile/ProfilePresenter;)Lcom/smedialink/storage/domain/storage/TwitterPreferenceHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/TwitterPreferenceHelper;->getAccountsData()Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-static {v1}, Lcom/smedialink/ui/profile/ProfilePresenter;->access$getProfileId$p(Lcom/smedialink/ui/profile/ProfilePresenter;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/smedialink/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->remove(J)V

    .line 120
    sget-object p1, Lcom/smedialink/model/twitter/TwitterAccountStatus$None;->INSTANCE:Lcom/smedialink/model/twitter/TwitterAccountStatus$None;

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;->getTwitterUserId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;->getTwitterUserIdInDatabase()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-object v1, p0, Lcom/smedialink/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-static {v1}, Lcom/smedialink/ui/profile/ProfilePresenter;->access$isCurrentUser$p(Lcom/smedialink/ui/profile/ProfilePresenter;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;->isUnlinked()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Lcom/smedialink/model/twitter/TwitterAccountStatus$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;->getTwitterUserName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/smedialink/model/twitter/TwitterAccountStatus$Error;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 123
    :cond_3
    new-instance v1, Lcom/smedialink/model/twitter/TwitterAccountStatus$Active;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/twitter/TwitterProfileInfo;->getTwitterUserName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/smedialink/model/twitter/TwitterAccountStatus$Active;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :goto_1
    invoke-static {v0, p1}, Lcom/smedialink/ui/profile/ProfilePresenter;->access$updateTwitterStatusAndRender(Lcom/smedialink/ui/profile/ProfilePresenter;Lcom/smedialink/model/twitter/TwitterAccountStatus;)V

    goto :goto_3

    .line 128
    :cond_4
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object p1

    .line 129
    sget-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;->WRONG_TWITTER_REFRESH_TOKEN_ERROR:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;

    if-ne p1, v0, :cond_7

    .line 130
    iget-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    .line 131
    new-instance v0, Lcom/smedialink/model/twitter/TwitterAccountStatus$Error;

    invoke-static {p1}, Lcom/smedialink/ui/profile/ProfilePresenter;->access$getSavedAccountData(Lcom/smedialink/ui/profile/ProfilePresenter;)Lcom/smedialink/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/twitter/TwitterAccountData;->getTwitterUsername()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_6

    const-string v1, ""

    :cond_6
    invoke-direct {v0, v1}, Lcom/smedialink/model/twitter/TwitterAccountStatus$Error;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {p1, v0}, Lcom/smedialink/ui/profile/ProfilePresenter;->access$updateTwitterStatusAndRender(Lcom/smedialink/ui/profile/ProfilePresenter;Lcom/smedialink/model/twitter/TwitterAccountStatus;)V

    :cond_7
    :goto_3
    return-void
.end method
