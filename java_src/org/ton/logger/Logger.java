package org.ton.logger;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Logger.kt */
/* loaded from: classes6.dex */
public interface Logger {

    /* compiled from: Logger.kt */
    /* loaded from: classes6.dex */
    public enum Level {
        TRACE,
        DEBUG,
        INFO,
        WARN,
        FATAL
    }

    void debug(Function0<String> function0);

    void info(Function0<String> function0);

    void log(Level level, Function0<String> function0);

    void warn(Function0<String> function0);

    /* compiled from: Logger.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static void debug(Logger logger, Function0<String> message) {
            Intrinsics.checkNotNullParameter(message, "message");
            logger.log(Level.DEBUG, message);
        }

        public static void info(Logger logger, Function0<String> message) {
            Intrinsics.checkNotNullParameter(message, "message");
            logger.log(Level.INFO, message);
        }

        public static void warn(Logger logger, Function0<String> message) {
            Intrinsics.checkNotNullParameter(message, "message");
            logger.log(Level.WARN, message);
        }
    }
}
