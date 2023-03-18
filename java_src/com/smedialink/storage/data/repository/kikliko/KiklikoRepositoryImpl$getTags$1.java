package com.smedialink.storage.data.repository.kikliko;

import com.smedialink.storage.data.network.model.response.kikliko.GetTagsResponse;
import com.smedialink.storage.data.network.model.response.kikliko.TagResponse;
import com.smedialink.storage.domain.model.Result;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: KiklikoRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class KiklikoRepositoryImpl$getTags$1 extends Lambda implements Function1<GetTagsResponse, Result<? extends List<? extends TagResponse>>> {
    public static final KiklikoRepositoryImpl$getTags$1 INSTANCE = new KiklikoRepositoryImpl$getTags$1();

    KiklikoRepositoryImpl$getTags$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<TagResponse>> invoke(GetTagsResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(it.getData());
    }
}
