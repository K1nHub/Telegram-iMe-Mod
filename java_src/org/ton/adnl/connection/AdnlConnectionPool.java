package org.ton.adnl.connection;

import io.ktor.util.CoroutinesUtilsKt;
import io.ktor.util.collections.ConcurrentMap;
import java.io.Closeable;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.ThreadPoolDispatcherKt;
import org.ton.api.liteserver.LiteServerDesc;
/* compiled from: AdnlConnectionPool.kt */
/* loaded from: classes6.dex */
public final class AdnlConnectionPool implements CoroutineScope, Closeable {
    private final AdnlConnectionFactory connectionFactory;
    private final ConcurrentMap<LiteServerDesc, AdnlConnection> connections;
    private final Lazy coroutineContext$delegate;
    private final Lazy dispatcher$delegate;

    public AdnlConnectionPool() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ExecutorCoroutineDispatcher>() { // from class: org.ton.adnl.connection.AdnlConnectionPool$dispatcher$2
            @Override // kotlin.jvm.functions.Function0
            public final ExecutorCoroutineDispatcher invoke() {
                return ThreadPoolDispatcherKt.newFixedThreadPoolContext(2, "adnl-dispatcher");
            }
        });
        this.dispatcher$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CoroutineContext>() { // from class: org.ton.adnl.connection.AdnlConnectionPool$coroutineContext$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineContext invoke() {
                CoroutineDispatcher dispatcher;
                CoroutineContext SilentSupervisor$default = CoroutinesUtilsKt.SilentSupervisor$default(null, 1, null);
                dispatcher = AdnlConnectionPool.this.getDispatcher();
                return SilentSupervisor$default.plus(dispatcher).plus(new CoroutineName("AdnlConnectionPool"));
            }
        });
        this.coroutineContext$delegate = lazy2;
        this.connections = new ConcurrentMap<>(0, 1, null);
        this.connectionFactory = new AdnlConnectionFactory();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CoroutineDispatcher getDispatcher() {
        return (CoroutineDispatcher) this.dispatcher$delegate.getValue();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return (CoroutineContext) this.coroutineContext$delegate.getValue();
    }

    public final AdnlConnection selectConnection(final LiteServerDesc liteServerDesc) {
        Intrinsics.checkNotNullParameter(liteServerDesc, "liteServerDesc");
        return this.connections.computeIfAbsent((ConcurrentMap<LiteServerDesc, AdnlConnection>) liteServerDesc, new Function0<AdnlConnection>() { // from class: org.ton.adnl.connection.AdnlConnectionPool$selectConnection$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AdnlConnection invoke() {
                AdnlConnectionFactory adnlConnectionFactory;
                LiteServerDesc liteServerDesc2 = LiteServerDesc.this;
                adnlConnectionFactory = this.connectionFactory;
                CoroutineContext coroutineContext = this.getCoroutineContext();
                final AdnlConnectionPool adnlConnectionPool = this;
                final LiteServerDesc liteServerDesc3 = LiteServerDesc.this;
                return new AdnlConnection(liteServerDesc2, adnlConnectionFactory, coroutineContext, new Function0<Unit>() { // from class: org.ton.adnl.connection.AdnlConnectionPool$selectConnection$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        ConcurrentMap concurrentMap;
                        concurrentMap = AdnlConnectionPool.this.connections;
                        concurrentMap.remove(liteServerDesc3);
                    }
                });
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        for (Map.Entry<LiteServerDesc, AdnlConnection> entry : this.connections.entrySet()) {
            entry.getValue().close();
        }
    }
}
