package org.orbitmvi.orbit;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;
import org.orbitmvi.orbit.idling.IdlingResource;
import org.orbitmvi.orbit.idling.NoopIdlingResource;
import org.orbitmvi.orbit.syntax.ContainerContext;
/* compiled from: Container.kt */
/* loaded from: classes4.dex */
public interface Container<STATE, SIDE_EFFECT> {
    Flow<SIDE_EFFECT> getSideEffectFlow();

    StateFlow<STATE> getStateFlow();

    Object orbit(Function2<? super ContainerContext<STATE, SIDE_EFFECT>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation);

    /* compiled from: Container.kt */
    /* loaded from: classes4.dex */
    public static final class Settings {
        private final CoroutineExceptionHandler exceptionHandler;
        private final IdlingResource idlingRegistry;
        private final CoroutineDispatcher intentDispatcher;
        private final long repeatOnSubscribedStopTimeout;
        private final int sideEffectBufferSize;

        public Settings() {
            this(0, null, null, null, 0L, 31, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Settings) {
                Settings settings = (Settings) obj;
                return this.sideEffectBufferSize == settings.sideEffectBufferSize && Intrinsics.areEqual(this.idlingRegistry, settings.idlingRegistry) && Intrinsics.areEqual(this.intentDispatcher, settings.intentDispatcher) && Intrinsics.areEqual(this.exceptionHandler, settings.exceptionHandler) && this.repeatOnSubscribedStopTimeout == settings.repeatOnSubscribedStopTimeout;
            }
            return false;
        }

        public int hashCode() {
            int hashCode = ((((this.sideEffectBufferSize * 31) + this.idlingRegistry.hashCode()) * 31) + this.intentDispatcher.hashCode()) * 31;
            CoroutineExceptionHandler coroutineExceptionHandler = this.exceptionHandler;
            return ((hashCode + (coroutineExceptionHandler == null ? 0 : coroutineExceptionHandler.hashCode())) * 31) + ProfileData$$ExternalSyntheticBackport0.m1017m(this.repeatOnSubscribedStopTimeout);
        }

        public String toString() {
            return "Settings(sideEffectBufferSize=" + this.sideEffectBufferSize + ", idlingRegistry=" + this.idlingRegistry + ", intentDispatcher=" + this.intentDispatcher + ", exceptionHandler=" + this.exceptionHandler + ", repeatOnSubscribedStopTimeout=" + this.repeatOnSubscribedStopTimeout + ')';
        }

        public Settings(int i, IdlingResource idlingRegistry, CoroutineDispatcher intentDispatcher, CoroutineExceptionHandler coroutineExceptionHandler, long j) {
            Intrinsics.checkNotNullParameter(idlingRegistry, "idlingRegistry");
            Intrinsics.checkNotNullParameter(intentDispatcher, "intentDispatcher");
            this.sideEffectBufferSize = i;
            this.idlingRegistry = idlingRegistry;
            this.intentDispatcher = intentDispatcher;
            this.exceptionHandler = coroutineExceptionHandler;
            this.repeatOnSubscribedStopTimeout = j;
        }

        public final int getSideEffectBufferSize() {
            return this.sideEffectBufferSize;
        }

        public /* synthetic */ Settings(int i, IdlingResource idlingResource, CoroutineDispatcher coroutineDispatcher, CoroutineExceptionHandler coroutineExceptionHandler, long j, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? Integer.MAX_VALUE : i, (i2 & 2) != 0 ? new NoopIdlingResource() : idlingResource, (i2 & 4) != 0 ? Dispatchers.getDefault() : coroutineDispatcher, (i2 & 8) != 0 ? null : coroutineExceptionHandler, (i2 & 16) != 0 ? 100L : j);
        }

        public final IdlingResource getIdlingRegistry() {
            return this.idlingRegistry;
        }

        public final CoroutineDispatcher getIntentDispatcher() {
            return this.intentDispatcher;
        }

        public final CoroutineExceptionHandler getExceptionHandler() {
            return this.exceptionHandler;
        }

        public final long getRepeatOnSubscribedStopTimeout() {
            return this.repeatOnSubscribedStopTimeout;
        }
    }
}
