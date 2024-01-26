package org.ton.adnl.connection;

import io.ktor.utils.p032io.ByteReadChannel;
import io.ktor.utils.p032io.ByteWriteChannel;
import io.ktor.utils.p032io.ByteWriteChannelKt;
import io.ktor.utils.p032io.core.BytePacketBuilder;
import io.ktor.utils.p032io.core.ByteReadPacket;
import io.ktor.utils.p032io.core.OutputKt;
import io.ktor.utils.p032io.core.OutputLittleEndianKt;
import io.ktor.utils.p032io.core.StringsKt;
import java.io.Closeable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.datetime.Clock$System;
import kotlinx.datetime.Instant;
import org.ton.api.liteserver.LiteServerDesc;
import org.ton.crypto.AesCtr;
import org.ton.crypto.SecureRandom;
import org.ton.crypto.digest.Digest;
/* compiled from: AdnlConnection.kt */
/* loaded from: classes6.dex */
public final class AdnlConnection implements CoroutineScope, Closeable {
    private static final long CONNECT_TIMEOUT;
    public static final Companion Companion = new Companion(null);
    private static final long MAX_IDLE_TIME;
    private final AdnlConnectionFactory connectionFactory;
    private final CoroutineContext coroutineContext;
    private final Channel<Object> deliveryPoint;
    private final AtomicRef<Instant> lastActivity;
    private final LiteServerDesc liteServerDesc;
    private final Function0<Unit> onDone;
    private final Job timeout;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public AdnlConnection(LiteServerDesc liteServerDesc, AdnlConnectionFactory connectionFactory, CoroutineContext coroutineContext, Function0<Unit> onDone) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(liteServerDesc, "liteServerDesc");
        Intrinsics.checkNotNullParameter(connectionFactory, "connectionFactory");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(onDone, "onDone");
        this.liteServerDesc = liteServerDesc;
        this.connectionFactory = connectionFactory;
        this.coroutineContext = coroutineContext;
        this.onDone = onDone;
        this.lastActivity = AtomicFU.atomic(Clock$System.INSTANCE.now());
        this.deliveryPoint = ChannelKt.Channel$default(0, null, null, 7, null);
        launch$default = BuildersKt__Builders_commonKt.launch$default(this, getCoroutineContext().plus(new CoroutineName("Connection timeout")), null, new AdnlConnection$timeout$1(this, null), 2, null);
        this.timeout = launch$default;
    }

    public final LiteServerDesc getLiteServerDesc() {
        return this.liteServerDesc;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    public final Object execute(AdnlRequestData adnlRequestData, CoroutineContext coroutineContext, Continuation<? super AdnlResponseData> continuation) {
        this.lastActivity.setValue(Clock$System.INSTANCE.now());
        return makeDedicatedRequest(adnlRequestData, coroutineContext, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0143 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x017f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01cc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object makeDedicatedRequest(org.ton.adnl.connection.AdnlRequestData r23, kotlin.coroutines.CoroutineContext r24, kotlin.coroutines.Continuation<? super org.ton.adnl.connection.AdnlResponseData> r25) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.adnl.connection.AdnlConnection.makeDedicatedRequest(org.ton.adnl.connection.AdnlRequestData, kotlin.coroutines.CoroutineContext, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b A[Catch: all -> 0x0078, TryCatch #0 {, blocks: (B:12:0x0031, B:22:0x0064, B:24:0x0068, B:19:0x004b, B:17:0x0040), top: B:31:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068 A[Catch: all -> 0x0078, TRY_LEAVE, TryCatch #0 {, blocks: (B:12:0x0031, B:22:0x0064, B:24:0x0068, B:19:0x004b, B:17:0x0040), top: B:31:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0061 -> B:22:0x0064). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object connect(kotlin.coroutines.Continuation<? super org.ton.adnl.network.TcpClient> r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof org.ton.adnl.connection.AdnlConnection$connect$1
            if (r0 == 0) goto L13
            r0 = r11
            org.ton.adnl.connection.AdnlConnection$connect$1 r0 = (org.ton.adnl.connection.AdnlConnection$connect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.ton.adnl.connection.AdnlConnection$connect$1 r0 = new org.ton.adnl.connection.AdnlConnection$connect$1
            r0.<init>(r10, r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            int r2 = r0.I$1
            int r4 = r0.I$0
            java.lang.Object r5 = r0.L$1
            kotlin.jvm.internal.Ref$IntRef r5 = (kotlin.jvm.internal.Ref$IntRef) r5
            java.lang.Object r6 = r0.L$0
            org.ton.adnl.connection.AdnlConnection r6 = (org.ton.adnl.connection.AdnlConnection) r6
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L78
            goto L64
        L35:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L3d:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlin.jvm.internal.Ref$IntRef r11 = new kotlin.jvm.internal.Ref$IntRef     // Catch: java.lang.Throwable -> L78
            r11.<init>()     // Catch: java.lang.Throwable -> L78
            r2 = 0
            r6 = r10
            r5 = r11
            r4 = r3
        L49:
            if (r2 >= r4) goto L70
            long r7 = org.ton.adnl.connection.AdnlConnection.CONNECT_TIMEOUT     // Catch: java.lang.Throwable -> L78
            org.ton.adnl.connection.AdnlConnection$connect$2$tcpClient$1 r11 = new org.ton.adnl.connection.AdnlConnection$connect$2$tcpClient$1     // Catch: java.lang.Throwable -> L78
            r9 = 0
            r11.<init>(r6, r9)     // Catch: java.lang.Throwable -> L78
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L78
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L78
            r0.I$0 = r4     // Catch: java.lang.Throwable -> L78
            r0.I$1 = r2     // Catch: java.lang.Throwable -> L78
            r0.label = r3     // Catch: java.lang.Throwable -> L78
            java.lang.Object r11 = kotlinx.coroutines.TimeoutKt.m2101withTimeoutOrNullKLykuaI(r7, r11, r0)     // Catch: java.lang.Throwable -> L78
            if (r11 != r1) goto L64
            return r1
        L64:
            org.ton.adnl.network.TcpClient r11 = (org.ton.adnl.network.TcpClient) r11     // Catch: java.lang.Throwable -> L78
            if (r11 != 0) goto L6f
            int r11 = r5.element     // Catch: java.lang.Throwable -> L78
            int r11 = r11 + r3
            r5.element = r11     // Catch: java.lang.Throwable -> L78
            int r2 = r2 + r3
            goto L49
        L6f:
            return r11
        L70:
            java.io.IOException r11 = new java.io.IOException
            java.lang.String r0 = "Connection timeout"
            r11.<init>(r0)
            throw r11
        L78:
            r11 = move-exception
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.adnl.connection.AdnlConnection.connect(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object writeRequest$ton_kotlin_adnl(AdnlRequestData adnlRequestData, CoroutineContext coroutineContext, ByteWriteChannel byteWriteChannel, AesCtr aesCtr, boolean z, Continuation<? super Job> continuation) {
        return BuildersKt.withContext(coroutineContext, new AdnlConnection$writeRequest$2(coroutineContext, this, byteWriteChannel, aesCtr, adnlRequestData, z, null), continuation);
    }

    private final Object readResponse(Instant instant, ByteReadChannel byteReadChannel, AesCtr aesCtr, CoroutineContext coroutineContext, Continuation<? super AdnlResponseData> continuation) {
        return BuildersKt.withContext(coroutineContext, new AdnlConnection$readResponse$2(this, byteReadChannel, aesCtr, instant, coroutineContext, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readRaw(io.ktor.utils.p032io.ByteReadChannel r11, org.ton.crypto.AesCtr r12, kotlin.coroutines.Continuation<? super io.ktor.utils.p032io.core.ByteReadPacket> r13) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.adnl.connection.AdnlConnection.readRaw(io.ktor.utils.io.ByteReadChannel, org.ton.crypto.AesCtr, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object writeRaw(ByteWriteChannel byteWriteChannel, AesCtr aesCtr, ByteReadPacket byteReadPacket, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        long j = 32;
        int remaining = (int) (byteReadPacket.getRemaining() + j + j);
        if (!(32 <= remaining && remaining < 16777217)) {
            throw new IllegalArgumentException(("Invalid packet size: " + remaining).toString());
        }
        byte[] nextBytes = SecureRandom.INSTANCE.nextBytes(32);
        byte[] readBytes$default = StringsKt.readBytes$default(byteReadPacket, 0, 1, null);
        Digest sha256 = Digest.Companion.sha256();
        sha256.update(nextBytes);
        sha256.update(readBytes$default);
        byte[] build = sha256.build();
        BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
        try {
            OutputLittleEndianKt.writeIntLittleEndian(bytePacketBuilder, remaining);
            OutputKt.writeFully$default(bytePacketBuilder, nextBytes, 0, 0, 6, null);
            OutputKt.writeFully$default(bytePacketBuilder, readBytes$default, 0, 0, 6, null);
            OutputKt.writeFully$default(bytePacketBuilder, build, 0, 0, 6, null);
            Object writeFully = ByteWriteChannelKt.writeFully(byteWriteChannel, AesCtr.update$default(aesCtr, StringsKt.readBytes$default(bytePacketBuilder.build(), 0, 1, null), null, 2, null), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return writeFully == coroutine_suspended ? writeFully : Unit.INSTANCE;
        } catch (Throwable th) {
            bytePacketBuilder.release();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdnlConnection.kt */
    /* loaded from: classes6.dex */
    public static final class ChannelCipher {
        private final AesCtr input;
        private final AesCtr output;

        public ChannelCipher(AesCtr input, AesCtr output) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(output, "output");
            this.input = input;
            this.output = output;
        }

        public final AesCtr getInput() {
            return this.input;
        }

        public final AesCtr getOutput() {
            return this.output;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public ChannelCipher(byte[] s1, byte[] s2, byte[] v1, byte[] v2) {
            this(new AesCtr(s1, v1), new AesCtr(s2, v2));
            Intrinsics.checkNotNullParameter(s1, "s1");
            Intrinsics.checkNotNullParameter(s2, "s2");
            Intrinsics.checkNotNullParameter(v1, "v1");
            Intrinsics.checkNotNullParameter(v2, "v2");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ChannelCipher(byte[] r6) {
            /*
                r5 = this;
                java.lang.String r0 = "nonce"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                r0 = 0
                r1 = 32
                byte[] r0 = kotlin.collections.ArraysKt.copyOfRange(r6, r0, r1)
                r2 = 64
                byte[] r1 = kotlin.collections.ArraysKt.copyOfRange(r6, r1, r2)
                r3 = 80
                byte[] r2 = kotlin.collections.ArraysKt.copyOfRange(r6, r2, r3)
                r4 = 96
                byte[] r6 = kotlin.collections.ArraysKt.copyOfRange(r6, r3, r4)
                r5.<init>(r0, r1, r2, r6)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.ton.adnl.connection.AdnlConnection.ChannelCipher.<init>(byte[]):void");
        }
    }

    /* compiled from: AdnlConnection.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getMAX_IDLE_TIME-UwyO8pc  reason: not valid java name */
        public final long m5238getMAX_IDLE_TIMEUwyO8pc() {
            return AdnlConnection.MAX_IDLE_TIME;
        }
    }

    static {
        Duration.Companion companion = Duration.Companion;
        DurationUnit durationUnit = DurationUnit.SECONDS;
        MAX_IDLE_TIME = DurationKt.toDuration(10, durationUnit);
        CONNECT_TIMEOUT = DurationKt.toDuration(5, durationUnit);
    }
}
