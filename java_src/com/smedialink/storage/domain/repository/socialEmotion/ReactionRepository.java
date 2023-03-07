package com.smedialink.storage.domain.repository.socialEmotion;

import com.smedialink.storage.data.network.model.request.reaction.ReactionMessageResult;
import com.smedialink.storage.data.network.model.request.reaction.ReactionRequestData;
import com.smedialink.storage.domain.model.Result;
import io.reactivex.Observable;
/* compiled from: ReactionRepository.kt */
/* loaded from: classes3.dex */
public interface ReactionRepository {
    Observable<Result<ReactionMessageResult>> prepareLikeMessage(ReactionRequestData reactionRequestData);
}
