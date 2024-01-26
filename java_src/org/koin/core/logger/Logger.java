package org.koin.core.logger;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Logger.kt */
/* loaded from: classes4.dex */
public abstract class Logger {
    private Level level;

    public abstract void display(Level level, String str);

    public Logger(Level level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.level = level;
    }

    public final boolean isAt(Level lvl) {
        Intrinsics.checkNotNullParameter(lvl, "lvl");
        return this.level.compareTo(lvl) <= 0;
    }
}
