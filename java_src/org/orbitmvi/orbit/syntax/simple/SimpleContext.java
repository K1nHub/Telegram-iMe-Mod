package org.orbitmvi.orbit.syntax.simple;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SimpleContext.kt */
/* loaded from: classes4.dex */
public final class SimpleContext<STATE> {
    private final STATE state;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SimpleContext) && Intrinsics.areEqual(this.state, ((SimpleContext) obj).state);
    }

    public int hashCode() {
        return this.state.hashCode();
    }

    public String toString() {
        return "SimpleContext(state=" + this.state + ')';
    }

    public SimpleContext(STATE state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
    }

    public final STATE getState() {
        return this.state;
    }
}
