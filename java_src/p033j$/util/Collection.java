package p033j$.util;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import p033j$.lang.InterfaceC2669e;
import p033j$.util.List;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.Predicate;
import p033j$.util.stream.Stream;
/* renamed from: j$.util.Collection */
/* loaded from: classes2.dex */
public interface Collection<E> extends InterfaceC2669e {

    /* renamed from: j$.util.Collection$-CC */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static boolean $default$removeIf(java.util.Collection collection, Predicate predicate) {
            if (DesugarCollections.f676a.isInstance(collection)) {
                return DesugarCollections.m692d(collection, predicate);
            }
            Objects.requireNonNull(predicate);
            boolean z = false;
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                if (predicate.test(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        public static Spliterator $default$spliterator(java.util.Collection collection) {
            Objects.requireNonNull(collection);
            return new C2765D(collection, 0);
        }

        /* renamed from: a */
        public static void m700a(java.util.Collection collection, Consumer consumer) {
            Objects.requireNonNull(consumer);
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                consumer.accept(it.next());
            }
        }
    }

    /* renamed from: j$.util.Collection$-EL */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class EL {
        /* renamed from: a */
        public static /* synthetic */ void m699a(java.util.Collection collection, Consumer consumer) {
            if (collection instanceof Collection) {
                ((Collection) collection).forEach(consumer);
            } else {
                CC.m700a(collection, consumer);
            }
        }

        /* renamed from: b */
        public static Spliterator m698b(java.util.Collection collection) {
            if (collection instanceof Collection) {
                return ((Collection) collection).spliterator();
            }
            if (collection instanceof LinkedHashSet) {
                LinkedHashSet linkedHashSet = (LinkedHashSet) collection;
                Objects.requireNonNull(linkedHashSet);
                return new C2765D(linkedHashSet, 17);
            } else if (collection instanceof SortedSet) {
                SortedSet sortedSet = (SortedSet) collection;
                return new C2845q(sortedSet, sortedSet, 21);
            } else if (!(collection instanceof Set)) {
                return collection instanceof List ? List.CC.$default$spliterator((java.util.List) collection) : CC.$default$spliterator(collection);
            } else {
                Set set = (Set) collection;
                Objects.requireNonNull(set);
                return new C2765D(set, 1);
            }
        }

        public static /* synthetic */ boolean removeIf(java.util.Collection collection, Predicate predicate) {
            return collection instanceof Collection ? ((Collection) collection).removeIf(predicate) : CC.$default$removeIf(collection, predicate);
        }
    }

    boolean add(E e);

    boolean addAll(java.util.Collection<? extends E> collection);

    void clear();

    boolean contains(Object obj);

    boolean containsAll(java.util.Collection<?> collection);

    boolean equals(Object obj);

    @Override // p033j$.lang.InterfaceC2669e
    void forEach(Consumer<? super E> consumer);

    int hashCode();

    boolean isEmpty();

    Iterator<E> iterator();

    Stream<E> parallelStream();

    boolean remove(Object obj);

    boolean removeAll(java.util.Collection<?> collection);

    boolean removeIf(Predicate<? super E> predicate);

    boolean retainAll(java.util.Collection<?> collection);

    int size();

    @Override // p033j$.lang.InterfaceC2669e
    Spliterator<E> spliterator();

    Stream<E> stream();

    Object[] toArray();

    <T> T[] toArray(IntFunction<T[]> intFunction);

    <T> T[] toArray(T[] tArr);
}
