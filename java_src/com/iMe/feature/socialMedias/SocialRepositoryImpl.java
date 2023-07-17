package com.iMe.feature.socialMedias;

import com.iMe.feature.cacheManager.CacheManagerStrategy;
import com.iMe.feature.profile.ProfileData;
import com.iMe.model.twitter.SocialAuthResult;
import com.iMe.storage.data.locale.p027db.dao.minor.social.SocialNetworkDao;
import com.iMe.storage.data.locale.p027db.model.social.SocialNetworkDb;
import com.iMe.storage.data.network.api.own.SocialApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.social.SocialBodyRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.social.SocialNetworksRaw;
import com.iMe.storage.domain.model.Result;
import com.jakewharton.rxrelay2.PublishRelay;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.functions.Action;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import timber.log.Timber;
/* compiled from: SocialRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class SocialRepositoryImpl implements SocialRepository {
    private final PublishRelay<SocialAuthResult> authResultRelay;
    private final CoroutineDispatcher defaultDispatcher;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final SocialApi socialMediasApi;
    private final SocialNetworkDao socialNetworkDao;

    public SocialRepositoryImpl(SocialApi socialMediasApi, ApiErrorHandler errorHandler, FirebaseFunctionsErrorHandler firebaseErrorHandler, SocialNetworkDao socialNetworkDao) {
        Intrinsics.checkNotNullParameter(socialMediasApi, "socialMediasApi");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(socialNetworkDao, "socialNetworkDao");
        this.socialMediasApi = socialMediasApi;
        this.errorHandler = errorHandler;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.socialNetworkDao = socialNetworkDao;
        PublishRelay<SocialAuthResult> create = PublishRelay.create();
        Intrinsics.checkNotNullExpressionValue(create, "create<SocialAuthResult>()");
        this.authResultRelay = create;
        this.defaultDispatcher = Dispatchers.getDefault();
    }

    @Override // com.iMe.feature.socialMedias.SocialRepository
    public Observable<Result<SocialDomain>> getAllSocial(ProfileData profileData) {
        Intrinsics.checkNotNullParameter(profileData, "profileData");
        return CacheManagerStrategy.fetch$default(CacheManagerStrategy.INSTANCE, getSocialFromDb(profileData.getProfileId()), getSocialFromNet(profileData.getProfileId()), new SocialRepositoryImpl$getAllSocial$1(this, profileData), false, 8, null);
    }

    @Override // com.iMe.feature.socialMedias.SocialRepository
    public Observable<Result<Boolean>> logoutSocial(ProfileData profileData, SocialNetwork socialNetwork) {
        Intrinsics.checkNotNullParameter(profileData, "profileData");
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        Observable<ApiBaseResponse<Object>> doOnComplete = this.socialMediasApi.logoutSocial(new SocialBodyRequest(String.valueOf(profileData.getProfileId()), socialNetwork.getSocialElementId(), socialNetwork.getSocial().name())).doOnComplete(new Action() { // from class: com.iMe.feature.socialMedias.SocialRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                SocialRepositoryImpl.logoutSocial$lambda$0(SocialRepositoryImpl.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "socialMediasApi\n        …ocialAuthResult.Logout) }");
        Observable<R> map = doOnComplete.map(new C1463x2827ffdb(new SocialRepositoryImpl$logoutSocial$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new C1463x2827ffdb(new SocialRepositoryImpl$logoutSocial$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void logoutSocial$lambda$0(SocialRepositoryImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.authResultRelay.accept(SocialAuthResult.Logout.INSTANCE);
    }

    @Override // com.iMe.feature.socialMedias.SocialRepository
    public PublishRelay<SocialAuthResult> listenSocialChanges() {
        return this.authResultRelay;
    }

    @Override // com.iMe.feature.socialMedias.SocialRepository
    public Object getAuthResult(String str, Continuation<? super SocialAuthResult> continuation) {
        return BuildersKt.withContext(this.defaultDispatcher, new SocialRepositoryImpl$getAuthResult$2(str, this, null), continuation);
    }

    private final Observable<Result<SocialDomain>> getSocialFromDb(long j) {
        Single<List<SocialNetworkDb>> subscribeOn = this.socialNetworkDao.getAllByProfileId(j).subscribeOn(Schedulers.m679io());
        final SocialRepositoryImpl$getSocialFromDb$1 socialRepositoryImpl$getSocialFromDb$1 = SocialRepositoryImpl$getSocialFromDb$1.INSTANCE;
        Observable<Result<SocialDomain>> observable = subscribeOn.map(new Function() { // from class: com.iMe.feature.socialMedias.SocialRepositoryImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result socialFromDb$lambda$2;
                socialFromDb$lambda$2 = SocialRepositoryImpl.getSocialFromDb$lambda$2(Function1.this, obj);
                return socialFromDb$lambda$2;
            }
        }).toObservable();
        Intrinsics.checkNotNullExpressionValue(observable, "socialNetworkDao\n       …          .toObservable()");
        return observable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result getSocialFromDb$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    private final Observable<Result<SocialDomain>> getSocialFromNet(long j) {
        Observable<ApiBaseResponse<SocialNetworksRaw>> subscribeOn = this.socialMediasApi.getAllSocial(new SocialBodyRequest(String.valueOf(j), null, null, 6, null)).subscribeOn(Schedulers.m679io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "socialMediasApi\n        …scribeOn(Schedulers.io())");
        Observable<R> map = subscribeOn.map(new C1463x2827ffdb(new SocialRepositoryImpl$getSocialFromNet$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<SocialDomain>> onErrorReturn = map.onErrorReturn(new C1463x2827ffdb(new SocialRepositoryImpl$getSocialFromNet$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveInDb(Result<SocialDomain> result, long j) {
        SocialDomain data = result.getData();
        if (data != null) {
            Timber.m9d("GetAllSocial cached in Db", new Object[0]);
            this.socialNetworkDao.clearAndInsertAll(j, SocialDataMapperKt.toDb(data, j));
        }
    }
}
