package org.koin.core.logger;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: EmptyLogger.kt */
/* loaded from: classes6.dex */
public final class EmptyLogger extends Logger {
    @Override // org.koin.core.logger.Logger
    public void display(Level level, String msg) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(msg, "msg");
    }

    public EmptyLogger() {
        super(Level.NONE);
    }
}
