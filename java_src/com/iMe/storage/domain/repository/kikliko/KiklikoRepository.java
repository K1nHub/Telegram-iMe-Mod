package com.iMe.storage.domain.repository.kikliko;

import com.iMe.storage.data.network.model.response.kikliko.SearchResponse;
import com.iMe.storage.data.network.model.response.kikliko.TagResponse;
import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: KiklikoRepository.kt */
/* loaded from: classes4.dex */
public interface KiklikoRepository {
    Observable<Result<List<TagResponse>>> getTags();

    Observable<Result<SearchResponse>> getTrending(int i);

    Observable<Result<Boolean>> report(String str, String str2);

    Observable<Result<SearchResponse>> searchByKeyword(String str, int i);

    Observable<Result<SearchResponse>> searchByTag(String str, int i);

    Observable<Result<Boolean>> share(String str);

    Observable<Result<Boolean>> view(String str);
}
