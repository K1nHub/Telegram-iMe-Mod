package com.iMe.feature.socialMedias;

import com.iMe.feature.cacheManager.CacheManagerStrategy;
import com.iMe.feature.profile.ProfileData;
import com.iMe.model.twitter.SocialAuthResult;
import com.iMe.storage.data.locale.p026db.dao.minor.social.SocialNetworkDao;
import com.iMe.storage.data.locale.p026db.model.social.SocialNetworkDb;
import com.iMe.storage.data.network.api.own.SocialApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
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
import kotlin.Unit;
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
    public Observable<Result<SocialDomain>> getAllSocial(final ProfileData profileData) {
        Intrinsics.checkNotNullParameter(profileData, "profileData");
        return CacheManagerStrategy.fetch$default(CacheManagerStrategy.INSTANCE, getSocialFromDb(profileData.getProfileId()), getSocialFromNet(profileData.getProfileId()), new Function1<Result<? extends SocialDomain>, Unit>() { // from class: com.iMe.feature.socialMedias.SocialRepositoryImpl$getAllSocial$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SocialDomain> result) {
                invoke2((Result<SocialDomain>) result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Result<SocialDomain> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                SocialRepositoryImpl.this.saveInDb(result, profileData.getProfileId());
            }
        }, false, 8, null);
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
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = doOnComplete.map(new C1376x2827ffdb(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.feature.socialMedias.SocialRepositoryImpl$logoutSocial$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new C1376x2827ffdb(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.feature.socialMedias.SocialRepositoryImpl$logoutSocial$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void logoutSocial$lambda$0(SocialRepositoryImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.authResultRelay.accept(SocialAuthResult.Logout.INSTANCE);
    }

    @Override // com.iMe.feature.socialMedias.SocialRepository
    public Object getAuthResult(String str, Continuation<? super SocialAuthResult> continuation) {
        return BuildersKt.withContext(this.defaultDispatcher, new SocialRepositoryImpl$getAuthResult$2(str, this, null), continuation);
    }

    private final Observable<Result<SocialDomain>> getSocialFromDb(long j) {
        Single<List<SocialNetworkDb>> subscribeOn = this.socialNetworkDao.getAllByProfileId(j).subscribeOn(Schedulers.m992io());
        final SocialRepositoryImpl$getSocialFromDb$1 socialRepositoryImpl$getSocialFromDb$1 = new Function1<List<? extends SocialNetworkDb>, Result<? extends SocialDomain>>() { // from class: com.iMe.feature.socialMedias.SocialRepositoryImpl$getSocialFromDb$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Result<SocialDomain> invoke2(List<SocialNetworkDb> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.success(SocialDataMapperKt.toDomain(it));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Result<? extends SocialDomain> invoke(List<? extends SocialNetworkDb> list) {
                return invoke2((List<SocialNetworkDb>) list);
            }
        };
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
        Observable<ApiBaseResponse<SocialNetworksRaw>> subscribeOn = this.socialMediasApi.getAllSocial(new SocialBodyRequest(String.valueOf(j), null, null, 6, null)).subscribeOn(Schedulers.m992io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "socialMediasApi\n        …scribeOn(Schedulers.io())");
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = subscribeOn.map(new C1376x2827ffdb(new Function1<ApiBaseResponse<SocialNetworksRaw>, Result<? extends SocialDomain>>() { // from class: com.iMe.feature.socialMedias.SocialRepositoryImpl$getSocialFromNet$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<SocialDomain> invoke(ApiBaseResponse<SocialNetworksRaw> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(SocialDataMapperKt.toDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<SocialDomain>> onErrorReturn = map.onErrorReturn(new C1376x2827ffdb(new Function1<Throwable, Result<? extends SocialDomain>>() { // from class: com.iMe.feature.socialMedias.SocialRepositoryImpl$getSocialFromNet$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<SocialDomain> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
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
