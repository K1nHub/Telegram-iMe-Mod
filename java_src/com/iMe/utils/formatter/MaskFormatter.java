package com.iMe.utils.formatter;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: MaskFormatter.kt */
/* loaded from: classes4.dex */
public final class MaskFormatter {
    private static final String HIDDEN_MASK;
    public static final MaskFormatter INSTANCE = new MaskFormatter();

    private MaskFormatter() {
    }

    static {
        String repeat;
        repeat = StringsKt__StringsJVMKt.repeat("*", 4);
        HIDDEN_MASK = repeat;
    }

    public static final String formatBalanceOrMask(boolean z, Number balance, int i, String shortName) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        Intrinsics.checkNotNullParameter(shortName, "shortName");
        if (z) {
            return HIDDEN_MASK;
        }
        return BalanceFormatter.format(balance, Integer.valueOf(i)) + ' ' + shortName;
    }

    public final String textOrMask(boolean z, String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return z ? HIDDEN_MASK : text;
    }
}
