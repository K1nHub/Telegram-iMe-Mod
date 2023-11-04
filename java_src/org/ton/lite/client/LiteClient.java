package org.ton.lite.client;

import java.io.Closeable;
import java.util.List;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicLong;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.datetime.Clock$System;
import kotlinx.datetime.Instant;
import org.ton.api.liteclient.config.LiteClientConfigGlobal;
import org.ton.api.liteserver.LiteServerDesc;
import org.ton.api.tonnode.TonNodeBlockId;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.api.tonnode.TonNodeZeroStateIdExt;
import org.ton.bitstring.BitString;
import org.ton.block.AddrStd;
import org.ton.lite.api.LiteApiClient;
import org.ton.lite.api.liteserver.LiteServerAccountId;
import org.ton.logger.Logger;
import org.ton.logger.PrintLnLogger;
import org.ton.p045tl.ByteString;
/* compiled from: LiteClient.kt */
/* loaded from: classes6.dex */
public final class LiteClient implements Closeable, CoroutineScope {
    private final CoroutineContext coroutineContext;
    private int currentServer;
    private final ArrayDeque<TonNodeBlockIdExt> knownBlockIds;
    private final AtomicRef lastMasterchainBlockId$delegate;
    private final AtomicRef lastMasterchainBlockIdTime$delegate;
    private final LiteApiClient liteApi;
    private final Logger logger;
    private final AtomicLong serverCapabilities$delegate;
    private List<LiteServerDesc> serverList;
    private final AtomicRef serverTime$delegate;
    private final AtomicRef serverTimeGotAt$delegate;
    private final AtomicInt serverVersion$delegate;
    private final AtomicRef zeroStateId$delegate;

