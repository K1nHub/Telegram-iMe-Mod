package kotlin.comparisons;

import java.util.Comparator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Comparisons.kt */
/* loaded from: classes4.dex */
public class ComparisonsKt__ComparisonsKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> int compareValuesByImpl$ComparisonsKt__ComparisonsKt(T t, T t2, Function1<? super T, ? extends Comparable<?>>[] function1Arr) {
        for (Function1<? super T, ? extends Comparable<?>> function1 : function1Arr) {
            int compareValues = ComparisonsKt.compareValues(function1.invoke(t), function1.invoke(t2));
            if (compareValues != 0) {
                return compareValues;
            }
        }
        return 0;
    }

    public static <T extends Comparable<?>> int compareValues(T t, T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 == null) {
            return 1;
        }
        return t.compareTo(t2);
    }

    public static <T> Comparator<T> compareBy(final Function1<? super T, ? extends Comparable<?>>... selectors) {
        Intrinsics.checkNotNullParameter(selectors, "selectors");
        if (!(selectors.length > 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        return new Comparator() { // from class: kotlin.comparisons.ComparisonsKt__ComparisonsKt$compareBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValuesByImpl$ComparisonsKt__ComparisonsKt;
                compareValuesByImpl$ComparisonsKt__ComparisonsKt = ComparisonsKt__ComparisonsKt.compareValuesByImpl$ComparisonsKt__ComparisonsKt(t, t2, selectors);
                return compareValuesByImpl$ComparisonsKt__ComparisonsKt;
            }
        };
    }

    public static <T extends Comparable<? super T>> Comparator<T> naturalOrder() {
        return NaturalOrderComparator.INSTANCE;
    }
}
