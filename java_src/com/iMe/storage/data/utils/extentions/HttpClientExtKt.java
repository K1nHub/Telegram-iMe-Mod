package com.iMe.storage.data.utils.extentions;
/* compiled from: HttpClientExt.kt */
/* loaded from: classes4.dex */
public final class HttpClientExtKt {
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String getClonedBodyString(okhttp3.ResponseBody r2) {
        /*
            if (r2 == 0) goto L28
            okio.BufferedSource r2 = r2.source()
            if (r2 == 0) goto L28
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r2.request(r0)
            okio.Buffer r2 = r2.getBuffer()
            if (r2 == 0) goto L28
            okio.Buffer r2 = r2.clone()
            if (r2 == 0) goto L28
            java.nio.charset.Charset r0 = com.google.common.base.Charsets.UTF_8
            java.lang.String r1 = "UTF_8"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r2 = r2.readString(r0)
            goto L29
        L28:
            r2 = 0
        L29:
            if (r2 != 0) goto L2d
            java.lang.String r2 = ""
        L2d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.utils.extentions.HttpClientExtKt.getClonedBodyString(okhttp3.ResponseBody):java.lang.String");
    }
}
