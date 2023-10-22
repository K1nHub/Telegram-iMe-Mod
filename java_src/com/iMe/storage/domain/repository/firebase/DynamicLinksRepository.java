package com.iMe.storage.domain.repository.firebase;

import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.google.DynamicLinkData;
import io.reactivex.Observable;
/* compiled from: DynamicLinksRepository.kt */
/* loaded from: classes3.dex */
public interface DynamicLinksRepository {
    Observable<Result<DynamicLinkData>> getLink(AndroidActivityHolder androidActivityHolder, String str);
}
