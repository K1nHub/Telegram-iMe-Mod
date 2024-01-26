package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Strings.kt */
/* loaded from: classes4.dex */
public class StringsKt___StringsKt extends StringsKt___StringsJvmKt {
    public static char first(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        return charSequence.charAt(0);
    }

    public static Character getOrNull(CharSequence charSequence, int i) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (i >= 0) {
            lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
            if (i <= lastIndex) {
                return Character.valueOf(charSequence.charAt(i));
            }
        }
        return null;
    }

    public static char last(CharSequence charSequence) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        return charSequence.charAt(lastIndex);
    }

    public static char single(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length();
        if (length != 0) {
            if (length == 1) {
                return charSequence.charAt(0);
            }
            throw new IllegalArgumentException("Char sequence has more than one element.");
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static String drop(String str, int i) {
        int coerceAtMost;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(i, str.length());
        String substring = str.substring(coerceAtMost);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return substring;
    }

    public static String dropLast(String str, int i) {
        int coerceAtLeast;
        String take;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(str.length() - i, 0);
        take = take(str, coerceAtLeast);
        return take;
    }

    public static String take(String str, int i) {
        int coerceAtMost;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(i, str.length());
        String substring = str.substring(0, coerceAtMost);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static String takeLast(String str, int i) {
        int coerceAtMost;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        int length = str.length();
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(i, length);
        String substring = str.substring(length - coerceAtMost);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return substring;
    }

    public static Sequence<Character> asSequence(final CharSequence charSequence) {
        Sequence<Character> emptySequence;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (charSequence instanceof String) {
            if (charSequence.length() == 0) {
                emptySequence = SequencesKt__SequencesKt.emptySequence();
                return emptySequence;
            }
        }
        return new Sequence<Character>() { // from class: kotlin.text.StringsKt___StringsKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<Character> iterator() {
                return StringsKt__StringsKt.iterator(charSequence);
            }
        };
    }
}
