package com.iMe.storage.data.repository.kikliko;

import com.iMe.storage.data.network.model.response.kikliko.SearchResponse;
import com.iMe.storage.data.network.model.response.kikliko.SearchResultResponse;
import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: KiklikoRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class KiklikoRepositoryImpl$searchByKeyword$1 extends Lambda implements Function1<SearchResultResponse, Result<? extends SearchResponse>> {
    public static final KiklikoRepositoryImpl$searchByKeyword$1 INSTANCE = new KiklikoRepositoryImpl$searchByKeyword$1();

    KiklikoRepositoryImpl$searchByKeyword$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<SearchResponse> invoke(SearchResultResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(it.getData());
    }
}