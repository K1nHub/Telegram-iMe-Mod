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
            try {
                iArr[Level.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Level.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Level.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Level.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidLogger(Level level) {
        super(level);
        Intrinsics.checkNotNullParameter(level, "level");
    }

    @Override // org.koin.core.logger.Logger
    public void display(Level level, String msg) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(msg, "msg");
        int i = WhenMappings.$EnumSwitchMapping$0[level.ordinal()];
        if (i == 1) {
            Log.d("[Koin]", msg);
        } else if (i == 2) {
            Log.i("[Koin]", msg);
        } else if (i == 3) {
            Log.w("[Koin]", msg);
        } else if (i == 4) {
            Log.e("[Koin]", msg);
        } else {
            Log.e("[Koin]", msg);
        }
    }
}
