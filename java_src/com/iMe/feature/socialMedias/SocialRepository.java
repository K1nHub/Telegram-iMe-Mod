package com.iMe.feature.socialMedias;

import com.iMe.feature.profile.ProfileData;
import com.iMe.model.twitter.SocialAuthResult;
import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
import kotlin.coroutines.Continuation;
/* compiled from: SocialRepository.kt */
/* loaded from: classes4.dex */
public interface SocialRepository {
    Observable<Result<SocialDomain>> getAllSocial(ProfileData profileData);

    Object getAuthResult(String str, Continuation<? super SocialAuthResult> continuation);

    Observable<Result<Boolean>> logoutSocial(ProfileData profileData, SocialNetwork socialNetwork);
}
