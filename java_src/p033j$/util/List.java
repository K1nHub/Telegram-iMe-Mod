package p033j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Objects;
import p033j$.util.function.UnaryOperator;
/* renamed from: j$.util.List */
/* loaded from: classes2.dex */
public interface List<E> extends Collection<E> {

    /* renamed from: j$.util.List$-CC  reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static void $default$replaceAll(java.util.List list, UnaryOperator unaryOperator) {
            if (DesugarCollections.f677b.isInstance(list)) {
                DesugarCollections.m688e(list, unaryOperator);
                return;
            }
            Objects.requireNonNull(unaryOperator);
            ListIterator<E> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                listIterator.set((E) unaryOperator.apply(listIterator.next()));
            }
        }

        public static Spliterator $default$spliterator(java.util.List list) {
            Objects.requireNonNull(list);
            return new C2767D(list, 16);
        }
    }

    void add(int i, E e);

    @Override // p033j$.util.Collection
    boolean add(E e);

    boolean addAll(int i, Collection<? extends E> collection);

    @Override // p033j$.util.Collection
    boolean addAll(Collection<? extends E> collection);

    @Override // p033j$.util.Collection
    void clear();

    @Override // p033j$.util.Collection
    boolean contains(Object obj);

    @Override // p033j$.util.Collection
    boolean containsAll(Collection<?> collection);

    @Override // p033j$.util.Collection
    boolean equals(Object obj);

    E get(int i);

    @Override // p033j$.util.Collection
    int hashCode();

    int indexOf(Object obj);

    @Override // p033j$.util.Collection
    boolean isEmpty();

    @Override // p033j$.util.Collection
    Iterator<E> iterator();

    int lastIndexOf(Object obj);

    ListIterator<E> listIterator();

    ListIterator<E> listIterator(int i);

    E remove(int i);

    @Override // p033j$.util.Collection
    boolean remove(Object obj);

    @Override // p033j$.util.Collection
    boolean removeAll(Collection<?> collection);

    void replaceAll(UnaryOperator<E> unaryOperator);

    @Override // p033j$.util.Collection
    boolean retainAll(Collection<?> collection);

    E set(int i, E e);

    @Override // p033j$.util.Collection
    int size();

    void sort(Comparator<? super E> comparator);

    @Override // p033j$.util.Collection, p033j$.lang.InterfaceC2671e
    Spliterator<E> spliterator();

    java.util.List<E> subList(int i, int i2);

    @Override // p033j$.util.Collection
    Object[] toArray();

    @Override // p033j$.util.Collection
    <T> T[] toArray(T[] tArr);
}
