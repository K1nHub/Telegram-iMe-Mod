package org.koin.core.definition;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Callbacks.kt */
/* loaded from: classes6.dex */
public final class Callbacks<T> {
    private final Function1<T, Unit> onClose;

    public Callbacks() {
        this(null, 1, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Callbacks) && Intrinsics.areEqual(this.onClose, ((Callbacks) obj).onClose);
    }

    public int hashCode() {
        Function1<T, Unit> function1 = this.onClose;
        if (function1 == null) {
            return 0;
        }
        return function1.hashCode();
    }

    public String toString() {
        return "Callbacks(onClose=" + this.onClose + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Callbacks(Function1<? super T, Unit> function1) {
        this.onClose = function1;
    }

    public /* synthetic */ Callbacks(Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : function1);
    }

    public final Function1<T, Unit> getOnClose() {
        return this.onClose;
    }
}
