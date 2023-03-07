package org.koin.android.logger;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
/* compiled from: AndroidLogger.kt */
/* loaded from: classes4.dex */
public final class AndroidLogger extends Logger {

    /* compiled from: AndroidLogger.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Level.values().length];
            iArr[Level.DEBUG.ordinal()] = 1;
            iArr[Level.INFO.ordinal()] = 2;
            iArr[Level.ERROR.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidLogger(Level level) {
        super(level);
        Intrinsics.checkNotNullParameter(level, "level");
    }

    @Override // org.koin.core.logger.Logger
    public void log(Level level, String msg) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (getLevel().compareTo(level) <= 0) {
            logOnLevel(msg, level);
        }
    }

    private final void logOnLevel(String str, Level level) {
        int i = WhenMappings.$EnumSwitchMapping$0[level.ordinal()];
        if (i == 1) {
            Log.d("[Koin]", str);
        } else if (i == 2) {
            Log.i("[Koin]", str);
        } else if (i == 3) {
            Log.e("[Koin]", str);
        } else {
            Log.e("[Koin]", str);
        }
    }
}
