package p034j$.util.concurrent;

import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.LockSupport;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.IntFunction;
import java.util.stream.Stream;
import org.telegram.messenger.LiteMode;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2539b;
import p034j$.util.InterfaceC2611s;
import p034j$.util.Iterator;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C2947L;
import p034j$.wrappers.C2954O0;
import p034j$.wrappers.C2957S;
import p034j$.wrappers.C2979h;
import p034j$.wrappers.C2997q;
import p034j$.wrappers.C3001s;
import p034j$.wrappers.C3009w;
import p034j$.wrappers.C3010w0;
import sun.misc.Unsafe;
/* renamed from: j$.util.concurrent.ConcurrentHashMap */
/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, InterfaceC2567b {

    /* renamed from: g */
    static final int f569g = Runtime.getRuntime().availableProcessors();

    /* renamed from: h */
    private static final Unsafe f570h;

    /* renamed from: i */
    private static final long f571i;

    /* renamed from: j */
    private static final long f572j;

    /* renamed from: k */
    private static final long f573k;

    /* renamed from: l */
    private static final long f574l;

    /* renamed from: m */
    private static final long f575m;

    /* renamed from: n */
    private static final long f576n;

    /* renamed from: o */
    private static final int f577o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;

    /* renamed from: a */
    volatile transient C2552l[] f578a;

    /* renamed from: b */
    private volatile transient C2552l[] f579b;
    private volatile transient long baseCount;

    /* renamed from: c */
    private volatile transient C2543c[] f580c;
    private volatile transient int cellsBusy;

    /* renamed from: d */
    private transient C2549i f581d;

    /* renamed from: e */
    private transient C2561u f582e;

    /* renamed from: f */
    private transient C2545e f583f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$a */
    /* loaded from: classes2.dex */
    public static class C2541a extends C2556p {

        /* renamed from: i */
        final ConcurrentHashMap f584i;

        /* renamed from: j */
        C2552l f585j;

        C2541a(C2552l[] c2552lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2552lArr, i, i2, i3);
            this.f584i = concurrentHashMap;
            m583a();
        }

        public final boolean hasMoreElements() {
            return this.f603b != null;
        }

        public final boolean hasNext() {
            return this.f603b != null;
        }

        public final void remove() {
            C2552l c2552l = this.f585j;
            if (c2552l == null) {
                throw new IllegalStateException();
            }
            this.f585j = null;
            this.f584i.m595i(c2552l.f595b, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$c */
    /* loaded from: classes2.dex */
    public static final class C2543c {
        volatile long value;

        C2543c(long j) {
            this.value = j;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$d */
    /* loaded from: classes2.dex */
    static final class C2544d extends C2541a implements Iterator, p034j$.util.Iterator {
        C2544d(C2552l[] c2552lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2552lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3009w.m109b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public Object next() {
            C2552l c2552l = this.f603b;
            if (c2552l != null) {
                Object obj = c2552l.f595b;
                Object obj2 = c2552l.f596c;
                this.f585j = c2552l;
                m583a();
                return new C2551k(obj, obj2, this.f584i);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$e */
    /* loaded from: classes2.dex */
    public static final class C2545e extends AbstractC2542b implements Set, InterfaceC2539b {
        C2545e(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set
        /* renamed from: a */
        public boolean add(Map.Entry entry) {
            return this.f586a.m596h(entry.getKey(), entry.getValue(), false) == null;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean addAll(Collection collection) {
            java.util.Iterator it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (add((Map.Entry) it.next())) {
                    z = true;
                }
            }
            return z;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2542b, java.util.Collection
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            Object value;
            return (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = this.f586a.get(key)) == null || (value = entry.getValue()) == null || (value != obj2 && !value.equals(obj2))) ? false : true;
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p034j$.util.InterfaceC2539b, p034j$.lang.InterfaceC2485e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2552l[] c2552lArr = this.f586a.f578a;
            if (c2552lArr == null) {
                return;
            }
            C2556p c2556p = new C2556p(c2552lArr, c2552lArr.length, 0, c2552lArr.length);
            while (true) {
                C2552l m583a = c2556p.m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(new C2551k(m583a.f595b, m583a.f596c, this.f586a));
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3009w.m109b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            C2552l[] c2552lArr = this.f586a.f578a;
            int i = 0;
            if (c2552lArr != null) {
                C2556p c2556p = new C2556p(c2552lArr, c2552lArr.length, 0, c2552lArr.length);
                while (true) {
                    C2552l m583a = c2556p.m583a();
                    if (m583a == null) {
                        break;
                    }
                    i += m583a.hashCode();
                }
            }
            return i;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2542b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f586a;
            C2552l[] c2552lArr = concurrentHashMap.f578a;
            int length = c2552lArr == null ? 0 : c2552lArr.length;
            return new C2544d(c2552lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2539b
        /* renamed from: k */
        public /* synthetic */ boolean mo571k(Predicate predicate) {
            return AbstractC2538a.m619h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C2954O0.m182n0(AbstractC2538a.m620g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && this.f586a.remove(key, value);
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2538a.m619h(this, C3010w0.m108a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2539b, p034j$.lang.InterfaceC2485e
        public InterfaceC2611s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f586a;
            long m591m = concurrentHashMap.m591m();
            C2552l[] c2552lArr = concurrentHashMap.f578a;
            int length = c2552lArr == null ? 0 : c2552lArr.length;
            return new C2546f(c2552lArr, length, 0, length, m591m >= 0 ? m591m : 0L, concurrentHashMap);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C2979h.m150a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2539b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2538a.m618i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C2954O0.m182n0(AbstractC2538a.m618i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C2957S.m178a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$f */
    /* loaded from: classes2.dex */
    public static final class C2546f extends C2556p implements InterfaceC2611s {

        /* renamed from: i */
        final ConcurrentHashMap f587i;

        /* renamed from: j */
        long f588j;

        C2546f(C2552l[] c2552lArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
            super(c2552lArr, i, i2, i3);
            this.f587i = concurrentHashMap;
            this.f588j = j;
        }

        @Override // p034j$.util.InterfaceC2611s
        /* renamed from: b */
        public boolean mo128b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2552l m583a = m583a();
            if (m583a == null) {
                return false;
            }
            consumer.accept(new C2551k(m583a.f595b, m583a.f596c, this.f587i));
            return true;
        }

        @Override // p034j$.util.InterfaceC2611s
        public int characteristics() {
            return 4353;
        }

        @Override // p034j$.util.InterfaceC2611s
        public long estimateSize() {
            return this.f588j;
        }

        @Override // p034j$.util.InterfaceC2611s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2552l m583a = m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(new C2551k(m583a.f595b, m583a.f596c, this.f587i));
            }
        }

        @Override // p034j$.util.InterfaceC2611s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2538a.m622e(this);
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2538a.m621f(this, i);
        }

        @Override // p034j$.util.InterfaceC2611s
        public InterfaceC2611s trySplit() {
            int i = this.f607f;
            int i2 = this.f608g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2552l[] c2552lArr = this.f602a;
            int i4 = this.f609h;
            this.f608g = i3;
            long j = this.f588j >>> 1;
            this.f588j = j;
            return new C2546f(c2552lArr, i4, i3, i2, j, this.f587i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$g */
    /* loaded from: classes2.dex */
    public static final class C2547g extends C2552l {

        /* renamed from: e */
        final C2552l[] f589e;

        C2547g(C2552l[] c2552lArr) {
            super(-1, null, null, null);
            this.f589e = c2552lArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
            if ((r0 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2547g) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
            r0 = ((p034j$.util.concurrent.ConcurrentHashMap.C2547g) r0).f589e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
            return r0.mo573a(r5, r6);
         */
        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2552l
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        p034j$.util.concurrent.ConcurrentHashMap.C2552l mo573a(int r5, java.lang.Object r6) {
            /*
                r4 = this;
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r4.f589e
            L2:
                r1 = 0
                if (r0 == 0) goto L37
                int r2 = r0.length
                if (r2 == 0) goto L37
                int r2 = r2 + (-1)
                r2 = r2 & r5
                j$.util.concurrent.ConcurrentHashMap$l r0 = p034j$.util.concurrent.ConcurrentHashMap.m590n(r0, r2)
                if (r0 != 0) goto L12
                goto L37
            L12:
                int r2 = r0.f594a
                if (r2 != r5) goto L23
                java.lang.Object r3 = r0.f595b
                if (r3 == r6) goto L22
                if (r3 == 0) goto L23
                boolean r3 = r6.equals(r3)
                if (r3 == 0) goto L23
            L22:
                return r0
            L23:
                if (r2 >= 0) goto L33
                boolean r1 = r0 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2547g
                if (r1 == 0) goto L2e
                j$.util.concurrent.ConcurrentHashMap$g r0 = (p034j$.util.concurrent.ConcurrentHashMap.C2547g) r0
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r0.f589e
                goto L2
            L2e:
                j$.util.concurrent.ConcurrentHashMap$l r5 = r0.mo573a(r5, r6)
                return r5
            L33:
                j$.util.concurrent.ConcurrentHashMap$l r0 = r0.f597d
                if (r0 != 0) goto L12
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2547g.mo573a(int, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$l");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$h */
    /* loaded from: classes2.dex */
    public static final class C2548h extends C2541a implements java.util.Iterator, Enumeration, p034j$.util.Iterator {
        C2548h(C2552l[] c2552lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2552lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3009w.m109b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public final Object next() {
            C2552l c2552l = this.f603b;
            if (c2552l != null) {
                Object obj = c2552l.f595b;
                this.f585j = c2552l;
                m583a();
                return obj;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Enumeration
        public final Object nextElement() {
            return next();
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$i */
    /* loaded from: classes2.dex */
    public static class C2549i extends AbstractC2542b implements Set, InterfaceC2539b {
        C2549i(ConcurrentHashMap concurrentHashMap, Object obj) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2542b, java.util.Collection
        public boolean contains(Object obj) {
            return this.f586a.containsKey(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p034j$.util.InterfaceC2539b, p034j$.lang.InterfaceC2485e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2552l[] c2552lArr = this.f586a.f578a;
            if (c2552lArr == null) {
                return;
            }
            C2556p c2556p = new C2556p(c2552lArr, c2552lArr.length, 0, c2552lArr.length);
            while (true) {
                C2552l m583a = c2556p.m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(m583a.f595b);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3009w.m109b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            java.util.Iterator it = iterator();
            int i = 0;
            while (((C2541a) it).hasNext()) {
                i += ((C2548h) it).next().hashCode();
            }
            return i;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2542b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f586a;
            C2552l[] c2552lArr = concurrentHashMap.f578a;
            int length = c2552lArr == null ? 0 : c2552lArr.length;
            return new C2548h(c2552lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2539b
        /* renamed from: k */
        public /* synthetic */ boolean mo571k(Predicate predicate) {
            return AbstractC2538a.m619h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C2954O0.m182n0(AbstractC2538a.m620g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f586a.remove(obj) != null;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2538a.m619h(this, C3010w0.m108a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2539b, p034j$.lang.InterfaceC2485e
        public InterfaceC2611s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f586a;
            long m591m = concurrentHashMap.m591m();
            C2552l[] c2552lArr = concurrentHashMap.f578a;
            int length = c2552lArr == null ? 0 : c2552lArr.length;
            return new C2550j(c2552lArr, length, 0, length, m591m >= 0 ? m591m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C2979h.m150a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2539b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2538a.m618i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C2954O0.m182n0(AbstractC2538a.m618i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C2957S.m178a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$j */
    /* loaded from: classes2.dex */
    public static final class C2550j extends C2556p implements InterfaceC2611s {

        /* renamed from: i */
        long f590i;

        C2550j(C2552l[] c2552lArr, int i, int i2, int i3, long j) {
            super(c2552lArr, i, i2, i3);
            this.f590i = j;
        }

        @Override // p034j$.util.InterfaceC2611s
        /* renamed from: b */
        public boolean mo128b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2552l m583a = m583a();
            if (m583a == null) {
                return false;
            }
            consumer.accept(m583a.f595b);
            return true;
        }

        @Override // p034j$.util.InterfaceC2611s
        public int characteristics() {
            return 4353;
        }

        @Override // p034j$.util.InterfaceC2611s
        public long estimateSize() {
            return this.f590i;
        }

        @Override // p034j$.util.InterfaceC2611s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2552l m583a = m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(m583a.f595b);
            }
        }

        @Override // p034j$.util.InterfaceC2611s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2538a.m622e(this);
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2538a.m621f(this, i);
        }

        @Override // p034j$.util.InterfaceC2611s
        public InterfaceC2611s trySplit() {
            int i = this.f607f;
            int i2 = this.f608g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2552l[] c2552lArr = this.f602a;
            int i4 = this.f609h;
            this.f608g = i3;
            long j = this.f590i >>> 1;
            this.f590i = j;
            return new C2550j(c2552lArr, i4, i3, i2, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$k */
    /* loaded from: classes2.dex */
    public static final class C2551k implements Map.Entry {

        /* renamed from: a */
        final Object f591a;

        /* renamed from: b */
        Object f592b;

        /* renamed from: c */
        final ConcurrentHashMap f593c;

        C2551k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
            this.f591a = obj;
            this.f592b = obj2;
            this.f593c = concurrentHashMap;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f591a) || key.equals(obj2)) && (value == (obj3 = this.f592b) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f591a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f592b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f591a.hashCode() ^ this.f592b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Objects.requireNonNull(obj);
            Object obj2 = this.f592b;
            this.f592b = obj;
            this.f593c.put(this.f591a, obj);
            return obj2;
        }

        public String toString() {
            return this.f591a + "=" + this.f592b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$l */
    /* loaded from: classes2.dex */
    public static class C2552l implements Map.Entry {

        /* renamed from: a */
        final int f594a;

        /* renamed from: b */
        final Object f595b;

        /* renamed from: c */
        volatile Object f596c;

        /* renamed from: d */
        volatile C2552l f597d;

        C2552l(int i, Object obj, Object obj2, C2552l c2552l) {
            this.f594a = i;
            this.f595b = obj;
            this.f596c = obj2;
            this.f597d = c2552l;
        }

        /* renamed from: a */
        C2552l mo573a(int i, Object obj) {
            Object obj2;
            C2552l c2552l = this;
            do {
                if (c2552l.f594a == i && ((obj2 = c2552l.f595b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return c2552l;
                }
                c2552l = c2552l.f597d;
            } while (c2552l != null);
            return null;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f595b) || key.equals(obj2)) && (value == (obj3 = this.f596c) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f595b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f596c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f595b.hashCode() ^ this.f596c.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public final String toString() {
            return this.f595b + "=" + this.f596c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$m */
    /* loaded from: classes2.dex */
    public static final class C2553m extends C2552l {
        C2553m() {
            super(-3, null, null, null);
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2552l
        /* renamed from: a */
        C2552l mo573a(int i, Object obj) {
            return null;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$n */
    /* loaded from: classes2.dex */
    static class C2554n extends ReentrantLock {
        C2554n(float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$o */
    /* loaded from: classes2.dex */
    public static final class C2555o {

        /* renamed from: a */
        int f598a;

        /* renamed from: b */
        int f599b;

        /* renamed from: c */
        C2552l[] f600c;

        /* renamed from: d */
        C2555o f601d;

        C2555o() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$p */
    /* loaded from: classes2.dex */
    public static class C2556p {

        /* renamed from: a */
        C2552l[] f602a;

        /* renamed from: b */
        C2552l f603b = null;

        /* renamed from: c */
        C2555o f604c;

        /* renamed from: d */
        C2555o f605d;

        /* renamed from: e */
        int f606e;

        /* renamed from: f */
        int f607f;

        /* renamed from: g */
        int f608g;

        /* renamed from: h */
        final int f609h;

        C2556p(C2552l[] c2552lArr, int i, int i2, int i3) {
            this.f602a = c2552lArr;
            this.f609h = i;
            this.f606e = i2;
            this.f607f = i2;
            this.f608g = i3;
        }

        /* renamed from: a */
        final C2552l m583a() {
            C2552l[] c2552lArr;
            int length;
            int i;
            C2555o c2555o;
            C2552l c2552l = this.f603b;
            if (c2552l != null) {
                c2552l = c2552l.f597d;
            }
            while (c2552l == null) {
                if (this.f607f >= this.f608g || (c2552lArr = this.f602a) == null || (length = c2552lArr.length) <= (i = this.f606e) || i < 0) {
                    this.f603b = null;
                    return null;
                }
                C2552l m590n = ConcurrentHashMap.m590n(c2552lArr, i);
                if (m590n == null || m590n.f594a >= 0) {
                    c2552l = m590n;
                } else if (m590n instanceof C2547g) {
                    this.f602a = ((C2547g) m590n).f589e;
                    C2555o c2555o2 = this.f605d;
                    if (c2555o2 != null) {
                        this.f605d = c2555o2.f601d;
                    } else {
                        c2555o2 = new C2555o();
                    }
                    c2555o2.f600c = c2552lArr;
                    c2555o2.f598a = length;
                    c2555o2.f599b = i;
                    c2555o2.f601d = this.f604c;
                    this.f604c = c2555o2;
                    c2552l = null;
                } else {
                    c2552l = m590n instanceof C2557q ? ((C2557q) m590n).f613f : null;
                }
                if (this.f604c != null) {
                    while (true) {
                        c2555o = this.f604c;
                        if (c2555o == null) {
                            break;
                        }
                        int i2 = this.f606e;
                        int i3 = c2555o.f598a;
                        int i4 = i2 + i3;
                        this.f606e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.f606e = c2555o.f599b;
                        this.f602a = c2555o.f600c;
                        c2555o.f600c = null;
                        C2555o c2555o3 = c2555o.f601d;
                        c2555o.f601d = this.f605d;
                        this.f604c = c2555o3;
                        this.f605d = c2555o;
                        length = i3;
                    }
                    if (c2555o == null) {
                        int i5 = this.f606e + this.f609h;
                        this.f606e = i5;
                        if (i5 >= length) {
                            int i6 = this.f607f + 1;
                            this.f607f = i6;
                            this.f606e = i6;
                        }
                    }
                } else {
                    int i7 = i + this.f609h;
                    this.f606e = i7;
                    if (i7 >= length) {
                        int i8 = this.f607f + 1;
                        this.f607f = i8;
                        this.f606e = i8;
                    }
                }
            }
            this.f603b = c2552l;
            return c2552l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$q */
    /* loaded from: classes2.dex */
    public static final class C2557q extends C2552l {

        /* renamed from: h */
        private static final Unsafe f610h;

        /* renamed from: i */
        private static final long f611i;

        /* renamed from: e */
        C2558r f612e;

        /* renamed from: f */
        volatile C2558r f613f;

        /* renamed from: g */
        volatile Thread f614g;
        volatile int lockState;

        static {
            try {
                Unsafe m556c = AbstractC2568c.m556c();
                f610h = m556c;
                f611i = m556c.objectFieldOffset(C2557q.class.getDeclaredField("lockState"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        C2557q(C2558r c2558r) {
            super(-2, null, null, null);
            int m600d;
            int m574j;
            this.f613f = c2558r;
            C2558r c2558r2 = null;
            while (c2558r != null) {
                C2558r c2558r3 = (C2558r) c2558r.f597d;
                c2558r.f617g = null;
                c2558r.f616f = null;
                if (c2558r2 == null) {
                    c2558r.f615e = null;
                    c2558r.f619i = false;
                } else {
                    Object obj = c2558r.f595b;
                    int i = c2558r.f594a;
                    C2558r c2558r4 = c2558r2;
                    Class cls = null;
                    while (true) {
                        Object obj2 = c2558r4.f595b;
                        int i2 = c2558r4.f594a;
                        m574j = i2 > i ? -1 : i2 < i ? 1 : ((cls == null && (cls = ConcurrentHashMap.m601c(obj)) == null) || (m600d = ConcurrentHashMap.m600d(cls, obj, obj2)) == 0) ? m574j(obj, obj2) : m600d;
                        C2558r c2558r5 = m574j <= 0 ? c2558r4.f616f : c2558r4.f617g;
                        if (c2558r5 == null) {
                            break;
                        }
                        c2558r4 = c2558r5;
                    }
                    c2558r.f615e = c2558r4;
                    if (m574j <= 0) {
                        c2558r4.f616f = c2558r;
                    } else {
                        c2558r4.f617g = c2558r;
                    }
                    c2558r = m581c(c2558r2, c2558r);
                }
                c2558r2 = c2558r;
                c2558r = c2558r3;
            }
            this.f612e = c2558r2;
        }

        /* renamed from: b */
        static C2558r m582b(C2558r c2558r, C2558r c2558r2) {
            while (c2558r2 != null && c2558r2 != c2558r) {
                C2558r c2558r3 = c2558r2.f615e;
                if (c2558r3 == null) {
                    c2558r2.f619i = false;
                    return c2558r2;
                } else if (c2558r2.f619i) {
                    c2558r2.f619i = false;
                    return c2558r;
                } else {
                    C2558r c2558r4 = c2558r3.f616f;
                    C2558r c2558r5 = null;
                    if (c2558r4 == c2558r2) {
                        c2558r4 = c2558r3.f617g;
                        if (c2558r4 != null && c2558r4.f619i) {
                            c2558r4.f619i = false;
                            c2558r3.f619i = true;
                            c2558r = m576h(c2558r, c2558r3);
                            c2558r3 = c2558r2.f615e;
                            c2558r4 = c2558r3 == null ? null : c2558r3.f617g;
                        }
                        if (c2558r4 == null) {
                            c2558r2 = c2558r3;
                        } else {
                            C2558r c2558r6 = c2558r4.f616f;
                            C2558r c2558r7 = c2558r4.f617g;
                            if ((c2558r7 != null && c2558r7.f619i) || (c2558r6 != null && c2558r6.f619i)) {
                                if (c2558r7 == null || !c2558r7.f619i) {
                                    if (c2558r6 != null) {
                                        c2558r6.f619i = false;
                                    }
                                    c2558r4.f619i = true;
                                    c2558r = m575i(c2558r, c2558r4);
                                    c2558r3 = c2558r2.f615e;
                                    if (c2558r3 != null) {
                                        c2558r5 = c2558r3.f617g;
                                    }
                                } else {
                                    c2558r5 = c2558r4;
                                }
                                if (c2558r5 != null) {
                                    c2558r5.f619i = c2558r3 == null ? false : c2558r3.f619i;
                                    C2558r c2558r8 = c2558r5.f617g;
                                    if (c2558r8 != null) {
                                        c2558r8.f619i = false;
                                    }
                                }
                                if (c2558r3 != null) {
                                    c2558r3.f619i = false;
                                    c2558r = m576h(c2558r, c2558r3);
                                }
                                c2558r2 = c2558r;
                                c2558r = c2558r2;
                            }
                            c2558r4.f619i = true;
                            c2558r2 = c2558r3;
                        }
                    } else {
                        if (c2558r4 != null && c2558r4.f619i) {
                            c2558r4.f619i = false;
                            c2558r3.f619i = true;
                            c2558r = m575i(c2558r, c2558r3);
                            c2558r3 = c2558r2.f615e;
                            c2558r4 = c2558r3 == null ? null : c2558r3.f616f;
                        }
                        if (c2558r4 == null) {
                            c2558r2 = c2558r3;
                        } else {
                            C2558r c2558r9 = c2558r4.f616f;
                            C2558r c2558r10 = c2558r4.f617g;
                            if ((c2558r9 != null && c2558r9.f619i) || (c2558r10 != null && c2558r10.f619i)) {
                                if (c2558r9 == null || !c2558r9.f619i) {
                                    if (c2558r10 != null) {
                                        c2558r10.f619i = false;
                                    }
                                    c2558r4.f619i = true;
                                    c2558r = m576h(c2558r, c2558r4);
                                    c2558r3 = c2558r2.f615e;
                                    if (c2558r3 != null) {
                                        c2558r5 = c2558r3.f616f;
                                    }
                                } else {
                                    c2558r5 = c2558r4;
                                }
                                if (c2558r5 != null) {
                                    c2558r5.f619i = c2558r3 == null ? false : c2558r3.f619i;
                                    C2558r c2558r11 = c2558r5.f616f;
                                    if (c2558r11 != null) {
                                        c2558r11.f619i = false;
                                    }
                                }
                                if (c2558r3 != null) {
                                    c2558r3.f619i = false;
                                    c2558r = m575i(c2558r, c2558r3);
                                }
                                c2558r2 = c2558r;
                                c2558r = c2558r2;
                            }
                            c2558r4.f619i = true;
                            c2558r2 = c2558r3;
                        }
                    }
                }
            }
            return c2558r;
        }

        /* renamed from: c */
        static C2558r m581c(C2558r c2558r, C2558r c2558r2) {
            C2558r c2558r3;
            c2558r2.f619i = true;
            while (true) {
                C2558r c2558r4 = c2558r2.f615e;
                if (c2558r4 == null) {
                    c2558r2.f619i = false;
                    return c2558r2;
                } else if (!c2558r4.f619i || (c2558r3 = c2558r4.f615e) == null) {
                    break;
                } else {
                    C2558r c2558r5 = c2558r3.f616f;
                    if (c2558r4 == c2558r5) {
                        c2558r5 = c2558r3.f617g;
                        if (c2558r5 == null || !c2558r5.f619i) {
                            if (c2558r2 == c2558r4.f617g) {
                                c2558r = m576h(c2558r, c2558r4);
                                C2558r c2558r6 = c2558r4.f615e;
                                c2558r3 = c2558r6 == null ? null : c2558r6.f615e;
                                c2558r4 = c2558r6;
                                c2558r2 = c2558r4;
                            }
                            if (c2558r4 != null) {
                                c2558r4.f619i = false;
                                if (c2558r3 != null) {
                                    c2558r3.f619i = true;
                                    c2558r = m575i(c2558r, c2558r3);
                                }
                            }
                        } else {
                            c2558r5.f619i = false;
                            c2558r4.f619i = false;
                            c2558r3.f619i = true;
                            c2558r2 = c2558r3;
                        }
                    } else if (c2558r5 == null || !c2558r5.f619i) {
                        if (c2558r2 == c2558r4.f616f) {
                            c2558r = m575i(c2558r, c2558r4);
                            C2558r c2558r7 = c2558r4.f615e;
                            c2558r3 = c2558r7 == null ? null : c2558r7.f615e;
                            c2558r4 = c2558r7;
                            c2558r2 = c2558r4;
                        }
                        if (c2558r4 != null) {
                            c2558r4.f619i = false;
                            if (c2558r3 != null) {
                                c2558r3.f619i = true;
                                c2558r = m576h(c2558r, c2558r3);
                            }
                        }
                    } else {
                        c2558r5.f619i = false;
                        c2558r4.f619i = false;
                        c2558r3.f619i = true;
                        c2558r2 = c2558r3;
                    }
                }
            }
            return c2558r;
        }

        /* renamed from: d */
        private final void m580d() {
            boolean z = false;
            while (true) {
                int i = this.lockState;
                if ((i & (-3)) == 0) {
                    if (f610h.compareAndSwapInt(this, f611i, i, 1)) {
                        break;
                    }
                } else if ((i & 2) == 0) {
                    if (f610h.compareAndSwapInt(this, f611i, i, i | 2)) {
                        z = true;
                        this.f614g = Thread.currentThread();
                    }
                } else if (z) {
                    LockSupport.park(this);
                }
            }
            if (z) {
                this.f614g = null;
            }
        }

        /* renamed from: e */
        private final void m579e() {
            if (f610h.compareAndSwapInt(this, f611i, 0, 1)) {
                return;
            }
            m580d();
        }

        /* renamed from: h */
        static C2558r m576h(C2558r c2558r, C2558r c2558r2) {
            C2558r c2558r3 = c2558r2.f617g;
            if (c2558r3 != null) {
                C2558r c2558r4 = c2558r3.f616f;
                c2558r2.f617g = c2558r4;
                if (c2558r4 != null) {
                    c2558r4.f615e = c2558r2;
                }
                C2558r c2558r5 = c2558r2.f615e;
                c2558r3.f615e = c2558r5;
                if (c2558r5 == null) {
                    c2558r3.f619i = false;
                    c2558r = c2558r3;
                } else if (c2558r5.f616f == c2558r2) {
                    c2558r5.f616f = c2558r3;
                } else {
                    c2558r5.f617g = c2558r3;
                }
                c2558r3.f616f = c2558r2;
                c2558r2.f615e = c2558r3;
            }
            return c2558r;
        }

        /* renamed from: i */
        static C2558r m575i(C2558r c2558r, C2558r c2558r2) {
            C2558r c2558r3 = c2558r2.f616f;
            if (c2558r3 != null) {
                C2558r c2558r4 = c2558r3.f617g;
                c2558r2.f616f = c2558r4;
                if (c2558r4 != null) {
                    c2558r4.f615e = c2558r2;
                }
                C2558r c2558r5 = c2558r2.f615e;
                c2558r3.f615e = c2558r5;
                if (c2558r5 == null) {
                    c2558r3.f619i = false;
                    c2558r = c2558r3;
                } else if (c2558r5.f617g == c2558r2) {
                    c2558r5.f617g = c2558r3;
                } else {
                    c2558r5.f616f = c2558r3;
                }
                c2558r3.f617g = c2558r2;
                c2558r2.f615e = c2558r3;
            }
            return c2558r;
        }

        /* renamed from: j */
        static int m574j(Object obj, Object obj2) {
            int compareTo;
            return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2552l
        /* renamed from: a */
        final C2552l mo573a(int i, Object obj) {
            Object obj2;
            Thread thread;
            Thread thread2;
            C2552l c2552l = this.f613f;
            while (true) {
                C2558r c2558r = null;
                if (c2552l == null) {
                    return null;
                }
                int i2 = this.lockState;
                if ((i2 & 3) == 0) {
                    Unsafe unsafe = f610h;
                    long j = f611i;
                    if (unsafe.compareAndSwapInt(this, j, i2, i2 + 4)) {
                        try {
                            C2558r c2558r2 = this.f612e;
                            if (c2558r2 != null) {
                                c2558r = c2558r2.m572b(i, obj, null);
                            }
                            if (AbstractC2568c.m558a(unsafe, this, j, -4) == 6 && (thread2 = this.f614g) != null) {
                                LockSupport.unpark(thread2);
                            }
                            return c2558r;
                        } catch (Throwable th) {
                            if (AbstractC2568c.m558a(f610h, this, f611i, -4) == 6 && (thread = this.f614g) != null) {
                                LockSupport.unpark(thread);
                            }
                            throw th;
                        }
                    }
                } else if (c2552l.f594a != i || ((obj2 = c2552l.f595b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                    c2552l = c2552l.f597d;
                }
            }
            return c2552l;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
            return r3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00a3, code lost:
            return null;
         */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final p034j$.util.concurrent.ConcurrentHashMap.C2558r m578f(int r16, java.lang.Object r17, java.lang.Object r18) {
            /*
                r15 = this;
                r1 = r15
                r0 = r16
                r4 = r17
                j$.util.concurrent.ConcurrentHashMap$r r2 = r1.f612e
                r8 = 0
                r9 = 0
                r10 = r2
                r2 = r8
                r3 = 0
            Lc:
                if (r10 != 0) goto L22
                j$.util.concurrent.ConcurrentHashMap$r r9 = new j$.util.concurrent.ConcurrentHashMap$r
                r6 = 0
                r7 = 0
                r2 = r9
                r3 = r16
                r4 = r17
                r5 = r18
                r2.<init>(r3, r4, r5, r6, r7)
                r1.f612e = r9
                r1.f613f = r9
                goto La3
            L22:
                int r5 = r10.f594a
                r11 = 1
                if (r5 <= r0) goto L2a
                r5 = -1
                r12 = -1
                goto L69
            L2a:
                if (r5 >= r0) goto L2e
                r12 = 1
                goto L69
            L2e:
                java.lang.Object r5 = r10.f595b
                if (r5 == r4) goto Lab
                if (r5 == 0) goto L3c
                boolean r6 = r4.equals(r5)
                if (r6 == 0) goto L3c
                goto Lab
            L3c:
                if (r2 != 0) goto L44
                java.lang.Class r2 = p034j$.util.concurrent.ConcurrentHashMap.m601c(r17)
                if (r2 == 0) goto L4a
            L44:
                int r6 = p034j$.util.concurrent.ConcurrentHashMap.m600d(r2, r4, r5)
                if (r6 != 0) goto L68
            L4a:
                if (r3 != 0) goto L62
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f616f
                if (r3 == 0) goto L56
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m572b(r0, r4, r2)
                if (r3 != 0) goto L60
            L56:
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f617g
                if (r3 == 0) goto L61
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m572b(r0, r4, r2)
                if (r3 == 0) goto L61
            L60:
                return r3
            L61:
                r3 = 1
            L62:
                int r5 = m574j(r4, r5)
                r12 = r5
                goto L69
            L68:
                r12 = r6
            L69:
                if (r12 > 0) goto L6e
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f616f
                goto L70
            L6e:
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f617g
            L70:
                if (r5 != 0) goto La8
                j$.util.concurrent.ConcurrentHashMap$r r13 = r1.f613f
                j$.util.concurrent.ConcurrentHashMap$r r14 = new j$.util.concurrent.ConcurrentHashMap$r
                r2 = r14
                r3 = r16
                r4 = r17
                r5 = r18
                r6 = r13
                r7 = r10
                r2.<init>(r3, r4, r5, r6, r7)
                r1.f613f = r14
                if (r13 == 0) goto L88
                r13.f618h = r14
            L88:
                if (r12 > 0) goto L8d
                r10.f616f = r14
                goto L8f
            L8d:
                r10.f617g = r14
            L8f:
                boolean r0 = r10.f619i
                if (r0 != 0) goto L96
                r14.f619i = r11
                goto La3
            L96:
                r15.m579e()
                j$.util.concurrent.ConcurrentHashMap$r r0 = r1.f612e     // Catch: java.lang.Throwable -> La4
                j$.util.concurrent.ConcurrentHashMap$r r0 = m581c(r0, r14)     // Catch: java.lang.Throwable -> La4
                r1.f612e = r0     // Catch: java.lang.Throwable -> La4
                r1.lockState = r9
            La3:
                return r8
            La4:
                r0 = move-exception
                r1.lockState = r9
                throw r0
            La8:
                r10 = r5
                goto Lc
            Lab:
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2557q.m578f(int, java.lang.Object, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$r");
        }

        /* JADX WARN: Removed duplicated region for block: B:57:0x008e A[Catch: all -> 0x00c8, TryCatch #0 {all -> 0x00c8, blocks: (B:22:0x0030, B:26:0x0039, B:29:0x003f, B:31:0x004d, B:39:0x0065, B:41:0x006b, B:42:0x006d, B:57:0x008e, B:64:0x009f, B:60:0x0096, B:62:0x009a, B:63:0x009d, B:65:0x00a5, B:69:0x00ae, B:71:0x00b2, B:73:0x00b6, B:75:0x00ba, B:79:0x00c3, B:76:0x00bd, B:78:0x00c1, B:68:0x00aa, B:45:0x0077, B:47:0x007b, B:48:0x007e, B:32:0x0052, B:34:0x0058, B:36:0x005c, B:37:0x005f, B:38:0x0061), top: B:86:0x0030 }] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x00aa A[Catch: all -> 0x00c8, TryCatch #0 {all -> 0x00c8, blocks: (B:22:0x0030, B:26:0x0039, B:29:0x003f, B:31:0x004d, B:39:0x0065, B:41:0x006b, B:42:0x006d, B:57:0x008e, B:64:0x009f, B:60:0x0096, B:62:0x009a, B:63:0x009d, B:65:0x00a5, B:69:0x00ae, B:71:0x00b2, B:73:0x00b6, B:75:0x00ba, B:79:0x00c3, B:76:0x00bd, B:78:0x00c1, B:68:0x00aa, B:45:0x0077, B:47:0x007b, B:48:0x007e, B:32:0x0052, B:34:0x0058, B:36:0x005c, B:37:0x005f, B:38:0x0061), top: B:86:0x0030 }] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x00b2 A[Catch: all -> 0x00c8, TryCatch #0 {all -> 0x00c8, blocks: (B:22:0x0030, B:26:0x0039, B:29:0x003f, B:31:0x004d, B:39:0x0065, B:41:0x006b, B:42:0x006d, B:57:0x008e, B:64:0x009f, B:60:0x0096, B:62:0x009a, B:63:0x009d, B:65:0x00a5, B:69:0x00ae, B:71:0x00b2, B:73:0x00b6, B:75:0x00ba, B:79:0x00c3, B:76:0x00bd, B:78:0x00c1, B:68:0x00aa, B:45:0x0077, B:47:0x007b, B:48:0x007e, B:32:0x0052, B:34:0x0058, B:36:0x005c, B:37:0x005f, B:38:0x0061), top: B:86:0x0030 }] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00ba A[Catch: all -> 0x00c8, TryCatch #0 {all -> 0x00c8, blocks: (B:22:0x0030, B:26:0x0039, B:29:0x003f, B:31:0x004d, B:39:0x0065, B:41:0x006b, B:42:0x006d, B:57:0x008e, B:64:0x009f, B:60:0x0096, B:62:0x009a, B:63:0x009d, B:65:0x00a5, B:69:0x00ae, B:71:0x00b2, B:73:0x00b6, B:75:0x00ba, B:79:0x00c3, B:76:0x00bd, B:78:0x00c1, B:68:0x00aa, B:45:0x0077, B:47:0x007b, B:48:0x007e, B:32:0x0052, B:34:0x0058, B:36:0x005c, B:37:0x005f, B:38:0x0061), top: B:86:0x0030 }] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x00bd A[Catch: all -> 0x00c8, TryCatch #0 {all -> 0x00c8, blocks: (B:22:0x0030, B:26:0x0039, B:29:0x003f, B:31:0x004d, B:39:0x0065, B:41:0x006b, B:42:0x006d, B:57:0x008e, B:64:0x009f, B:60:0x0096, B:62:0x009a, B:63:0x009d, B:65:0x00a5, B:69:0x00ae, B:71:0x00b2, B:73:0x00b6, B:75:0x00ba, B:79:0x00c3, B:76:0x00bd, B:78:0x00c1, B:68:0x00aa, B:45:0x0077, B:47:0x007b, B:48:0x007e, B:32:0x0052, B:34:0x0058, B:36:0x005c, B:37:0x005f, B:38:0x0061), top: B:86:0x0030 }] */
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final boolean m577g(p034j$.util.concurrent.ConcurrentHashMap.C2558r r11) {
            /*
                Method dump skipped, instructions count: 205
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2557q.m577g(j$.util.concurrent.ConcurrentHashMap$r):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$r */
    /* loaded from: classes2.dex */
    public static final class C2558r extends C2552l {

        /* renamed from: e */
        C2558r f615e;

        /* renamed from: f */
        C2558r f616f;

        /* renamed from: g */
        C2558r f617g;

        /* renamed from: h */
        C2558r f618h;

        /* renamed from: i */
        boolean f619i;

        C2558r(int i, Object obj, Object obj2, C2552l c2552l, C2558r c2558r) {
            super(i, obj, obj2, c2552l);
            this.f615e = c2558r;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2552l
        /* renamed from: a */
        C2552l mo573a(int i, Object obj) {
            return m572b(i, obj, null);
        }

        /* renamed from: b */
        final C2558r m572b(int i, Object obj, Class cls) {
            int m600d;
            if (obj != null) {
                C2558r c2558r = this;
                do {
                    C2558r c2558r2 = c2558r.f616f;
                    C2558r c2558r3 = c2558r.f617g;
                    int i2 = c2558r.f594a;
                    if (i2 <= i) {
                        if (i2 >= i) {
                            Object obj2 = c2558r.f595b;
                            if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                                return c2558r;
                            }
                            if (c2558r2 != null) {
                                if (c2558r3 != null) {
                                    if ((cls == null && (cls = ConcurrentHashMap.m601c(obj)) == null) || (m600d = ConcurrentHashMap.m600d(cls, obj, obj2)) == 0) {
                                        C2558r m572b = c2558r3.m572b(i, obj, cls);
                                        if (m572b != null) {
                                            return m572b;
                                        }
                                    } else if (m600d >= 0) {
                                        c2558r2 = c2558r3;
                                    }
                                }
                            }
                        }
                        c2558r = c2558r3;
                        continue;
                    }
                    c2558r = c2558r2;
                    continue;
                } while (c2558r != null);
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$s */
    /* loaded from: classes2.dex */
    public static final class C2559s extends C2541a implements java.util.Iterator, Enumeration, p034j$.util.Iterator {
        C2559s(C2552l[] c2552lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2552lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3009w.m109b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public final Object next() {
            C2552l c2552l = this.f603b;
            if (c2552l != null) {
                Object obj = c2552l.f596c;
                this.f585j = c2552l;
                m583a();
                return obj;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Enumeration
        public final Object nextElement() {
            return next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$t */
    /* loaded from: classes2.dex */
    public static final class C2560t extends C2556p implements InterfaceC2611s {

        /* renamed from: i */
        long f620i;

        C2560t(C2552l[] c2552lArr, int i, int i2, int i3, long j) {
            super(c2552lArr, i, i2, i3);
            this.f620i = j;
        }

        @Override // p034j$.util.InterfaceC2611s
        /* renamed from: b */
        public boolean mo128b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2552l m583a = m583a();
            if (m583a == null) {
                return false;
            }
            consumer.accept(m583a.f596c);
            return true;
        }

        @Override // p034j$.util.InterfaceC2611s
        public int characteristics() {
            return 4352;
        }

        @Override // p034j$.util.InterfaceC2611s
        public long estimateSize() {
            return this.f620i;
        }

        @Override // p034j$.util.InterfaceC2611s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2552l m583a = m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(m583a.f596c);
            }
        }

        @Override // p034j$.util.InterfaceC2611s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2538a.m622e(this);
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2538a.m621f(this, i);
        }

        @Override // p034j$.util.InterfaceC2611s
        public InterfaceC2611s trySplit() {
            int i = this.f607f;
            int i2 = this.f608g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2552l[] c2552lArr = this.f602a;
            int i4 = this.f609h;
            this.f608g = i3;
            long j = this.f620i >>> 1;
            this.f620i = j;
            return new C2560t(c2552lArr, i4, i3, i2, j);
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$u */
    /* loaded from: classes2.dex */
    static final class C2561u extends AbstractC2542b implements InterfaceC2539b {
        C2561u(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2542b, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f586a.containsValue(obj);
        }

        @Override // p034j$.util.InterfaceC2539b, p034j$.lang.InterfaceC2485e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2552l[] c2552lArr = this.f586a.f578a;
            if (c2552lArr == null) {
                return;
            }
            C2556p c2556p = new C2556p(c2552lArr, c2552lArr.length, 0, c2552lArr.length);
            while (true) {
                C2552l m583a = c2556p.m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(m583a.f596c);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3009w.m109b(consumer));
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2542b, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f586a;
            C2552l[] c2552lArr = concurrentHashMap.f578a;
            int length = c2552lArr == null ? 0 : c2552lArr.length;
            return new C2559s(c2552lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2539b
        /* renamed from: k */
        public /* synthetic */ boolean mo571k(Predicate predicate) {
            return AbstractC2538a.m619h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C2954O0.m182n0(AbstractC2538a.m620g(this));
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            C2541a c2541a;
            if (obj != null) {
                java.util.Iterator it = iterator();
                do {
                    c2541a = (C2541a) it;
                    if (!c2541a.hasNext()) {
                        return false;
                    }
                } while (!obj.equals(((C2559s) it).next()));
                c2541a.remove();
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2538a.m619h(this, C3010w0.m108a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, p034j$.util.InterfaceC2539b, p034j$.lang.InterfaceC2485e
        public InterfaceC2611s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f586a;
            long m591m = concurrentHashMap.m591m();
            C2552l[] c2552lArr = concurrentHashMap.f578a;
            int length = c2552lArr == null ? 0 : c2552lArr.length;
            return new C2560t(c2552lArr, length, 0, length, m591m >= 0 ? m591m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable
        public /* synthetic */ Spliterator spliterator() {
            return C2979h.m150a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2539b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2538a.m618i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C2954O0.m182n0(AbstractC2538a.m618i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C2957S.m178a(intFunction).apply(0));
        }
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", C2554n[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        try {
            Unsafe m556c = AbstractC2568c.m556c();
            f570h = m556c;
            f571i = m556c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("sizeCtl"));
            f572j = m556c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("transferIndex"));
            f573k = m556c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("baseCount"));
            f574l = m556c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("cellsBusy"));
            f575m = m556c.objectFieldOffset(C2543c.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
            f576n = m556c.arrayBaseOffset(C2552l[].class);
            int arrayIndexScale = m556c.arrayIndexScale(C2552l[].class);
            if (((arrayIndexScale - 1) & arrayIndexScale) != 0) {
                throw new Error("data type scale not a power of two");
            }
            f577o = 31 - Integer.numberOfLeadingZeros(arrayIndexScale);
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    public ConcurrentHashMap() {
    }

    public ConcurrentHashMap(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        this.sizeCtl = i >= 536870912 ? 1073741824 : m589o(i + (i >>> 1) + 1);
    }

    public ConcurrentHashMap(int i, float f, int i2) {
        if (f <= BitmapDescriptorFactory.HUE_RED || i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        long j = (long) (((i < i2 ? i2 : i) / f) + 1.0d);
        this.sizeCtl = j >= 1073741824 ? 1073741824 : m589o((int) j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r1.compareAndSwapLong(r11, r3, r5, r9) == false) goto L53;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m603a(long r12, int r14) {
        /*
            r11 = this;
            j$.util.concurrent.ConcurrentHashMap$c[] r0 = r11.f580c
            if (r0 != 0) goto L14
            sun.misc.Unsafe r1 = p034j$.util.concurrent.ConcurrentHashMap.f570h
            long r3 = p034j$.util.concurrent.ConcurrentHashMap.f573k
            long r5 = r11.baseCount
            long r9 = r5 + r12
            r2 = r11
            r7 = r9
            boolean r1 = r1.compareAndSwapLong(r2, r3, r5, r7)
            if (r1 != 0) goto L3b
        L14:
            r1 = 1
            if (r0 == 0) goto L94
            int r2 = r0.length
            int r2 = r2 - r1
            if (r2 < 0) goto L94
            int r3 = p034j$.util.concurrent.ThreadLocalRandom.m569b()
            r2 = r2 & r3
            r4 = r0[r2]
            if (r4 == 0) goto L94
            sun.misc.Unsafe r3 = p034j$.util.concurrent.ConcurrentHashMap.f570h
            long r5 = p034j$.util.concurrent.ConcurrentHashMap.f575m
            long r7 = r4.value
            long r9 = r7 + r12
            boolean r0 = r3.compareAndSwapLong(r4, r5, r7, r9)
            if (r0 != 0) goto L34
            r1 = r0
            goto L94
        L34:
            if (r14 > r1) goto L37
            return
        L37:
            long r9 = r11.m591m()
        L3b:
            if (r14 < 0) goto L93
        L3d:
            int r4 = r11.sizeCtl
            long r12 = (long) r4
            int r14 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r14 < 0) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r12 = r11.f578a
            if (r12 == 0) goto L93
            int r13 = r12.length
            r14 = 1073741824(0x40000000, float:2.0)
            if (r13 >= r14) goto L93
            int r13 = m594j(r13)
            if (r4 >= 0) goto L7b
            int r14 = r4 >>> 16
            if (r14 != r13) goto L93
            int r14 = r13 + 1
            if (r4 == r14) goto L93
            r14 = 65535(0xffff, float:9.1834E-41)
            int r13 = r13 + r14
            if (r4 == r13) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r13 = r11.f579b
            if (r13 == 0) goto L93
            int r14 = r11.transferIndex
            if (r14 > 0) goto L6a
            goto L93
        L6a:
            sun.misc.Unsafe r0 = p034j$.util.concurrent.ConcurrentHashMap.f570h
            long r2 = p034j$.util.concurrent.ConcurrentHashMap.f571i
            int r5 = r4 + 1
            r1 = r11
            boolean r14 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r14 == 0) goto L8e
            r11.m588p(r12, r13)
            goto L8e
        L7b:
            sun.misc.Unsafe r0 = p034j$.util.concurrent.ConcurrentHashMap.f570h
            long r2 = p034j$.util.concurrent.ConcurrentHashMap.f571i
            int r13 = r13 << 16
            int r5 = r13 + 2
            r1 = r11
            boolean r13 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r13 == 0) goto L8e
            r13 = 0
            r11.m588p(r12, r13)
        L8e:
            long r9 = r11.m591m()
            goto L3d
        L93:
            return
        L94:
            r11.m599e(r12, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m603a(long, int):void");
    }

    /* renamed from: b */
    static final boolean m602b(C2552l[] c2552lArr, int i, C2552l c2552l, C2552l c2552l2) {
        return f570h.compareAndSwapObject(c2552lArr, (i << f577o) + f576n, (Object) null, c2552l2);
    }

    /* renamed from: c */
    static Class m601c(Object obj) {
        Type[] actualTypeArguments;
        if (obj instanceof Comparable) {
            Class<?> cls = obj.getClass();
            if (cls == String.class) {
                return cls;
            }
            Type[] genericInterfaces = cls.getGenericInterfaces();
            if (genericInterfaces != null) {
                for (Type type : genericInterfaces) {
                    if (type instanceof ParameterizedType) {
                        ParameterizedType parameterizedType = (ParameterizedType) type;
                        if (parameterizedType.getRawType() == Comparable.class && (actualTypeArguments = parameterizedType.getActualTypeArguments()) != null && actualTypeArguments.length == 1 && actualTypeArguments[0] == cls) {
                            return cls;
                        }
                    }
                }
                return null;
            }
            return null;
        }
        return null;
    }

    /* renamed from: d */
    static int m600d(Class cls, Object obj, Object obj2) {
        if (obj2 == null || obj2.getClass() != cls) {
            return 0;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x009b, code lost:
        if (r24.f580c != r7) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009d, code lost:
        r1 = new p034j$.util.concurrent.ConcurrentHashMap.C2543c[r8 << 1];
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a2, code lost:
        if (r2 >= r8) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a4, code lost:
        r1[r2] = r7[r2];
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ab, code lost:
        r24.f580c = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x001b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0101 A[SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m599e(long r25, boolean r27) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m599e(long, boolean):void");
    }

    /* renamed from: g */
    private final C2552l[] m597g() {
        while (true) {
            C2552l[] c2552lArr = this.f578a;
            if (c2552lArr != null && c2552lArr.length != 0) {
                return c2552lArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (f570h.compareAndSwapInt(this, f571i, i, -1)) {
                try {
                    C2552l[] c2552lArr2 = this.f578a;
                    if (c2552lArr2 == null || c2552lArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        C2552l[] c2552lArr3 = new C2552l[i2];
                        this.f578a = c2552lArr3;
                        i = i2 - (i2 >>> 2);
                        c2552lArr2 = c2552lArr3;
                    }
                    this.sizeCtl = i;
                    return c2552lArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* renamed from: j */
    static final int m594j(int i) {
        return Integer.numberOfLeadingZeros(i) | LiteMode.FLAG_CHAT_SCALE;
    }

    /* renamed from: k */
    static final void m593k(C2552l[] c2552lArr, int i, C2552l c2552l) {
        f570h.putObjectVolatile(c2552lArr, (i << f577o) + f576n, c2552l);
    }

    /* renamed from: l */
    static final int m592l(int i) {
        return (i ^ (i >>> 16)) & Integer.MAX_VALUE;
    }

    /* renamed from: n */
    static final C2552l m590n(C2552l[] c2552lArr, int i) {
        return (C2552l) f570h.getObjectVolatile(c2552lArr, (i << f577o) + f576n);
    }

    /* renamed from: o */
    private static final int m589o(int i) {
        int i2 = i - 1;
        int i3 = i2 | (i2 >>> 1);
        int i4 = i3 | (i3 >>> 2);
        int i5 = i4 | (i4 >>> 4);
        int i6 = i5 | (i5 >>> 8);
        int i7 = i6 | (i6 >>> 16);
        if (i7 < 0) {
            return 1;
        }
        if (i7 >= 1073741824) {
            return 1073741824;
        }
        return 1 + i7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v12, types: [j$.util.concurrent.ConcurrentHashMap$l] */
    /* JADX WARN: Type inference failed for: r13v14, types: [j$.util.concurrent.ConcurrentHashMap$l] */
    /* JADX WARN: Type inference failed for: r6v20, types: [j$.util.concurrent.ConcurrentHashMap$l] */
    /* JADX WARN: Type inference failed for: r6v25, types: [j$.util.concurrent.ConcurrentHashMap$l] */
    /* renamed from: p */
    private final void m588p(C2552l[] c2552lArr, C2552l[] c2552lArr2) {
        C2552l[] c2552lArr3;
        C2552l[] c2552lArr4;
        int i;
        int i2;
        int i3;
        int i4;
        C2547g c2547g;
        C2558r c2558r;
        int i5;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = c2552lArr.length;
        int i6 = f569g;
        int i7 = i6 > 1 ? (length >>> 3) / i6 : length;
        int i8 = i7 < 16 ? 16 : i7;
        if (c2552lArr2 == null) {
            try {
                C2552l[] c2552lArr5 = new C2552l[length << 1];
                concurrentHashMap.f579b = c2552lArr5;
                concurrentHashMap.transferIndex = length;
                c2552lArr3 = c2552lArr5;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            c2552lArr3 = c2552lArr2;
        }
        int length2 = c2552lArr3.length;
        C2547g c2547g2 = new C2547g(c2552lArr3);
        C2552l[] c2552lArr6 = c2552lArr;
        int i9 = 0;
        int i10 = 0;
        boolean z = true;
        boolean z2 = false;
        while (true) {
            if (z) {
                int i11 = i9 - 1;
                if (i11 >= i10 || z2) {
                    c2552lArr4 = c2552lArr6;
                    i9 = i11;
                    i10 = i10;
                } else {
                    int i12 = concurrentHashMap.transferIndex;
                    if (i12 <= 0) {
                        c2552lArr4 = c2552lArr6;
                        i9 = -1;
                    } else {
                        Unsafe unsafe = f570h;
                        long j = f572j;
                        int i13 = i12 > i8 ? i12 - i8 : 0;
                        c2552lArr4 = c2552lArr6;
                        i = i10;
                        if (unsafe.compareAndSwapInt(this, j, i12, i13)) {
                            i9 = i12 - 1;
                            i10 = i13;
                        } else {
                            c2552lArr6 = c2552lArr4;
                            i9 = i11;
                            i10 = i;
                        }
                    }
                }
                c2552lArr6 = c2552lArr4;
                z = false;
            } else {
                C2552l[] c2552lArr7 = c2552lArr6;
                i = i10;
                C2558r c2558r2 = null;
                if (i9 < 0 || i9 >= length || (i2 = i9 + length) >= length2) {
                    int i14 = i8;
                    int i15 = length2;
                    C2547g c2547g3 = c2547g2;
                    if (z2) {
                        this.f579b = null;
                        this.f578a = c2552lArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    Unsafe unsafe2 = f570h;
                    long j2 = f571i;
                    int i16 = this.sizeCtl;
                    int i17 = i9;
                    if (!unsafe2.compareAndSwapInt(this, j2, i16, i16 - 1)) {
                        c2547g2 = c2547g3;
                        concurrentHashMap = this;
                        i9 = i17;
                        c2552lArr6 = c2552lArr7;
                        i10 = i;
                        i8 = i14;
                        length2 = i15;
                    } else if (i16 - 2 != (m594j(length) << 16)) {
                        return;
                    } else {
                        c2547g2 = c2547g3;
                        i9 = length;
                        concurrentHashMap = this;
                        c2552lArr6 = c2552lArr7;
                        i10 = i;
                        i8 = i14;
                        length2 = i15;
                        z = true;
                        z2 = true;
                    }
                } else {
                    C2552l m590n = m590n(c2552lArr7, i9);
                    if (m590n == null) {
                        z = m602b(c2552lArr7, i9, null, c2547g2);
                        c2552lArr6 = c2552lArr7;
                        i10 = i;
                    } else {
                        int i18 = m590n.f594a;
                        if (i18 == -1) {
                            c2552lArr6 = c2552lArr7;
                            i10 = i;
                            z = true;
                        } else {
                            synchronized (m590n) {
                                if (m590n(c2552lArr7, i9) == m590n) {
                                    if (i18 >= 0) {
                                        int i19 = i18 & length;
                                        C2558r c2558r3 = m590n;
                                        for (C2558r c2558r4 = m590n.f597d; c2558r4 != null; c2558r4 = c2558r4.f597d) {
                                            int i20 = c2558r4.f594a & length;
                                            if (i20 != i19) {
                                                c2558r3 = c2558r4;
                                                i19 = i20;
                                            }
                                        }
                                        if (i19 == 0) {
                                            c2558r = null;
                                            c2558r2 = c2558r3;
                                        } else {
                                            c2558r = c2558r3;
                                        }
                                        C2552l c2552l = m590n;
                                        while (c2552l != c2558r3) {
                                            int i21 = c2552l.f594a;
                                            C2558r c2558r5 = c2558r3;
                                            Object obj = c2552l.f595b;
                                            int i22 = i8;
                                            Object obj2 = c2552l.f596c;
                                            if ((i21 & length) == 0) {
                                                i5 = length2;
                                                c2558r2 = new C2552l(i21, obj, obj2, c2558r2);
                                            } else {
                                                i5 = length2;
                                                c2558r = new C2552l(i21, obj, obj2, c2558r);
                                            }
                                            c2552l = c2552l.f597d;
                                            c2558r3 = c2558r5;
                                            i8 = i22;
                                            length2 = i5;
                                        }
                                        i3 = i8;
                                        i4 = length2;
                                        m593k(c2552lArr3, i9, c2558r2);
                                        m593k(c2552lArr3, i2, c2558r);
                                        m593k(c2552lArr7, i9, c2547g2);
                                        c2547g = c2547g2;
                                        c2552lArr6 = c2552lArr7;
                                    } else {
                                        i3 = i8;
                                        i4 = length2;
                                        if (m590n instanceof C2557q) {
                                            C2557q c2557q = (C2557q) m590n;
                                            C2558r c2558r6 = null;
                                            C2558r c2558r7 = null;
                                            C2552l c2552l2 = c2557q.f613f;
                                            int i23 = 0;
                                            int i24 = 0;
                                            C2558r c2558r8 = null;
                                            while (c2552l2 != null) {
                                                C2557q c2557q2 = c2557q;
                                                int i25 = c2552l2.f594a;
                                                C2547g c2547g4 = c2547g2;
                                                C2558r c2558r9 = new C2558r(i25, c2552l2.f595b, c2552l2.f596c, null, null);
                                                if ((i25 & length) == 0) {
                                                    c2558r9.f618h = c2558r7;
                                                    if (c2558r7 == null) {
                                                        c2558r2 = c2558r9;
                                                    } else {
                                                        c2558r7.f597d = c2558r9;
                                                    }
                                                    i23++;
                                                    c2558r7 = c2558r9;
                                                } else {
                                                    c2558r9.f618h = c2558r6;
                                                    if (c2558r6 == null) {
                                                        c2558r8 = c2558r9;
                                                    } else {
                                                        c2558r6.f597d = c2558r9;
                                                    }
                                                    i24++;
                                                    c2558r6 = c2558r9;
                                                }
                                                c2552l2 = c2552l2.f597d;
                                                c2557q = c2557q2;
                                                c2547g2 = c2547g4;
                                            }
                                            C2557q c2557q3 = c2557q;
                                            C2547g c2547g5 = c2547g2;
                                            C2552l m585s = i23 <= 6 ? m585s(c2558r2) : i24 != 0 ? new C2557q(c2558r2) : c2557q3;
                                            C2552l m585s2 = i24 <= 6 ? m585s(c2558r8) : i23 != 0 ? new C2557q(c2558r8) : c2557q3;
                                            m593k(c2552lArr3, i9, m585s);
                                            m593k(c2552lArr3, i2, m585s2);
                                            c2547g = c2547g5;
                                            m593k(c2552lArr, i9, c2547g);
                                            c2552lArr6 = c2552lArr;
                                        }
                                    }
                                    z = true;
                                } else {
                                    i3 = i8;
                                    i4 = length2;
                                }
                                c2547g = c2547g2;
                                c2552lArr6 = c2552lArr7;
                            }
                            c2547g2 = c2547g;
                            i10 = i;
                            i8 = i3;
                            length2 = i4;
                            concurrentHashMap = this;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: q */
    private final void m587q(C2552l[] c2552lArr, int i) {
        int length = c2552lArr.length;
        if (length < 64) {
            m586r(length << 1);
            return;
        }
        C2552l m590n = m590n(c2552lArr, i);
        if (m590n == null || m590n.f594a < 0) {
            return;
        }
        synchronized (m590n) {
            if (m590n(c2552lArr, i) == m590n) {
                C2558r c2558r = null;
                C2552l c2552l = m590n;
                C2558r c2558r2 = null;
                while (c2552l != null) {
                    C2558r c2558r3 = new C2558r(c2552l.f594a, c2552l.f595b, c2552l.f596c, null, null);
                    c2558r3.f618h = c2558r2;
                    if (c2558r2 == null) {
                        c2558r = c2558r3;
                    } else {
                        c2558r2.f597d = c2558r3;
                    }
                    c2552l = c2552l.f597d;
                    c2558r2 = c2558r3;
                }
                m593k(c2552lArr, i, new C2557q(c2558r));
            }
        }
    }

    /* renamed from: r */
    private final void m586r(int i) {
        int length;
        C2552l[] c2552lArr;
        int m589o = i >= 536870912 ? 1073741824 : m589o(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                return;
            }
            C2552l[] c2552lArr2 = this.f578a;
            if (c2552lArr2 == null || (length = c2552lArr2.length) == 0) {
                int i3 = i2 > m589o ? i2 : m589o;
                if (f570h.compareAndSwapInt(this, f571i, i2, -1)) {
                    try {
                        if (this.f578a == c2552lArr2) {
                            this.f578a = new C2552l[i3];
                            i2 = i3 - (i3 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i2;
                    }
                } else {
                    continue;
                }
            } else if (m589o <= i2 || length >= 1073741824) {
                return;
            } else {
                if (c2552lArr2 == this.f578a) {
                    int m594j = m594j(length);
                    if (i2 < 0) {
                        if ((i2 >>> 16) != m594j || i2 == m594j + 1 || i2 == m594j + RtpPacket.MAX_SEQUENCE_NUMBER || (c2552lArr = this.f579b) == null || this.transferIndex <= 0) {
                            return;
                        }
                        if (f570h.compareAndSwapInt(this, f571i, i2, i2 + 1)) {
                            m588p(c2552lArr2, c2552lArr);
                        }
                    } else if (f570h.compareAndSwapInt(this, f571i, i2, (m594j << 16) + 2)) {
                        m588p(c2552lArr2, null);
                    }
                } else {
                    continue;
                }
            }
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        long j;
        int m589o;
        boolean z;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j2 = 0;
        long j3 = 0;
        C2552l c2552l = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j3++;
            c2552l = new C2552l(m592l(readObject.hashCode()), readObject, readObject2, c2552l);
        }
        if (j3 == 0) {
            this.sizeCtl = 0;
            return;
        }
        if (j3 >= 536870912) {
            m589o = 1073741824;
        } else {
            int i = (int) j3;
            m589o = m589o(i + (i >>> 1) + 1);
        }
        C2552l[] c2552lArr = new C2552l[m589o];
        int i2 = m589o - 1;
        while (c2552l != null) {
            C2552l c2552l2 = c2552l.f597d;
            int i3 = c2552l.f594a;
            int i4 = i3 & i2;
            C2552l m590n = m590n(c2552lArr, i4);
            if (m590n == null) {
                z = true;
            } else {
                Object obj2 = c2552l.f595b;
                if (m590n.f594a >= 0) {
                    int i5 = 0;
                    for (C2552l c2552l3 = m590n; c2552l3 != null; c2552l3 = c2552l3.f597d) {
                        if (c2552l3.f594a == i3 && ((obj = c2552l3.f595b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i5++;
                    }
                    z = true;
                    if (z && i5 >= 8) {
                        j2++;
                        c2552l.f597d = m590n;
                        C2552l c2552l4 = c2552l;
                        C2558r c2558r = null;
                        C2558r c2558r2 = null;
                        while (c2552l4 != null) {
                            long j4 = j2;
                            C2558r c2558r3 = new C2558r(c2552l4.f594a, c2552l4.f595b, c2552l4.f596c, null, null);
                            c2558r3.f618h = c2558r2;
                            if (c2558r2 == null) {
                                c2558r = c2558r3;
                            } else {
                                c2558r2.f597d = c2558r3;
                            }
                            c2552l4 = c2552l4.f597d;
                            c2558r2 = c2558r3;
                            j2 = j4;
                        }
                        m593k(c2552lArr, i4, new C2557q(c2558r));
                    }
                } else if (((C2557q) m590n).m578f(i3, obj2, c2552l.f596c) == null) {
                    j2 += j;
                }
                z = false;
            }
            if (z) {
                j2++;
                c2552l.f597d = m590n;
                m593k(c2552lArr, i4, c2552l);
            }
            j = 1;
            c2552l = c2552l2;
        }
        this.f578a = c2552lArr;
        this.sizeCtl = m589o - (m589o >>> 2);
        this.baseCount = j2;
    }

    /* renamed from: s */
    static C2552l m585s(C2552l c2552l) {
        C2552l c2552l2 = null;
        C2552l c2552l3 = null;
        while (c2552l != null) {
            C2552l c2552l4 = new C2552l(c2552l.f594a, c2552l.f595b, c2552l.f596c, null);
            if (c2552l3 == null) {
                c2552l2 = c2552l4;
            } else {
                c2552l3.f597d = c2552l4;
            }
            c2552l = c2552l.f597d;
            c2552l3 = c2552l4;
        }
        return c2552l2;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        int i = 1;
        int i2 = 0;
        while (i < 16) {
            i2++;
            i <<= 1;
        }
        int i3 = 32 - i2;
        int i4 = i - 1;
        C2554n[] c2554nArr = new C2554n[16];
        for (int i5 = 0; i5 < 16; i5++) {
            c2554nArr[i5] = new C2554n(0.75f);
        }
        objectOutputStream.putFields().put("segments", c2554nArr);
        objectOutputStream.putFields().put("segmentShift", i3);
        objectOutputStream.putFields().put("segmentMask", i4);
        objectOutputStream.writeFields();
        C2552l[] c2552lArr = this.f578a;
        if (c2552lArr != null) {
            C2556p c2556p = new C2556p(c2552lArr, c2552lArr.length, 0, c2552lArr.length);
            while (true) {
                C2552l m583a = c2556p.m583a();
                if (m583a == null) {
                    break;
                }
                objectOutputStream.writeObject(m583a.f595b);
                objectOutputStream.writeObject(m583a.f596c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public void clear() {
        C2552l m590n;
        C2552l[] c2552lArr = this.f578a;
        long j = 0;
        loop0: while (true) {
            int i = 0;
            while (c2552lArr != null && i < c2552lArr.length) {
                m590n = m590n(c2552lArr, i);
                if (m590n == null) {
                    i++;
                } else {
                    int i2 = m590n.f594a;
                    if (i2 == -1) {
                        break;
                    }
                    synchronized (m590n) {
                        if (m590n(c2552lArr, i) == m590n) {
                            for (C2552l c2552l = i2 >= 0 ? m590n : m590n instanceof C2557q ? ((C2557q) m590n).f613f : null; c2552l != null; c2552l = c2552l.f597d) {
                                j--;
                            }
                            m593k(c2552lArr, i, null);
                            i++;
                        }
                    }
                }
            }
            c2552lArr = m598f(c2552lArr, m590n);
        }
        if (j != 0) {
            m603a(j, -1);
        }
    }

    @Override // p034j$.util.Map
    public Object compute(Object obj, BiFunction biFunction) {
        int i;
        C2552l c2552l;
        Object obj2;
        Object obj3;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m592l = m592l(obj.hashCode());
        C2552l[] c2552lArr = this.f578a;
        int i2 = 0;
        Object obj4 = null;
        int i3 = 0;
        while (true) {
            if (c2552lArr != null) {
                int length = c2552lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m592l;
                    C2552l m590n = m590n(c2552lArr, i4);
                    if (m590n == null) {
                        C2553m c2553m = new C2553m();
                        synchronized (c2553m) {
                            if (m602b(c2552lArr, i4, null, c2553m)) {
                                Object apply = biFunction.apply(obj, null);
                                if (apply != null) {
                                    c2552l = new C2552l(m592l, obj, apply, null);
                                    i = 1;
                                } else {
                                    i = i2;
                                    c2552l = null;
                                }
                                m593k(c2552lArr, i4, c2552l);
                                i2 = i;
                                obj4 = apply;
                                i3 = 1;
                            }
                        }
                        if (i3 != 0) {
                            break;
                        }
                    } else {
                        int i5 = m590n.f594a;
                        if (i5 == -1) {
                            c2552lArr = m598f(c2552lArr, m590n);
                        } else {
                            synchronized (m590n) {
                                if (m590n(c2552lArr, i4) == m590n) {
                                    if (i5 >= 0) {
                                        C2552l c2552l2 = null;
                                        C2552l c2552l3 = m590n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2552l3.f594a != m592l || ((obj3 = c2552l3.f595b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2552l c2552l4 = c2552l3.f597d;
                                                if (c2552l4 == null) {
                                                    Object apply2 = biFunction.apply(obj, null);
                                                    if (apply2 != null) {
                                                        c2552l3.f597d = new C2552l(m592l, obj, apply2, null);
                                                        i2 = 1;
                                                    }
                                                    obj2 = apply2;
                                                } else {
                                                    i6++;
                                                    c2552l2 = c2552l3;
                                                    c2552l3 = c2552l4;
                                                }
                                            }
                                        }
                                        obj2 = biFunction.apply(obj, c2552l3.f596c);
                                        if (obj2 != null) {
                                            c2552l3.f596c = obj2;
                                        } else {
                                            C2552l c2552l5 = c2552l3.f597d;
                                            if (c2552l2 != null) {
                                                c2552l2.f597d = c2552l5;
                                            } else {
                                                m593k(c2552lArr, i4, c2552l5);
                                            }
                                            i2 = -1;
                                        }
                                        i3 = i6;
                                        obj4 = obj2;
                                    } else if (m590n instanceof C2557q) {
                                        C2557q c2557q = (C2557q) m590n;
                                        C2558r c2558r = c2557q.f612e;
                                        C2558r m572b = c2558r != null ? c2558r.m572b(m592l, obj, null) : null;
                                        Object apply3 = biFunction.apply(obj, m572b == null ? null : m572b.f596c);
                                        if (apply3 != null) {
                                            if (m572b != null) {
                                                m572b.f596c = apply3;
                                            } else {
                                                c2557q.m578f(m592l, obj, apply3);
                                                i2 = 1;
                                            }
                                        } else if (m572b != null) {
                                            if (c2557q.m577g(m572b)) {
                                                m593k(c2552lArr, i4, m585s(c2557q.f613f));
                                            }
                                            i2 = -1;
                                        }
                                        obj4 = apply3;
                                        i3 = 1;
                                    }
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    m587q(c2552lArr, i4);
                                }
                            }
                        }
                    }
                }
            }
            c2552lArr = m597g();
        }
        if (i2 != 0) {
            m603a(i2, i3);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object compute(Object obj, java.util.function.BiFunction biFunction) {
        return compute(obj, C3001s.m117a(biFunction));
    }

    @Override // p034j$.util.concurrent.InterfaceC2567b, p034j$.util.Map
    public Object computeIfAbsent(Object obj, Function function) {
        int i;
        Object apply;
        C2558r m572b;
        Object obj2;
        Object obj3;
        if (obj == null || function == null) {
            throw null;
        }
        int m592l = m592l(obj.hashCode());
        C2552l[] c2552lArr = this.f578a;
        Object obj4 = null;
        int i2 = 0;
        while (true) {
            if (c2552lArr != null) {
                int length = c2552lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m592l;
                    C2552l m590n = m590n(c2552lArr, i3);
                    boolean z = true;
                    if (m590n == null) {
                        C2553m c2553m = new C2553m();
                        synchronized (c2553m) {
                            if (m602b(c2552lArr, i3, null, c2553m)) {
                                Object apply2 = function.apply(obj);
                                m593k(c2552lArr, i3, apply2 != null ? new C2552l(m592l, obj, apply2, null) : null);
                                obj4 = apply2;
                                i2 = 1;
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    } else {
                        int i4 = m590n.f594a;
                        if (i4 == -1) {
                            c2552lArr = m598f(c2552lArr, m590n);
                        } else {
                            synchronized (m590n) {
                                if (m590n(c2552lArr, i3) == m590n) {
                                    if (i4 >= 0) {
                                        C2552l c2552l = m590n;
                                        i = 1;
                                        while (true) {
                                            if (c2552l.f594a != m592l || ((obj3 = c2552l.f595b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2552l c2552l2 = c2552l.f597d;
                                                if (c2552l2 == null) {
                                                    apply = function.apply(obj);
                                                    if (apply != null) {
                                                        c2552l.f597d = new C2552l(m592l, obj, apply, null);
                                                    }
                                                } else {
                                                    i++;
                                                    c2552l = c2552l2;
                                                }
                                            }
                                        }
                                        obj2 = c2552l.f596c;
                                        z = false;
                                        int i5 = i;
                                        obj4 = obj2;
                                        i2 = i5;
                                    } else if (m590n instanceof C2557q) {
                                        i = 2;
                                        C2557q c2557q = (C2557q) m590n;
                                        C2558r c2558r = c2557q.f612e;
                                        if (c2558r == null || (m572b = c2558r.m572b(m592l, obj, null)) == null) {
                                            apply = function.apply(obj);
                                            if (apply != null) {
                                                c2557q.m578f(m592l, obj, apply);
                                                i2 = i;
                                                obj4 = apply;
                                            }
                                            z = false;
                                            i2 = i;
                                            obj4 = apply;
                                        } else {
                                            obj2 = m572b.f596c;
                                            z = false;
                                            int i52 = i;
                                            obj4 = obj2;
                                            i2 = i52;
                                        }
                                    }
                                }
                                z = false;
                            }
                            if (i2 != 0) {
                                if (i2 >= 8) {
                                    m587q(c2552lArr, i3);
                                }
                                if (!z) {
                                    return obj4;
                                }
                            }
                        }
                    }
                }
            }
            c2552lArr = m597g();
        }
        if (obj4 != null) {
            m603a(1L, i2);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
        return computeIfAbsent(obj, C2947L.m204a(function));
    }

    @Override // p034j$.util.Map
    public Object computeIfPresent(Object obj, BiFunction biFunction) {
        C2558r m572b;
        C2552l m585s;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m592l = m592l(obj.hashCode());
        C2552l[] c2552lArr = this.f578a;
        int i = 0;
        Object obj3 = null;
        int i2 = 0;
        while (true) {
            if (c2552lArr != null) {
                int length = c2552lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m592l;
                    C2552l m590n = m590n(c2552lArr, i3);
                    if (m590n == null) {
                        break;
                    }
                    int i4 = m590n.f594a;
                    if (i4 == -1) {
                        c2552lArr = m598f(c2552lArr, m590n);
                    } else {
                        synchronized (m590n) {
                            if (m590n(c2552lArr, i3) == m590n) {
                                if (i4 >= 0) {
                                    i2 = 1;
                                    C2552l c2552l = null;
                                    C2552l c2552l2 = m590n;
                                    while (true) {
                                        if (c2552l2.f594a != m592l || ((obj2 = c2552l2.f595b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                            C2552l c2552l3 = c2552l2.f597d;
                                            if (c2552l3 == null) {
                                                break;
                                            }
                                            i2++;
                                            c2552l = c2552l2;
                                            c2552l2 = c2552l3;
                                        }
                                    }
                                    obj3 = biFunction.apply(obj, c2552l2.f596c);
                                    if (obj3 != null) {
                                        c2552l2.f596c = obj3;
                                    } else {
                                        m585s = c2552l2.f597d;
                                        if (c2552l != null) {
                                            c2552l.f597d = m585s;
                                            i = -1;
                                        }
                                        m593k(c2552lArr, i3, m585s);
                                        i = -1;
                                    }
                                } else if (m590n instanceof C2557q) {
                                    i2 = 2;
                                    C2557q c2557q = (C2557q) m590n;
                                    C2558r c2558r = c2557q.f612e;
                                    if (c2558r != null && (m572b = c2558r.m572b(m592l, obj, null)) != null) {
                                        obj3 = biFunction.apply(obj, m572b.f596c);
                                        if (obj3 != null) {
                                            m572b.f596c = obj3;
                                        } else {
                                            if (c2557q.m577g(m572b)) {
                                                m585s = m585s(c2557q.f613f);
                                                m593k(c2552lArr, i3, m585s);
                                            }
                                            i = -1;
                                        }
                                    }
                                }
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    }
                }
            }
            c2552lArr = m597g();
        }
        if (i != 0) {
            m603a(i, i2);
        }
        return obj3;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfPresent(Object obj, java.util.function.BiFunction biFunction) {
        return computeIfPresent(obj, C3001s.m117a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean containsValue(Object obj) {
        Objects.requireNonNull(obj);
        C2552l[] c2552lArr = this.f578a;
        if (c2552lArr != null) {
            C2556p c2556p = new C2556p(c2552lArr, c2552lArr.length, 0, c2552lArr.length);
            while (true) {
                C2552l m583a = c2556p.m583a();
                if (m583a == null) {
                    break;
                }
                Object obj2 = m583a.f596c;
                if (obj2 == obj) {
                    return true;
                }
                if (obj2 != null && obj.equals(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        C2545e c2545e = this.f583f;
        if (c2545e != null) {
            return c2545e;
        }
        C2545e c2545e2 = new C2545e(this);
        this.f583f = c2545e2;
        return c2545e2;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean equals(Object obj) {
        V value;
        V v;
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                C2552l[] c2552lArr = this.f578a;
                int length = c2552lArr == null ? 0 : c2552lArr.length;
                C2556p c2556p = new C2556p(c2552lArr, length, 0, length);
                while (true) {
                    C2552l m583a = c2556p.m583a();
                    if (m583a == null) {
                        for (Map.Entry<K, V> entry : map.entrySet()) {
                            K key = entry.getKey();
                            if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                                return false;
                            }
                        }
                        return true;
                    }
                    Object obj2 = m583a.f596c;
                    Object obj3 = map.get(m583a.f595b);
                    if (obj3 == null || (obj3 != obj2 && !obj3.equals(obj2))) {
                        break;
                    }
                }
                return false;
            }
            return false;
        }
        return true;
    }

    /* renamed from: f */
    final C2552l[] m598f(C2552l[] c2552lArr, C2552l c2552l) {
        C2552l[] c2552lArr2;
        int i;
        if (!(c2552l instanceof C2547g) || (c2552lArr2 = ((C2547g) c2552l).f589e) == null) {
            return this.f578a;
        }
        int m594j = m594j(c2552lArr.length);
        while (true) {
            if (c2552lArr2 != this.f579b || this.f578a != c2552lArr || (i = this.sizeCtl) >= 0 || (i >>> 16) != m594j || i == m594j + 1 || i == RtpPacket.MAX_SEQUENCE_NUMBER + m594j || this.transferIndex <= 0) {
                break;
            } else if (f570h.compareAndSwapInt(this, f571i, i, i + 1)) {
                m588p(c2552lArr, c2552lArr2);
                break;
            }
        }
        return c2552lArr2;
    }

    @Override // p034j$.util.concurrent.InterfaceC2567b, p034j$.util.Map
    public void forEach(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2552l[] c2552lArr = this.f578a;
        if (c2552lArr == null) {
            return;
        }
        C2556p c2556p = new C2556p(c2552lArr, c2552lArr.length, 0, c2552lArr.length);
        while (true) {
            C2552l m583a = c2556p.m583a();
            if (m583a == null) {
                return;
            }
            biConsumer.accept(m583a.f595b, m583a.f596c);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void forEach(java.util.function.BiConsumer biConsumer) {
        forEach(C2997q.m122a(biConsumer));
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
        return (V) r1.f596c;
     */
    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(java.lang.Object r5) {
        /*
            r4 = this;
            int r0 = r5.hashCode()
            int r0 = m592l(r0)
            j$.util.concurrent.ConcurrentHashMap$l[] r1 = r4.f578a
            r2 = 0
            if (r1 == 0) goto L4e
            int r3 = r1.length
            if (r3 <= 0) goto L4e
            int r3 = r3 + (-1)
            r3 = r3 & r0
            j$.util.concurrent.ConcurrentHashMap$l r1 = m590n(r1, r3)
            if (r1 == 0) goto L4e
            int r3 = r1.f594a
            if (r3 != r0) goto L2c
            java.lang.Object r3 = r1.f595b
            if (r3 == r5) goto L29
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L29:
            java.lang.Object r5 = r1.f596c
            return r5
        L2c:
            if (r3 >= 0) goto L37
            j$.util.concurrent.ConcurrentHashMap$l r5 = r1.mo573a(r0, r5)
            if (r5 == 0) goto L36
            java.lang.Object r2 = r5.f596c
        L36:
            return r2
        L37:
            j$.util.concurrent.ConcurrentHashMap$l r1 = r1.f597d
            if (r1 == 0) goto L4e
            int r3 = r1.f594a
            if (r3 != r0) goto L37
            java.lang.Object r3 = r1.f595b
            if (r3 == r5) goto L4b
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L4b:
            java.lang.Object r5 = r1.f596c
            return r5
        L4e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public Object getOrDefault(Object obj, Object obj2) {
        V v = get(obj);
        return v == null ? obj2 : v;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0053, code lost:
        if (r11 == false) goto L35;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final java.lang.Object m596h(java.lang.Object r9, java.lang.Object r10, boolean r11) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L98
            if (r10 == 0) goto L98
            int r1 = r9.hashCode()
            int r1 = m592l(r1)
            r2 = 0
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.f578a
        L10:
            if (r3 == 0) goto L92
            int r4 = r3.length
            if (r4 != 0) goto L17
            goto L92
        L17:
            int r4 = r4 + (-1)
            r4 = r4 & r1
            j$.util.concurrent.ConcurrentHashMap$l r5 = m590n(r3, r4)
            if (r5 != 0) goto L2c
            j$.util.concurrent.ConcurrentHashMap$l r5 = new j$.util.concurrent.ConcurrentHashMap$l
            r5.<init>(r1, r9, r10, r0)
            boolean r4 = m602b(r3, r4, r0, r5)
            if (r4 == 0) goto L10
            goto L89
        L2c:
            int r6 = r5.f594a
            r7 = -1
            if (r6 != r7) goto L36
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m598f(r3, r5)
            goto L10
        L36:
            monitor-enter(r5)
            j$.util.concurrent.ConcurrentHashMap$l r7 = m590n(r3, r4)     // Catch: java.lang.Throwable -> L8f
            if (r7 != r5) goto L7b
            if (r6 < 0) goto L68
            r2 = 1
            r6 = r5
        L41:
            int r7 = r6.f594a     // Catch: java.lang.Throwable -> L8f
            if (r7 != r1) goto L58
            java.lang.Object r7 = r6.f595b     // Catch: java.lang.Throwable -> L8f
            if (r7 == r9) goto L51
            if (r7 == 0) goto L58
            boolean r7 = r9.equals(r7)     // Catch: java.lang.Throwable -> L8f
            if (r7 == 0) goto L58
        L51:
            java.lang.Object r7 = r6.f596c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
        L55:
            r6.f596c = r10     // Catch: java.lang.Throwable -> L8f
            goto L7c
        L58:
            j$.util.concurrent.ConcurrentHashMap$l r7 = r6.f597d     // Catch: java.lang.Throwable -> L8f
            if (r7 != 0) goto L64
            j$.util.concurrent.ConcurrentHashMap$l r7 = new j$.util.concurrent.ConcurrentHashMap$l     // Catch: java.lang.Throwable -> L8f
            r7.<init>(r1, r9, r10, r0)     // Catch: java.lang.Throwable -> L8f
            r6.f597d = r7     // Catch: java.lang.Throwable -> L8f
            goto L7b
        L64:
            int r2 = r2 + 1
            r6 = r7
            goto L41
        L68:
            boolean r6 = r5 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2557q     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            r2 = 2
            r6 = r5
            j$.util.concurrent.ConcurrentHashMap$q r6 = (p034j$.util.concurrent.ConcurrentHashMap.C2557q) r6     // Catch: java.lang.Throwable -> L8f
            j$.util.concurrent.ConcurrentHashMap$r r6 = r6.m578f(r1, r9, r10)     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            java.lang.Object r7 = r6.f596c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
            goto L55
        L7b:
            r7 = r0
        L7c:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            if (r2 == 0) goto L10
            r9 = 8
            if (r2 < r9) goto L86
            r8.m587q(r3, r4)
        L86:
            if (r7 == 0) goto L89
            return r7
        L89:
            r9 = 1
            r8.m603a(r9, r2)
            return r0
        L8f:
            r9 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            throw r9
        L92:
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m597g()
            goto L10
        L98:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m596h(java.lang.Object, java.lang.Object, boolean):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public int hashCode() {
        C2552l[] c2552lArr = this.f578a;
        int i = 0;
        if (c2552lArr != null) {
            C2556p c2556p = new C2556p(c2552lArr, c2552lArr.length, 0, c2552lArr.length);
            while (true) {
                C2552l m583a = c2556p.m583a();
                if (m583a == null) {
                    break;
                }
                i += m583a.f596c.hashCode() ^ m583a.f595b.hashCode();
            }
        }
        return i;
    }

    /* renamed from: i */
    final Object m595i(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        C2552l m590n;
        Object obj4;
        C2558r m572b;
        C2552l m585s;
        Object obj5;
        int m592l = m592l(obj.hashCode());
        C2552l[] c2552lArr = this.f578a;
        while (true) {
            if (c2552lArr == null || (length = c2552lArr.length) == 0 || (m590n = m590n(c2552lArr, (i = (length - 1) & m592l))) == null) {
                break;
            }
            int i2 = m590n.f594a;
            if (i2 == -1) {
                c2552lArr = m598f(c2552lArr, m590n);
            } else {
                boolean z = false;
                synchronized (m590n) {
                    if (m590n(c2552lArr, i) == m590n) {
                        if (i2 >= 0) {
                            C2552l c2552l = null;
                            C2552l c2552l2 = m590n;
                            while (true) {
                                if (c2552l2.f594a != m592l || ((obj5 = c2552l2.f595b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                    C2552l c2552l3 = c2552l2.f597d;
                                    if (c2552l3 == null) {
                                        break;
                                    }
                                    c2552l = c2552l2;
                                    c2552l2 = c2552l3;
                                }
                            }
                            obj4 = c2552l2.f596c;
                            if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                if (obj2 != null) {
                                    c2552l2.f596c = obj2;
                                } else if (c2552l != null) {
                                    c2552l.f597d = c2552l2.f597d;
                                } else {
                                    m585s = c2552l2.f597d;
                                    m593k(c2552lArr, i, m585s);
                                }
                                z = true;
                            }
                            obj4 = null;
                            z = true;
                        } else if (m590n instanceof C2557q) {
                            C2557q c2557q = (C2557q) m590n;
                            C2558r c2558r = c2557q.f612e;
                            if (c2558r != null && (m572b = c2558r.m572b(m592l, obj, null)) != null) {
                                obj4 = m572b.f596c;
                                if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                    if (obj2 != null) {
                                        m572b.f596c = obj2;
                                    } else if (c2557q.m577g(m572b)) {
                                        m585s = m585s(c2557q.f613f);
                                        m593k(c2552lArr, i, m585s);
                                    }
                                    z = true;
                                }
                            }
                            obj4 = null;
                            z = true;
                        }
                    }
                    obj4 = null;
                }
                if (z) {
                    if (obj4 != null) {
                        if (obj2 == null) {
                            m603a(-1L, -1);
                        }
                        return obj4;
                    }
                }
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean isEmpty() {
        return m591m() <= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public Set<K> keySet() {
        C2549i c2549i = this.f581d;
        if (c2549i != null) {
            return c2549i;
        }
        C2549i c2549i2 = new C2549i(this, null);
        this.f581d = c2549i2;
        return c2549i2;
    }

    /* renamed from: m */
    final long m591m() {
        C2543c[] c2543cArr = this.f580c;
        long j = this.baseCount;
        if (c2543cArr != null) {
            for (C2543c c2543c : c2543cArr) {
                if (c2543c != null) {
                    j += c2543c.value;
                }
            }
        }
        return j;
    }

    @Override // p034j$.util.Map
    public Object merge(Object obj, Object obj2, BiFunction biFunction) {
        int i;
        Object obj3;
        Object obj4;
        Object obj5 = obj2;
        if (obj == null || obj5 == null || biFunction == null) {
            throw null;
        }
        int m592l = m592l(obj.hashCode());
        C2552l[] c2552lArr = this.f578a;
        int i2 = 0;
        Object obj6 = null;
        int i3 = 0;
        while (true) {
            if (c2552lArr != null) {
                int length = c2552lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m592l;
                    C2552l m590n = m590n(c2552lArr, i4);
                    i = 1;
                    if (m590n != null) {
                        int i5 = m590n.f594a;
                        if (i5 == -1) {
                            c2552lArr = m598f(c2552lArr, m590n);
                        } else {
                            synchronized (m590n) {
                                if (m590n(c2552lArr, i4) == m590n) {
                                    if (i5 >= 0) {
                                        C2552l c2552l = null;
                                        C2552l c2552l2 = m590n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2552l2.f594a != m592l || ((obj4 = c2552l2.f595b) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                C2552l c2552l3 = c2552l2.f597d;
                                                if (c2552l3 == null) {
                                                    c2552l2.f597d = new C2552l(m592l, obj, obj5, null);
                                                    obj3 = obj5;
                                                    break;
                                                }
                                                i6++;
                                                c2552l = c2552l2;
                                                c2552l2 = c2552l3;
                                            }
                                        }
                                        Object apply = biFunction.apply(c2552l2.f596c, obj5);
                                        if (apply != null) {
                                            c2552l2.f596c = apply;
                                        } else {
                                            C2552l c2552l4 = c2552l2.f597d;
                                            if (c2552l != null) {
                                                c2552l.f597d = c2552l4;
                                            } else {
                                                m593k(c2552lArr, i4, c2552l4);
                                            }
                                            i2 = -1;
                                        }
                                        i = i2;
                                        obj3 = apply;
                                        i3 = i6;
                                        obj6 = obj3;
                                        i2 = i;
                                    } else if (m590n instanceof C2557q) {
                                        i3 = 2;
                                        C2557q c2557q = (C2557q) m590n;
                                        C2558r c2558r = c2557q.f612e;
                                        C2558r m572b = c2558r == null ? null : c2558r.m572b(m592l, obj, null);
                                        Object apply2 = m572b == null ? obj5 : biFunction.apply(m572b.f596c, obj5);
                                        if (apply2 != null) {
                                            if (m572b != null) {
                                                m572b.f596c = apply2;
                                            } else {
                                                c2557q.m578f(m592l, obj, apply2);
                                                i2 = 1;
                                            }
                                        } else if (m572b != null) {
                                            if (c2557q.m577g(m572b)) {
                                                m593k(c2552lArr, i4, m585s(c2557q.f613f));
                                            }
                                            i2 = -1;
                                        }
                                        obj6 = apply2;
                                    }
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    m587q(c2552lArr, i4);
                                }
                                i = i2;
                                obj5 = obj6;
                            }
                        }
                    } else if (m602b(c2552lArr, i4, null, new C2552l(m592l, obj, obj5, null))) {
                        break;
                    }
                }
            }
            c2552lArr = m597g();
        }
        if (i != 0) {
            m603a(i, i3);
        }
        return obj5;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
        return merge(obj, obj2, C3001s.m117a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public V put(K k, V v) {
        return (V) m596h(k, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m586r(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            m596h(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public V putIfAbsent(K k, V v) {
        return (V) m596h(k, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public V remove(Object obj) {
        return (V) m595i(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        Objects.requireNonNull(obj);
        return (obj2 == null || m595i(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return m595i(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return m595i(obj, obj3, obj2) != null;
    }

    @Override // p034j$.util.Map
    public void replaceAll(BiFunction biFunction) {
        Objects.requireNonNull(biFunction);
        C2552l[] c2552lArr = this.f578a;
        if (c2552lArr == null) {
            return;
        }
        C2556p c2556p = new C2556p(c2552lArr, c2552lArr.length, 0, c2552lArr.length);
        while (true) {
            C2552l m583a = c2556p.m583a();
            if (m583a == null) {
                return;
            }
            Object obj = m583a.f596c;
            Object obj2 = m583a.f595b;
            do {
                Object apply = biFunction.apply(obj2, obj);
                Objects.requireNonNull(apply);
                if (m595i(obj2, apply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void replaceAll(java.util.function.BiFunction biFunction) {
        replaceAll(C3001s.m117a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public int size() {
        long m591m = m591m();
        if (m591m < 0) {
            return 0;
        }
        if (m591m > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) m591m;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        C2552l[] c2552lArr = this.f578a;
        int length = c2552lArr == null ? 0 : c2552lArr.length;
        C2556p c2556p = new C2556p(c2552lArr, length, 0, length);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        C2552l m583a = c2556p.m583a();
        if (m583a != null) {
            while (true) {
                Object obj = m583a.f595b;
                Object obj2 = m583a.f596c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                m583a = c2556p.m583a();
                if (m583a == null) {
                    break;
                }
                sb.append(',');
                sb.append(' ');
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public Collection<V> values() {
        C2561u c2561u = this.f582e;
        if (c2561u != null) {
            return c2561u;
        }
        C2561u c2561u2 = new C2561u(this);
        this.f582e = c2561u2;
        return c2561u2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC2542b implements Collection, Serializable {

        /* renamed from: a */
        final ConcurrentHashMap f586a;

        AbstractC2542b(ConcurrentHashMap concurrentHashMap) {
            this.f586a = concurrentHashMap;
        }

        @Override // java.util.Collection
        public final void clear() {
            this.f586a.clear();
        }

        @Override // java.util.Collection
        public abstract boolean contains(Object obj);

        /* JADX WARN: Removed duplicated region for block: B:6:0x000c  */
        @Override // java.util.Collection
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean containsAll(java.util.Collection r2) {
            /*
                r1 = this;
                if (r2 == r1) goto L1a
                java.util.Iterator r2 = r2.iterator()
            L6:
                boolean r0 = r2.hasNext()
                if (r0 == 0) goto L1a
                java.lang.Object r0 = r2.next()
                if (r0 == 0) goto L18
                boolean r0 = r1.contains(r0)
                if (r0 != 0) goto L6
            L18:
                r2 = 0
                return r2
            L1a:
                r2 = 1
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.AbstractC2542b.containsAll(java.util.Collection):boolean");
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return this.f586a.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public abstract java.util.Iterator iterator();

        @Override // java.util.Collection
        public final boolean removeAll(Collection collection) {
            Objects.requireNonNull(collection);
            java.util.Iterator it = iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection collection) {
            Objects.requireNonNull(collection);
            java.util.Iterator it = iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (!collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.Collection
        public final int size() {
            return this.f586a.size();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            long m591m = this.f586a.m591m();
            if (m591m < 0) {
                m591m = 0;
            }
            if (m591m <= 2147483639) {
                int i = (int) m591m;
                Object[] objArr = new Object[i];
                int i2 = 0;
                java.util.Iterator it = iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (i2 == i) {
                        if (i >= 2147483639) {
                            throw new OutOfMemoryError("Required array size too large");
                        }
                        int i3 = i < 1073741819 ? (i >>> 1) + 1 + i : 2147483639;
                        objArr = Arrays.copyOf(objArr, i3);
                        i = i3;
                    }
                    objArr[i2] = next;
                    i2++;
                }
                return i2 == i ? objArr : Arrays.copyOf(objArr, i2);
            }
            throw new OutOfMemoryError("Required array size too large");
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            java.util.Iterator it = iterator();
            if (it.hasNext()) {
                while (true) {
                    Object next = it.next();
                    if (next == this) {
                        next = "(this Collection)";
                    }
                    sb.append(next);
                    if (!it.hasNext()) {
                        break;
                    }
                    sb.append(',');
                    sb.append(' ');
                }
            }
            sb.append(']');
            return sb.toString();
        }

        @Override // java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            long m591m = this.f586a.m591m();
            if (m591m < 0) {
                m591m = 0;
            }
            if (m591m <= 2147483639) {
                int i = (int) m591m;
                Object[] objArr2 = objArr.length >= i ? objArr : (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
                int length = objArr2.length;
                int i2 = 0;
                java.util.Iterator it = iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (i2 == length) {
                        if (length >= 2147483639) {
                            throw new OutOfMemoryError("Required array size too large");
                        }
                        int i3 = length < 1073741819 ? (length >>> 1) + 1 + length : 2147483639;
                        objArr2 = Arrays.copyOf(objArr2, i3);
                        length = i3;
                    }
                    objArr2[i2] = next;
                    i2++;
                }
                if (objArr != objArr2 || i2 >= length) {
                    return i2 == length ? objArr2 : Arrays.copyOf(objArr2, i2);
                }
                objArr2[i2] = null;
                return objArr2;
            }
            throw new OutOfMemoryError("Required array size too large");
        }
    }
}
