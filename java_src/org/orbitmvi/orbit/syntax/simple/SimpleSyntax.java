package org.orbitmvi.orbit.syntax.simple;

import kotlin.jvm.internal.Intrinsics;
import org.orbitmvi.orbit.syntax.ContainerContext;
/* compiled from: SimpleSyntax.kt */
/* loaded from: classes6.dex */
public final class SimpleSyntax<S, SE> {
    private final ContainerContext<S, SE> containerContext;

    public SimpleSyntax(ContainerContext<S, SE> containerContext) {
        Intrinsics.checkNotNullParameter(containerContext, "containerContext");
        this.containerContext = containerContext;
    }

    public final ContainerContext<S, SE> getContainerContext() {
        return this.containerContext;
    }

    public final S getState() {
        return this.containerContext.getState();
    }
}
