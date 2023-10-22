package com.iMe.storage.domain.repository.socialMedia;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import com.iMe.storage.domain.model.twitter.TwitterUserInfo;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: TwitterRepository.kt */
/* loaded from: classes3.dex */
public interface TwitterRepository {
    Observable<Result<List<TweetInfo>>> getUserTweets(long j, long j2, Long l);

    Observable<Result<List<TwitterUserInfo>>> searchUsersByUsername(String str, int i);
}