    public LiteClient(CoroutineContext coroutineContext, LiteClientConfigGlobal liteClientConfigGlobal) {
        List<LiteServerDesc> shuffled;
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(liteClientConfigGlobal, "liteClientConfigGlobal");
        if (!(!liteClientConfigGlobal.getLiteServers().isEmpty())) {
            throw new IllegalArgumentException("No lite servers provided".toString());
        }
        this.logger = new PrintLnLogger("LiteClient", null, 2, null);
        this.coroutineContext = coroutineContext.plus(new CoroutineName("LiteClient"));
        this.knownBlockIds = new ArrayDeque<>(100);
        this.lastMasterchainBlockId$delegate = AtomicFU.atomic(new TonNodeBlockIdExt((TonNodeBlockId) null, (ByteString) null, (ByteString) null, 7, (DefaultConstructorMarker) null));
        this.lastMasterchainBlockIdTime$delegate = AtomicFU.atomic(Instant.Companion.getDISTANT_PAST());
        this.zeroStateId$delegate = AtomicFU.atomic(new TonNodeZeroStateIdExt(liteClientConfigGlobal.getValidator().getZeroState()));
        this.serverVersion$delegate = AtomicFU.atomic(0);
        this.serverCapabilities$delegate = AtomicFU.atomic(0L);
        Clock$System clock$System = Clock$System.INSTANCE;
        this.serverTime$delegate = AtomicFU.atomic(clock$System.now());
        this.serverTimeGotAt$delegate = AtomicFU.atomic(clock$System.now());
        shuffled = CollectionsKt__CollectionsJVMKt.shuffled(liteClientConfigGlobal.getLiteServers());
        this.serverList = shuffled;
        this.liteApi = new LiteClient$liteApi$1(this);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    private final TonNodeBlockIdExt getLastMasterchainBlockId() {
        return (TonNodeBlockIdExt) this.lastMasterchainBlockId$delegate.getValue();
    }

    private final void setLastMasterchainBlockId(TonNodeBlockIdExt tonNodeBlockIdExt) {
        this.lastMasterchainBlockId$delegate.setValue(tonNodeBlockIdExt);
    }

    private final void setLastMasterchainBlockIdTime(Instant instant) {
        this.lastMasterchainBlockIdTime$delegate.setValue(instant);
    }

    private final TonNodeZeroStateIdExt getZeroStateId() {
        return (TonNodeZeroStateIdExt) this.zeroStateId$delegate.getValue();
    }

    private final void setZeroStateId(TonNodeZeroStateIdExt tonNodeZeroStateIdExt) {
        this.zeroStateId$delegate.setValue(tonNodeZeroStateIdExt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getServerVersion() {
        return this.serverVersion$delegate.getValue();
    }

    private final void setServerVersion(int i) {
        this.serverVersion$delegate.setValue(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long getServerCapabilities() {
        return this.serverCapabilities$delegate.getValue();
    }

    private final void setServerCapabilities(long j) {
        this.serverCapabilities$delegate.setValue(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Instant getServerTime() {
        return (Instant) this.serverTime$delegate.getValue();
    }

    private final void setServerTime(Instant instant) {
        this.serverTime$delegate.setValue(instant);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Instant getServerTimeGotAt() {
        return (Instant) this.serverTimeGotAt$delegate.getValue();
    }

    private final void setServerTimeGotAt(Instant instant) {
        this.serverTimeGotAt$delegate.setValue(instant);
    }

    public final LiteApiClient getLiteApi() {
        return this.liteApi;
    }

    /* renamed from: latency-UwyO8pc  reason: not valid java name */
    public final long m5252latencyUwyO8pc() {
        return getServerTimeGotAt().m2124minus5sfh64U(getServerTime());
    }

    public final void setServerVersion(final int i, long j) {
        if (getServerVersion() == i && getServerCapabilities() == j) {
            return;
        }
        setServerVersion(i);
        setServerCapabilities(j);
        this.logger.info(new Function0<String>() { // from class: org.ton.lite.client.LiteClient$setServerVersion$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                int serverVersion;
                long serverCapabilities;
                StringBuilder sb = new StringBuilder();
                sb.append("server version is ");
                sb.append(i >> 8);
                sb.append('.');
                serverVersion = this.getServerVersion();
                sb.append(serverVersion & 255);
                sb.append(", capabilities ");
                serverCapabilities = this.getServerCapabilities();
                sb.append(serverCapabilities);
                return sb.toString();
            }
        });
    }

    /* renamed from: setServerTime-5sfh64U  reason: not valid java name */
    public final long m5253setServerTime5sfh64U(int i) {
        setServerTime(Instant.Companion.fromEpochSeconds$default(Instant.Companion, i, 0L, 2, null));
        setServerTimeGotAt(Clock$System.INSTANCE.now());
        final long m5252latencyUwyO8pc = m5252latencyUwyO8pc();
        this.logger.debug(new Function0<String>() { // from class: org.ton.lite.client.LiteClient$setServerTime$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                Instant serverTime;
                StringBuilder sb = new StringBuilder();
                sb.append("server time is ");
                serverTime = LiteClient.this.getServerTime();
                sb.append(serverTime);
                sb.append(" (latency ");
                sb.append((Object) Duration.m2087toStringimpl(m5252latencyUwyO8pc));
                sb.append(')');
                return sb.toString();
            }
        });
        return m5252latencyUwyO8pc;
    }

    public static /* synthetic */ Object getLastBlockId$default(LiteClient liteClient, int i, Continuation continuation, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = (liteClient.getServerCapabilities() & 2) != 0 ? 0 : -1;
        }
        return liteClient.getLastBlockId(i, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0170  */
    /* JADX WARN: Type inference failed for: r1v13, types: [T, kotlinx.datetime.Instant] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getLastBlockId(int r13, kotlin.coroutines.Continuation<? super org.ton.api.tonnode.TonNodeBlockIdExt> r14) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.lite.client.LiteClient.getLastBlockId(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getAccountState(org.ton.block.AddrStd r6, org.ton.api.tonnode.TonNodeBlockIdExt r7, kotlin.coroutines.Continuation<? super org.ton.lite.client.internal.FullAccountState> r8) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.lite.client.LiteClient.getAccountState(org.ton.block.AddrStd, org.ton.api.tonnode.TonNodeBlockIdExt, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        BuildersKt__BuildersKt.runBlocking$default(null, new LiteClient$close$1(this, null), 1, null);
    }

    private final void registerBlockId(TonNodeBlockIdExt tonNodeBlockIdExt) {
        if (this.knownBlockIds.contains(tonNodeBlockIdExt)) {
            return;
        }
        if (this.knownBlockIds.size() == 100) {
            this.knownBlockIds.removeFirst();
        }
        this.knownBlockIds.addLast(tonNodeBlockIdExt);
    }

    private final LiteServerAccountId toLiteServer(AddrStd addrStd) {
        return new LiteServerAccountId(addrStd.workchainId(), BitString.DefaultImpls.toByteArray$default(addrStd.address(), false, 1, null));
    }
}
