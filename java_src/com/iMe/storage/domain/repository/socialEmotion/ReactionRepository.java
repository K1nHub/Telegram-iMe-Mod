package com.iMe.storage.domain.repository.socialEmotion;

import com.iMe.storage.data.network.model.request.reaction.ReactionMessageResult;
import com.iMe.storage.data.network.model.request.reaction.ReactionRequestData;
import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
/* compiled from: ReactionRepository.kt */
/* loaded from: classes4.dex */
public interface ReactionRepository {
    Observable<Result<ReactionMessageResult>> prepareLikeMessage(ReactionRequestData reactionRequestData);
}
