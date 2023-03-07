package com.smedialink.storage.domain.repository.firebase;

import com.smedialink.storage.data.utils.system.AndroidActivityHolder;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.google.DynamicLinkData;
import io.reactivex.Observable;
/* compiled from: DynamicLinksRepository.kt */
/* loaded from: classes3.dex */
public interface DynamicLinksRepository {
    Observable<Result<DynamicLinkData>> getLink(AndroidActivityHolder androidActivityHolder, String str);
}
