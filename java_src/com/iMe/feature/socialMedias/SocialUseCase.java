package com.iMe.feature.socialMedias;

import com.iMe.feature.profile.ProfileData;
import com.iMe.feature.profile.ProfileRepository;
import com.iMe.model.twitter.SocialAuthResult;
import com.iMe.storage.data.network.interceptor.MetadataInterceptor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.repository.wallet.WalletSessionRepository;
import com.jakewharton.rxrelay2.PublishRelay;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialUseCase.kt */
/* loaded from: classes3.dex */
public final class SocialUseCase {
    private final ProfileRepository profileRepository;
    private final SocialRepository socialRepository;
    private final WalletSessionRepository walletSessionRepository;

    public SocialUseCase(SocialRepository socialRepository, ProfileRepository profileRepository, WalletSessionRepository walletSessionRepository) {
        Intrinsics.checkNotNullParameter(socialRepository, "socialRepository");
        Intrinsics.checkNotNullParameter(profileRepository, "profileRepository");
        Intrinsics.checkNotNullParameter(walletSessionRepository, "walletSessionRepository");
        this.socialRepository = socialRepository;
        this.profileRepository = profileRepository;
        this.walletSessionRepository = walletSessionRepository;
    }

    public final Observable<Result<SocialDomain>> getAllSocials(ProfileData profileData) {
        Intrinsics.checkNotNullParameter(profileData, "profileData");
        Observable<Result<SocialDomain>> allSocial = this.socialRepository.getAllSocial(profileData);
        final SocialUseCase$getAllSocials$1 socialUseCase$getAllSocials$1 = new SocialUseCase$getAllSocials$1(this, profileData);
        Observable flatMap = allSocial.flatMap(new Function() { // from class: com.iMe.feature.socialMedias.SocialUseCase$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource allSocials$lambda$0;
                allSocials$lambda$0 = SocialUseCase.getAllSocials$lambda$0(Function1.this, obj);
                return allSocials$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "fun getAllSocials(profil…(profileData, it) }\n    }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource getAllSocials$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final PublishRelay<SocialAuthResult> listenSocialChanges() {
        return this.socialRepository.listenSocialChanges();
    }

    public final Observable<Result<Boolean>> logout(SocialNetwork socialNetwork) {
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        return this.socialRepository.logoutSocial(this.profileRepository.getCurrentProfile(), socialNetwork);
    }

    public final Observable<Result<SocialAuthDomain>> startSocialAuth(SocialType socialType, long j) {
        Intrinsics.checkNotNullParameter(socialType, "socialType");
        Observable<Result<SessionTokens>> refreshToken = this.walletSessionRepository.refreshToken();
        final SocialUseCase$startSocialAuth$1 socialUseCase$startSocialAuth$1 = new SocialUseCase$startSocialAuth$1(this, j, socialType);
        Observable flatMap = refreshToken.flatMap(new Function() { // from class: com.iMe.feature.socialMedias.SocialUseCase$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource startSocialAuth$lambda$1;
                startSocialAuth$lambda$1 = SocialUseCase.startSocialAuth$lambda$1(Function1.this, obj);
                return startSocialAuth$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "fun startSocialAuth(soci… profileId, socialType) }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource startSocialAuth$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final Observable<Result<SocialAuthDomain>> getSocialAuthData(SessionTokens sessionTokens, long j, SocialType socialType) {
        Intrinsics.checkNotNullParameter(socialType, "socialType");
        String socialAuthUrl = SocialAuthHelper.INSTANCE.getSocialAuthUrl(j, socialType);
        MetadataInterceptor.Companion companion = MetadataInterceptor.Companion;
        String token = sessionTokens != null ? sessionTokens.getToken() : null;
        if (token == null) {
            token = "";
        }
        Observable just = Observable.just(new SocialAuthDomain(socialType, socialAuthUrl, companion.formatAuthToken(token)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        final SocialUseCase$getSocialAuthData$1 socialUseCase$getSocialAuthData$1 = new SocialUseCase$getSocialAuthData$1(Result.Companion);
        Observable<Result<SocialAuthDomain>> map = just.map(new Function() { // from class: com.iMe.feature.socialMedias.SocialUseCase$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result socialAuthData$lambda$2;
                socialAuthData$lambda$2 = SocialUseCase.getSocialAuthData$lambda$2(Function1.this, obj);
                return socialAuthData$lambda$2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "SocialAuthDomain(\n      …esult.Companion::success)");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getSocialAuthData$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<SocialDomain>> updateSocialAccess(ProfileData profileData, Result<SocialDomain> result) {
        SocialDomain copy$default;
        Result<SocialDomain> success;
        boolean isMyProfile = this.profileRepository.isMyProfile(profileData);
        SocialDomain data = result.getData();
        if (data != null && (copy$default = SocialDomain.copy$default(data, isMyProfile, null, 2, null)) != null && (success = Result.Companion.success(copy$default)) != null) {
            result = success;
        }
        Observable<Result<SocialDomain>> just = Observable.just(result);
        Intrinsics.checkNotNullExpressionValue(just, "just(result.data?.copy(h…)?.toSuccess() ?: result)");
        return just;
    }
}
