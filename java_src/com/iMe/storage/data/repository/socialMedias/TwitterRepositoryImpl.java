package com.iMe.storage.data.repository.socialMedias;

import com.iMe.storage.data.mapper.twitter.TweetInfoMapperKt;
import com.iMe.storage.data.mapper.twitter.TwitterProfileInfoMapperKt;
import com.iMe.storage.data.mapper.twitter.TwitterRefreshTokenDataMapperKt;
import com.iMe.storage.data.mapper.twitter.TwitterUserInfoMapperKt;
import com.iMe.storage.data.network.api.own.TwitterApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.twitter.ChangeTwitterConnectionStatusRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterFeedRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterInviteRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterRefreshTokenRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterSearchByUsernameRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterUserByUsernameRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.twitter.RefreshTokenResponse;
import com.iMe.storage.data.network.model.response.twitter.TwitterFeedResponse;
import com.iMe.storage.data.network.model.response.twitter.TwitterProfileResponse;
import com.iMe.storage.data.network.model.response.twitter.TwitterUserResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import com.iMe.storage.domain.model.twitter.TwitterAccountData;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import com.iMe.storage.domain.model.twitter.TwitterRefreshTokenData;
import com.iMe.storage.domain.model.twitter.TwitterUserInfo;
import com.iMe.storage.domain.repository.socialMedia.TwitterRepository;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class TwitterRepositoryImpl implements TwitterRepository {
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final TwitterApi twitterApi;
    private final TwitterPreferenceHelper twitterPreferenceHelper;

    public TwitterRepositoryImpl(ApiErrorHandler errorHandler, FirebaseFunctionsErrorHandler firebaseErrorHandler, TwitterApi twitterApi, TwitterPreferenceHelper twitterPreferenceHelper) {
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(twitterApi, "twitterApi");
        Intrinsics.checkNotNullParameter(twitterPreferenceHelper, "twitterPreferenceHelper");
        this.errorHandler = errorHandler;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.twitterApi = twitterApi;
        this.twitterPreferenceHelper = twitterPreferenceHelper;
    }

    @Override // com.iMe.storage.domain.repository.socialMedia.TwitterRepository
    public Observable<Result<TwitterRefreshTokenData>> getRefreshToken(long j) {
        TwitterAccountData twitterAccountDataById = getTwitterAccountDataById(j);
        String refreshToken = twitterAccountDataById != null ? twitterAccountDataById.getRefreshToken() : null;
        if (refreshToken == null) {
            refreshToken = "";
        }
        Observable<ApiBaseResponse<RefreshTokenResponse>> refreshToken2 = this.twitterApi.getRefreshToken(new TwitterRefreshTokenRequest(refreshToken));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = refreshToken2.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<RefreshTokenResponse>, Result<? extends TwitterRefreshTokenData>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$getRefreshToken$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TwitterRefreshTokenData> invoke(ApiBaseResponse<RefreshTokenResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(TwitterRefreshTokenDataMapperKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<TwitterRefreshTokenData>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends TwitterRefreshTokenData>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$getRefreshToken$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TwitterRefreshTokenData> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.socialMedia.TwitterRepository
    public Observable<Result<Boolean>> acceptConnection(long j, long j2) {
        Observable<ApiBaseResponse<Object>> acceptConnection = this.twitterApi.acceptConnection(new ChangeTwitterConnectionStatusRequest(String.valueOf(j), String.valueOf(j2)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = acceptConnection.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$acceptConnection$$inlined$mapSuccess$1
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
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$acceptConnection$$inlined$handleError$1
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

    @Override // com.iMe.storage.domain.repository.socialMedia.TwitterRepository
    public Observable<Result<List<TweetInfo>>> getUserTweets(long j, long j2, Long l) {
        TwitterApi twitterApi = this.twitterApi;
        String valueOf = String.valueOf(j2);
        String l2 = l != null ? l.toString() : null;
        TwitterAccountData twitterAccountDataById = getTwitterAccountDataById(j);
        String accessToken = twitterAccountDataById != null ? twitterAccountDataById.getAccessToken() : null;
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<ApiBaseResponse<TwitterFeedResponse>> userTweets = twitterApi.getUserTweets(new TwitterFeedRequest(valueOf, l2, accessToken));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = userTweets.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TwitterFeedResponse>, Result<? extends List<? extends TweetInfo>>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$getUserTweets$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TweetInfo>> invoke(ApiBaseResponse<TwitterFeedResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(TweetInfoMapperKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<TweetInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends TweetInfo>>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$getUserTweets$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TweetInfo>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.socialMedia.TwitterRepository
    public Observable<Result<List<TwitterUserInfo>>> searchUsersByUsername(String usernameQuery, int i) {
        Intrinsics.checkNotNullParameter(usernameQuery, "usernameQuery");
        Observable<ApiBaseResponse<List<TwitterUserResponse>>> searchUsersByUsername = this.twitterApi.searchUsersByUsername(new TwitterSearchByUsernameRequest(usernameQuery, i));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = searchUsersByUsername.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<List<? extends TwitterUserResponse>>, Result<? extends List<? extends TwitterUserInfo>>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$searchUsersByUsername$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TwitterUserInfo>> invoke(ApiBaseResponse<List<? extends TwitterUserResponse>> response) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                List<? extends TwitterUserResponse> payload = response.getPayload();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(payload, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (TwitterUserResponse twitterUserResponse : payload) {
                    arrayList.add(TwitterUserInfoMapperKt.mapToDomain(twitterUserResponse));
                }
                return Result.Companion.success(arrayList);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<TwitterUserInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends TwitterUserInfo>>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$searchUsersByUsername$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TwitterUserInfo>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.socialMedia.TwitterRepository
    public Observable<Result<TwitterProfileInfo>> getUserByUsername(String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        Observable<ApiBaseResponse<TwitterProfileResponse>> userByUsername = this.twitterApi.getUserByUsername(new TwitterUserByUsernameRequest(username));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = userByUsername.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TwitterProfileResponse>, Result<? extends TwitterProfileInfo>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$getUserByUsername$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TwitterProfileInfo> invoke(ApiBaseResponse<TwitterProfileResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(TwitterProfileInfoMapperKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<TwitterProfileInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends TwitterProfileInfo>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$getUserByUsername$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TwitterProfileInfo> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.socialMedia.TwitterRepository
    public Observable<Result<Boolean>> sendInvite(long j, long j2) {
        TwitterAccountData twitterAccountDataById = getTwitterAccountDataById(j);
        TwitterApi twitterApi = this.twitterApi;
        String accessToken = twitterAccountDataById != null ? twitterAccountDataById.getAccessToken() : null;
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<ApiBaseResponse<Object>> sendInvite = twitterApi.sendInvite(new TwitterInviteRequest(accessToken, String.valueOf(j2)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendInvite.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$sendInvite$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(Boolean.TRUE);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.socialMedias.TwitterRepositoryImpl$sendInvite$$inlined$handleError$1
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

    private final TwitterAccountData getTwitterAccountDataById(long j) {
        return this.twitterPreferenceHelper.getAccountsData().getDataByTelegramId(j);
    }
}
