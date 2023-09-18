package org.orbitmvi.orbit.syntax;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.orbitmvi.orbit.Container;
import org.orbitmvi.orbit.internal.repeatonsubscription.SubscribedCounter;
/* compiled from: ContainerContext.kt */
/* loaded from: classes6.dex */
public final class ContainerContext<S, SE> {
    private final Function0<S> getState;
    private final Function2<SE, Continuation<? super Unit>, Object> postSideEffect;
    private final Function2<Function1<? super S, ? extends S>, Continuation<? super Unit>, Object> reduce;
    private final Container.Settings settings;
    private final SubscribedCounter subscribedCounter;

    /* JADX WARN: Multi-variable type inference failed */
    public ContainerContext(Container.Settings settings, Function2<? super SE, ? super Continuation<? super Unit>, ? extends Object> postSideEffect, Function0<? extends S> getState, Function2<? super Function1<? super S, ? extends S>, ? super Continuation<? super Unit>, ? extends Object> reduce, SubscribedCounter subscribedCounter) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        Intrinsics.checkNotNullParameter(postSideEffect, "postSideEffect");
        Intrinsics.checkNotNullParameter(getState, "getState");
        Intrinsics.checkNotNullParameter(reduce, "reduce");
        Intrinsics.checkNotNullParameter(subscribedCounter, "subscribedCounter");
        this.settings = settings;
        this.postSideEffect = postSideEffect;
        this.getState = getState;
        this.reduce = reduce;
        this.subscribedCounter = subscribedCounter;
    }

    public final Container.Settings getSettings() {
        return this.settings;
    }

    public final Function2<SE, Continuation<? super Unit>, Object> getPostSideEffect() {
        return this.postSideEffect;
    }

    public final Function2<Function1<? super S, ? extends S>, Continuation<? super Unit>, Object> getReduce() {
        return this.reduce;
    }

    public final S getState() {
        return this.getState.invoke();
    }
}
