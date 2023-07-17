package com.iMe.storage.data.repository.socialMedias;

import com.iMe.storage.data.network.api.own.TwitterApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.twitter.ChangeTwitterConnectionStatusRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterFeedRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterInviteRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterRefreshTokenRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterSearchByUsernameRequest;
import com.iMe.storage.data.network.model.request.twitter.TwitterUserByUsernameRequest;
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
import java.util.List;
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
        Observable<R> map = this.twitterApi.getRefreshToken(new TwitterRefreshTokenRequest(refreshToken)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getRefreshToken$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TwitterRefreshTokenData>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getRefreshToken$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.socialMedia.TwitterRepository
    public Observable<Result<Boolean>> acceptConnection(long j, long j2) {
        Observable<R> map = this.twitterApi.acceptConnection(new ChangeTwitterConnectionStatusRequest(String.valueOf(j), String.valueOf(j2))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$acceptConnection$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$acceptConnection$$inlined$handleError$1(this.errorHandler)));
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
        Observable<R> map = twitterApi.getUserTweets(new TwitterFeedRequest(valueOf, l2, accessToken)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getUserTweets$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<TweetInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getUserTweets$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.socialMedia.TwitterRepository
    public Observable<Result<List<TwitterUserInfo>>> searchUsersByUsername(String usernameQuery, int i) {
        Intrinsics.checkNotNullParameter(usernameQuery, "usernameQuery");
        Observable<R> map = this.twitterApi.searchUsersByUsername(new TwitterSearchByUsernameRequest(usernameQuery, i)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1933x2fcdcf3(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<TwitterUserInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1932x3fa67a0e(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.socialMedia.TwitterRepository
    public Observable<Result<TwitterProfileInfo>> getUserByUsername(String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        Observable<R> map = this.twitterApi.getUserByUsername(new TwitterUserByUsernameRequest(username)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getUserByUsername$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<TwitterProfileInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$getUserByUsername$$inlined$handleError$1(this.errorHandler)));
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
        Observable<R> map = twitterApi.sendInvite(new TwitterInviteRequest(accessToken, String.valueOf(j2))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$sendInvite$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new TwitterRepositoryImpl$sendInvite$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    private final TwitterAccountData getTwitterAccountDataById(long j) {
        return this.twitterPreferenceHelper.getAccountsData().getDataByTelegramId(j);
    }
}
