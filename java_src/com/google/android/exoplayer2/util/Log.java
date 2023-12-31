package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.UnknownHostException;
/* loaded from: classes.dex */
public final class Log {
    public static final int LOG_LEVEL_ALL = 0;
    public static final int LOG_LEVEL_ERROR = 3;
    public static final int LOG_LEVEL_INFO = 1;
    public static final int LOG_LEVEL_OFF = Integer.MAX_VALUE;
    public static final int LOG_LEVEL_WARNING = 2;
    private static int logLevel = 0;
    private static boolean logStackTraces = true;
    private static final Object lock = new Object();
    private static Logger logger = Logger.DEFAULT;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface LogLevel {
    }

    /* loaded from: classes.dex */
    public interface Logger {
        public static final Logger DEFAULT = new Logger() { // from class: com.google.android.exoplayer2.util.Log.Logger.1
            @Override // com.google.android.exoplayer2.util.Log.Logger
            /* renamed from: d */
            public void mo1105d(String str, String str2) {
                android.util.Log.d(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.Log.Logger
            /* renamed from: i */
            public void mo1103i(String str, String str2) {
                android.util.Log.i(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.Log.Logger
            /* renamed from: w */
            public void mo1102w(String str, String str2) {
                android.util.Log.w(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.Log.Logger
            /* renamed from: e */
            public void mo1104e(String str, String str2) {
                android.util.Log.e(str, str2);
            }
        };

        /* renamed from: d */
        void mo1105d(String str, String str2);

        /* renamed from: e */
        void mo1104e(String str, String str2);

        /* renamed from: i */
        void mo1103i(String str, String str2);

        /* renamed from: w */
        void mo1102w(String str, String str2);
    }

    private Log() {
    }

    public static int getLogLevel() {
        int i;
        synchronized (lock) {
            i = logLevel;
        }
        return i;
    }

    public static void setLogLevel(int i) {
        synchronized (lock) {
            logLevel = i;
        }
    }

    public static void setLogStackTraces(boolean z) {
        synchronized (lock) {
            logStackTraces = z;
        }
    }

    public static void setLogger(Logger logger2) {
        synchronized (lock) {
            logger = logger2;
        }
    }

    /* renamed from: d */
    public static void m1113d(String str, String str2) {
        synchronized (lock) {
            if (logLevel == 0) {
                logger.mo1105d(str, str2);
            }
        }
    }

    /* renamed from: d */
    public static void m1112d(String str, String str2, Throwable th) {
        m1113d(str, appendThrowableString(str2, th));
    }

    /* renamed from: i */
    public static void m1109i(String str, String str2) {
        synchronized (lock) {
            if (logLevel <= 1) {
                logger.mo1103i(str, str2);
            }
        }
    }

    /* renamed from: i */
    public static void m1108i(String str, String str2, Throwable th) {
        m1109i(str, appendThrowableString(str2, th));
    }

    /* renamed from: w */
    public static void m1107w(String str, String str2) {
        synchronized (lock) {
            if (logLevel <= 2) {
                logger.mo1102w(str, str2);
            }
        }
    }

    /* renamed from: w */
    public static void m1106w(String str, String str2, Throwable th) {
        m1107w(str, appendThrowableString(str2, th));
    }

    /* renamed from: e */
    public static void m1111e(String str, String str2) {
        synchronized (lock) {
            if (logLevel <= 3) {
                logger.mo1104e(str, str2);
            }
        }
    }

    /* renamed from: e */
    public static void m1110e(String str, String str2, Throwable th) {
        m1111e(str, appendThrowableString(str2, th));
    }

    public static String getThrowableString(Throwable th) {
        synchronized (lock) {
            if (th == null) {
                return null;
            }
            if (isCausedByUnknownHostException(th)) {
                return "UnknownHostException (no network)";
            }
            if (!logStackTraces) {
                return th.getMessage();
            }
            return android.util.Log.getStackTraceString(th).trim().replace("\t", "    ");
        }
    }

    private static String appendThrowableString(String str, Throwable th) {
        String throwableString = getThrowableString(th);
        if (TextUtils.isEmpty(throwableString)) {
            return str;
        }
        return str + "\n  " + throwableString.replace("\n", "\n  ") + '\n';
    }

    private static boolean isCausedByUnknownHostException(Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }
}
