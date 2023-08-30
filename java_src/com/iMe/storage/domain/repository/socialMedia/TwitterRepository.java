package com.iMe.storage.domain.repository.socialMedia;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import com.iMe.storage.domain.model.twitter.TwitterRefreshTokenData;
import com.iMe.storage.domain.model.twitter.TwitterUserInfo;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: TwitterRepository.kt */
/* loaded from: classes3.dex */
public interface TwitterRepository {
    Observable<Result<Boolean>> acceptConnection(long j, long j2);

    Observable<Result<TwitterRefreshTokenData>> getRefreshToken(long j);

    Observable<Result<TwitterProfileInfo>> getUserByUsername(String str);

    Observable<Result<List<TweetInfo>>> getUserTweets(long j, long j2, Long l);

    Observable<Result<List<TwitterUserInfo>>> searchUsersByUsername(String str, int i);

    Observable<Result<Boolean>> sendInvite(long j, long j2);
}
