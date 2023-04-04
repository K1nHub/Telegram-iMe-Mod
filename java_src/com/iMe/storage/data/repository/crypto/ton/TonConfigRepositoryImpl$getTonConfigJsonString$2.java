package com.iMe.storage.data.repository.crypto.ton;

import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* compiled from: TonConfigRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class TonConfigRepositoryImpl$getTonConfigJsonString$2 extends Lambda implements Function1<Response, Result<? extends String>> {
    public static final TonConfigRepositoryImpl$getTonConfigJsonString$2 INSTANCE = new TonConfigRepositoryImpl$getTonConfigJsonString$2();

    TonConfigRepositoryImpl$getTonConfigJsonString$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<String> invoke(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        ResponseBody body = response.body();
        String string = body != null ? body.string() : null;
        if (string == null) {
            string = "";
        }
        return Result.Companion.success(string);
    }
}
