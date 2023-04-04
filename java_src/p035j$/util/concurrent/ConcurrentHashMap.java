package p035j$.util.concurrent;

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
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2629b;
import p035j$.util.InterfaceC2701s;
import p035j$.util.Iterator;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.BiFunction;
import p035j$.util.function.Consumer;
import p035j$.util.function.Function;
import p035j$.util.function.Predicate;
import p035j$.wrappers.C3037L;
import p035j$.wrappers.C3044O0;
import p035j$.wrappers.C3047S;
import p035j$.wrappers.C3069h;
import p035j$.wrappers.C3087q;
import p035j$.wrappers.C3091s;
import p035j$.wrappers.C3099w;
import p035j$.wrappers.C3100w0;
import sun.misc.Unsafe;
/* renamed from: j$.util.concurrent.ConcurrentHashMap */
/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, InterfaceC2657b {

    /* renamed from: g */
    static final int f575g = Runtime.getRuntime().availableProcessors();

    /* renamed from: h */
    private static final Unsafe f576h;

    /* renamed from: i */
    private static final long f577i;

    /* renamed from: j */
    private static final long f578j;

    /* renamed from: k */
    private static final long f579k;

    /* renamed from: l */
    private static final long f580l;

    /* renamed from: m */
    private static final long f581m;

    /* renamed from: n */
    private static final long f582n;

    /* renamed from: o */
    private static final int f583o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;

    /* renamed from: a */
    volatile transient C2642l[] f584a;

    /* renamed from: b */
    private volatile transient C2642l[] f585b;
    private volatile transient long baseCount;

    /* renamed from: c */
    private volatile transient C2633c[] f586c;
    private volatile transient int cellsBusy;

    /* renamed from: d */
    private transient C2639i f587d;

    /* renamed from: e */
    private transient C2651u f588e;

    /* renamed from: f */
    private transient C2635e f589f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$a */
    /* loaded from: classes2.dex */
    public static class C2631a extends C2646p {

        /* renamed from: i */
        final ConcurrentHashMap f590i;

        /* renamed from: j */
        C2642l f591j;

        C2631a(C2642l[] c2642lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2642lArr, i, i2, i3);
            this.f590i = concurrentHashMap;
            m577a();
        }

        public final boolean hasMoreElements() {
            return this.f609b != null;
        }

        public final boolean hasNext() {
            return this.f609b != null;
        }

        public final void remove() {
            C2642l c2642l = this.f591j;
            if (c2642l == null) {
                throw new IllegalStateException();
            }
            this.f591j = null;
            this.f590i.m589i(c2642l.f601b, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$c */
    /* loaded from: classes2.dex */
    public static final class C2633c {
        volatile long value;

        C2633c(long j) {
            this.value = j;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$d */
    /* loaded from: classes2.dex */
    static final class C2634d extends C2631a implements Iterator, p035j$.util.Iterator {
        C2634d(C2642l[] c2642lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2642lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p035j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3099w.m103b(consumer));
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public Object next() {
            C2642l c2642l = this.f609b;
            if (c2642l != null) {
                Object obj = c2642l.f601b;
                Object obj2 = c2642l.f602c;
                this.f591j = c2642l;
                m577a();
                return new C2641k(obj, obj2, this.f590i);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$e */
    /* loaded from: classes2.dex */
    public static final class C2635e extends AbstractC2632b implements Set, InterfaceC2629b {
        C2635e(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set
        /* renamed from: a */
        public boolean add(Map.Entry entry) {
            return this.f592a.m590h(entry.getKey(), entry.getValue(), false) == null;
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

        @Override // p035j$.util.concurrent.ConcurrentHashMap.AbstractC2632b, java.util.Collection
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            Object value;
            return (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = this.f592a.get(key)) == null || (value = entry.getValue()) == null || (value != obj2 && !value.equals(obj2))) ? false : true;
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p035j$.util.InterfaceC2629b, p035j$.lang.InterfaceC2575e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2642l[] c2642lArr = this.f592a.f584a;
            if (c2642lArr == null) {
                return;
            }
            C2646p c2646p = new C2646p(c2642lArr, c2642lArr.length, 0, c2642lArr.length);
            while (true) {
                C2642l m577a = c2646p.m577a();
                if (m577a == null) {
                    return;
                }
                consumer.accept(new C2641k(m577a.f601b, m577a.f602c, this.f592a));
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3099w.m103b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            C2642l[] c2642lArr = this.f592a.f584a;
            int i = 0;
            if (c2642lArr != null) {
                C2646p c2646p = new C2646p(c2642lArr, c2642lArr.length, 0, c2642lArr.length);
                while (true) {
                    C2642l m577a = c2646p.m577a();
                    if (m577a == null) {
                        break;
                    }
                    i += m577a.hashCode();
                }
            }
            return i;
        }

        @Override // p035j$.util.concurrent.ConcurrentHashMap.AbstractC2632b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f592a;
            C2642l[] c2642lArr = concurrentHashMap.f584a;
            int length = c2642lArr == null ? 0 : c2642lArr.length;
            return new C2634d(c2642lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p035j$.util.InterfaceC2629b
        /* renamed from: k */
        public /* synthetic */ boolean mo565k(Predicate predicate) {
            return AbstractC2628a.m613h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3044O0.m176n0(AbstractC2628a.m614g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && this.f592a.remove(key, value);
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2628a.m613h(this, C3100w0.m102a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p035j$.util.InterfaceC2629b, p035j$.lang.InterfaceC2575e
        public InterfaceC2701s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f592a;
            long m585m = concurrentHashMap.m585m();
            C2642l[] c2642lArr = concurrentHashMap.f584a;
            int length = c2642lArr == null ? 0 : c2642lArr.length;
            return new C2636f(c2642lArr, length, 0, length, m585m >= 0 ? m585m : 0L, concurrentHashMap);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C3069h.m144a(spliterator());
        }

        @Override // java.util.Collection, p035j$.util.InterfaceC2629b
        public /* synthetic */ p035j$.util.stream.Stream stream() {
            return AbstractC2628a.m612i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3044O0.m176n0(AbstractC2628a.m612i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3047S.m172a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$f */
    /* loaded from: classes2.dex */
    public static final class C2636f extends C2646p implements InterfaceC2701s {

        /* renamed from: i */
        final ConcurrentHashMap f593i;

        /* renamed from: j */
        long f594j;

        C2636f(C2642l[] c2642lArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
            super(c2642lArr, i, i2, i3);
            this.f593i = concurrentHashMap;
            this.f594j = j;
        }

        @Override // p035j$.util.InterfaceC2701s
        /* renamed from: b */
        public boolean mo122b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2642l m577a = m577a();
            if (m577a == null) {
                return false;
            }
            consumer.accept(new C2641k(m577a.f601b, m577a.f602c, this.f593i));
            return true;
        }

        @Override // p035j$.util.InterfaceC2701s
        public int characteristics() {
            return 4353;
        }

        @Override // p035j$.util.InterfaceC2701s
        public long estimateSize() {
            return this.f594j;
        }

        @Override // p035j$.util.InterfaceC2701s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2642l m577a = m577a();
                if (m577a == null) {
                    return;
                }
                consumer.accept(new C2641k(m577a.f601b, m577a.f602c, this.f593i));
            }
        }

        @Override // p035j$.util.InterfaceC2701s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2628a.m616e(this);
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2628a.m615f(this, i);
        }

        @Override // p035j$.util.InterfaceC2701s
        public InterfaceC2701s trySplit() {
            int i = this.f613f;
            int i2 = this.f614g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2642l[] c2642lArr = this.f608a;
            int i4 = this.f615h;
            this.f614g = i3;
            long j = this.f594j >>> 1;
            this.f594j = j;
            return new C2636f(c2642lArr, i4, i3, i2, j, this.f593i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$g */
    /* loaded from: classes2.dex */
    public static final class C2637g extends C2642l {

        /* renamed from: e */
        final C2642l[] f595e;

        C2637g(C2642l[] c2642lArr) {
            super(-1, null, null, null);
            this.f595e = c2642lArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
            if ((r0 instanceof p035j$.util.concurrent.ConcurrentHashMap.C2637g) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
            r0 = ((p035j$.util.concurrent.ConcurrentHashMap.C2637g) r0).f595e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
            return r0.mo567a(r5, r6);
         */
        @Override // p035j$.util.concurrent.ConcurrentHashMap.C2642l
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        p035j$.util.concurrent.ConcurrentHashMap.C2642l mo567a(int r5, java.lang.Object r6) {
            /*
                r4 = this;
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r4.f595e
            L2:
                r1 = 0
                if (r0 == 0) goto L37
                int r2 = r0.length
                if (r2 == 0) goto L37
                int r2 = r2 + (-1)
                r2 = r2 & r5
                j$.util.concurrent.ConcurrentHashMap$l r0 = p035j$.util.concurrent.ConcurrentHashMap.m584n(r0, r2)
                if (r0 != 0) goto L12
                goto L37
            L12:
                int r2 = r0.f600a
                if (r2 != r5) goto L23
                java.lang.Object r3 = r0.f601b
                if (r3 == r6) goto L22
                if (r3 == 0) goto L23
                boolean r3 = r6.equals(r3)
                if (r3 == 0) goto L23
            L22:
                return r0
            L23:
                if (r2 >= 0) goto L33
                boolean r1 = r0 instanceof p035j$.util.concurrent.ConcurrentHashMap.C2637g
                if (r1 == 0) goto L2e
                j$.util.concurrent.ConcurrentHashMap$g r0 = (p035j$.util.concurrent.ConcurrentHashMap.C2637g) r0
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r0.f595e
                goto L2
            L2e:
                j$.util.concurrent.ConcurrentHashMap$l r5 = r0.mo567a(r5, r6)
                return r5
            L33:
                j$.util.concurrent.ConcurrentHashMap$l r0 = r0.f603d
                if (r0 != 0) goto L12
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: p035j$.util.concurrent.ConcurrentHashMap.C2637g.mo567a(int, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$l");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$h */
    /* loaded from: classes2.dex */
    public static final class C2638h extends C2631a implements java.util.Iterator, Enumeration, p035j$.util.Iterator {
        C2638h(C2642l[] c2642lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2642lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p035j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3099w.m103b(consumer));
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public final Object next() {
            C2642l c2642l = this.f609b;
            if (c2642l != null) {
                Object obj = c2642l.f601b;
                this.f591j = c2642l;
                m577a();
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
    public static class C2639i extends AbstractC2632b implements Set, InterfaceC2629b {
        C2639i(ConcurrentHashMap concurrentHashMap, Object obj) {
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

        @Override // p035j$.util.concurrent.ConcurrentHashMap.AbstractC2632b, java.util.Collection
        public boolean contains(Object obj) {
            return this.f592a.containsKey(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p035j$.util.InterfaceC2629b, p035j$.lang.InterfaceC2575e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2642l[] c2642lArr = this.f592a.f584a;
            if (c2642lArr == null) {
                return;
            }
            C2646p c2646p = new C2646p(c2642lArr, c2642lArr.length, 0, c2642lArr.length);
            while (true) {
                C2642l m577a = c2646p.m577a();
                if (m577a == null) {
                    return;
                }
                consumer.accept(m577a.f601b);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3099w.m103b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            java.util.Iterator it = iterator();
            int i = 0;
            while (((C2631a) it).hasNext()) {
                i += ((C2638h) it).next().hashCode();
            }
            return i;
        }

        @Override // p035j$.util.concurrent.ConcurrentHashMap.AbstractC2632b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f592a;
            C2642l[] c2642lArr = concurrentHashMap.f584a;
            int length = c2642lArr == null ? 0 : c2642lArr.length;
            return new C2638h(c2642lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p035j$.util.InterfaceC2629b
        /* renamed from: k */
        public /* synthetic */ boolean mo565k(Predicate predicate) {
            return AbstractC2628a.m613h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3044O0.m176n0(AbstractC2628a.m614g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f592a.remove(obj) != null;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2628a.m613h(this, C3100w0.m102a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p035j$.util.InterfaceC2629b, p035j$.lang.InterfaceC2575e
        public InterfaceC2701s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f592a;
            long m585m = concurrentHashMap.m585m();
            C2642l[] c2642lArr = concurrentHashMap.f584a;
            int length = c2642lArr == null ? 0 : c2642lArr.length;
            return new C2640j(c2642lArr, length, 0, length, m585m >= 0 ? m585m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C3069h.m144a(spliterator());
        }

        @Override // java.util.Collection, p035j$.util.InterfaceC2629b
        public /* synthetic */ p035j$.util.stream.Stream stream() {
            return AbstractC2628a.m612i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3044O0.m176n0(AbstractC2628a.m612i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3047S.m172a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$j */
    /* loaded from: classes2.dex */
    public static final class C2640j extends C2646p implements InterfaceC2701s {

        /* renamed from: i */
        long f596i;

        C2640j(C2642l[] c2642lArr, int i, int i2, int i3, long j) {
            super(c2642lArr, i, i2, i3);
            this.f596i = j;
        }

        @Override // p035j$.util.InterfaceC2701s
        /* renamed from: b */
        public boolean mo122b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2642l m577a = m577a();
            if (m577a == null) {
                return false;
            }
            consumer.accept(m577a.f601b);
            return true;
        }

        @Override // p035j$.util.InterfaceC2701s
        public int characteristics() {
            return 4353;
        }

        @Override // p035j$.util.InterfaceC2701s
        public long estimateSize() {
            return this.f596i;
        }

        @Override // p035j$.util.InterfaceC2701s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2642l m577a = m577a();
                if (m577a == null) {
                    return;
                }
                consumer.accept(m577a.f601b);
            }
        }

        @Override // p035j$.util.InterfaceC2701s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2628a.m616e(this);
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2628a.m615f(this, i);
        }

        @Override // p035j$.util.InterfaceC2701s
        public InterfaceC2701s trySplit() {
            int i = this.f613f;
            int i2 = this.f614g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2642l[] c2642lArr = this.f608a;
            int i4 = this.f615h;
            this.f614g = i3;
            long j = this.f596i >>> 1;
            this.f596i = j;
            return new C2640j(c2642lArr, i4, i3, i2, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$k */
    /* loaded from: classes2.dex */
    public static final class C2641k implements Map.Entry {

        /* renamed from: a */
        final Object f597a;

        /* renamed from: b */
        Object f598b;

        /* renamed from: c */
        final ConcurrentHashMap f599c;

        C2641k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
            this.f597a = obj;
            this.f598b = obj2;
            this.f599c = concurrentHashMap;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f597a) || key.equals(obj2)) && (value == (obj3 = this.f598b) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f597a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f598b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f597a.hashCode() ^ this.f598b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Objects.requireNonNull(obj);
            Object obj2 = this.f598b;
            this.f598b = obj;
            this.f599c.put(this.f597a, obj);
            return obj2;
        }

        public String toString() {
            return this.f597a + "=" + this.f598b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$l */
    /* loaded from: classes2.dex */
    public static class C2642l implements Map.Entry {

        /* renamed from: a */
        final int f600a;

        /* renamed from: b */
        final Object f601b;

        /* renamed from: c */
        volatile Object f602c;

        /* renamed from: d */
        volatile C2642l f603d;

        C2642l(int i, Object obj, Object obj2, C2642l c2642l) {
            this.f600a = i;
            this.f601b = obj;
            this.f602c = obj2;
            this.f603d = c2642l;
        }

        /* renamed from: a */
        C2642l mo567a(int i, Object obj) {
            Object obj2;
            C2642l c2642l = this;
            do {
                if (c2642l.f600a == i && ((obj2 = c2642l.f601b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return c2642l;
                }
                c2642l = c2642l.f603d;
            } while (c2642l != null);
            return null;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f601b) || key.equals(obj2)) && (value == (obj3 = this.f602c) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f601b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f602c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f601b.hashCode() ^ this.f602c.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public final String toString() {
            return this.f601b + "=" + this.f602c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$m */
    /* loaded from: classes2.dex */
    public static final class C2643m extends C2642l {
        C2643m() {
            super(-3, null, null, null);
        }

        @Override // p035j$.util.concurrent.ConcurrentHashMap.C2642l
        /* renamed from: a */
        C2642l mo567a(int i, Object obj) {
            return null;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$n */
    /* loaded from: classes2.dex */
    static class C2644n extends ReentrantLock {
        C2644n(float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$o */
    /* loaded from: classes2.dex */
    public static final class C2645o {

        /* renamed from: a */
        int f604a;

        /* renamed from: b */
        int f605b;

        /* renamed from: c */
        C2642l[] f606c;

        /* renamed from: d */
        C2645o f607d;

        C2645o() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$p */
    /* loaded from: classes2.dex */
    public static class C2646p {

        /* renamed from: a */
        C2642l[] f608a;

        /* renamed from: b */
        C2642l f609b = null;

        /* renamed from: c */
        C2645o f610c;

        /* renamed from: d */
        C2645o f611d;

        /* renamed from: e */
        int f612e;

        /* renamed from: f */
        int f613f;

        /* renamed from: g */
        int f614g;

        /* renamed from: h */
        final int f615h;

        C2646p(C2642l[] c2642lArr, int i, int i2, int i3) {
            this.f608a = c2642lArr;
            this.f615h = i;
            this.f612e = i2;
            this.f613f = i2;
            this.f614g = i3;
        }

        /* renamed from: a */
        final C2642l m577a() {
            C2642l[] c2642lArr;
            int length;
            int i;
            C2645o c2645o;
            C2642l c2642l = this.f609b;
            if (c2642l != null) {
                c2642l = c2642l.f603d;
            }
            while (c2642l == null) {
                if (this.f613f >= this.f614g || (c2642lArr = this.f608a) == null || (length = c2642lArr.length) <= (i = this.f612e) || i < 0) {
                    this.f609b = null;
                    return null;
                }
                C2642l m584n = ConcurrentHashMap.m584n(c2642lArr, i);
                if (m584n == null || m584n.f600a >= 0) {
                    c2642l = m584n;
                } else if (m584n instanceof C2637g) {
                    this.f608a = ((C2637g) m584n).f595e;
                    C2645o c2645o2 = this.f611d;
                    if (c2645o2 != null) {
                        this.f611d = c2645o2.f607d;
                    } else {
                        c2645o2 = new C2645o();
                    }
                    c2645o2.f606c = c2642lArr;
                    c2645o2.f604a = length;
                    c2645o2.f605b = i;
                    c2645o2.f607d = this.f610c;
                    this.f610c = c2645o2;
                    c2642l = null;
                } else {
                    c2642l = m584n instanceof C2647q ? ((C2647q) m584n).f619f : null;
                }
                if (this.f610c != null) {
                    while (true) {
                        c2645o = this.f610c;
                        if (c2645o == null) {
                            break;
                        }
                        int i2 = this.f612e;
                        int i3 = c2645o.f604a;
                        int i4 = i2 + i3;
                        this.f612e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.f612e = c2645o.f605b;
                        this.f608a = c2645o.f606c;
                        c2645o.f606c = null;
                        C2645o c2645o3 = c2645o.f607d;
                        c2645o.f607d = this.f611d;
                        this.f610c = c2645o3;
                        this.f611d = c2645o;
                        length = i3;
                    }
                    if (c2645o == null) {
                        int i5 = this.f612e + this.f615h;
                        this.f612e = i5;
                        if (i5 >= length) {
                            int i6 = this.f613f + 1;
                            this.f613f = i6;
                            this.f612e = i6;
                        }
                    }
                } else {
                    int i7 = i + this.f615h;
                    this.f612e = i7;
                    if (i7 >= length) {
                        int i8 = this.f613f + 1;
                        this.f613f = i8;
                        this.f612e = i8;
                    }
                }
            }
            this.f609b = c2642l;
            return c2642l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$q */
    /* loaded from: classes2.dex */
    public static final class C2647q extends C2642l {

        /* renamed from: h */
        private static final Unsafe f616h;

        /* renamed from: i */
        private static final long f617i;

        /* renamed from: e */
        C2648r f618e;

        /* renamed from: f */
        volatile C2648r f619f;

        /* renamed from: g */
        volatile Thread f620g;
        volatile int lockState;

        static {
            try {
                Unsafe m550c = AbstractC2658c.m550c();
                f616h = m550c;
                f617i = m550c.objectFieldOffset(C2647q.class.getDeclaredField("lockState"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        C2647q(C2648r c2648r) {
            super(-2, null, null, null);
            int m594d;
            int m568j;
            this.f619f = c2648r;
            C2648r c2648r2 = null;
            while (c2648r != null) {
                C2648r c2648r3 = (C2648r) c2648r.f603d;
                c2648r.f623g = null;
                c2648r.f622f = null;
                if (c2648r2 == null) {
                    c2648r.f621e = null;
                    c2648r.f625i = false;
                } else {
                    Object obj = c2648r.f601b;
                    int i = c2648r.f600a;
                    C2648r c2648r4 = c2648r2;
                    Class cls = null;
                    while (true) {
                        Object obj2 = c2648r4.f601b;
                        int i2 = c2648r4.f600a;
                        m568j = i2 > i ? -1 : i2 < i ? 1 : ((cls == null && (cls = ConcurrentHashMap.m595c(obj)) == null) || (m594d = ConcurrentHashMap.m594d(cls, obj, obj2)) == 0) ? m568j(obj, obj2) : m594d;
                        C2648r c2648r5 = m568j <= 0 ? c2648r4.f622f : c2648r4.f623g;
                        if (c2648r5 == null) {
                            break;
                        }
                        c2648r4 = c2648r5;
                    }
                    c2648r.f621e = c2648r4;
                    if (m568j <= 0) {
                        c2648r4.f622f = c2648r;
                    } else {
                        c2648r4.f623g = c2648r;
                    }
                    c2648r = m575c(c2648r2, c2648r);
                }
                c2648r2 = c2648r;
                c2648r = c2648r3;
            }
            this.f618e = c2648r2;
        }

        /* renamed from: b */
        static C2648r m576b(C2648r c2648r, C2648r c2648r2) {
            while (c2648r2 != null && c2648r2 != c2648r) {
                C2648r c2648r3 = c2648r2.f621e;
                if (c2648r3 == null) {
                    c2648r2.f625i = false;
                    return c2648r2;
                } else if (c2648r2.f625i) {
                    c2648r2.f625i = false;
                    return c2648r;
                } else {
                    C2648r c2648r4 = c2648r3.f622f;
                    C2648r c2648r5 = null;
                    if (c2648r4 == c2648r2) {
                        c2648r4 = c2648r3.f623g;
                        if (c2648r4 != null && c2648r4.f625i) {
                            c2648r4.f625i = false;
                            c2648r3.f625i = true;
                            c2648r = m570h(c2648r, c2648r3);
                            c2648r3 = c2648r2.f621e;
                            c2648r4 = c2648r3 == null ? null : c2648r3.f623g;
                        }
                        if (c2648r4 == null) {
                            c2648r2 = c2648r3;
                        } else {
                            C2648r c2648r6 = c2648r4.f622f;
                            C2648r c2648r7 = c2648r4.f623g;
                            if ((c2648r7 != null && c2648r7.f625i) || (c2648r6 != null && c2648r6.f625i)) {
                                if (c2648r7 == null || !c2648r7.f625i) {
                                    if (c2648r6 != null) {
                                        c2648r6.f625i = false;
                                    }
                                    c2648r4.f625i = true;
                                    c2648r = m569i(c2648r, c2648r4);
                                    c2648r3 = c2648r2.f621e;
                                    if (c2648r3 != null) {
                                        c2648r5 = c2648r3.f623g;
                                    }
                                } else {
                                    c2648r5 = c2648r4;
                                }
                                if (c2648r5 != null) {
                                    c2648r5.f625i = c2648r3 == null ? false : c2648r3.f625i;
                                    C2648r c2648r8 = c2648r5.f623g;
                                    if (c2648r8 != null) {
                                        c2648r8.f625i = false;
                                    }
                                }
                                if (c2648r3 != null) {
                                    c2648r3.f625i = false;
                                    c2648r = m570h(c2648r, c2648r3);
                                }
                                c2648r2 = c2648r;
                                c2648r = c2648r2;
                            }
                            c2648r4.f625i = true;
                            c2648r2 = c2648r3;
                        }
                    } else {
                        if (c2648r4 != null && c2648r4.f625i) {
                            c2648r4.f625i = false;
                            c2648r3.f625i = true;
                            c2648r = m569i(c2648r, c2648r3);
                            c2648r3 = c2648r2.f621e;
                            c2648r4 = c2648r3 == null ? null : c2648r3.f622f;
                        }
                        if (c2648r4 == null) {
                            c2648r2 = c2648r3;
                        } else {
                            C2648r c2648r9 = c2648r4.f622f;
                            C2648r c2648r10 = c2648r4.f623g;
                            if ((c2648r9 != null && c2648r9.f625i) || (c2648r10 != null && c2648r10.f625i)) {
                                if (c2648r9 == null || !c2648r9.f625i) {
                                    if (c2648r10 != null) {
                                        c2648r10.f625i = false;
                                    }
                                    c2648r4.f625i = true;
                                    c2648r = m570h(c2648r, c2648r4);
                                    c2648r3 = c2648r2.f621e;
                                    if (c2648r3 != null) {
                                        c2648r5 = c2648r3.f622f;
                                    }
                                } else {
                                    c2648r5 = c2648r4;
                                }
                                if (c2648r5 != null) {
                                    c2648r5.f625i = c2648r3 == null ? false : c2648r3.f625i;
                                    C2648r c2648r11 = c2648r5.f622f;
                                    if (c2648r11 != null) {
                                        c2648r11.f625i = false;
                                    }
                                }
                                if (c2648r3 != null) {
                                    c2648r3.f625i = false;
                                    c2648r = m569i(c2648r, c2648r3);
                                }
                                c2648r2 = c2648r;
                                c2648r = c2648r2;
                            }
                            c2648r4.f625i = true;
                            c2648r2 = c2648r3;
                        }
                    }
                }
            }
            return c2648r;
        }

        /* renamed from: c */
        static C2648r m575c(C2648r c2648r, C2648r c2648r2) {
            C2648r c2648r3;
            c2648r2.f625i = true;
            while (true) {
                C2648r c2648r4 = c2648r2.f621e;
                if (c2648r4 == null) {
                    c2648r2.f625i = false;
                    return c2648r2;
                } else if (!c2648r4.f625i || (c2648r3 = c2648r4.f621e) == null) {
                    break;
                } else {
                    C2648r c2648r5 = c2648r3.f622f;
                    if (c2648r4 == c2648r5) {
                        c2648r5 = c2648r3.f623g;
                        if (c2648r5 == null || !c2648r5.f625i) {
                            if (c2648r2 == c2648r4.f623g) {
                                c2648r = m570h(c2648r, c2648r4);
                                C2648r c2648r6 = c2648r4.f621e;
                                c2648r3 = c2648r6 == null ? null : c2648r6.f621e;
                                c2648r4 = c2648r6;
                                c2648r2 = c2648r4;
                            }
                            if (c2648r4 != null) {
                                c2648r4.f625i = false;
                                if (c2648r3 != null) {
                                    c2648r3.f625i = true;
                                    c2648r = m569i(c2648r, c2648r3);
                                }
                            }
                        } else {
                            c2648r5.f625i = false;
                            c2648r4.f625i = false;
                            c2648r3.f625i = true;
                            c2648r2 = c2648r3;
                        }
                    } else if (c2648r5 == null || !c2648r5.f625i) {
                        if (c2648r2 == c2648r4.f622f) {
                            c2648r = m569i(c2648r, c2648r4);
                            C2648r c2648r7 = c2648r4.f621e;
                            c2648r3 = c2648r7 == null ? null : c2648r7.f621e;
                            c2648r4 = c2648r7;
                            c2648r2 = c2648r4;
                        }
                        if (c2648r4 != null) {
                            c2648r4.f625i = false;
                            if (c2648r3 != null) {
                                c2648r3.f625i = true;
                                c2648r = m570h(c2648r, c2648r3);
                            }
                        }
                    } else {
                        c2648r5.f625i = false;
                        c2648r4.f625i = false;
                        c2648r3.f625i = true;
                        c2648r2 = c2648r3;
                    }
                }
            }
            return c2648r;
        }

        /* renamed from: d */
        private final void m574d() {
            boolean z = false;
            while (true) {
                int i = this.lockState;
                if ((i & (-3)) == 0) {
                    if (f616h.compareAndSwapInt(this, f617i, i, 1)) {
                        break;
                    }
                } else if ((i & 2) == 0) {
                    if (f616h.compareAndSwapInt(this, f617i, i, i | 2)) {
                        z = true;
                        this.f620g = Thread.currentThread();
                    }
                } else if (z) {
                    LockSupport.park(this);
                }
            }
            if (z) {
                this.f620g = null;
            }
        }

        /* renamed from: e */
        private final void m573e() {
            if (f616h.compareAndSwapInt(this, f617i, 0, 1)) {
                return;
            }
            m574d();
        }

        /* renamed from: h */
        static C2648r m570h(C2648r c2648r, C2648r c2648r2) {
            C2648r c2648r3 = c2648r2.f623g;
            if (c2648r3 != null) {
                C2648r c2648r4 = c2648r3.f622f;
                c2648r2.f623g = c2648r4;
                if (c2648r4 != null) {
                    c2648r4.f621e = c2648r2;
                }
                C2648r c2648r5 = c2648r2.f621e;
                c2648r3.f621e = c2648r5;
                if (c2648r5 == null) {
                    c2648r3.f625i = false;
                    c2648r = c2648r3;
                } else if (c2648r5.f622f == c2648r2) {
                    c2648r5.f622f = c2648r3;
                } else {
                    c2648r5.f623g = c2648r3;
                }
                c2648r3.f622f = c2648r2;
                c2648r2.f621e = c2648r3;
            }
            return c2648r;
        }

        /* renamed from: i */
        static C2648r m569i(C2648r c2648r, C2648r c2648r2) {
            C2648r c2648r3 = c2648r2.f622f;
            if (c2648r3 != null) {
                C2648r c2648r4 = c2648r3.f623g;
                c2648r2.f622f = c2648r4;
                if (c2648r4 != null) {
                    c2648r4.f621e = c2648r2;
                }
                C2648r c2648r5 = c2648r2.f621e;
                c2648r3.f621e = c2648r5;
                if (c2648r5 == null) {
                    c2648r3.f625i = false;
                    c2648r = c2648r3;
                } else if (c2648r5.f623g == c2648r2) {
                    c2648r5.f623g = c2648r3;
                } else {
                    c2648r5.f622f = c2648r3;
                }
                c2648r3.f623g = c2648r2;
                c2648r2.f621e = c2648r3;
            }
            return c2648r;
        }

        /* renamed from: j */
        static int m568j(Object obj, Object obj2) {
            int compareTo;
            return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
        }

        @Override // p035j$.util.concurrent.ConcurrentHashMap.C2642l
        /* renamed from: a */
        final C2642l mo567a(int i, Object obj) {
            Object obj2;
            Thread thread;
            Thread thread2;
            C2642l c2642l = this.f619f;
            while (true) {
                C2648r c2648r = null;
                if (c2642l == null) {
                    return null;
                }
                int i2 = this.lockState;
                if ((i2 & 3) == 0) {
                    Unsafe unsafe = f616h;
                    long j = f617i;
                    if (unsafe.compareAndSwapInt(this, j, i2, i2 + 4)) {
                        try {
                            C2648r c2648r2 = this.f618e;
                            if (c2648r2 != null) {
                                c2648r = c2648r2.m566b(i, obj, null);
                            }
                            if (AbstractC2658c.m552a(unsafe, this, j, -4) == 6 && (thread2 = this.f620g) != null) {
                                LockSupport.unpark(thread2);
                            }
                            return c2648r;
                        } catch (Throwable th) {
                            if (AbstractC2658c.m552a(f616h, this, f617i, -4) == 6 && (thread = this.f620g) != null) {
                                LockSupport.unpark(thread);
                            }
                            throw th;
                        }
                    }
                } else if (c2642l.f600a != i || ((obj2 = c2642l.f601b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                    c2642l = c2642l.f603d;
                }
            }
            return c2642l;
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x0060, code lost:
            return r3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00a2, code lost:
            return null;
         */
        /* JADX WARN: Removed duplicated region for block: B:36:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00a7 A[LOOP:0: B:3:0x000c->B:55:0x00a7, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0071 A[SYNTHETIC] */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final p035j$.util.concurrent.ConcurrentHashMap.C2648r m572f(int r16, java.lang.Object r17, java.lang.Object r18) {
            /*
                r15 = this;
                r1 = r15
                r0 = r16
                r4 = r17
                j$.util.concurrent.ConcurrentHashMap$r r2 = r1.f618e
                r8 = 0
                r9 = 0
                r10 = r2
                r2 = r8
                r3 = r9
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
                r1.f618e = r9
                r1.f619f = r9
                goto La2
            L22:
                int r5 = r10.f600a
                r11 = 1
                if (r5 <= r0) goto L2a
                r5 = -1
            L28:
                r12 = r5
                goto L68
            L2a:
                if (r5 >= r0) goto L2e
                r12 = r11
                goto L68
            L2e:
                java.lang.Object r5 = r10.f601b
                if (r5 == r4) goto Laa
                if (r5 == 0) goto L3c
                boolean r6 = r4.equals(r5)
                if (r6 == 0) goto L3c
                goto Laa
            L3c:
                if (r2 != 0) goto L44
                java.lang.Class r2 = p035j$.util.concurrent.ConcurrentHashMap.m595c(r17)
                if (r2 == 0) goto L4a
            L44:
                int r6 = p035j$.util.concurrent.ConcurrentHashMap.m594d(r2, r4, r5)
                if (r6 != 0) goto L67
            L4a:
                if (r3 != 0) goto L62
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f622f
                if (r3 == 0) goto L56
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m566b(r0, r4, r2)
                if (r3 != 0) goto L60
            L56:
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f623g
                if (r3 == 0) goto L61
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m566b(r0, r4, r2)
                if (r3 == 0) goto L61
            L60:
                return r3
            L61:
                r3 = r11
            L62:
                int r5 = m568j(r4, r5)
                goto L28
            L67:
                r12 = r6
            L68:
                if (r12 > 0) goto L6d
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f622f
                goto L6f
            L6d:
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f623g
            L6f:
                if (r5 != 0) goto La7
                j$.util.concurrent.ConcurrentHashMap$r r13 = r1.f619f
                j$.util.concurrent.ConcurrentHashMap$r r14 = new j$.util.concurrent.ConcurrentHashMap$r
                r2 = r14
                r3 = r16
                r4 = r17
                r5 = r18
                r6 = r13
                r7 = r10
                r2.<init>(r3, r4, r5, r6, r7)
                r1.f619f = r14
                if (r13 == 0) goto L87
                r13.f624h = r14
            L87:
                if (r12 > 0) goto L8c
                r10.f622f = r14
                goto L8e
            L8c:
                r10.f623g = r14
            L8e:
                boolean r0 = r10.f625i
                if (r0 != 0) goto L95
                r14.f625i = r11
                goto La2
            L95:
                r15.m573e()
                j$.util.concurrent.ConcurrentHashMap$r r0 = r1.f618e     // Catch: java.lang.Throwable -> La3
                j$.util.concurrent.ConcurrentHashMap$r r0 = m575c(r0, r14)     // Catch: java.lang.Throwable -> La3
                r1.f618e = r0     // Catch: java.lang.Throwable -> La3
                r1.lockState = r9
            La2:
                return r8
            La3:
                r0 = move-exception
                r1.lockState = r9
                throw r0
            La7:
                r10 = r5
                goto Lc
            Laa:
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: p035j$.util.concurrent.ConcurrentHashMap.C2647q.m572f(int, java.lang.Object, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$r");
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
        final boolean m571g(p035j$.util.concurrent.ConcurrentHashMap.C2648r r11) {
            /*
                Method dump skipped, instructions count: 205
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p035j$.util.concurrent.ConcurrentHashMap.C2647q.m571g(j$.util.concurrent.ConcurrentHashMap$r):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$r */
    /* loaded from: classes2.dex */
    public static final class C2648r extends C2642l {

        /* renamed from: e */
        C2648r f621e;

        /* renamed from: f */
        C2648r f622f;

        /* renamed from: g */
        C2648r f623g;

        /* renamed from: h */
        C2648r f624h;

        /* renamed from: i */
        boolean f625i;

        C2648r(int i, Object obj, Object obj2, C2642l c2642l, C2648r c2648r) {
            super(i, obj, obj2, c2642l);
            this.f621e = c2648r;
        }

        @Override // p035j$.util.concurrent.ConcurrentHashMap.C2642l
        /* renamed from: a */
        C2642l mo567a(int i, Object obj) {
            return m566b(i, obj, null);
        }

        /* renamed from: b */
        final C2648r m566b(int i, Object obj, Class cls) {
            int m594d;
            if (obj != null) {
                C2648r c2648r = this;
                do {
                    C2648r c2648r2 = c2648r.f622f;
                    C2648r c2648r3 = c2648r.f623g;
                    int i2 = c2648r.f600a;
                    if (i2 <= i) {
                        if (i2 >= i) {
                            Object obj2 = c2648r.f601b;
                            if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                                return c2648r;
                            }
                            if (c2648r2 != null) {
                                if (c2648r3 != null) {
                                    if ((cls == null && (cls = ConcurrentHashMap.m595c(obj)) == null) || (m594d = ConcurrentHashMap.m594d(cls, obj, obj2)) == 0) {
                                        C2648r m566b = c2648r3.m566b(i, obj, cls);
                                        if (m566b != null) {
                                            return m566b;
                                        }
                                    } else if (m594d >= 0) {
                                        c2648r2 = c2648r3;
                                    }
                                }
                            }
                        }
                        c2648r = c2648r3;
                        continue;
                    }
                    c2648r = c2648r2;
                    continue;
                } while (c2648r != null);
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$s */
    /* loaded from: classes2.dex */
    public static final class C2649s extends C2631a implements java.util.Iterator, Enumeration, p035j$.util.Iterator {
        C2649s(C2642l[] c2642lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2642lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p035j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3099w.m103b(consumer));
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public final Object next() {
            C2642l c2642l = this.f609b;
            if (c2642l != null) {
                Object obj = c2642l.f602c;
                this.f591j = c2642l;
                m577a();
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
    public static final class C2650t extends C2646p implements InterfaceC2701s {

        /* renamed from: i */
        long f626i;

        C2650t(C2642l[] c2642lArr, int i, int i2, int i3, long j) {
            super(c2642lArr, i, i2, i3);
            this.f626i = j;
        }

        @Override // p035j$.util.InterfaceC2701s
        /* renamed from: b */
        public boolean mo122b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2642l m577a = m577a();
            if (m577a == null) {
                return false;
            }
            consumer.accept(m577a.f602c);
            return true;
        }

        @Override // p035j$.util.InterfaceC2701s
        public int characteristics() {
            return 4352;
        }

        @Override // p035j$.util.InterfaceC2701s
        public long estimateSize() {
            return this.f626i;
        }

        @Override // p035j$.util.InterfaceC2701s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2642l m577a = m577a();
                if (m577a == null) {
                    return;
                }
                consumer.accept(m577a.f602c);
            }
        }

        @Override // p035j$.util.InterfaceC2701s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2628a.m616e(this);
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2628a.m615f(this, i);
        }

        @Override // p035j$.util.InterfaceC2701s
        public InterfaceC2701s trySplit() {
            int i = this.f613f;
            int i2 = this.f614g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2642l[] c2642lArr = this.f608a;
            int i4 = this.f615h;
            this.f614g = i3;
            long j = this.f626i >>> 1;
            this.f626i = j;
            return new C2650t(c2642lArr, i4, i3, i2, j);
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$u */
    /* loaded from: classes2.dex */
    static final class C2651u extends AbstractC2632b implements InterfaceC2629b {
        C2651u(ConcurrentHashMap concurrentHashMap) {
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

        @Override // p035j$.util.concurrent.ConcurrentHashMap.AbstractC2632b, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f592a.containsValue(obj);
        }

        @Override // p035j$.util.InterfaceC2629b, p035j$.lang.InterfaceC2575e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2642l[] c2642lArr = this.f592a.f584a;
            if (c2642lArr == null) {
                return;
            }
            C2646p c2646p = new C2646p(c2642lArr, c2642lArr.length, 0, c2642lArr.length);
            while (true) {
                C2642l m577a = c2646p.m577a();
                if (m577a == null) {
                    return;
                }
                consumer.accept(m577a.f602c);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3099w.m103b(consumer));
        }

        @Override // p035j$.util.concurrent.ConcurrentHashMap.AbstractC2632b, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f592a;
            C2642l[] c2642lArr = concurrentHashMap.f584a;
            int length = c2642lArr == null ? 0 : c2642lArr.length;
            return new C2649s(c2642lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p035j$.util.InterfaceC2629b
        /* renamed from: k */
        public /* synthetic */ boolean mo565k(Predicate predicate) {
            return AbstractC2628a.m613h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3044O0.m176n0(AbstractC2628a.m614g(this));
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            C2631a c2631a;
            if (obj != null) {
                java.util.Iterator it = iterator();
                do {
                    c2631a = (C2631a) it;
                    if (!c2631a.hasNext()) {
                        return false;
                    }
                } while (!obj.equals(((C2649s) it).next()));
                c2631a.remove();
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2628a.m613h(this, C3100w0.m102a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, p035j$.util.InterfaceC2629b, p035j$.lang.InterfaceC2575e
        public InterfaceC2701s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f592a;
            long m585m = concurrentHashMap.m585m();
            C2642l[] c2642lArr = concurrentHashMap.f584a;
            int length = c2642lArr == null ? 0 : c2642lArr.length;
            return new C2650t(c2642lArr, length, 0, length, m585m >= 0 ? m585m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable
        public /* synthetic */ Spliterator spliterator() {
            return C3069h.m144a(spliterator());
        }

        @Override // java.util.Collection, p035j$.util.InterfaceC2629b
        public /* synthetic */ p035j$.util.stream.Stream stream() {
            return AbstractC2628a.m612i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3044O0.m176n0(AbstractC2628a.m612i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3047S.m172a(intFunction).apply(0));
        }
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", C2644n[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        try {
            Unsafe m550c = AbstractC2658c.m550c();
            f576h = m550c;
            f577i = m550c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("sizeCtl"));
            f578j = m550c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("transferIndex"));
            f579k = m550c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("baseCount"));
            f580l = m550c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("cellsBusy"));
            f581m = m550c.objectFieldOffset(C2633c.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
            f582n = m550c.arrayBaseOffset(C2642l[].class);
            int arrayIndexScale = m550c.arrayIndexScale(C2642l[].class);
            if (((arrayIndexScale - 1) & arrayIndexScale) != 0) {
                throw new Error("data type scale not a power of two");
            }
            f583o = 31 - Integer.numberOfLeadingZeros(arrayIndexScale);
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
        this.sizeCtl = i >= 536870912 ? 1073741824 : m583o(i + (i >>> 1) + 1);
    }

    public ConcurrentHashMap(int i, float f, int i2) {
        if (f <= BitmapDescriptorFactory.HUE_RED || i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        long j = (long) (((i < i2 ? i2 : i) / f) + 1.0d);
        this.sizeCtl = j >= 1073741824 ? 1073741824 : m583o((int) j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r1.compareAndSwapLong(r11, r3, r5, r9) == false) goto L53;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m597a(long r12, int r14) {
        /*
            r11 = this;
            j$.util.concurrent.ConcurrentHashMap$c[] r0 = r11.f586c
            if (r0 != 0) goto L14
            sun.misc.Unsafe r1 = p035j$.util.concurrent.ConcurrentHashMap.f576h
            long r3 = p035j$.util.concurrent.ConcurrentHashMap.f579k
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
            int r3 = p035j$.util.concurrent.ThreadLocalRandom.m563b()
            r2 = r2 & r3
            r4 = r0[r2]
            if (r4 == 0) goto L94
            sun.misc.Unsafe r3 = p035j$.util.concurrent.ConcurrentHashMap.f576h
            long r5 = p035j$.util.concurrent.ConcurrentHashMap.f581m
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
            long r9 = r11.m585m()
        L3b:
            if (r14 < 0) goto L93
        L3d:
            int r4 = r11.sizeCtl
            long r12 = (long) r4
            int r12 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r12 < 0) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r12 = r11.f584a
            if (r12 == 0) goto L93
            int r13 = r12.length
            r14 = 1073741824(0x40000000, float:2.0)
            if (r13 >= r14) goto L93
            int r13 = m588j(r13)
            if (r4 >= 0) goto L7b
            int r14 = r4 >>> 16
            if (r14 != r13) goto L93
            int r14 = r13 + 1
            if (r4 == r14) goto L93
            r14 = 65535(0xffff, float:9.1834E-41)
            int r13 = r13 + r14
            if (r4 == r13) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r13 = r11.f585b
            if (r13 == 0) goto L93
            int r14 = r11.transferIndex
            if (r14 > 0) goto L6a
            goto L93
        L6a:
            sun.misc.Unsafe r0 = p035j$.util.concurrent.ConcurrentHashMap.f576h
            long r2 = p035j$.util.concurrent.ConcurrentHashMap.f577i
            int r5 = r4 + 1
            r1 = r11
            boolean r14 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r14 == 0) goto L8e
            r11.m582p(r12, r13)
            goto L8e
        L7b:
            sun.misc.Unsafe r0 = p035j$.util.concurrent.ConcurrentHashMap.f576h
            long r2 = p035j$.util.concurrent.ConcurrentHashMap.f577i
            int r13 = r13 << 16
            int r5 = r13 + 2
            r1 = r11
            boolean r13 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r13 == 0) goto L8e
            r13 = 0
            r11.m582p(r12, r13)
        L8e:
            long r9 = r11.m585m()
            goto L3d
        L93:
            return
        L94:
            r11.m593e(r12, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p035j$.util.concurrent.ConcurrentHashMap.m597a(long, int):void");
    }

    /* renamed from: b */
    static final boolean m596b(C2642l[] c2642lArr, int i, C2642l c2642l, C2642l c2642l2) {
        return f576h.compareAndSwapObject(c2642lArr, (i << f583o) + f582n, (Object) null, c2642l2);
    }

    /* renamed from: c */
    static Class m595c(Object obj) {
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
    static int m594d(Class cls, Object obj, Object obj2) {
        if (obj2 == null || obj2.getClass() != cls) {
            return 0;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x009b, code lost:
        if (r24.f586c != r7) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009d, code lost:
        r1 = new p035j$.util.concurrent.ConcurrentHashMap.C2633c[r8 << 1];
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
        r24.f586c = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x001b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0101 A[SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m593e(long r25, boolean r27) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p035j$.util.concurrent.ConcurrentHashMap.m593e(long, boolean):void");
    }

    /* renamed from: g */
    private final C2642l[] m591g() {
        while (true) {
            C2642l[] c2642lArr = this.f584a;
            if (c2642lArr != null && c2642lArr.length != 0) {
                return c2642lArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (f576h.compareAndSwapInt(this, f577i, i, -1)) {
                try {
                    C2642l[] c2642lArr2 = this.f584a;
                    if (c2642lArr2 == null || c2642lArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        C2642l[] c2642lArr3 = new C2642l[i2];
                        this.f584a = c2642lArr3;
                        i = i2 - (i2 >>> 2);
                        c2642lArr2 = c2642lArr3;
                    }
                    this.sizeCtl = i;
                    return c2642lArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* renamed from: j */
    static final int m588j(int i) {
        return Integer.numberOfLeadingZeros(i) | LiteMode.FLAG_CHAT_SCALE;
    }

    /* renamed from: k */
    static final void m587k(C2642l[] c2642lArr, int i, C2642l c2642l) {
        f576h.putObjectVolatile(c2642lArr, (i << f583o) + f582n, c2642l);
    }

    /* renamed from: l */
    static final int m586l(int i) {
        return (i ^ (i >>> 16)) & Integer.MAX_VALUE;
    }

    /* renamed from: n */
    static final C2642l m584n(C2642l[] c2642lArr, int i) {
        return (C2642l) f576h.getObjectVolatile(c2642lArr, (i << f583o) + f582n);
    }

    /* renamed from: o */
    private static final int m583o(int i) {
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
    /* JADX WARN: Type inference failed for: r13v13, types: [j$.util.concurrent.ConcurrentHashMap$l] */
    /* JADX WARN: Type inference failed for: r13v15, types: [j$.util.concurrent.ConcurrentHashMap$l] */
    /* JADX WARN: Type inference failed for: r6v20, types: [j$.util.concurrent.ConcurrentHashMap$l] */
    /* JADX WARN: Type inference failed for: r6v25, types: [j$.util.concurrent.ConcurrentHashMap$l] */
    /* renamed from: p */
    private final void m582p(C2642l[] c2642lArr, C2642l[] c2642lArr2) {
        C2642l[] c2642lArr3;
        int i;
        C2642l[] c2642lArr4;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        C2637g c2637g;
        C2648r c2648r;
        int i7;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = c2642lArr.length;
        int i8 = f575g;
        boolean z = true;
        int i9 = i8 > 1 ? (length >>> 3) / i8 : length;
        int i10 = i9 < 16 ? 16 : i9;
        if (c2642lArr2 == null) {
            try {
                C2642l[] c2642lArr5 = new C2642l[length << 1];
                concurrentHashMap.f585b = c2642lArr5;
                concurrentHashMap.transferIndex = length;
                c2642lArr3 = c2642lArr5;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            c2642lArr3 = c2642lArr2;
        }
        int length2 = c2642lArr3.length;
        C2637g c2637g2 = new C2637g(c2642lArr3);
        int i11 = -1;
        C2642l[] c2642lArr6 = c2642lArr;
        boolean z2 = true;
        int i12 = 0;
        int i13 = 0;
        boolean z3 = false;
        while (true) {
            if (z2) {
                int i14 = i12 - 1;
                if (i14 >= i13 || z3) {
                    i = i14;
                    c2642lArr4 = c2642lArr6;
                    i2 = i13;
                    i3 = i11;
                    z2 = false;
                } else {
                    int i15 = concurrentHashMap.transferIndex;
                    if (i15 <= 0) {
                        i12 = i11;
                    } else {
                        Unsafe unsafe = f576h;
                        long j = f578j;
                        int i16 = i15 > i10 ? i15 - i10 : 0;
                        i = i14;
                        c2642lArr4 = c2642lArr6;
                        i2 = i13;
                        i3 = i11;
                        if (unsafe.compareAndSwapInt(this, j, i15, i16)) {
                            i12 = i15 - 1;
                            i11 = i3;
                            c2642lArr6 = c2642lArr4;
                            i13 = i16;
                        }
                    }
                    z2 = false;
                }
                i11 = i3;
                c2642lArr6 = c2642lArr4;
                i13 = i2;
                i12 = i;
            } else {
                C2642l[] c2642lArr7 = c2642lArr6;
                int i17 = i13;
                int i18 = i11;
                C2648r c2648r2 = null;
                if (i12 < 0 || i12 >= length || (i4 = i12 + length) >= length2) {
                    int i19 = i10;
                    int i20 = length2;
                    C2637g c2637g3 = c2637g2;
                    if (z3) {
                        this.f585b = null;
                        this.f584a = c2642lArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    Unsafe unsafe2 = f576h;
                    long j2 = f577i;
                    int i21 = this.sizeCtl;
                    int i22 = i12;
                    if (!unsafe2.compareAndSwapInt(this, j2, i21, i21 - 1)) {
                        c2637g2 = c2637g3;
                        concurrentHashMap = this;
                        z = true;
                        i12 = i22;
                        c2642lArr6 = c2642lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    } else if (i21 - 2 != (m588j(length) << 16)) {
                        return;
                    } else {
                        c2637g2 = c2637g3;
                        i12 = length;
                        concurrentHashMap = this;
                        z = true;
                        z2 = true;
                        z3 = true;
                        c2642lArr6 = c2642lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    }
                } else {
                    C2642l m584n = m584n(c2642lArr7, i12);
                    if (m584n == null) {
                        z2 = m596b(c2642lArr7, i12, null, c2637g2);
                    } else {
                        int i23 = m584n.f600a;
                        if (i23 == i18) {
                            z2 = z;
                        } else {
                            synchronized (m584n) {
                                if (m584n(c2642lArr7, i12) == m584n) {
                                    if (i23 >= 0) {
                                        int i24 = i23 & length;
                                        C2648r c2648r3 = m584n;
                                        for (C2648r c2648r4 = m584n.f603d; c2648r4 != null; c2648r4 = c2648r4.f603d) {
                                            int i25 = c2648r4.f600a & length;
                                            if (i25 != i24) {
                                                c2648r3 = c2648r4;
                                                i24 = i25;
                                            }
                                        }
                                        if (i24 == 0) {
                                            c2648r = null;
                                            c2648r2 = c2648r3;
                                        } else {
                                            c2648r = c2648r3;
                                        }
                                        C2642l c2642l = m584n;
                                        while (c2642l != c2648r3) {
                                            int i26 = c2642l.f600a;
                                            C2648r c2648r5 = c2648r3;
                                            Object obj = c2642l.f601b;
                                            int i27 = i10;
                                            Object obj2 = c2642l.f602c;
                                            if ((i26 & length) == 0) {
                                                i7 = length2;
                                                c2648r2 = new C2642l(i26, obj, obj2, c2648r2);
                                            } else {
                                                i7 = length2;
                                                c2648r = new C2642l(i26, obj, obj2, c2648r);
                                            }
                                            c2642l = c2642l.f603d;
                                            c2648r3 = c2648r5;
                                            i10 = i27;
                                            length2 = i7;
                                        }
                                        i5 = i10;
                                        i6 = length2;
                                        m587k(c2642lArr3, i12, c2648r2);
                                        m587k(c2642lArr3, i4, c2648r);
                                        m587k(c2642lArr7, i12, c2637g2);
                                        c2637g = c2637g2;
                                    } else {
                                        i5 = i10;
                                        i6 = length2;
                                        if (m584n instanceof C2647q) {
                                            C2647q c2647q = (C2647q) m584n;
                                            C2648r c2648r6 = null;
                                            C2648r c2648r7 = null;
                                            C2642l c2642l2 = c2647q.f619f;
                                            int i28 = 0;
                                            int i29 = 0;
                                            C2648r c2648r8 = null;
                                            while (c2642l2 != null) {
                                                C2647q c2647q2 = c2647q;
                                                int i30 = c2642l2.f600a;
                                                C2637g c2637g4 = c2637g2;
                                                C2648r c2648r9 = new C2648r(i30, c2642l2.f601b, c2642l2.f602c, null, null);
                                                if ((i30 & length) == 0) {
                                                    c2648r9.f624h = c2648r7;
                                                    if (c2648r7 == null) {
                                                        c2648r2 = c2648r9;
                                                    } else {
                                                        c2648r7.f603d = c2648r9;
                                                    }
                                                    i28++;
                                                    c2648r7 = c2648r9;
                                                } else {
                                                    c2648r9.f624h = c2648r6;
                                                    if (c2648r6 == null) {
                                                        c2648r8 = c2648r9;
                                                    } else {
                                                        c2648r6.f603d = c2648r9;
                                                    }
                                                    i29++;
                                                    c2648r6 = c2648r9;
                                                }
                                                c2642l2 = c2642l2.f603d;
                                                c2647q = c2647q2;
                                                c2637g2 = c2637g4;
                                            }
                                            C2647q c2647q3 = c2647q;
                                            C2637g c2637g5 = c2637g2;
                                            C2642l m579s = i28 <= 6 ? m579s(c2648r2) : i29 != 0 ? new C2647q(c2648r2) : c2647q3;
                                            C2642l m579s2 = i29 <= 6 ? m579s(c2648r8) : i28 != 0 ? new C2647q(c2648r8) : c2647q3;
                                            m587k(c2642lArr3, i12, m579s);
                                            m587k(c2642lArr3, i4, m579s2);
                                            c2637g = c2637g5;
                                            m587k(c2642lArr, i12, c2637g);
                                            c2642lArr7 = c2642lArr;
                                        }
                                    }
                                    z2 = true;
                                } else {
                                    i5 = i10;
                                    i6 = length2;
                                }
                                c2637g = c2637g2;
                            }
                            i11 = -1;
                            c2637g2 = c2637g;
                            c2642lArr6 = c2642lArr7;
                            i13 = i17;
                            i10 = i5;
                            length2 = i6;
                            z = true;
                            concurrentHashMap = this;
                        }
                    }
                    i11 = i18;
                    c2642lArr6 = c2642lArr7;
                    i13 = i17;
                }
            }
        }
    }

    /* renamed from: q */
    private final void m581q(C2642l[] c2642lArr, int i) {
        int length = c2642lArr.length;
        if (length < 64) {
            m580r(length << 1);
            return;
        }
        C2642l m584n = m584n(c2642lArr, i);
        if (m584n == null || m584n.f600a < 0) {
            return;
        }
        synchronized (m584n) {
            if (m584n(c2642lArr, i) == m584n) {
                C2648r c2648r = null;
                C2642l c2642l = m584n;
                C2648r c2648r2 = null;
                while (c2642l != null) {
                    C2648r c2648r3 = new C2648r(c2642l.f600a, c2642l.f601b, c2642l.f602c, null, null);
                    c2648r3.f624h = c2648r2;
                    if (c2648r2 == null) {
                        c2648r = c2648r3;
                    } else {
                        c2648r2.f603d = c2648r3;
                    }
                    c2642l = c2642l.f603d;
                    c2648r2 = c2648r3;
                }
                m587k(c2642lArr, i, new C2647q(c2648r));
            }
        }
    }

    /* renamed from: r */
    private final void m580r(int i) {
        int length;
        C2642l[] c2642lArr;
        int m583o = i >= 536870912 ? 1073741824 : m583o(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                return;
            }
            C2642l[] c2642lArr2 = this.f584a;
            if (c2642lArr2 == null || (length = c2642lArr2.length) == 0) {
                int i3 = i2 > m583o ? i2 : m583o;
                if (f576h.compareAndSwapInt(this, f577i, i2, -1)) {
                    try {
                        if (this.f584a == c2642lArr2) {
                            this.f584a = new C2642l[i3];
                            i2 = i3 - (i3 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i2;
                    }
                } else {
                    continue;
                }
            } else if (m583o <= i2 || length >= 1073741824) {
                return;
            } else {
                if (c2642lArr2 == this.f584a) {
                    int m588j = m588j(length);
                    if (i2 < 0) {
                        if ((i2 >>> 16) != m588j || i2 == m588j + 1 || i2 == m588j + RtpPacket.MAX_SEQUENCE_NUMBER || (c2642lArr = this.f585b) == null || this.transferIndex <= 0) {
                            return;
                        }
                        if (f576h.compareAndSwapInt(this, f577i, i2, i2 + 1)) {
                            m582p(c2642lArr2, c2642lArr);
                        }
                    } else if (f576h.compareAndSwapInt(this, f577i, i2, (m588j << 16) + 2)) {
                        m582p(c2642lArr2, null);
                    }
                } else {
                    continue;
                }
            }
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        long j;
        int m583o;
        boolean z;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j2 = 0;
        long j3 = 0;
        C2642l c2642l = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j3++;
            c2642l = new C2642l(m586l(readObject.hashCode()), readObject, readObject2, c2642l);
        }
        if (j3 == 0) {
            this.sizeCtl = 0;
            return;
        }
        boolean z2 = true;
        if (j3 >= 536870912) {
            m583o = 1073741824;
        } else {
            int i = (int) j3;
            m583o = m583o(i + (i >>> 1) + 1);
        }
        C2642l[] c2642lArr = new C2642l[m583o];
        int i2 = m583o - 1;
        while (c2642l != null) {
            C2642l c2642l2 = c2642l.f603d;
            int i3 = c2642l.f600a;
            int i4 = i3 & i2;
            C2642l m584n = m584n(c2642lArr, i4);
            if (m584n == null) {
                z = z2;
            } else {
                Object obj2 = c2642l.f601b;
                if (m584n.f600a >= 0) {
                    int i5 = 0;
                    for (C2642l c2642l3 = m584n; c2642l3 != null; c2642l3 = c2642l3.f603d) {
                        if (c2642l3.f600a == i3 && ((obj = c2642l3.f601b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i5++;
                    }
                    z = true;
                    if (z && i5 >= 8) {
                        j2++;
                        c2642l.f603d = m584n;
                        C2642l c2642l4 = c2642l;
                        C2648r c2648r = null;
                        C2648r c2648r2 = null;
                        while (c2642l4 != null) {
                            long j4 = j2;
                            C2648r c2648r3 = new C2648r(c2642l4.f600a, c2642l4.f601b, c2642l4.f602c, null, null);
                            c2648r3.f624h = c2648r2;
                            if (c2648r2 == null) {
                                c2648r = c2648r3;
                            } else {
                                c2648r2.f603d = c2648r3;
                            }
                            c2642l4 = c2642l4.f603d;
                            c2648r2 = c2648r3;
                            j2 = j4;
                        }
                        m587k(c2642lArr, i4, new C2647q(c2648r));
                    }
                } else if (((C2647q) m584n).m572f(i3, obj2, c2642l.f602c) == null) {
                    j2 += j;
                }
                z = false;
            }
            if (z) {
                j2++;
                c2642l.f603d = m584n;
                m587k(c2642lArr, i4, c2642l);
            }
            j = 1;
            c2642l = c2642l2;
            z2 = true;
        }
        this.f584a = c2642lArr;
        this.sizeCtl = m583o - (m583o >>> 2);
        this.baseCount = j2;
    }

    /* renamed from: s */
    static C2642l m579s(C2642l c2642l) {
        C2642l c2642l2 = null;
        C2642l c2642l3 = null;
        while (c2642l != null) {
            C2642l c2642l4 = new C2642l(c2642l.f600a, c2642l.f601b, c2642l.f602c, null);
            if (c2642l3 == null) {
                c2642l2 = c2642l4;
            } else {
                c2642l3.f603d = c2642l4;
            }
            c2642l = c2642l.f603d;
            c2642l3 = c2642l4;
        }
        return c2642l2;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        int i = 0;
        int i2 = 1;
        while (i2 < 16) {
            i++;
            i2 <<= 1;
        }
        int i3 = 32 - i;
        int i4 = i2 - 1;
        C2644n[] c2644nArr = new C2644n[16];
        for (int i5 = 0; i5 < 16; i5++) {
            c2644nArr[i5] = new C2644n(0.75f);
        }
        objectOutputStream.putFields().put("segments", c2644nArr);
        objectOutputStream.putFields().put("segmentShift", i3);
        objectOutputStream.putFields().put("segmentMask", i4);
        objectOutputStream.writeFields();
        C2642l[] c2642lArr = this.f584a;
        if (c2642lArr != null) {
            C2646p c2646p = new C2646p(c2642lArr, c2642lArr.length, 0, c2642lArr.length);
            while (true) {
                C2642l m577a = c2646p.m577a();
                if (m577a == null) {
                    break;
                }
                objectOutputStream.writeObject(m577a.f601b);
                objectOutputStream.writeObject(m577a.f602c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public void clear() {
        C2642l[] c2642lArr = this.f584a;
        int i = 0;
        long j = 0;
        while (c2642lArr != null && i < c2642lArr.length) {
            C2642l m584n = m584n(c2642lArr, i);
            if (m584n == null) {
                i++;
            } else {
                int i2 = m584n.f600a;
                if (i2 == -1) {
                    c2642lArr = m592f(c2642lArr, m584n);
                    i = 0;
                } else {
                    synchronized (m584n) {
                        if (m584n(c2642lArr, i) == m584n) {
                            for (C2642l c2642l = i2 >= 0 ? m584n : m584n instanceof C2647q ? ((C2647q) m584n).f619f : null; c2642l != null; c2642l = c2642l.f603d) {
                                j--;
                            }
                            m587k(c2642lArr, i, null);
                            i++;
                        }
                    }
                }
            }
        }
        if (j != 0) {
            m597a(j, -1);
        }
    }

    @Override // p035j$.util.Map
    public Object compute(Object obj, BiFunction biFunction) {
        int i;
        C2642l c2642l;
        Object obj2;
        Object obj3;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m586l = m586l(obj.hashCode());
        C2642l[] c2642lArr = this.f584a;
        int i2 = 0;
        Object obj4 = null;
        int i3 = 0;
        while (true) {
            if (c2642lArr != null) {
                int length = c2642lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m586l;
                    C2642l m584n = m584n(c2642lArr, i4);
                    if (m584n == null) {
                        C2643m c2643m = new C2643m();
                        synchronized (c2643m) {
                            if (m596b(c2642lArr, i4, null, c2643m)) {
                                Object apply = biFunction.apply(obj, null);
                                if (apply != null) {
                                    c2642l = new C2642l(m586l, obj, apply, null);
                                    i = 1;
                                } else {
                                    i = i2;
                                    c2642l = null;
                                }
                                m587k(c2642lArr, i4, c2642l);
                                i2 = i;
                                obj4 = apply;
                                i3 = 1;
                            }
                        }
                        if (i3 != 0) {
                            break;
                        }
                    } else {
                        int i5 = m584n.f600a;
                        if (i5 == -1) {
                            c2642lArr = m592f(c2642lArr, m584n);
                        } else {
                            synchronized (m584n) {
                                if (m584n(c2642lArr, i4) == m584n) {
                                    if (i5 >= 0) {
                                        C2642l c2642l2 = null;
                                        C2642l c2642l3 = m584n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2642l3.f600a != m586l || ((obj3 = c2642l3.f601b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2642l c2642l4 = c2642l3.f603d;
                                                if (c2642l4 == null) {
                                                    Object apply2 = biFunction.apply(obj, null);
                                                    if (apply2 != null) {
                                                        c2642l3.f603d = new C2642l(m586l, obj, apply2, null);
                                                        i2 = 1;
                                                    }
                                                    obj2 = apply2;
                                                } else {
                                                    i6++;
                                                    c2642l2 = c2642l3;
                                                    c2642l3 = c2642l4;
                                                }
                                            }
                                        }
                                        obj2 = biFunction.apply(obj, c2642l3.f602c);
                                        if (obj2 != null) {
                                            c2642l3.f602c = obj2;
                                        } else {
                                            C2642l c2642l5 = c2642l3.f603d;
                                            if (c2642l2 != null) {
                                                c2642l2.f603d = c2642l5;
                                            } else {
                                                m587k(c2642lArr, i4, c2642l5);
                                            }
                                            i2 = -1;
                                        }
                                        i3 = i6;
                                        obj4 = obj2;
                                    } else if (m584n instanceof C2647q) {
                                        C2647q c2647q = (C2647q) m584n;
                                        C2648r c2648r = c2647q.f618e;
                                        C2648r m566b = c2648r != null ? c2648r.m566b(m586l, obj, null) : null;
                                        Object apply3 = biFunction.apply(obj, m566b == null ? null : m566b.f602c);
                                        if (apply3 != null) {
                                            if (m566b != null) {
                                                m566b.f602c = apply3;
                                            } else {
                                                c2647q.m572f(m586l, obj, apply3);
                                                i2 = 1;
                                            }
                                        } else if (m566b != null) {
                                            if (c2647q.m571g(m566b)) {
                                                m587k(c2642lArr, i4, m579s(c2647q.f619f));
                                            }
                                            i2 = -1;
                                        }
                                        i3 = 1;
                                        obj4 = apply3;
                                    }
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    m581q(c2642lArr, i4);
                                }
                            }
                        }
                    }
                }
            }
            c2642lArr = m591g();
        }
        if (i2 != 0) {
            m597a(i2, i3);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object compute(Object obj, java.util.function.BiFunction biFunction) {
        return compute(obj, C3091s.m111a(biFunction));
    }

    @Override // p035j$.util.concurrent.InterfaceC2657b, p035j$.util.Map
    public Object computeIfAbsent(Object obj, Function function) {
        int i;
        Object apply;
        C2648r m566b;
        Object obj2;
        Object obj3;
        if (obj == null || function == null) {
            throw null;
        }
        int m586l = m586l(obj.hashCode());
        C2642l[] c2642lArr = this.f584a;
        Object obj4 = null;
        int i2 = 0;
        while (true) {
            if (c2642lArr != null) {
                int length = c2642lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m586l;
                    C2642l m584n = m584n(c2642lArr, i3);
                    boolean z = true;
                    if (m584n == null) {
                        C2643m c2643m = new C2643m();
                        synchronized (c2643m) {
                            if (m596b(c2642lArr, i3, null, c2643m)) {
                                Object apply2 = function.apply(obj);
                                m587k(c2642lArr, i3, apply2 != null ? new C2642l(m586l, obj, apply2, null) : null);
                                obj4 = apply2;
                                i2 = 1;
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    } else {
                        int i4 = m584n.f600a;
                        if (i4 == -1) {
                            c2642lArr = m592f(c2642lArr, m584n);
                        } else {
                            synchronized (m584n) {
                                if (m584n(c2642lArr, i3) == m584n) {
                                    if (i4 >= 0) {
                                        C2642l c2642l = m584n;
                                        i = 1;
                                        while (true) {
                                            if (c2642l.f600a != m586l || ((obj3 = c2642l.f601b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2642l c2642l2 = c2642l.f603d;
                                                if (c2642l2 == null) {
                                                    apply = function.apply(obj);
                                                    if (apply != null) {
                                                        c2642l.f603d = new C2642l(m586l, obj, apply, null);
                                                    }
                                                } else {
                                                    i++;
                                                    c2642l = c2642l2;
                                                }
                                            }
                                        }
                                        obj2 = c2642l.f602c;
                                        z = false;
                                        int i5 = i;
                                        obj4 = obj2;
                                        i2 = i5;
                                    } else if (m584n instanceof C2647q) {
                                        i = 2;
                                        C2647q c2647q = (C2647q) m584n;
                                        C2648r c2648r = c2647q.f618e;
                                        if (c2648r == null || (m566b = c2648r.m566b(m586l, obj, null)) == null) {
                                            apply = function.apply(obj);
                                            if (apply != null) {
                                                c2647q.m572f(m586l, obj, apply);
                                                i2 = i;
                                                obj4 = apply;
                                            }
                                            z = false;
                                            i2 = i;
                                            obj4 = apply;
                                        } else {
                                            obj2 = m566b.f602c;
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
                                    m581q(c2642lArr, i3);
                                }
                                if (!z) {
                                    return obj4;
                                }
                            }
                        }
                    }
                }
            }
            c2642lArr = m591g();
        }
        if (obj4 != null) {
            m597a(1L, i2);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
        return computeIfAbsent(obj, C3037L.m198a(function));
    }

    @Override // p035j$.util.Map
    public Object computeIfPresent(Object obj, BiFunction biFunction) {
        C2648r m566b;
        C2642l m579s;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m586l = m586l(obj.hashCode());
        C2642l[] c2642lArr = this.f584a;
        int i = 0;
        Object obj3 = null;
        int i2 = 0;
        while (true) {
            if (c2642lArr != null) {
                int length = c2642lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m586l;
                    C2642l m584n = m584n(c2642lArr, i3);
                    if (m584n == null) {
                        break;
                    }
                    int i4 = m584n.f600a;
                    if (i4 == -1) {
                        c2642lArr = m592f(c2642lArr, m584n);
                    } else {
                        synchronized (m584n) {
                            if (m584n(c2642lArr, i3) == m584n) {
                                if (i4 >= 0) {
                                    i2 = 1;
                                    C2642l c2642l = null;
                                    C2642l c2642l2 = m584n;
                                    while (true) {
                                        if (c2642l2.f600a != m586l || ((obj2 = c2642l2.f601b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                            C2642l c2642l3 = c2642l2.f603d;
                                            if (c2642l3 == null) {
                                                break;
                                            }
                                            i2++;
                                            c2642l = c2642l2;
                                            c2642l2 = c2642l3;
                                        }
                                    }
                                    obj3 = biFunction.apply(obj, c2642l2.f602c);
                                    if (obj3 != null) {
                                        c2642l2.f602c = obj3;
                                    } else {
                                        m579s = c2642l2.f603d;
                                        if (c2642l != null) {
                                            c2642l.f603d = m579s;
                                            i = -1;
                                        }
                                        m587k(c2642lArr, i3, m579s);
                                        i = -1;
                                    }
                                } else if (m584n instanceof C2647q) {
                                    i2 = 2;
                                    C2647q c2647q = (C2647q) m584n;
                                    C2648r c2648r = c2647q.f618e;
                                    if (c2648r != null && (m566b = c2648r.m566b(m586l, obj, null)) != null) {
                                        obj3 = biFunction.apply(obj, m566b.f602c);
                                        if (obj3 != null) {
                                            m566b.f602c = obj3;
                                        } else {
                                            if (c2647q.m571g(m566b)) {
                                                m579s = m579s(c2647q.f619f);
                                                m587k(c2642lArr, i3, m579s);
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
            c2642lArr = m591g();
        }
        if (i != 0) {
            m597a(i, i2);
        }
        return obj3;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfPresent(Object obj, java.util.function.BiFunction biFunction) {
        return computeIfPresent(obj, C3091s.m111a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public boolean containsValue(Object obj) {
        Objects.requireNonNull(obj);
        C2642l[] c2642lArr = this.f584a;
        if (c2642lArr != null) {
            C2646p c2646p = new C2646p(c2642lArr, c2642lArr.length, 0, c2642lArr.length);
            while (true) {
                C2642l m577a = c2646p.m577a();
                if (m577a == null) {
                    break;
                }
                Object obj2 = m577a.f602c;
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

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        C2635e c2635e = this.f589f;
        if (c2635e != null) {
            return c2635e;
        }
        C2635e c2635e2 = new C2635e(this);
        this.f589f = c2635e2;
        return c2635e2;
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public boolean equals(Object obj) {
        V value;
        V v;
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                C2642l[] c2642lArr = this.f584a;
                int length = c2642lArr == null ? 0 : c2642lArr.length;
                C2646p c2646p = new C2646p(c2642lArr, length, 0, length);
                while (true) {
                    C2642l m577a = c2646p.m577a();
                    if (m577a == null) {
                        for (Map.Entry<K, V> entry : map.entrySet()) {
                            K key = entry.getKey();
                            if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                                return false;
                            }
                        }
                        return true;
                    }
                    Object obj2 = m577a.f602c;
                    Object obj3 = map.get(m577a.f601b);
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
    final C2642l[] m592f(C2642l[] c2642lArr, C2642l c2642l) {
        C2642l[] c2642lArr2;
        int i;
        if (!(c2642l instanceof C2637g) || (c2642lArr2 = ((C2637g) c2642l).f595e) == null) {
            return this.f584a;
        }
        int m588j = m588j(c2642lArr.length);
        while (true) {
            if (c2642lArr2 != this.f585b || this.f584a != c2642lArr || (i = this.sizeCtl) >= 0 || (i >>> 16) != m588j || i == m588j + 1 || i == RtpPacket.MAX_SEQUENCE_NUMBER + m588j || this.transferIndex <= 0) {
                break;
            } else if (f576h.compareAndSwapInt(this, f577i, i, i + 1)) {
                m582p(c2642lArr, c2642lArr2);
                break;
            }
        }
        return c2642lArr2;
    }

    @Override // p035j$.util.concurrent.InterfaceC2657b, p035j$.util.Map
    public void forEach(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2642l[] c2642lArr = this.f584a;
        if (c2642lArr == null) {
            return;
        }
        C2646p c2646p = new C2646p(c2642lArr, c2642lArr.length, 0, c2642lArr.length);
        while (true) {
            C2642l m577a = c2646p.m577a();
            if (m577a == null) {
                return;
            }
            biConsumer.accept(m577a.f601b, m577a.f602c);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void forEach(java.util.function.BiConsumer biConsumer) {
        forEach(C3087q.m116a(biConsumer));
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
        return (V) r1.f602c;
     */
    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(java.lang.Object r5) {
        /*
            r4 = this;
            int r0 = r5.hashCode()
            int r0 = m586l(r0)
            j$.util.concurrent.ConcurrentHashMap$l[] r1 = r4.f584a
            r2 = 0
            if (r1 == 0) goto L4e
            int r3 = r1.length
            if (r3 <= 0) goto L4e
            int r3 = r3 + (-1)
            r3 = r3 & r0
            j$.util.concurrent.ConcurrentHashMap$l r1 = m584n(r1, r3)
            if (r1 == 0) goto L4e
            int r3 = r1.f600a
            if (r3 != r0) goto L2c
            java.lang.Object r3 = r1.f601b
            if (r3 == r5) goto L29
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L29:
            java.lang.Object r5 = r1.f602c
            return r5
        L2c:
            if (r3 >= 0) goto L37
            j$.util.concurrent.ConcurrentHashMap$l r5 = r1.mo567a(r0, r5)
            if (r5 == 0) goto L36
            java.lang.Object r2 = r5.f602c
        L36:
            return r2
        L37:
            j$.util.concurrent.ConcurrentHashMap$l r1 = r1.f603d
            if (r1 == 0) goto L4e
            int r3 = r1.f600a
            if (r3 != r0) goto L37
            java.lang.Object r3 = r1.f601b
            if (r3 == r5) goto L4b
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L4b:
            java.lang.Object r5 = r1.f602c
            return r5
        L4e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p035j$.util.concurrent.ConcurrentHashMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p035j$.util.Map
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
    final java.lang.Object m590h(java.lang.Object r9, java.lang.Object r10, boolean r11) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L98
            if (r10 == 0) goto L98
            int r1 = r9.hashCode()
            int r1 = m586l(r1)
            r2 = 0
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.f584a
        L10:
            if (r3 == 0) goto L92
            int r4 = r3.length
            if (r4 != 0) goto L17
            goto L92
        L17:
            int r4 = r4 + (-1)
            r4 = r4 & r1
            j$.util.concurrent.ConcurrentHashMap$l r5 = m584n(r3, r4)
            if (r5 != 0) goto L2c
            j$.util.concurrent.ConcurrentHashMap$l r5 = new j$.util.concurrent.ConcurrentHashMap$l
            r5.<init>(r1, r9, r10, r0)
            boolean r4 = m596b(r3, r4, r0, r5)
            if (r4 == 0) goto L10
            goto L89
        L2c:
            int r6 = r5.f600a
            r7 = -1
            if (r6 != r7) goto L36
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m592f(r3, r5)
            goto L10
        L36:
            monitor-enter(r5)
            j$.util.concurrent.ConcurrentHashMap$l r7 = m584n(r3, r4)     // Catch: java.lang.Throwable -> L8f
            if (r7 != r5) goto L7b
            if (r6 < 0) goto L68
            r2 = 1
            r6 = r5
        L41:
            int r7 = r6.f600a     // Catch: java.lang.Throwable -> L8f
            if (r7 != r1) goto L58
            java.lang.Object r7 = r6.f601b     // Catch: java.lang.Throwable -> L8f
            if (r7 == r9) goto L51
            if (r7 == 0) goto L58
            boolean r7 = r9.equals(r7)     // Catch: java.lang.Throwable -> L8f
            if (r7 == 0) goto L58
        L51:
            java.lang.Object r7 = r6.f602c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
        L55:
            r6.f602c = r10     // Catch: java.lang.Throwable -> L8f
            goto L7c
        L58:
            j$.util.concurrent.ConcurrentHashMap$l r7 = r6.f603d     // Catch: java.lang.Throwable -> L8f
            if (r7 != 0) goto L64
            j$.util.concurrent.ConcurrentHashMap$l r7 = new j$.util.concurrent.ConcurrentHashMap$l     // Catch: java.lang.Throwable -> L8f
            r7.<init>(r1, r9, r10, r0)     // Catch: java.lang.Throwable -> L8f
            r6.f603d = r7     // Catch: java.lang.Throwable -> L8f
            goto L7b
        L64:
            int r2 = r2 + 1
            r6 = r7
            goto L41
        L68:
            boolean r6 = r5 instanceof p035j$.util.concurrent.ConcurrentHashMap.C2647q     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            r2 = 2
            r6 = r5
            j$.util.concurrent.ConcurrentHashMap$q r6 = (p035j$.util.concurrent.ConcurrentHashMap.C2647q) r6     // Catch: java.lang.Throwable -> L8f
            j$.util.concurrent.ConcurrentHashMap$r r6 = r6.m572f(r1, r9, r10)     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            java.lang.Object r7 = r6.f602c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
            goto L55
        L7b:
            r7 = r0
        L7c:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            if (r2 == 0) goto L10
            r9 = 8
            if (r2 < r9) goto L86
            r8.m581q(r3, r4)
        L86:
            if (r7 == 0) goto L89
            return r7
        L89:
            r9 = 1
            r8.m597a(r9, r2)
            return r0
        L8f:
            r9 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            throw r9
        L92:
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m591g()
            goto L10
        L98:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p035j$.util.concurrent.ConcurrentHashMap.m590h(java.lang.Object, java.lang.Object, boolean):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public int hashCode() {
        C2642l[] c2642lArr = this.f584a;
        int i = 0;
        if (c2642lArr != null) {
            C2646p c2646p = new C2646p(c2642lArr, c2642lArr.length, 0, c2642lArr.length);
            while (true) {
                C2642l m577a = c2646p.m577a();
                if (m577a == null) {
                    break;
                }
                i += m577a.f602c.hashCode() ^ m577a.f601b.hashCode();
            }
        }
        return i;
    }

    /* renamed from: i */
    final Object m589i(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        C2642l m584n;
        Object obj4;
        C2648r m566b;
        C2642l m579s;
        Object obj5;
        int m586l = m586l(obj.hashCode());
        C2642l[] c2642lArr = this.f584a;
        while (true) {
            if (c2642lArr == null || (length = c2642lArr.length) == 0 || (m584n = m584n(c2642lArr, (i = (length - 1) & m586l))) == null) {
                break;
            }
            int i2 = m584n.f600a;
            if (i2 == -1) {
                c2642lArr = m592f(c2642lArr, m584n);
            } else {
                boolean z = false;
                synchronized (m584n) {
                    if (m584n(c2642lArr, i) == m584n) {
                        if (i2 >= 0) {
                            C2642l c2642l = null;
                            C2642l c2642l2 = m584n;
                            while (true) {
                                if (c2642l2.f600a != m586l || ((obj5 = c2642l2.f601b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                    C2642l c2642l3 = c2642l2.f603d;
                                    if (c2642l3 == null) {
                                        break;
                                    }
                                    c2642l = c2642l2;
                                    c2642l2 = c2642l3;
                                }
                            }
                            obj4 = c2642l2.f602c;
                            if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                if (obj2 != null) {
                                    c2642l2.f602c = obj2;
                                } else if (c2642l != null) {
                                    c2642l.f603d = c2642l2.f603d;
                                } else {
                                    m579s = c2642l2.f603d;
                                    m587k(c2642lArr, i, m579s);
                                }
                                z = true;
                            }
                            obj4 = null;
                            z = true;
                        } else if (m584n instanceof C2647q) {
                            C2647q c2647q = (C2647q) m584n;
                            C2648r c2648r = c2647q.f618e;
                            if (c2648r != null && (m566b = c2648r.m566b(m586l, obj, null)) != null) {
                                obj4 = m566b.f602c;
                                if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                    if (obj2 != null) {
                                        m566b.f602c = obj2;
                                    } else if (c2647q.m571g(m566b)) {
                                        m579s = m579s(c2647q.f619f);
                                        m587k(c2642lArr, i, m579s);
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
                            m597a(-1L, -1);
                        }
                        return obj4;
                    }
                }
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public boolean isEmpty() {
        return m585m() <= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public Set<K> keySet() {
        C2639i c2639i = this.f587d;
        if (c2639i != null) {
            return c2639i;
        }
        C2639i c2639i2 = new C2639i(this, null);
        this.f587d = c2639i2;
        return c2639i2;
    }

    /* renamed from: m */
    final long m585m() {
        C2633c[] c2633cArr = this.f586c;
        long j = this.baseCount;
        if (c2633cArr != null) {
            for (C2633c c2633c : c2633cArr) {
                if (c2633c != null) {
                    j += c2633c.value;
                }
            }
        }
        return j;
    }

    @Override // p035j$.util.Map
    public Object merge(Object obj, Object obj2, BiFunction biFunction) {
        int i;
        Object obj3;
        Object obj4;
        Object obj5 = obj2;
        if (obj == null || obj5 == null || biFunction == null) {
            throw null;
        }
        int m586l = m586l(obj.hashCode());
        C2642l[] c2642lArr = this.f584a;
        int i2 = 0;
        Object obj6 = null;
        int i3 = 0;
        while (true) {
            if (c2642lArr != null) {
                int length = c2642lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m586l;
                    C2642l m584n = m584n(c2642lArr, i4);
                    i = 1;
                    if (m584n != null) {
                        int i5 = m584n.f600a;
                        if (i5 == -1) {
                            c2642lArr = m592f(c2642lArr, m584n);
                        } else {
                            synchronized (m584n) {
                                if (m584n(c2642lArr, i4) == m584n) {
                                    if (i5 >= 0) {
                                        C2642l c2642l = null;
                                        C2642l c2642l2 = m584n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2642l2.f600a != m586l || ((obj4 = c2642l2.f601b) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                C2642l c2642l3 = c2642l2.f603d;
                                                if (c2642l3 == null) {
                                                    c2642l2.f603d = new C2642l(m586l, obj, obj5, null);
                                                    obj3 = obj5;
                                                    break;
                                                }
                                                i6++;
                                                c2642l = c2642l2;
                                                c2642l2 = c2642l3;
                                            }
                                        }
                                        Object apply = biFunction.apply(c2642l2.f602c, obj5);
                                        if (apply != null) {
                                            c2642l2.f602c = apply;
                                        } else {
                                            C2642l c2642l4 = c2642l2.f603d;
                                            if (c2642l != null) {
                                                c2642l.f603d = c2642l4;
                                            } else {
                                                m587k(c2642lArr, i4, c2642l4);
                                            }
                                            i2 = -1;
                                        }
                                        i = i2;
                                        obj3 = apply;
                                        i3 = i6;
                                        obj6 = obj3;
                                        i2 = i;
                                    } else if (m584n instanceof C2647q) {
                                        i3 = 2;
                                        C2647q c2647q = (C2647q) m584n;
                                        C2648r c2648r = c2647q.f618e;
                                        C2648r m566b = c2648r == null ? null : c2648r.m566b(m586l, obj, null);
                                        Object apply2 = m566b == null ? obj5 : biFunction.apply(m566b.f602c, obj5);
                                        if (apply2 != null) {
                                            if (m566b != null) {
                                                m566b.f602c = apply2;
                                            } else {
                                                c2647q.m572f(m586l, obj, apply2);
                                                i2 = 1;
                                            }
                                        } else if (m566b != null) {
                                            if (c2647q.m571g(m566b)) {
                                                m587k(c2642lArr, i4, m579s(c2647q.f619f));
                                            }
                                            i2 = -1;
                                        }
                                        obj6 = apply2;
                                    }
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    m581q(c2642lArr, i4);
                                }
                                i = i2;
                                obj5 = obj6;
                            }
                        }
                    } else if (m596b(c2642lArr, i4, null, new C2642l(m586l, obj, obj5, null))) {
                        break;
                    }
                }
            }
            c2642lArr = m591g();
        }
        if (i != 0) {
            m597a(i, i3);
        }
        return obj5;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
        return merge(obj, obj2, C3091s.m111a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public V put(K k, V v) {
        return (V) m590h(k, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m580r(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            m590h(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p035j$.util.Map
    public V putIfAbsent(K k, V v) {
        return (V) m590h(k, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public V remove(Object obj) {
        return (V) m589i(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p035j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        Objects.requireNonNull(obj);
        return (obj2 == null || m589i(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p035j$.util.Map
    public Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return m589i(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p035j$.util.Map
    public boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return m589i(obj, obj3, obj2) != null;
    }

    @Override // p035j$.util.Map
    public void replaceAll(BiFunction biFunction) {
        Objects.requireNonNull(biFunction);
        C2642l[] c2642lArr = this.f584a;
        if (c2642lArr == null) {
            return;
        }
        C2646p c2646p = new C2646p(c2642lArr, c2642lArr.length, 0, c2642lArr.length);
        while (true) {
            C2642l m577a = c2646p.m577a();
            if (m577a == null) {
                return;
            }
            Object obj = m577a.f602c;
            Object obj2 = m577a.f601b;
            do {
                Object apply = biFunction.apply(obj2, obj);
                Objects.requireNonNull(apply);
                if (m589i(obj2, apply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void replaceAll(java.util.function.BiFunction biFunction) {
        replaceAll(C3091s.m111a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public int size() {
        long m585m = m585m();
        if (m585m < 0) {
            return 0;
        }
        if (m585m > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) m585m;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        C2642l[] c2642lArr = this.f584a;
        int length = c2642lArr == null ? 0 : c2642lArr.length;
        C2646p c2646p = new C2646p(c2642lArr, length, 0, length);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        C2642l m577a = c2646p.m577a();
        if (m577a != null) {
            while (true) {
                Object obj = m577a.f601b;
                Object obj2 = m577a.f602c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                m577a = c2646p.m577a();
                if (m577a == null) {
                    break;
                }
                sb.append(',');
                sb.append(' ');
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map, p035j$.util.Map
    public Collection<V> values() {
        C2651u c2651u = this.f588e;
        if (c2651u != null) {
            return c2651u;
        }
        C2651u c2651u2 = new C2651u(this);
        this.f588e = c2651u2;
        return c2651u2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC2632b implements Collection, Serializable {

        /* renamed from: a */
        final ConcurrentHashMap f592a;

        AbstractC2632b(ConcurrentHashMap concurrentHashMap) {
            this.f592a = concurrentHashMap;
        }

        @Override // java.util.Collection
        public final void clear() {
            this.f592a.clear();
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
            throw new UnsupportedOperationException("Method not decompiled: p035j$.util.concurrent.ConcurrentHashMap.AbstractC2632b.containsAll(java.util.Collection):boolean");
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return this.f592a.isEmpty();
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
            return this.f592a.size();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            long m585m = this.f592a.m585m();
            if (m585m < 0) {
                m585m = 0;
            }
            if (m585m <= 2147483639) {
                int i = (int) m585m;
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
            long m585m = this.f592a.m585m();
            if (m585m < 0) {
                m585m = 0;
            }
            if (m585m <= 2147483639) {
                int i = (int) m585m;
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
