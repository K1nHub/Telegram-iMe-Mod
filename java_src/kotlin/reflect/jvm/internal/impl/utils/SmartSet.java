package kotlin.reflect.jvm.internal.impl.utils;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: SmartSet.kt */
/* loaded from: classes4.dex */
public final class SmartSet<T> extends AbstractSet<T> {
    public static final Companion Companion = new Companion(null);
    private Object data;
    private int size;

    public /* synthetic */ SmartSet(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final <T> SmartSet<T> create() {
        return Companion.create();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }

    /* compiled from: SmartSet.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T> SmartSet<T> create() {
            return new SmartSet<>(null);
        }

        public final <T> SmartSet<T> create(Collection<? extends T> set) {
            Intrinsics.checkNotNullParameter(set, "set");
            SmartSet<T> smartSet = new SmartSet<>(null);
            smartSet.addAll(set);
            return smartSet;
        }
    }

    private SmartSet() {
    }

    public int getSize() {
        return this.size;
    }

    public void setSize(int i) {
        this.size = i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<T> iterator() {
        if (size() == 0) {
            return Collections.emptySet().iterator();
        }
        if (size() == 1) {
            return new SingletonIterator(this.data);
        }
        if (size() < 5) {
            Object obj = this.data;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            return new ArrayIterator((Object[]) obj);
        }
        Object obj2 = this.data;
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
        return TypeIntrinsics.asMutableSet(obj2).iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(T t) {
        boolean contains;
        Object[] objArr;
        LinkedHashSet linkedSetOf;
        if (size() == 0) {
            this.data = t;
        } else if (size() == 1) {
            if (Intrinsics.areEqual(this.data, t)) {
                return false;
            }
            this.data = new Object[]{this.data, t};
        } else if (size() < 5) {
            Object obj = this.data;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            Object[] objArr2 = (Object[]) obj;
            contains = ArraysKt___ArraysKt.contains(objArr2, t);
            if (contains) {
                return false;
            }
            if (size() == 4) {
                linkedSetOf = SetsKt__SetsKt.linkedSetOf(Arrays.copyOf(objArr2, objArr2.length));
                linkedSetOf.add(t);
                objArr = linkedSetOf;
            } else {
                Object[] copyOf = Arrays.copyOf(objArr2, size() + 1);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                copyOf[copyOf.length - 1] = t;
                objArr = copyOf;
            }
            this.data = objArr;
        } else {
            Object obj2 = this.data;
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
            if (!TypeIntrinsics.asMutableSet(obj2).add(t)) {
                return false;
            }
        }
        setSize(size() + 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.data = null;
        setSize(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        boolean contains;
        if (size() == 0) {
            return false;
        }
        if (size() == 1) {
            return Intrinsics.areEqual(this.data, obj);
        }
        if (size() >= 5) {
            Object obj2 = this.data;
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>");
            return ((Set) obj2).contains(obj);
        }
        Object obj3 = this.data;
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
        contains = ArraysKt___ArraysKt.contains((Object[]) obj3, obj);
        return contains;
    }

    /* compiled from: SmartSet.kt */
    /* loaded from: classes4.dex */
    private static final class SingletonIterator<T> implements Iterator<T>, p033j$.util.Iterator, p033j$.util.Iterator {
        private final T element;
        private boolean hasNext = true;

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        public SingletonIterator(T t) {
            this.element = t;
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public T next() {
            if (this.hasNext) {
                this.hasNext = false;
                return this.element;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public Void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: SmartSet.kt */
    /* loaded from: classes4.dex */
    private static final class ArrayIterator<T> implements java.util.Iterator<T>, p033j$.util.Iterator, p033j$.util.Iterator {
        private final java.util.Iterator<T> arrayIterator;

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        public ArrayIterator(T[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.arrayIterator = ArrayIteratorKt.iterator(array);
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public boolean hasNext() {
            return this.arrayIterator.hasNext();
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public T next() {
            return this.arrayIterator.next();
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public Void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
