package org.orbitmvi.orbit.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.orbitmvi.orbit.Container;
import org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter;
import org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlowKt;
import org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlowKt;
import org.orbitmvi.orbit.internal.repeatonsubscription.SubscribedCounter;
import org.orbitmvi.orbit.syntax.ContainerContext;
/* compiled from: RealContainer.kt */
/* loaded from: classes4.dex */
public final class RealContainer<STATE, SIDE_EFFECT> implements Container<STATE, SIDE_EFFECT> {
    private static final /* synthetic */ AtomicIntegerFieldUpdater initialised$FU = AtomicIntegerFieldUpdater.newUpdater(RealContainer.class, "initialised");
    private final Channel<Function2<ContainerContext<STATE, SIDE_EFFECT>, Continuation<? super Unit>, Object>> dispatchChannel;
    private volatile /* synthetic */ int initialised;
    private final MutableStateFlow<STATE> internalStateFlow;
    private final Mutex mutex;
    private final ContainerContext<STATE, SIDE_EFFECT> pluginContext;
    private final CoroutineScope scope;
    private final Container.Settings settings;
    private final Channel<SIDE_EFFECT> sideEffectChannel;
    private final Flow<SIDE_EFFECT> sideEffectFlow;
    private final StateFlow<STATE> stateFlow;
    private final SubscribedCounter subscribedCounter;

    public RealContainer(STATE initialState, CoroutineScope parentScope, Container.Settings settings, SubscribedCounter subscribedCounter) {
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        Intrinsics.checkNotNullParameter(settings, "settings");
        this.settings = settings;
        CoroutineScope plus = CoroutineScopeKt.plus(parentScope, getSettings().getIntentDispatcher());
        this.scope = plus;
        this.dispatchChannel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        this.mutex = MutexKt.Mutex$default(false, 1, null);
        this.initialised = 0;
        SubscribedCounter delayingSubscribedCounter = subscribedCounter == null ? new DelayingSubscribedCounter(plus, getSettings().getRepeatOnSubscribedStopTimeout()) : subscribedCounter;
        this.subscribedCounter = delayingSubscribedCounter;
        MutableStateFlow<STATE> MutableStateFlow = StateFlowKt.MutableStateFlow(initialState);
        this.internalStateFlow = MutableStateFlow;
        this.stateFlow = RefCountStateFlowKt.refCount(MutableStateFlow, delayingSubscribedCounter);
        Channel<SIDE_EFFECT> Channel$default = ChannelKt.Channel$default(getSettings().getSideEffectBufferSize(), null, null, 6, null);
        this.sideEffectChannel = Channel$default;
        this.sideEffectFlow = RefCountFlowKt.refCount(FlowKt.receiveAsFlow(Channel$default), delayingSubscribedCounter);
        this.pluginContext = new ContainerContext<>(getSettings(), new RealContainer$pluginContext$1(this, null), new Function0<STATE>(this) { // from class: org.orbitmvi.orbit.internal.RealContainer$pluginContext$2
            final /* synthetic */ RealContainer<STATE, SIDE_EFFECT> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final STATE invoke() {
                MutableStateFlow mutableStateFlow;
                mutableStateFlow = ((RealContainer) this.this$0).internalStateFlow;
                return (STATE) mutableStateFlow.getValue();
            }
        }, new RealContainer$pluginContext$3(this, null), delayingSubscribedCounter);
    }

    public /* synthetic */ RealContainer(Object obj, CoroutineScope coroutineScope, Container.Settings settings, SubscribedCounter subscribedCounter, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, coroutineScope, settings, (i & 8) != 0 ? null : subscribedCounter);
    }

    public Container.Settings getSettings() {
        return this.settings;
    }

    @Override // org.orbitmvi.orbit.Container
    public StateFlow<STATE> getStateFlow() {
        return this.stateFlow;
    }

    @Override // org.orbitmvi.orbit.Container
    public Flow<SIDE_EFFECT> getSideEffectFlow() {
        return this.sideEffectFlow;
    }

    public final ContainerContext<STATE, SIDE_EFFECT> getPluginContext$orbit_core() {
        return this.pluginContext;
    }

    @Override // org.orbitmvi.orbit.Container
    public Object orbit(Function2<? super ContainerContext<STATE, SIDE_EFFECT>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        initialiseIfNeeded();
        Object send = this.dispatchChannel.send(function2, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return send == coroutine_suspended ? send : Unit.INSTANCE;
    }

    private final void initialiseIfNeeded() {
        if (initialised$FU.compareAndSet(this, 0, 1)) {
            ProduceKt.produce$default(this.scope, Dispatchers.getUnconfined(), 0, new RealContainer$initialiseIfNeeded$1(this, null), 2, null);
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new RealContainer$initialiseIfNeeded$2(this, null), 3, null);
        }
    }
}
