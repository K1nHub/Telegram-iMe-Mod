package com.smedialink.storage.data.repository.kikliko;

import com.smedialink.storage.data.network.model.response.kikliko.SearchResponse;
import com.smedialink.storage.data.network.model.response.kikliko.SearchResultResponse;
import com.smedialink.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: KiklikoRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class KiklikoRepositoryImpl$getTrending$1 extends Lambda implements Function1<SearchResultResponse, Result<? extends SearchResponse>> {
    public static final KiklikoRepositoryImpl$getTrending$1 INSTANCE = new KiklikoRepositoryImpl$getTrending$1();

    KiklikoRepositoryImpl$getTrending$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<SearchResponse> invoke(SearchResultResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(it.getData());
    }
}
