package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HandlerDispatcher.kt */
/* loaded from: classes4.dex */
public final class HandlerContext extends HandlerDispatcher {
    private volatile HandlerContext _immediate;
    private final Handler handler;
    private final HandlerContext immediate;
    private final boolean invokeImmediately;
    private final String name;

    private HandlerContext(Handler handler, String str, boolean z) {
        super(null);
        this.handler = handler;
        this.name = str;
        this.invokeImmediately = z;
        this._immediate = z ? this : null;
        HandlerContext handlerContext = this._immediate;
        if (handlerContext == null) {
            handlerContext = new HandlerContext(handler, str, true);
            this._immediate = handlerContext;
            Unit unit = Unit.INSTANCE;
        }
        this.immediate = handlerContext;
    }

    public /* synthetic */ HandlerContext(Handler handler, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i & 2) != 0 ? null : str);
    }

    public HandlerContext(Handler handler, String str) {
        this(handler, str, false);
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher
    public HandlerContext getImmediate() {
        return this.immediate;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return (this.invokeImmediately && Intrinsics.areEqual(Looper.myLooper(), this.handler.getLooper())) ? false : true;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: dispatch */
    public void mo1471dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        this.handler.post(runnable);
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        String stringInternalImpl = toStringInternalImpl();
        if (stringInternalImpl == null) {
            String str = this.name;
            if (str == null) {
                str = this.handler.toString();
            }
            return this.invokeImmediately ? Intrinsics.stringPlus(str, ".immediate") : str;
        }
        return stringInternalImpl;
    }

    public boolean equals(Object obj) {
        return (obj instanceof HandlerContext) && ((HandlerContext) obj).handler == this.handler;
    }

    public int hashCode() {
        return System.identityHashCode(this.handler);
    }
}
