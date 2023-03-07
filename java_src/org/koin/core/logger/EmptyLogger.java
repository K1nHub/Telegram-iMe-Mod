package org.koin.core.logger;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: EmptyLogger.kt */
/* loaded from: classes4.dex */
public final class EmptyLogger extends Logger {
    @Override // org.koin.core.logger.Logger
    public void log(Level level, String msg) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(msg, "msg");
    }

    public EmptyLogger() {
        super(Level.NONE);
    }
}
