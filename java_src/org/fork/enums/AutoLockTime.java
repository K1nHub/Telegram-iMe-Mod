package org.fork.enums;

import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: AutoLockTime.kt */
/* loaded from: classes4.dex */
public enum AutoLockTime {
    NONE(0),
    MINUTE(1),
    FIVE_MINUTES(2),
    HOUR(3),
    FIVE_HOURS(4);
    
    public static final Companion Companion = new Companion(null);

    /* renamed from: id */
    private final int f1417id;

    /* compiled from: AutoLockTime.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AutoLockTime.values().length];
            try {
                iArr[AutoLockTime.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AutoLockTime.MINUTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AutoLockTime.FIVE_MINUTES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AutoLockTime.HOUR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AutoLockTime.FIVE_HOURS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final AutoLockTime findById(int i) {
        return Companion.findById(i);
    }

    AutoLockTime(int i) {
        this.f1417id = i;
    }

    public final int getId() {
        return this.f1417id;
    }

    public final long getTimeInSeconds() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return TimeUnit.HOURS.toSeconds(5L);
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    return TimeUnit.HOURS.toSeconds(1L);
                }
                return TimeUnit.MINUTES.toSeconds(5L);
            }
            return TimeUnit.MINUTES.toSeconds(1L);
        }
        return 0L;
    }

    /* compiled from: AutoLockTime.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AutoLockTime findById(int i) {
            AutoLockTime autoLockTime;
            AutoLockTime[] values = AutoLockTime.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    autoLockTime = null;
                    break;
                }
                autoLockTime = values[i2];
                if (autoLockTime.getId() == i) {
                    break;
                }
                i2++;
            }
            return autoLockTime == null ? AutoLockTime.NONE : autoLockTime;
        }
    }
}
