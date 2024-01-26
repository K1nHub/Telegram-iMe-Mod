package io.ktor.utils.p032io.charsets;

import io.ktor.utils.p032io.core.ByteReadPacket;
import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.core.internal.UnsafeKt;
import java.nio.charset.CharsetEncoder;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Encoding.kt */
/* renamed from: io.ktor.utils.io.charsets.EncodingKt */
/* loaded from: classes4.dex */
public final class EncodingKt {
    public static final long sizeEstimate(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        return input instanceof ByteReadPacket ? input.getRemaining() : Math.max(input.getRemaining(), 16L);
    }

    private static final int encodeCompleteImpl(CharsetEncoder charsetEncoder, Output output) {
        ChunkBuffer prepareWriteHead = UnsafeKt.prepareWriteHead(output, 1, null);
        int i = 1;
        int i2 = 0;
        while (true) {
            try {
                int limit = prepareWriteHead.getLimit() - prepareWriteHead.getWritePosition();
                i = CharsetJVMKt.encodeComplete(charsetEncoder, prepareWriteHead) ? 0 : i + 1;
                i2 += limit - (prepareWriteHead.getLimit() - prepareWriteHead.getWritePosition());
                if (!(i > 0)) {
                    return i2;
                }
                prepareWriteHead = UnsafeKt.prepareWriteHead(output, 1, prepareWriteHead);
            } finally {
                output.afterHeadWrite();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005f, code lost:
        throw new java.lang.IllegalStateException("Check failed.".toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int encodeToImpl(java.nio.charset.CharsetEncoder r8, io.ktor.utils.p032io.core.Output r9, java.lang.CharSequence r10, int r11, int r12) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "destination"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "input"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            r0 = 0
            if (r11 < r12) goto L13
            return r0
        L13:
            r1 = 0
            r2 = 1
            io.ktor.utils.io.core.internal.ChunkBuffer r1 = io.ktor.utils.p032io.core.internal.UnsafeKt.prepareWriteHead(r9, r2, r1)
            r3 = r0
        L1a:
            int r4 = r1.getLimit()     // Catch: java.lang.Throwable -> L60
            int r5 = r1.getWritePosition()     // Catch: java.lang.Throwable -> L60
            int r4 = r4 - r5
            int r5 = io.ktor.utils.p032io.charsets.CharsetJVMKt.encodeImpl(r8, r10, r11, r12, r1)     // Catch: java.lang.Throwable -> L60
            if (r5 < 0) goto L2b
            r6 = r2
            goto L2c
        L2b:
            r6 = r0
        L2c:
            if (r6 == 0) goto L54
            int r11 = r11 + r5
            int r6 = r1.getLimit()     // Catch: java.lang.Throwable -> L60
            int r7 = r1.getWritePosition()     // Catch: java.lang.Throwable -> L60
            int r6 = r6 - r7
            int r4 = r4 - r6
            int r3 = r3 + r4
            if (r11 < r12) goto L3e
            r4 = r0
            goto L44
        L3e:
            if (r5 != 0) goto L43
            r4 = 8
            goto L44
        L43:
            r4 = r2
        L44:
            if (r4 <= 0) goto L4b
            io.ktor.utils.io.core.internal.ChunkBuffer r1 = io.ktor.utils.p032io.core.internal.UnsafeKt.prepareWriteHead(r9, r4, r1)     // Catch: java.lang.Throwable -> L60
            goto L1a
        L4b:
            r9.afterHeadWrite()
            int r8 = encodeCompleteImpl(r8, r9)
            int r3 = r3 + r8
            return r3
        L54:
            java.lang.String r8 = "Check failed."
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L60
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L60
            r10.<init>(r8)     // Catch: java.lang.Throwable -> L60
            throw r10     // Catch: java.lang.Throwable -> L60
        L60:
            r8 = move-exception
            r9.afterHeadWrite()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.charsets.EncodingKt.encodeToImpl(java.nio.charset.CharsetEncoder, io.ktor.utils.io.core.Output, java.lang.CharSequence, int, int):int");
    }
}
