package kotlin.text;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
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

    public static char last(CharSequence charSequence) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        return charSequence.charAt(lastIndex);
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

    public static final <C extends Collection<? super Character>> C toCollection(CharSequence charSequence, C destination) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        for (int i = 0; i < charSequence.length(); i++) {
            destination.add(Character.valueOf(charSequence.charAt(i)));
        }
        return destination;
    }

    public static List<Character> toList(CharSequence charSequence) {
        List<Character> emptyList;
        List<Character> listOf;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length();
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (length == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Character.valueOf(charSequence.charAt(0)));
            return listOf;
        } else {
            return toMutableList(charSequence);
        }
    }

    public static final List<Character> toMutableList(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return (List) toCollection(charSequence, new ArrayList(charSequence.length()));
    }
}
