.class public final Lcom/iMe/feature/socialMedias/SocialUseCase;
.super Ljava/lang/Object;
.source "SocialUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocialUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocialUseCase.kt\ncom/iMe/feature/socialMedias/SocialUseCase\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,65:1\n18#2:66\n11#3:67\n*S KotlinDebug\n*F\n+ 1 SocialUseCase.kt\ncom/iMe/feature/socialMedias/SocialUseCase\n*L\n53#1:66\n62#1:67\n*E\n"
.end annotation


# instance fields
.field private final profileRepository:Lcom/iMe/feature/profile/ProfileRepository;

.field private final socialRepository:Lcom/iMe/feature/socialMedias/SocialRepository;

.field private final walletSessionRepository:Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;


# direct methods
.method public static synthetic $r8$lambda$D7Fh1fwFgawjhidU0aPRtFv_9ks(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase;->startSocialAuth$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_DaPTPUb638VSzr0NXZKxLmowo4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase;->getAllSocials$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oXOYUrAxI74rclaWsvzCpsF-Bbo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase;->getSocialAuthData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/feature/socialMedias/SocialRepository;Lcom/iMe/feature/profile/ProfileRepository;Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;)V
    .locals 1

    const-string v0, "socialRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletSessionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialUseCase;->socialRepository:Lcom/iMe/feature/socialMedias/SocialRepository;

    .line 18
    iput-object p2, p0, Lcom/iMe/feature/socialMedias/SocialUseCase;->profileRepository:Lcom/iMe/feature/profile/ProfileRepository;

    .line 19
    iput-object p3, p0, Lcom/iMe/feature/socialMedias/SocialUseCase;->walletSessionRepository:Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    return-void
.end method

.method public static final synthetic access$updateSocialAccess(Lcom/iMe/feature/socialMedias/SocialUseCase;Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/Observable;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/iMe/feature/socialMedias/SocialUseCase;->updateSocialAccess(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final getAllSocials$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final getSocialAuthData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private static final startSocialAuth$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final updateSocialAccess(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/profile/ProfileData;",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialUseCase;->profileRepository:Lcom/iMe/feature/profile/ProfileRepository;

    invoke-interface {v0, p1}, Lcom/iMe/feature/profile/ProfileRepository;->isMyProfile(Lcom/iMe/feature/profile/ProfileData;)Z

    move-result p1

    .line 62
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/socialMedias/SocialDomain;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/feature/socialMedias/SocialDomain;->copy$default(Lcom/iMe/feature/socialMedias/SocialDomain;ZLjava/util/List;ILjava/lang/Object;)Lcom/iMe/feature/socialMedias/SocialDomain;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 61
    :cond_1
    :goto_0
    invoke-static {p2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "just(\n            result\u2026ess() ?: result\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getAllSocials(Lcom/iMe/feature/profile/ProfileData;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/profile/ProfileData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;>;"
        }
    .end annotation

    const-string v0, "profileData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialUseCase;->socialRepository:Lcom/iMe/feature/socialMedias/SocialRepository;

    .line 23
    invoke-interface {v0, p1}, Lcom/iMe/feature/socialMedias/SocialRepository;->getAllSocial(Lcom/iMe/feature/profile/ProfileData;)Lio/reactivex/Observable;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/iMe/feature/socialMedias/SocialUseCase$getAllSocials$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase$getAllSocials$1;-><init>(Lcom/iMe/feature/socialMedias/SocialUseCase;Lcom/iMe/feature/profile/ProfileData;)V

    new-instance p1, Lcom/iMe/feature/socialMedias/SocialUseCase$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1}, Lcom/iMe/feature/socialMedias/SocialUseCase$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fun getAllSocials(profil\u2026(profileData, it) }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getSocialAuthData(Lcom/iMe/storage/domain/model/wallet/SessionTokens;JLcom/iMe/feature/socialMedias/SocialType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
            "J",
            "Lcom/iMe/feature/socialMedias/SocialType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialAuthDomain;",
            ">;>;"
        }
    .end annotation

    const-string v0, "socialType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    .line 50
    sget-object v1, Lcom/iMe/feature/socialMedias/SocialAuthHelper;->INSTANCE:Lcom/iMe/feature/socialMedias/SocialAuthHelper;

    invoke-virtual {v1, p2, p3, p4}, Lcom/iMe/feature/socialMedias/SocialAuthHelper;->getSocialAuthUrl(JLcom/iMe/feature/socialMedias/SocialType;)Ljava/lang/String;

    move-result-object p2

    .line 51
    sget-object p3, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/SessionTokens;->getToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p3, p1}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;->formatAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-direct {v0, p4, p2, p1}, Lcom/iMe/feature/socialMedias/SocialAuthDomain;-><init>(Lcom/iMe/feature/socialMedias/SocialType;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "just(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance p2, Lcom/iMe/feature/socialMedias/SocialUseCase$getSocialAuthData$1;

    sget-object p3, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-direct {p2, p3}, Lcom/iMe/feature/socialMedias/SocialUseCase$getSocialAuthData$1;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lcom/iMe/feature/socialMedias/SocialUseCase$$ExternalSyntheticLambda2;

    invoke-direct {p3, p2}, Lcom/iMe/feature/socialMedias/SocialUseCase$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "SocialAuthDomain(\n      \u2026esult.Companion::success)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final logout(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialUseCase;->profileRepository:Lcom/iMe/feature/profile/ProfileRepository;

    invoke-interface {v0}, Lcom/iMe/feature/profile/ProfileRepository;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialUseCase;->socialRepository:Lcom/iMe/feature/socialMedias/SocialRepository;

    invoke-interface {v1, v0, p1}, Lcom/iMe/feature/socialMedias/SocialRepository;->logoutSocial(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/SocialNetwork;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final startSocialAuth(Lcom/iMe/feature/socialMedias/SocialType;J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/socialMedias/SocialType;",
            "J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialAuthDomain;",
            ">;>;"
        }
    .end annotation

    const-string v0, "socialType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialUseCase;->walletSessionRepository:Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    .line 40
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;->refreshToken()Lio/reactivex/Observable;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/iMe/feature/socialMedias/SocialUseCase$startSocialAuth$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase$startSocialAuth$1;-><init>(Lcom/iMe/feature/socialMedias/SocialUseCase;JLcom/iMe/feature/socialMedias/SocialType;)V

    new-instance p1, Lcom/iMe/feature/socialMedias/SocialUseCase$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/iMe/feature/socialMedias/SocialUseCase$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "fun startSocialAuth(\n   \u2026 profileId, socialType) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
