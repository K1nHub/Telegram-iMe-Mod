package com.iMe.storage.domain.interactor.socialEmotion;

import com.iMe.storage.data.network.model.request.reaction.ReactionMessageResult;
import com.iMe.storage.data.network.model.request.reaction.ReactionRequestData;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.socialEmotion.ReactionRepository;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ReactionInteractor.kt */
/* loaded from: classes3.dex */
public final class ReactionInteractor {
    private final ReactionRepository repository;
    private final SchedulersProvider schedulersProvider;

    public ReactionInteractor(ReactionRepository repository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.repository = repository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<ReactionMessageResult>> prepareLikeMessage(ReactionRequestData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Observable<Result<ReactionMessageResult>> subscribeOn = this.repository.prepareLikeMessage(data).startWith((Observable<Result<ReactionMessageResult>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "repository.prepareLikeMe…(schedulersProvider.io())");
        return subscribeOn;
    }
}
