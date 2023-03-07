package org.koin.core.logger;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Logger.kt */
/* loaded from: classes4.dex */
public abstract class Logger {
    private Level level;

    public abstract void log(Level level, String str);

    public Logger(Level level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.level = level;
    }

    public final Level getLevel() {
        return this.level;
    }

    private final boolean canLog(Level level) {
        return this.level.compareTo(level) <= 0;
    }

    private final void doLog(Level level, String str) {
        if (canLog(level)) {
            log(level, str);
        }
    }

    public final void debug(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        doLog(Level.DEBUG, msg);
    }

    public final void info(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        doLog(Level.INFO, msg);
    }

    public final void error(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        doLog(Level.ERROR, msg);
    }

    public final boolean isAt(Level lvl) {
        Intrinsics.checkNotNullParameter(lvl, "lvl");
        return this.level.compareTo(lvl) <= 0;
    }

    public final void log(Level lvl, Function0<String> msg) {
        Intrinsics.checkNotNullParameter(lvl, "lvl");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (isAt(lvl)) {
            doLog(lvl, msg.invoke());
        }
    }
}
