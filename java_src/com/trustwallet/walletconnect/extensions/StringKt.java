package com.trustwallet.walletconnect.extensions;

import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: String.kt */
/* loaded from: classes3.dex */
public final class StringKt {
    private static final String HEX_CHARS = "0123456789abcdef";

    public static final byte[] hexStringToByteArray(String str) {
        IntRange until;
        IntProgression step;
        int indexOf$default;
        int indexOf$default2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        String lowerCase = str.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
        byte[] bArr = new byte[str.length() / 2];
        until = RangesKt___RangesKt.until(0, lowerCase.length());
        step = RangesKt___RangesKt.step(until, 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                String str2 = HEX_CHARS;
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str2, lowerCase.charAt(first), 0, false, 6, (Object) null);
                indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str2, lowerCase.charAt(first + 1), 0, false, 6, (Object) null);
                bArr[first >> 1] = (byte) (indexOf$default2 | (indexOf$default << 4));
                if (first == last) {
                    break;
                }
                first += step2;
            }
        }
        return bArr;
    }
}
