package org.ton.adnl.connection;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.api.liteserver.LiteServerDesc;
/* compiled from: AdnlClientImpl.kt */
/* loaded from: classes6.dex */
public final class AdnlClientImpl {
    private static final AdnlConnectionPool connectionPool;
    private final LiteServerDesc liteServerDesc;

    public AdnlClientImpl(LiteServerDesc liteServerDesc) {
        Intrinsics.checkNotNullParameter(liteServerDesc, "liteServerDesc");
        this.liteServerDesc = liteServerDesc;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    /* renamed from: sendQuery-8Mi8wO0  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m5237sendQuery8Mi8wO0(io.ktor.utils.p032io.core.ByteReadPacket r11, long r12, kotlin.coroutines.Continuation<? super io.ktor.utils.p032io.core.ByteReadPacket> r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof org.ton.adnl.connection.AdnlClientImpl$sendQuery$1
            if (r0 == 0) goto L13
            r0 = r14
            org.ton.adnl.connection.AdnlClientImpl$sendQuery$1 r0 = (org.ton.adnl.connection.AdnlClientImpl$sendQuery$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.ton.adnl.connection.AdnlClientImpl$sendQuery$1 r0 = new org.ton.adnl.connection.AdnlClientImpl$sendQuery$1
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Throwable -> L29
            goto L6b
        L29:
            r11 = move-exception
            goto L6c
        L2b:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L33:
            kotlin.ResultKt.throwOnFailure(r14)
            org.ton.adnl.connection.AdnlConnectionPool r14 = org.ton.adnl.connection.AdnlClientImpl.connectionPool
            org.ton.api.liteserver.LiteServerDesc r2 = r10.liteServerDesc
            org.ton.adnl.connection.AdnlConnection r5 = r14.selectConnection(r2)
            org.ton.tl.ByteString$Companion r14 = org.ton.p045tl.ByteString.Companion
            kotlin.random.Random$Default r2 = kotlin.random.Random.Default
            r4 = 32
            byte[] r2 = r2.nextBytes(r4)
            int r4 = r2.length
            byte[] r2 = java.util.Arrays.copyOf(r2, r4)
            org.ton.tl.ByteString r7 = r14.m23of(r2)
            r14 = 0
            kotlinx.coroutines.CompletableJob r6 = kotlinx.coroutines.SupervisorKt.SupervisorJob$default(r14, r3, r14)
            r2 = 0
            byte[] r8 = io.ktor.utils.p032io.core.StringsKt.readBytes$default(r11, r2, r3, r14)
            org.ton.adnl.connection.AdnlClientImpl$sendQuery$2 r11 = new org.ton.adnl.connection.AdnlClientImpl$sendQuery$2     // Catch: java.lang.Throwable -> L29
            r9 = 0
            r4 = r11
            r4.<init>(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L29
            r0.label = r3     // Catch: java.lang.Throwable -> L29
            java.lang.Object r14 = kotlinx.coroutines.TimeoutKt.m2100withTimeoutKLykuaI(r12, r11, r0)     // Catch: java.lang.Throwable -> L29
            if (r14 != r1) goto L6b
            return r1
        L6b:
            return r14
        L6c:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.adnl.connection.AdnlClientImpl.m5237sendQuery8Mi8wO0(io.ktor.utils.io.core.ByteReadPacket, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* compiled from: AdnlClientImpl.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        connectionPool = new AdnlConnectionPool();
    }
}
