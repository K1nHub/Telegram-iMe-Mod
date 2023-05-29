package kotlin.collections;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.random.Random;
/* loaded from: classes4.dex */
public final class CollectionsKt extends CollectionsKt___CollectionsKt {
    public static /* bridge */ /* synthetic */ <T> boolean addAll(Collection<? super T> collection, T[] tArr) {
        return CollectionsKt__MutableCollectionsKt.addAll(collection, tArr);
    }

    public static /* bridge */ /* synthetic */ <T> int collectionSizeOrDefault(Iterable<? extends T> iterable, int i) {
        return CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, i);
    }

    public static /* bridge */ /* synthetic */ <T> List<T> distinct(Iterable<? extends T> iterable) {
        return CollectionsKt___CollectionsKt.distinct(iterable);
    }

    public static /* bridge */ /* synthetic */ <T> List<T> emptyList() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    public static /* bridge */ /* synthetic */ <T> T first(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
    }

    public static /* bridge */ /* synthetic */ <T> T firstOrNull(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.firstOrNull(list);
    }

    public static /* bridge */ /* synthetic */ <T> int getLastIndex(List<? extends T> list) {
        return CollectionsKt__CollectionsKt.getLastIndex(list);
    }

    public static /* bridge */ /* synthetic */ <T> T getOrNull(List<? extends T> list, int i) {
        return (T) CollectionsKt___CollectionsKt.getOrNull(list, i);
    }

    public static /* bridge */ /* synthetic */ <T> Set<T> intersect(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return CollectionsKt___CollectionsKt.intersect(iterable, iterable2);
    }

    public static /* bridge */ /* synthetic */ Appendable joinTo$default(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1, int i2, Object obj) {
        Appendable joinTo;
        joinTo = CollectionsKt___CollectionsKt.joinTo(iterable, appendable, (r14 & 2) != 0 ? ", " : charSequence, (r14 & 4) != 0 ? "" : charSequence2, (r14 & 8) == 0 ? charSequence3 : "", (r14 & 16) != 0 ? -1 : i, (r14 & 32) != 0 ? "..." : charSequence4, (r14 & 64) != 0 ? null : function1);
        return joinTo;
    }

    public static /* bridge */ /* synthetic */ <T> T last(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.last(iterable);
    }

    public static /* bridge */ /* synthetic */ <T> T last(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
    }

    public static /* bridge */ /* synthetic */ <T> T lastOrNull(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.lastOrNull(list);
    }

    public static /* bridge */ /* synthetic */ <T> List<T> listOf(T t) {
        return CollectionsKt__CollectionsJVMKt.listOf(t);
    }

    public static /* bridge */ /* synthetic */ <T> List<T> listOf(T... tArr) {
        return CollectionsKt__CollectionsKt.listOf((Object[]) tArr);
    }

    public static /* bridge */ /* synthetic */ <T extends Comparable<? super T>> T maxOrNull(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.maxOrNull(iterable);
    }

    public static /* bridge */ /* synthetic */ <T extends Comparable<? super T>> T minOrNull(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.minOrNull(iterable);
    }

    public static /* bridge */ /* synthetic */ <T> List<T> plus(Collection<? extends T> collection, Iterable<? extends T> iterable) {
        return CollectionsKt___CollectionsKt.plus((Collection) collection, (Iterable) iterable);
    }

    public static /* bridge */ /* synthetic */ <T> List<T> plus(Collection<? extends T> collection, T t) {
        return CollectionsKt___CollectionsKt.plus(collection, t);
    }

    public static /* bridge */ /* synthetic */ <T> T random(Collection<? extends T> collection, Random random) {
        return (T) CollectionsKt___CollectionsKt.random(collection, random);
    }

    public static /* bridge */ /* synthetic */ <T> T removeLast(List<T> list) {
        return (T) CollectionsKt__MutableCollectionsKt.removeLast(list);
    }

    public static /* bridge */ /* synthetic */ <T> T removeLastOrNull(List<T> list) {
        return (T) CollectionsKt__MutableCollectionsKt.removeLastOrNull(list);
    }

    public static /* bridge */ /* synthetic */ <T> T single(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.single(iterable);
    }

    public static /* bridge */ /* synthetic */ void throwIndexOverflow() {
        CollectionsKt__CollectionsKt.throwIndexOverflow();
    }

    public static /* bridge */ /* synthetic */ int[] toIntArray(Collection<Integer> collection) {
        return CollectionsKt___CollectionsKt.toIntArray(collection);
    }

    public static /* bridge */ /* synthetic */ <T> List<T> toList(Iterable<? extends T> iterable) {
        return CollectionsKt___CollectionsKt.toList(iterable);
    }
}
