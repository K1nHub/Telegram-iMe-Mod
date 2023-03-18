package com.smedialink.storage.data.utils.extentions;
/* compiled from: HttpClientExt.kt */
/* loaded from: classes3.dex */
public final class HttpClientExtKt {
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String getClonedBodyString(okhttp3.ResponseBody r2) {
        /*
            if (r2 == 0) goto L2c
            okio.BufferedSource r2 = r2.source()
            if (r2 == 0) goto L2c
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r2.request(r0)
            okio.Buffer r2 = r2.buffer()
            if (r2 == 0) goto L2c
            okio.Buffer r2 = r2.clone()
            if (r2 == 0) goto L2c
            java.lang.String r0 = "UTF-8"
            java.nio.charset.Charset r0 = java.nio.charset.Charset.forName(r0)
            java.lang.String r1 = "forName(\"UTF-8\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r2 = r2.readString(r0)
            goto L2d
        L2c:
            r2 = 0
        L2d:
            if (r2 != 0) goto L31
            java.lang.String r2 = ""
        L31:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.storage.data.utils.extentions.HttpClientExtKt.getClonedBodyString(okhttp3.ResponseBody):java.lang.String");
    }
}
