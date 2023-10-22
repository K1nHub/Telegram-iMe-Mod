package com.iMe.storage.domain.repository.translate;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.translation.Translation;
import com.iMe.storage.domain.model.translation.TranslationLanguage;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: TranslationRepository.kt */
/* loaded from: classes3.dex */
public interface TranslationRepository {
    Observable<Result<List<TranslationLanguage>>> languages();

    Observable<Result<Translation>> translate(String str, String str2, String str3);
}
