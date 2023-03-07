package com.smedialink.utils.extentions.delegate;

import java.util.LinkedList;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ResettableLazyDelegate.kt */
/* loaded from: classes3.dex */
public final class ResettableLazyManager {
    private final LinkedList<Resettable> managedDelegates = new LinkedList<>();

    public final void register(Resettable managed) {
        Intrinsics.checkNotNullParameter(managed, "managed");
        synchronized (this.managedDelegates) {
            this.managedDelegates.add(managed);
        }
    }

    public final void reset() {
        synchronized (this.managedDelegates) {
            for (Resettable resettable : this.managedDelegates) {
                resettable.reset();
            }
            this.managedDelegates.clear();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void destroy() {
        synchronized (this.managedDelegates) {
            this.managedDelegates.clear();
            Unit unit = Unit.INSTANCE;
        }
    }
}
