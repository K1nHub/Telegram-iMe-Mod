package com.smedialink.storage.data.utils.extentions;

import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
/* compiled from: HttpClientExt.kt */
/* loaded from: classes3.dex */
public final class HttpClientExtKt {
    public static final String getClonedBodyString(ResponseBody responseBody) {
        BufferedSource source;
        Buffer clone;
        String str = null;
        if (responseBody != null && (source = responseBody.source()) != null) {
            source.request(Long.MAX_VALUE);
            Buffer buffer = source.buffer();
            if (buffer != null && (clone = buffer.clone()) != null) {
                Charset forName = Charset.forName("UTF-8");
                Intrinsics.checkNotNullExpressionValue(forName, "forName(\"UTF-8\")");
                str = clone.readString(forName);
            }
        }
        return str == null ? "" : str;
    }
}
