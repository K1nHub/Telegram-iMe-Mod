package io.ktor.utils.p032io.internal;
/* compiled from: Utils.kt */
/* renamed from: io.ktor.utils.io.internal.UtilsKt */
/* loaded from: classes4.dex */
public final class UtilsKt {
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        r2 = kotlin.text.StringsKt__StringNumberConversionsKt.toIntOrNull(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int getIOIntProperty(java.lang.String r2, int r3) {
        /*
            java.lang.String r0 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.SecurityException -> L1d
            r0.<init>()     // Catch: java.lang.SecurityException -> L1d
            java.lang.String r1 = "io.ktor.utils.io."
            r0.append(r1)     // Catch: java.lang.SecurityException -> L1d
            r0.append(r2)     // Catch: java.lang.SecurityException -> L1d
            java.lang.String r2 = r0.toString()     // Catch: java.lang.SecurityException -> L1d
            java.lang.String r2 = java.lang.System.getProperty(r2)     // Catch: java.lang.SecurityException -> L1d
            goto L1e
        L1d:
            r2 = 0
        L1e:
            if (r2 == 0) goto L2a
            java.lang.Integer r2 = kotlin.text.StringsKt.toIntOrNull(r2)
            if (r2 == 0) goto L2a
            int r3 = r2.intValue()
        L2a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.internal.UtilsKt.getIOIntProperty(java.lang.String, int):int");
    }
}
