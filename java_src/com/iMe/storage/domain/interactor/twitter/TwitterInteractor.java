package com.iMe.storage.domain.interactor.twitter;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.PreferenceTwitterTelegramIdMappedData;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import com.iMe.storage.domain.model.twitter.TwitterAccountData;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import com.iMe.storage.domain.model.twitter.TwitterRefreshTokenData;
import com.iMe.storage.domain.model.twitter.TwitterUserInfo;
import com.iMe.storage.domain.repository.socialMedia.TwitterRepository;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterInteractor.kt */
/* loaded from: classes3.dex */
public final class TwitterInteractor {
    private final SchedulersProvider schedulersProvider;
    private final TwitterPreferenceHelper twitterPreferenceHelper;
    private final TwitterRepository twitterRepository;

    public TwitterInteractor(SchedulersProvider schedulersProvider, TwitterRepository twitterRepository, TwitterPreferenceHelper twitterPreferenceHelper) {
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(twitterRepository, "twitterRepository");
        Intrinsics.checkNotNullParameter(twitterPreferenceHelper, "twitterPreferenceHelper");
        this.schedulersProvider = schedulersProvider;
        this.twitterRepository = twitterRepository;
        this.twitterPreferenceHelper = twitterPreferenceHelper;
    }

    public final Observable<Result<Boolean>> acceptConnection(long j, long j2) {
        return handleTokenError(this.twitterRepository.acceptConnection(j, j2), this.twitterRepository.acceptConnection(j, j2), j2);
    }

    public final Observable<Result<List<TweetInfo>>> getUserTweets(long j, long j2, Long l) {
        Observable<Result<List<TweetInfo>>> subscribeOn = this.twitterRepository.getUserTweets(j, j2, l).startWith((Observable<Result<List<TweetInfo>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<TwitterUserInfo>>> searchUsersByUsername(String usernameQuery, int i) {
        Intrinsics.checkNotNullParameter(usernameQuery, "usernameQuery");
        Observable<Result<List<TwitterUserInfo>>> subscribeOn = this.twitterRepository.searchUsersByUsername(usernameQuery, i).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<TwitterProfileInfo>> getUserByUsername(String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        Observable<Result<TwitterProfileInfo>> subscribeOn = this.twitterRepository.getUserByUsername(username).startWith((Observable<Result<TwitterProfileInfo>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> sendInvite(long j, long j2) {
        Observable<Result<Boolean>> subscribeOn = this.twitterRepository.sendInvite(j, j2).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    private final <T> Observable<Result<T>> handleTokenError(Observable<Result<T>> observable, final Observable<Result<T>> observable2, final long j) {
        final IErrorStatus[] iErrorStatusArr = {FirebaseFunctionsErrorHandler.TwitterErrorStatus.WRONG_TWITTER_ACCESS_TOKEN_ERROR};
        Observable<Result<T>> observable3 = (Observable<Result<T>>) observable.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends T>, ObservableSource<? extends Result<? extends T>>>() { // from class: com.iMe.storage.domain.interactor.twitter.TwitterInteractor$handleTokenError$$inlined$flatMapError$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke((Result) ((Result) obj));
            }

            public final ObservableSource<? extends Result<? extends T>> invoke(Result<? extends T> result) {
                boolean contains;
                TwitterRepository twitterRepository;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    return Observable.just(result);
                }
                if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    contains = ArraysKt___ArraysKt.contains(iErrorStatusArr, error.getError().getStatus());
                    if (contains) {
                        error.getError();
                        twitterRepository = this.twitterRepository;
                        Observable<Result<TwitterRefreshTokenData>> refreshToken = twitterRepository.getRefreshToken(j);
                        schedulersProvider = this.schedulersProvider;
                        Observable<Result<TwitterRefreshTokenData>> subscribeOn = refreshToken.subscribeOn(schedulersProvider.mo717io());
                        Intrinsics.checkNotNullExpressionValue(subscribeOn, "twitterRepository\n      …(schedulersProvider.io())");
                        final Observable observable4 = observable2;
                        final TwitterInteractor twitterInteractor = this;
                        final long j2 = j;
                        ObservableSource<? extends Result<? extends T>> flatMap = subscribeOn.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends TwitterRefreshTokenData>, ObservableSource<? extends Result<? extends T>>>() { // from class: com.iMe.storage.domain.interactor.twitter.TwitterInteractor$handleTokenError$lambda$3$$inlined$flatMapSuccess$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final ObservableSource<? extends Result<? extends T>> invoke(Result<? extends TwitterRefreshTokenData> result2) {
                                SchedulersProvider schedulersProvider2;
                                TwitterPreferenceHelper twitterPreferenceHelper;
                                Intrinsics.checkNotNullParameter(result2, "result");
                                boolean z = result2 instanceof Result.Success;
                                TwitterAccountData twitterAccountData = null;
                                if (!z) {
                                    if (result2 instanceof Result.Error) {
                                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                                        return Observable.just(error$default);
                                    }
                                    return Observable.empty();
                                }
                                if (z) {
                                    TwitterRefreshTokenData twitterRefreshTokenData = (TwitterRefreshTokenData) ((Result.Success) result2).getData();
                                    twitterPreferenceHelper = twitterInteractor.twitterPreferenceHelper;
                                    PreferenceTwitterTelegramIdMappedData accountsData = twitterPreferenceHelper.getAccountsData();
                                    TwitterAccountData dataByTelegramId = accountsData.getDataByTelegramId(j2);
                                    if (dataByTelegramId != null) {
                                        twitterAccountData = dataByTelegramId.copy((r16 & 1) != 0 ? dataByTelegramId.twitterId : 0L, (r16 & 2) != 0 ? dataByTelegramId.twitterUsername : null, (r16 & 4) != 0 ? dataByTelegramId.accessToken : twitterRefreshTokenData.getAccessToken(), (r16 & 8) != 0 ? dataByTelegramId.refreshToken : twitterRefreshTokenData.getRefreshToken(), (r16 & 16) != 0 ? dataByTelegramId.tokenValidUntil : TimeUnit.SECONDS.toMillis(twitterRefreshTokenData.getExpiresIn()) + DateExtKt.now());
                                    }
                                    if (twitterAccountData != null) {
                                        accountsData.put(j2, twitterAccountData);
                                    }
                                }
                                Observable observable5 = Observable.this;
                                schedulersProvider2 = twitterInteractor.schedulersProvider;
                                Observable<T> subscribeOn2 = observable5.subscribeOn(schedulersProvider2.mo717io());
                                Intrinsics.checkNotNullExpressionValue(subscribeOn2, "onSuccessObservable.subs…(schedulersProvider.io())");
                                return subscribeOn2;
                            }
                        }));
                        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                        return flatMap;
                    }
                    Result error$default = Result.Companion.error$default(Result.Companion, error.getError(), null, 2, null);
                    Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapError");
                    Observable just = Observable.just(error$default);
                    Intrinsics.checkNotNullExpressionValue(just, "just(Result.error<R>(result.error) as R)");
                    return just;
                }
                return Observable.empty();
            }
        }));
        Intrinsics.checkNotNullExpressionValue(observable3, "vararg errorStatus: IErr…e.empty()\n        }\n    }");
        return observable3;
    }
}
