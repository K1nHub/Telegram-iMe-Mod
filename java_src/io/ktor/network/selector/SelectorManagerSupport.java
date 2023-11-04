package io.ktor.network.selector;

import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.SelectorProvider;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
/* compiled from: SelectorManagerSupport.kt */
/* loaded from: classes4.dex */
public abstract class SelectorManagerSupport implements SelectorManager {
    private int cancelled;
    private int pending;
    private final SelectorProvider provider;

    protected abstract void publishInterest(Selectable selectable);

    public SelectorManagerSupport() {
        SelectorProvider provider = SelectorProvider.provider();
        Intrinsics.checkNotNullExpressionValue(provider, "provider()");
        this.provider = provider;
    }

    @Override // io.ktor.network.selector.SelectorManager
    public final SelectorProvider getProvider() {
        return this.provider;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getPending() {
        return this.pending;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getCancelled() {
        return this.cancelled;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setCancelled(int i) {
        this.cancelled = i;
    }

    @Override // io.ktor.network.selector.SelectorManager
    public final Object select(Selectable selectable, SelectInterest selectInterest, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        int interestedOps = selectable.getInterestedOps();
        int flag = selectInterest.getFlag();
        if (selectable.isClosed()) {
            SelectorManagerSupportKt.selectableIsClosed();
            throw new KotlinNothingValueException();
        } else if ((interestedOps & flag) == 0) {
            SelectorManagerSupportKt.selectableIsInvalid(interestedOps, flag);
            throw new KotlinNothingValueException();
        } else {
            intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
            cancellableContinuationImpl.initCancellability();
            cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: io.ktor.network.selector.SelectorManagerSupport$select$2$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }
            });
            selectable.getSuspensions().addSuspension(selectInterest, cancellableContinuationImpl);
            if (!cancellableContinuationImpl.isCancelled()) {
                publishInterest(selectable);
            }
            Object result = cancellableContinuationImpl.getResult();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (result == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return result == coroutine_suspended2 ? result : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void handleSelectedKeys(Set<SelectionKey> selectedKeys, Set<? extends SelectionKey> keys) {
        Intrinsics.checkNotNullParameter(selectedKeys, "selectedKeys");
        Intrinsics.checkNotNullParameter(keys, "keys");
        int size = selectedKeys.size();
        this.pending = keys.size() - size;
        this.cancelled = 0;
        if (size > 0) {
            Iterator<SelectionKey> it = selectedKeys.iterator();
            while (it.hasNext()) {
                handleSelectedKey(it.next());
                it.remove();
            }
        }
    }

    protected final void handleSelectedKey(SelectionKey key) {
        CancellableContinuation<Unit> removeSuspension;
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            int readyOps = key.readyOps();
            int interestOps = key.interestOps();
            Selectable subject = getSubject(key);
            if (subject == null) {
                key.cancel();
                this.cancelled++;
                return;
            }
            InterestSuspensionsMap suspensions = subject.getSuspensions();
            int[] flags = SelectInterest.Companion.getFlags();
            int length = flags.length;
            for (int i = 0; i < length; i++) {
                if ((flags[i] & readyOps) != 0 && (removeSuspension = suspensions.removeSuspension(i)) != null) {
                    Result.Companion companion = Result.Companion;
                    removeSuspension.resumeWith(Result.m1940constructorimpl(Unit.INSTANCE));
                }
            }
            int i2 = (~readyOps) & interestOps;
            if (i2 != interestOps) {
                key.interestOps(i2);
            }
            if (i2 != 0) {
                this.pending++;
            }
        } catch (Throwable th) {
            key.cancel();
            this.cancelled++;
            Selectable subject2 = getSubject(key);
            if (subject2 != null) {
                cancelAllSuspensions(subject2, th);
                setSubject(key, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void applyInterest(Selector selector, Selectable selectable) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        try {
            SelectableChannel channel = selectable.getChannel();
            SelectionKey keyFor = channel.keyFor(selector);
            int interestedOps = selectable.getInterestedOps();
            if (keyFor == null) {
                if (interestedOps != 0) {
                    channel.register(selector, interestedOps, selectable);
                }
            } else if (keyFor.interestOps() != interestedOps) {
                keyFor.interestOps(interestedOps);
            }
            if (interestedOps != 0) {
                this.pending++;
            }
        } catch (Throwable th) {
            SelectionKey keyFor2 = selectable.getChannel().keyFor(selector);
            if (keyFor2 != null) {
                keyFor2.cancel();
            }
            cancelAllSuspensions(selectable, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void cancelAllSuspensions(Selectable attachment, Throwable cause) {
        Intrinsics.checkNotNullParameter(attachment, "attachment");
        Intrinsics.checkNotNullParameter(cause, "cause");
        InterestSuspensionsMap suspensions = attachment.getSuspensions();
        for (SelectInterest selectInterest : SelectInterest.Companion.getAllInterests()) {
            CancellableContinuation<Unit> removeSuspension = suspensions.removeSuspension(selectInterest);
            if (removeSuspension != null) {
                Result.Companion companion = Result.Companion;
                removeSuspension.resumeWith(Result.m1940constructorimpl(ResultKt.createFailure(cause)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void cancelAllSuspensions(Selector selector, Throwable th) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (th == null) {
            th = new ClosedSelectorCancellationException();
        }
        Set<SelectionKey> keys = selector.keys();
        Intrinsics.checkNotNullExpressionValue(keys, "selector.keys()");
        for (SelectionKey selectionKey : keys) {
            try {
                if (selectionKey.isValid()) {
                    selectionKey.interestOps(0);
                }
            } catch (CancelledKeyException unused) {
            }
            Object attachment = selectionKey.attachment();
            Selectable selectable = attachment instanceof Selectable ? (Selectable) attachment : null;
            if (selectable != null) {
                cancelAllSuspensions(selectable, th);
            }
            selectionKey.cancel();
        }
    }

    private final Selectable getSubject(SelectionKey selectionKey) {
        Object attachment = selectionKey.attachment();
        if (attachment instanceof Selectable) {
            return (Selectable) attachment;
        }
        return null;
    }

    private final void setSubject(SelectionKey selectionKey, Selectable selectable) {
        selectionKey.attach(selectable);
    }

    /* compiled from: SelectorManagerSupport.kt */
    /* loaded from: classes4.dex */
    public static final class ClosedSelectorCancellationException extends CancellationException {
        public ClosedSelectorCancellationException() {
            super("Closed selector");
        }
    }
}
