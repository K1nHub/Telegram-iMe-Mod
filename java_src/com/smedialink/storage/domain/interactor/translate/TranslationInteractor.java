package com.smedialink.storage.domain.interactor.translate;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.translation.Translation;
import com.smedialink.storage.domain.model.translation.TranslationLanguage;
import com.smedialink.storage.domain.repository.translate.TranslationRepository;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TranslationInteractor.kt */
/* loaded from: classes3.dex */
public final class TranslationInteractor {
    private final SchedulersProvider schedulersProvider;
    private final TranslationRepository translationRepository;

    public TranslationInteractor(TranslationRepository translationRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(translationRepository, "translationRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.translationRepository = translationRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<Translation>> translate(String text, String targetLanguage, String str) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(targetLanguage, "targetLanguage");
        Observable<Result<Translation>> subscribeOn = this.translationRepository.translate(text, str, targetLanguage).startWith((Observable<Result<Translation>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "translationRepository\n  …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<TranslationLanguage>>> languages() {
        Observable<Result<List<TranslationLanguage>>> subscribeOn = this.translationRepository.languages().startWith((Observable<Result<List<TranslationLanguage>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "translationRepository\n  …(schedulersProvider.io())");
        return subscribeOn;
    }
}
