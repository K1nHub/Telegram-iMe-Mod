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
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2616b;
import p034j$.util.InterfaceC2688s;
import p034j$.util.Iterator;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C3024L;
import p034j$.wrappers.C3031O0;
import p034j$.wrappers.C3034S;
import p034j$.wrappers.C3056h;
import p034j$.wrappers.C3074q;
import p034j$.wrappers.C3078s;
import p034j$.wrappers.C3086w;
import p034j$.wrappers.C3087w0;
import sun.misc.Unsafe;
/* renamed from: j$.util.concurrent.ConcurrentHashMap */
/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, InterfaceC2644b {

    /* renamed from: g */
    static final int f570g = Runtime.getRuntime().availableProcessors();

    /* renamed from: h */
    private static final Unsafe f571h;

    /* renamed from: i */
    private static final long f572i;

    /* renamed from: j */
    private static final long f573j;

    /* renamed from: k */
    private static final long f574k;

    /* renamed from: l */
    private static final long f575l;

    /* renamed from: m */
    private static final long f576m;

    /* renamed from: n */
    private static final long f577n;

    /* renamed from: o */
    private static final int f578o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;

    /* renamed from: a */
    volatile transient C2629l[] f579a;

    /* renamed from: b */
    private volatile transient C2629l[] f580b;
    private volatile transient long baseCount;

    /* renamed from: c */
    private volatile transient C2620c[] f581c;
    private volatile transient int cellsBusy;

    /* renamed from: d */
    private transient C2626i f582d;

    /* renamed from: e */
    private transient C2638u f583e;

    /* renamed from: f */
    private transient C2622e f584f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$a */
    /* loaded from: classes2.dex */
    public static class C2618a extends C2633p {

        /* renamed from: i */
        final ConcurrentHashMap f585i;

        /* renamed from: j */
        C2629l f586j;

        C2618a(C2629l[] c2629lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2629lArr, i, i2, i3);
            this.f585i = concurrentHashMap;
            m563a();
        }

        public final boolean hasMoreElements() {
            return this.f604b != null;
        }

        public final boolean hasNext() {
            return this.f604b != null;
        }

        public final void remove() {
            C2629l c2629l = this.f586j;
            if (c2629l == null) {
                throw new IllegalStateException();
            }
            this.f586j = null;
            this.f585i.m575i(c2629l.f596b, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$c */
    /* loaded from: classes2.dex */
    public static final class C2620c {
        volatile long value;

        C2620c(long j) {
            this.value = j;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$d */
    /* loaded from: classes2.dex */
    static final class C2621d extends C2618a implements Iterator, p034j$.util.Iterator {
        C2621d(C2629l[] c2629lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2629lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3086w.m89b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public Object next() {
            C2629l c2629l = this.f604b;
            if (c2629l != null) {
                Object obj = c2629l.f596b;
                Object obj2 = c2629l.f597c;
                this.f586j = c2629l;
                m563a();
                return new C2628k(obj, obj2, this.f585i);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$e */
    /* loaded from: classes2.dex */
    public static final class C2622e extends AbstractC2619b implements Set, InterfaceC2616b {
        C2622e(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set
        /* renamed from: a */
        public boolean add(Map.Entry entry) {
            return this.f587a.m576h(entry.getKey(), entry.getValue(), false) == null;
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2619b, java.util.Collection
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            Object value;
            return (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = this.f587a.get(key)) == null || (value = entry.getValue()) == null || (value != obj2 && !value.equals(obj2))) ? false : true;
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p034j$.util.InterfaceC2616b, p034j$.lang.InterfaceC2562e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2629l[] c2629lArr = this.f587a.f579a;
            if (c2629lArr == null) {
                return;
            }
            C2633p c2633p = new C2633p(c2629lArr, c2629lArr.length, 0, c2629lArr.length);
            while (true) {
                C2629l m563a = c2633p.m563a();
                if (m563a == null) {
                    return;
                }
                consumer.accept(new C2628k(m563a.f596b, m563a.f597c, this.f587a));
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3086w.m89b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            C2629l[] c2629lArr = this.f587a.f579a;
            int i = 0;
            if (c2629lArr != null) {
                C2633p c2633p = new C2633p(c2629lArr, c2629lArr.length, 0, c2629lArr.length);
                while (true) {
                    C2629l m563a = c2633p.m563a();
                    if (m563a == null) {
                        break;
                    }
                    i += m563a.hashCode();
                }
            }
            return i;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2619b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            C2629l[] c2629lArr = concurrentHashMap.f579a;
            int length = c2629lArr == null ? 0 : c2629lArr.length;
            return new C2621d(c2629lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2616b
        /* renamed from: k */
        public /* synthetic */ boolean mo551k(Predicate predicate) {
            return AbstractC2615a.m599h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3031O0.m162n0(AbstractC2615a.m600g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && this.f587a.remove(key, value);
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2615a.m599h(this, C3087w0.m88a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2616b, p034j$.lang.InterfaceC2562e
        public InterfaceC2688s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            long m571m = concurrentHashMap.m571m();
            C2629l[] c2629lArr = concurrentHashMap.f579a;
            int length = c2629lArr == null ? 0 : c2629lArr.length;
            return new C2623f(c2629lArr, length, 0, length, m571m >= 0 ? m571m : 0L, concurrentHashMap);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C3056h.m130a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2616b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2615a.m598i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3031O0.m162n0(AbstractC2615a.m598i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3034S.m158a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$f */
    /* loaded from: classes2.dex */
    public static final class C2623f extends C2633p implements InterfaceC2688s {

        /* renamed from: i */
        final ConcurrentHashMap f588i;

        /* renamed from: j */
        long f589j;

        C2623f(C2629l[] c2629lArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
            super(c2629lArr, i, i2, i3);
            this.f588i = concurrentHashMap;
            this.f589j = j;
        }

        @Override // p034j$.util.InterfaceC2688s
        /* renamed from: b */
        public boolean mo108b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2629l m563a = m563a();
            if (m563a == null) {
                return false;
            }
            consumer.accept(new C2628k(m563a.f596b, m563a.f597c, this.f588i));
            return true;
        }

        @Override // p034j$.util.InterfaceC2688s
        public int characteristics() {
            return 4353;
        }

        @Override // p034j$.util.InterfaceC2688s
        public long estimateSize() {
            return this.f589j;
        }

        @Override // p034j$.util.InterfaceC2688s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2629l m563a = m563a();
                if (m563a == null) {
                    return;
                }
                consumer.accept(new C2628k(m563a.f596b, m563a.f597c, this.f588i));
            }
        }

        @Override // p034j$.util.InterfaceC2688s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2688s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2615a.m602e(this);
        }

        @Override // p034j$.util.InterfaceC2688s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2615a.m601f(this, i);
        }

        @Override // p034j$.util.InterfaceC2688s
        public InterfaceC2688s trySplit() {
            int i = this.f608f;
            int i2 = this.f609g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2629l[] c2629lArr = this.f603a;
            int i4 = this.f610h;
            this.f609g = i3;
            long j = this.f589j >>> 1;
            this.f589j = j;
            return new C2623f(c2629lArr, i4, i3, i2, j, this.f588i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$g */
    /* loaded from: classes2.dex */
    public static final class C2624g extends C2629l {

        /* renamed from: e */
        final C2629l[] f590e;

        C2624g(C2629l[] c2629lArr) {
            super(-1, null, null, null);
            this.f590e = c2629lArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
            if ((r0 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2624g) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
            r0 = ((p034j$.util.concurrent.ConcurrentHashMap.C2624g) r0).f590e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
            return r0.mo553a(r5, r6);
         */
        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2629l
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        p034j$.util.concurrent.ConcurrentHashMap.C2629l mo553a(int r5, java.lang.Object r6) {
            /*
                r4 = this;
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r4.f590e
            L2:
                r1 = 0
                if (r0 == 0) goto L37
                int r2 = r0.length
                if (r2 == 0) goto L37
                int r2 = r2 + (-1)
                r2 = r2 & r5
                j$.util.concurrent.ConcurrentHashMap$l r0 = p034j$.util.concurrent.ConcurrentHashMap.m570n(r0, r2)
                if (r0 != 0) goto L12
                goto L37
            L12:
                int r2 = r0.f595a
                if (r2 != r5) goto L23
                java.lang.Object r3 = r0.f596b
                if (r3 == r6) goto L22
                if (r3 == 0) goto L23
                boolean r3 = r6.equals(r3)
                if (r3 == 0) goto L23
            L22:
                return r0
            L23:
                if (r2 >= 0) goto L33
                boolean r1 = r0 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2624g
                if (r1 == 0) goto L2e
                j$.util.concurrent.ConcurrentHashMap$g r0 = (p034j$.util.concurrent.ConcurrentHashMap.C2624g) r0
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r0.f590e
                goto L2
            L2e:
                j$.util.concurrent.ConcurrentHashMap$l r5 = r0.mo553a(r5, r6)
                return r5
            L33:
                j$.util.concurrent.ConcurrentHashMap$l r0 = r0.f598d
                if (r0 != 0) goto L12
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2624g.mo553a(int, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$l");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$h */
    /* loaded from: classes2.dex */
    public static final class C2625h extends C2618a implements java.util.Iterator, Enumeration, p034j$.util.Iterator {
        C2625h(C2629l[] c2629lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2629lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3086w.m89b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public final Object next() {
            C2629l c2629l = this.f604b;
            if (c2629l != null) {
                Object obj = c2629l.f596b;
                this.f586j = c2629l;
                m563a();
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
    public static class C2626i extends AbstractC2619b implements Set, InterfaceC2616b {
        C2626i(ConcurrentHashMap concurrentHashMap, Object obj) {
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2619b, java.util.Collection
        public boolean contains(Object obj) {
            return this.f587a.containsKey(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p034j$.util.InterfaceC2616b, p034j$.lang.InterfaceC2562e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2629l[] c2629lArr = this.f587a.f579a;
            if (c2629lArr == null) {
                return;
            }
            C2633p c2633p = new C2633p(c2629lArr, c2629lArr.length, 0, c2629lArr.length);
            while (true) {
                C2629l m563a = c2633p.m563a();
                if (m563a == null) {
                    return;
                }
                consumer.accept(m563a.f596b);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3086w.m89b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            java.util.Iterator it = iterator();
            int i = 0;
            while (((C2618a) it).hasNext()) {
                i += ((C2625h) it).next().hashCode();
            }
            return i;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2619b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            C2629l[] c2629lArr = concurrentHashMap.f579a;
            int length = c2629lArr == null ? 0 : c2629lArr.length;
            return new C2625h(c2629lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2616b
        /* renamed from: k */
        public /* synthetic */ boolean mo551k(Predicate predicate) {
            return AbstractC2615a.m599h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3031O0.m162n0(AbstractC2615a.m600g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f587a.remove(obj) != null;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2615a.m599h(this, C3087w0.m88a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2616b, p034j$.lang.InterfaceC2562e
        public InterfaceC2688s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            long m571m = concurrentHashMap.m571m();
            C2629l[] c2629lArr = concurrentHashMap.f579a;
            int length = c2629lArr == null ? 0 : c2629lArr.length;
            return new C2627j(c2629lArr, length, 0, length, m571m >= 0 ? m571m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C3056h.m130a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2616b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2615a.m598i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3031O0.m162n0(AbstractC2615a.m598i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3034S.m158a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$j */
    /* loaded from: classes2.dex */
    public static final class C2627j extends C2633p implements InterfaceC2688s {

        /* renamed from: i */
        long f591i;

        C2627j(C2629l[] c2629lArr, int i, int i2, int i3, long j) {
            super(c2629lArr, i, i2, i3);
            this.f591i = j;
        }

        @Override // p034j$.util.InterfaceC2688s
        /* renamed from: b */
        public boolean mo108b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2629l m563a = m563a();
            if (m563a == null) {
                return false;
            }
            consumer.accept(m563a.f596b);
            return true;
        }

        @Override // p034j$.util.InterfaceC2688s
        public int characteristics() {
            return 4353;
        }

        @Override // p034j$.util.InterfaceC2688s
        public long estimateSize() {
            return this.f591i;
        }

        @Override // p034j$.util.InterfaceC2688s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2629l m563a = m563a();
                if (m563a == null) {
                    return;
                }
                consumer.accept(m563a.f596b);
            }
        }

        @Override // p034j$.util.InterfaceC2688s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2688s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2615a.m602e(this);
        }

        @Override // p034j$.util.InterfaceC2688s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2615a.m601f(this, i);
        }

        @Override // p034j$.util.InterfaceC2688s
        public InterfaceC2688s trySplit() {
            int i = this.f608f;
            int i2 = this.f609g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2629l[] c2629lArr = this.f603a;
            int i4 = this.f610h;
            this.f609g = i3;
            long j = this.f591i >>> 1;
            this.f591i = j;
            return new C2627j(c2629lArr, i4, i3, i2, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$k */
    /* loaded from: classes2.dex */
    public static final class C2628k implements Map.Entry {

        /* renamed from: a */
        final Object f592a;

        /* renamed from: b */
        Object f593b;

        /* renamed from: c */
        final ConcurrentHashMap f594c;

        C2628k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
            this.f592a = obj;
            this.f593b = obj2;
            this.f594c = concurrentHashMap;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f592a) || key.equals(obj2)) && (value == (obj3 = this.f593b) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f592a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f593b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f592a.hashCode() ^ this.f593b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Objects.requireNonNull(obj);
            Object obj2 = this.f593b;
            this.f593b = obj;
            this.f594c.put(this.f592a, obj);
            return obj2;
        }

        public String toString() {
            return this.f592a + "=" + this.f593b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$l */
    /* loaded from: classes2.dex */
    public static class C2629l implements Map.Entry {

        /* renamed from: a */
        final int f595a;

        /* renamed from: b */
        final Object f596b;

        /* renamed from: c */
        volatile Object f597c;

        /* renamed from: d */
        volatile C2629l f598d;

        C2629l(int i, Object obj, Object obj2, C2629l c2629l) {
            this.f595a = i;
            this.f596b = obj;
            this.f597c = obj2;
            this.f598d = c2629l;
        }

        /* renamed from: a */
        C2629l mo553a(int i, Object obj) {
            Object obj2;
            C2629l c2629l = this;
            do {
                if (c2629l.f595a == i && ((obj2 = c2629l.f596b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return c2629l;
                }
                c2629l = c2629l.f598d;
            } while (c2629l != null);
            return null;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f596b) || key.equals(obj2)) && (value == (obj3 = this.f597c) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f596b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f597c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f596b.hashCode() ^ this.f597c.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public final String toString() {
            return this.f596b + "=" + this.f597c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$m */
    /* loaded from: classes2.dex */
    public static final class C2630m extends C2629l {
        C2630m() {
            super(-3, null, null, null);
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2629l
        /* renamed from: a */
        C2629l mo553a(int i, Object obj) {
            return null;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$n */
    /* loaded from: classes2.dex */
    static class C2631n extends ReentrantLock {
        C2631n(float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$o */
    /* loaded from: classes2.dex */
    public static final class C2632o {

        /* renamed from: a */
        int f599a;

        /* renamed from: b */
        int f600b;

        /* renamed from: c */
        C2629l[] f601c;

        /* renamed from: d */
        C2632o f602d;

        C2632o() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$p */
    /* loaded from: classes2.dex */
    public static class C2633p {

        /* renamed from: a */
        C2629l[] f603a;

        /* renamed from: b */
        C2629l f604b = null;

        /* renamed from: c */
        C2632o f605c;

        /* renamed from: d */
        C2632o f606d;

        /* renamed from: e */
        int f607e;

        /* renamed from: f */
        int f608f;

        /* renamed from: g */
        int f609g;

        /* renamed from: h */
        final int f610h;

        C2633p(C2629l[] c2629lArr, int i, int i2, int i3) {
            this.f603a = c2629lArr;
            this.f610h = i;
            this.f607e = i2;
            this.f608f = i2;
            this.f609g = i3;
        }

        /* renamed from: a */
        final C2629l m563a() {
            C2629l[] c2629lArr;
            int length;
            int i;
            C2632o c2632o;
            C2629l c2629l = this.f604b;
            if (c2629l != null) {
                c2629l = c2629l.f598d;
            }
            while (c2629l == null) {
                if (this.f608f >= this.f609g || (c2629lArr = this.f603a) == null || (length = c2629lArr.length) <= (i = this.f607e) || i < 0) {
                    this.f604b = null;
                    return null;
                }
                C2629l m570n = ConcurrentHashMap.m570n(c2629lArr, i);
                if (m570n == null || m570n.f595a >= 0) {
                    c2629l = m570n;
                } else if (m570n instanceof C2624g) {
                    this.f603a = ((C2624g) m570n).f590e;
                    C2632o c2632o2 = this.f606d;
                    if (c2632o2 != null) {
                        this.f606d = c2632o2.f602d;
                    } else {
                        c2632o2 = new C2632o();
                    }
                    c2632o2.f601c = c2629lArr;
                    c2632o2.f599a = length;
                    c2632o2.f600b = i;
                    c2632o2.f602d = this.f605c;
                    this.f605c = c2632o2;
                    c2629l = null;
                } else {
                    c2629l = m570n instanceof C2634q ? ((C2634q) m570n).f614f : null;
                }
                if (this.f605c != null) {
                    while (true) {
                        c2632o = this.f605c;
                        if (c2632o == null) {
                            break;
                        }
                        int i2 = this.f607e;
                        int i3 = c2632o.f599a;
                        int i4 = i2 + i3;
                        this.f607e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.f607e = c2632o.f600b;
                        this.f603a = c2632o.f601c;
                        c2632o.f601c = null;
                        C2632o c2632o3 = c2632o.f602d;
                        c2632o.f602d = this.f606d;
                        this.f605c = c2632o3;
                        this.f606d = c2632o;
                        length = i3;
                    }
                    if (c2632o == null) {
                        int i5 = this.f607e + this.f610h;
                        this.f607e = i5;
                        if (i5 >= length) {
                            int i6 = this.f608f + 1;
                            this.f608f = i6;
                            this.f607e = i6;
                        }
                    }
                } else {
                    int i7 = i + this.f610h;
                    this.f607e = i7;
                    if (i7 >= length) {
                        int i8 = this.f608f + 1;
                        this.f608f = i8;
                        this.f607e = i8;
                    }
                }
            }
            this.f604b = c2629l;
            return c2629l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$q */
    /* loaded from: classes2.dex */
    public static final class C2634q extends C2629l {

        /* renamed from: h */
        private static final Unsafe f611h;

        /* renamed from: i */
        private static final long f612i;

        /* renamed from: e */
        C2635r f613e;

        /* renamed from: f */
        volatile C2635r f614f;

        /* renamed from: g */
        volatile Thread f615g;
        volatile int lockState;

        static {
            try {
                Unsafe m536c = AbstractC2645c.m536c();
                f611h = m536c;
                f612i = m536c.objectFieldOffset(C2634q.class.getDeclaredField("lockState"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        C2634q(C2635r c2635r) {
            super(-2, null, null, null);
            int m580d;
            int m554j;
            this.f614f = c2635r;
            C2635r c2635r2 = null;
            while (c2635r != null) {
                C2635r c2635r3 = (C2635r) c2635r.f598d;
                c2635r.f618g = null;
                c2635r.f617f = null;
                if (c2635r2 == null) {
                    c2635r.f616e = null;
                    c2635r.f620i = false;
                } else {
                    Object obj = c2635r.f596b;
                    int i = c2635r.f595a;
                    C2635r c2635r4 = c2635r2;
                    Class cls = null;
                    while (true) {
                        Object obj2 = c2635r4.f596b;
                        int i2 = c2635r4.f595a;
                        m554j = i2 > i ? -1 : i2 < i ? 1 : ((cls == null && (cls = ConcurrentHashMap.m581c(obj)) == null) || (m580d = ConcurrentHashMap.m580d(cls, obj, obj2)) == 0) ? m554j(obj, obj2) : m580d;
                        C2635r c2635r5 = m554j <= 0 ? c2635r4.f617f : c2635r4.f618g;
                        if (c2635r5 == null) {
                            break;
                        }
                        c2635r4 = c2635r5;
                    }
                    c2635r.f616e = c2635r4;
                    if (m554j <= 0) {
                        c2635r4.f617f = c2635r;
                    } else {
                        c2635r4.f618g = c2635r;
                    }
                    c2635r = m561c(c2635r2, c2635r);
                }
                c2635r2 = c2635r;
                c2635r = c2635r3;
            }
            this.f613e = c2635r2;
        }

        /* renamed from: b */
        static C2635r m562b(C2635r c2635r, C2635r c2635r2) {
            while (c2635r2 != null && c2635r2 != c2635r) {
                C2635r c2635r3 = c2635r2.f616e;
                if (c2635r3 == null) {
                    c2635r2.f620i = false;
                    return c2635r2;
                } else if (c2635r2.f620i) {
                    c2635r2.f620i = false;
                    return c2635r;
                } else {
                    C2635r c2635r4 = c2635r3.f617f;
                    C2635r c2635r5 = null;
                    if (c2635r4 == c2635r2) {
                        c2635r4 = c2635r3.f618g;
                        if (c2635r4 != null && c2635r4.f620i) {
                            c2635r4.f620i = false;
                            c2635r3.f620i = true;
                            c2635r = m556h(c2635r, c2635r3);
                            c2635r3 = c2635r2.f616e;
                            c2635r4 = c2635r3 == null ? null : c2635r3.f618g;
                        }
                        if (c2635r4 == null) {
                            c2635r2 = c2635r3;
                        } else {
                            C2635r c2635r6 = c2635r4.f617f;
                            C2635r c2635r7 = c2635r4.f618g;
                            if ((c2635r7 != null && c2635r7.f620i) || (c2635r6 != null && c2635r6.f620i)) {
                                if (c2635r7 == null || !c2635r7.f620i) {
                                    if (c2635r6 != null) {
                                        c2635r6.f620i = false;
                                    }
                                    c2635r4.f620i = true;
                                    c2635r = m555i(c2635r, c2635r4);
                                    c2635r3 = c2635r2.f616e;
                                    if (c2635r3 != null) {
                                        c2635r5 = c2635r3.f618g;
                                    }
                                } else {
                                    c2635r5 = c2635r4;
                                }
                                if (c2635r5 != null) {
                                    c2635r5.f620i = c2635r3 == null ? false : c2635r3.f620i;
                                    C2635r c2635r8 = c2635r5.f618g;
                                    if (c2635r8 != null) {
                                        c2635r8.f620i = false;
                                    }
                                }
                                if (c2635r3 != null) {
                                    c2635r3.f620i = false;
                                    c2635r = m556h(c2635r, c2635r3);
                                }
                                c2635r2 = c2635r;
                                c2635r = c2635r2;
                            }
                            c2635r4.f620i = true;
                            c2635r2 = c2635r3;
                        }
                    } else {
                        if (c2635r4 != null && c2635r4.f620i) {
                            c2635r4.f620i = false;
                            c2635r3.f620i = true;
                            c2635r = m555i(c2635r, c2635r3);
                            c2635r3 = c2635r2.f616e;
                            c2635r4 = c2635r3 == null ? null : c2635r3.f617f;
                        }
                        if (c2635r4 == null) {
                            c2635r2 = c2635r3;
                        } else {
                            C2635r c2635r9 = c2635r4.f617f;
                            C2635r c2635r10 = c2635r4.f618g;
                            if ((c2635r9 != null && c2635r9.f620i) || (c2635r10 != null && c2635r10.f620i)) {
                                if (c2635r9 == null || !c2635r9.f620i) {
                                    if (c2635r10 != null) {
                                        c2635r10.f620i = false;
                                    }
                                    c2635r4.f620i = true;
                                    c2635r = m556h(c2635r, c2635r4);
                                    c2635r3 = c2635r2.f616e;
                                    if (c2635r3 != null) {
                                        c2635r5 = c2635r3.f617f;
                                    }
                                } else {
                                    c2635r5 = c2635r4;
                                }
                                if (c2635r5 != null) {
                                    c2635r5.f620i = c2635r3 == null ? false : c2635r3.f620i;
                                    C2635r c2635r11 = c2635r5.f617f;
                                    if (c2635r11 != null) {
                                        c2635r11.f620i = false;
                                    }
                                }
                                if (c2635r3 != null) {
                                    c2635r3.f620i = false;
                                    c2635r = m555i(c2635r, c2635r3);
                                }
                                c2635r2 = c2635r;
                                c2635r = c2635r2;
                            }
                            c2635r4.f620i = true;
                            c2635r2 = c2635r3;
                        }
                    }
                }
            }
            return c2635r;
        }

        /* renamed from: c */
        static C2635r m561c(C2635r c2635r, C2635r c2635r2) {
            C2635r c2635r3;
            c2635r2.f620i = true;
            while (true) {
                C2635r c2635r4 = c2635r2.f616e;
                if (c2635r4 == null) {
                    c2635r2.f620i = false;
                    return c2635r2;
                } else if (!c2635r4.f620i || (c2635r3 = c2635r4.f616e) == null) {
                    break;
                } else {
                    C2635r c2635r5 = c2635r3.f617f;
                    if (c2635r4 == c2635r5) {
                        c2635r5 = c2635r3.f618g;
                        if (c2635r5 == null || !c2635r5.f620i) {
                            if (c2635r2 == c2635r4.f618g) {
                                c2635r = m556h(c2635r, c2635r4);
                                C2635r c2635r6 = c2635r4.f616e;
                                c2635r3 = c2635r6 == null ? null : c2635r6.f616e;
                                c2635r4 = c2635r6;
                                c2635r2 = c2635r4;
                            }
                            if (c2635r4 != null) {
                                c2635r4.f620i = false;
                                if (c2635r3 != null) {
                                    c2635r3.f620i = true;
                                    c2635r = m555i(c2635r, c2635r3);
                                }
                            }
                        } else {
                            c2635r5.f620i = false;
                            c2635r4.f620i = false;
                            c2635r3.f620i = true;
                            c2635r2 = c2635r3;
                        }
                    } else if (c2635r5 == null || !c2635r5.f620i) {
                        if (c2635r2 == c2635r4.f617f) {
                            c2635r = m555i(c2635r, c2635r4);
                            C2635r c2635r7 = c2635r4.f616e;
                            c2635r3 = c2635r7 == null ? null : c2635r7.f616e;
                            c2635r4 = c2635r7;
                            c2635r2 = c2635r4;
                        }
                        if (c2635r4 != null) {
                            c2635r4.f620i = false;
                            if (c2635r3 != null) {
                                c2635r3.f620i = true;
                                c2635r = m556h(c2635r, c2635r3);
                            }
                        }
                    } else {
                        c2635r5.f620i = false;
                        c2635r4.f620i = false;
                        c2635r3.f620i = true;
                        c2635r2 = c2635r3;
                    }
                }
            }
            return c2635r;
        }

        /* renamed from: d */
        private final void m560d() {
            boolean z = false;
            while (true) {
                int i = this.lockState;
                if ((i & (-3)) == 0) {
                    if (f611h.compareAndSwapInt(this, f612i, i, 1)) {
                        break;
                    }
                } else if ((i & 2) == 0) {
                    if (f611h.compareAndSwapInt(this, f612i, i, i | 2)) {
                        z = true;
                        this.f615g = Thread.currentThread();
                    }
                } else if (z) {
                    LockSupport.park(this);
                }
            }
            if (z) {
                this.f615g = null;
            }
        }

        /* renamed from: e */
        private final void m559e() {
            if (f611h.compareAndSwapInt(this, f612i, 0, 1)) {
                return;
            }
            m560d();
        }

        /* renamed from: h */
        static C2635r m556h(C2635r c2635r, C2635r c2635r2) {
            C2635r c2635r3 = c2635r2.f618g;
            if (c2635r3 != null) {
                C2635r c2635r4 = c2635r3.f617f;
                c2635r2.f618g = c2635r4;
                if (c2635r4 != null) {
                    c2635r4.f616e = c2635r2;
                }
                C2635r c2635r5 = c2635r2.f616e;
                c2635r3.f616e = c2635r5;
                if (c2635r5 == null) {
                    c2635r3.f620i = false;
                    c2635r = c2635r3;
                } else if (c2635r5.f617f == c2635r2) {
                    c2635r5.f617f = c2635r3;
                } else {
                    c2635r5.f618g = c2635r3;
                }
                c2635r3.f617f = c2635r2;
                c2635r2.f616e = c2635r3;
            }
            return c2635r;
        }

        /* renamed from: i */
        static C2635r m555i(C2635r c2635r, C2635r c2635r2) {
            C2635r c2635r3 = c2635r2.f617f;
            if (c2635r3 != null) {
                C2635r c2635r4 = c2635r3.f618g;
                c2635r2.f617f = c2635r4;
                if (c2635r4 != null) {
                    c2635r4.f616e = c2635r2;
                }
                C2635r c2635r5 = c2635r2.f616e;
                c2635r3.f616e = c2635r5;
                if (c2635r5 == null) {
                    c2635r3.f620i = false;
                    c2635r = c2635r3;
                } else if (c2635r5.f618g == c2635r2) {
                    c2635r5.f618g = c2635r3;
                } else {
                    c2635r5.f617f = c2635r3;
                }
                c2635r3.f618g = c2635r2;
                c2635r2.f616e = c2635r3;
            }
            return c2635r;
        }

        /* renamed from: j */
        static int m554j(Object obj, Object obj2) {
            int compareTo;
            return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2629l
        /* renamed from: a */
        final C2629l mo553a(int i, Object obj) {
            Object obj2;
            Thread thread;
            Thread thread2;
            C2629l c2629l = this.f614f;
            while (true) {
                C2635r c2635r = null;
                if (c2629l == null) {
                    return null;
                }
                int i2 = this.lockState;
                if ((i2 & 3) == 0) {
                    Unsafe unsafe = f611h;
                    long j = f612i;
                    if (unsafe.compareAndSwapInt(this, j, i2, i2 + 4)) {
                        try {
                            C2635r c2635r2 = this.f613e;
                            if (c2635r2 != null) {
                                c2635r = c2635r2.m552b(i, obj, null);
                            }
                            if (AbstractC2645c.m538a(unsafe, this, j, -4) == 6 && (thread2 = this.f615g) != null) {
                                LockSupport.unpark(thread2);
                            }
                            return c2635r;
                        } catch (Throwable th) {
                            if (AbstractC2645c.m538a(f611h, this, f612i, -4) == 6 && (thread = this.f615g) != null) {
                                LockSupport.unpark(thread);
                            }
                            throw th;
                        }
                    }
                } else if (c2629l.f595a != i || ((obj2 = c2629l.f596b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                    c2629l = c2629l.f598d;
                }
            }
            return c2629l;
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
        final p034j$.util.concurrent.ConcurrentHashMap.C2635r m558f(int r16, java.lang.Object r17, java.lang.Object r18) {
            /*
                r15 = this;
                r1 = r15
                r0 = r16
                r4 = r17
                j$.util.concurrent.ConcurrentHashMap$r r2 = r1.f613e
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
                r1.f613e = r9
                r1.f614f = r9
                goto La2
            L22:
                int r5 = r10.f595a
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
                java.lang.Object r5 = r10.f596b
                if (r5 == r4) goto Laa
                if (r5 == 0) goto L3c
                boolean r6 = r4.equals(r5)
                if (r6 == 0) goto L3c
                goto Laa
            L3c:
                if (r2 != 0) goto L44
                java.lang.Class r2 = p034j$.util.concurrent.ConcurrentHashMap.m581c(r17)
                if (r2 == 0) goto L4a
            L44:
                int r6 = p034j$.util.concurrent.ConcurrentHashMap.m580d(r2, r4, r5)
                if (r6 != 0) goto L67
            L4a:
                if (r3 != 0) goto L62
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f617f
                if (r3 == 0) goto L56
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m552b(r0, r4, r2)
                if (r3 != 0) goto L60
            L56:
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f618g
                if (r3 == 0) goto L61
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m552b(r0, r4, r2)
                if (r3 == 0) goto L61
            L60:
                return r3
            L61:
                r3 = r11
            L62:
                int r5 = m554j(r4, r5)
                goto L28
            L67:
                r12 = r6
            L68:
                if (r12 > 0) goto L6d
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f617f
                goto L6f
            L6d:
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f618g
            L6f:
                if (r5 != 0) goto La7
                j$.util.concurrent.ConcurrentHashMap$r r13 = r1.f614f
                j$.util.concurrent.ConcurrentHashMap$r r14 = new j$.util.concurrent.ConcurrentHashMap$r
                r2 = r14
                r3 = r16
                r4 = r17
                r5 = r18
                r6 = r13
                r7 = r10
                r2.<init>(r3, r4, r5, r6, r7)
                r1.f614f = r14
                if (r13 == 0) goto L87
                r13.f619h = r14
            L87:
                if (r12 > 0) goto L8c
                r10.f617f = r14
                goto L8e
            L8c:
                r10.f618g = r14
            L8e:
                boolean r0 = r10.f620i
                if (r0 != 0) goto L95
                r14.f620i = r11
                goto La2
            L95:
                r15.m559e()
                j$.util.concurrent.ConcurrentHashMap$r r0 = r1.f613e     // Catch: java.lang.Throwable -> La3
                j$.util.concurrent.ConcurrentHashMap$r r0 = m561c(r0, r14)     // Catch: java.lang.Throwable -> La3
                r1.f613e = r0     // Catch: java.lang.Throwable -> La3
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
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2634q.m558f(int, java.lang.Object, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$r");
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
        final boolean m557g(p034j$.util.concurrent.ConcurrentHashMap.C2635r r11) {
            /*
                Method dump skipped, instructions count: 205
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2634q.m557g(j$.util.concurrent.ConcurrentHashMap$r):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$r */
    /* loaded from: classes2.dex */
    public static final class C2635r extends C2629l {

        /* renamed from: e */
        C2635r f616e;

        /* renamed from: f */
        C2635r f617f;

        /* renamed from: g */
        C2635r f618g;

        /* renamed from: h */
        C2635r f619h;

        /* renamed from: i */
        boolean f620i;

        C2635r(int i, Object obj, Object obj2, C2629l c2629l, C2635r c2635r) {
            super(i, obj, obj2, c2629l);
            this.f616e = c2635r;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2629l
        /* renamed from: a */
        C2629l mo553a(int i, Object obj) {
            return m552b(i, obj, null);
        }

        /* renamed from: b */
        final C2635r m552b(int i, Object obj, Class cls) {
            int m580d;
            if (obj != null) {
                C2635r c2635r = this;
                do {
                    C2635r c2635r2 = c2635r.f617f;
                    C2635r c2635r3 = c2635r.f618g;
                    int i2 = c2635r.f595a;
                    if (i2 <= i) {
                        if (i2 >= i) {
                            Object obj2 = c2635r.f596b;
                            if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                                return c2635r;
                            }
                            if (c2635r2 != null) {
                                if (c2635r3 != null) {
                                    if ((cls == null && (cls = ConcurrentHashMap.m581c(obj)) == null) || (m580d = ConcurrentHashMap.m580d(cls, obj, obj2)) == 0) {
                                        C2635r m552b = c2635r3.m552b(i, obj, cls);
                                        if (m552b != null) {
                                            return m552b;
                                        }
                                    } else if (m580d >= 0) {
                                        c2635r2 = c2635r3;
                                    }
                                }
                            }
                        }
                        c2635r = c2635r3;
                        continue;
                    }
                    c2635r = c2635r2;
                    continue;
                } while (c2635r != null);
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$s */
    /* loaded from: classes2.dex */
    public static final class C2636s extends C2618a implements java.util.Iterator, Enumeration, p034j$.util.Iterator {
        C2636s(C2629l[] c2629lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2629lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3086w.m89b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public final Object next() {
            C2629l c2629l = this.f604b;
            if (c2629l != null) {
                Object obj = c2629l.f597c;
                this.f586j = c2629l;
                m563a();
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
    public static final class C2637t extends C2633p implements InterfaceC2688s {

        /* renamed from: i */
        long f621i;

        C2637t(C2629l[] c2629lArr, int i, int i2, int i3, long j) {
            super(c2629lArr, i, i2, i3);
            this.f621i = j;
        }

        @Override // p034j$.util.InterfaceC2688s
        /* renamed from: b */
        public boolean mo108b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2629l m563a = m563a();
            if (m563a == null) {
                return false;
            }
            consumer.accept(m563a.f597c);
            return true;
        }

        @Override // p034j$.util.InterfaceC2688s
        public int characteristics() {
            return 4352;
        }

        @Override // p034j$.util.InterfaceC2688s
        public long estimateSize() {
            return this.f621i;
        }

        @Override // p034j$.util.InterfaceC2688s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2629l m563a = m563a();
                if (m563a == null) {
                    return;
                }
                consumer.accept(m563a.f597c);
            }
        }

        @Override // p034j$.util.InterfaceC2688s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2688s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2615a.m602e(this);
        }

        @Override // p034j$.util.InterfaceC2688s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2615a.m601f(this, i);
        }

        @Override // p034j$.util.InterfaceC2688s
        public InterfaceC2688s trySplit() {
            int i = this.f608f;
            int i2 = this.f609g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2629l[] c2629lArr = this.f603a;
            int i4 = this.f610h;
            this.f609g = i3;
            long j = this.f621i >>> 1;
            this.f621i = j;
            return new C2637t(c2629lArr, i4, i3, i2, j);
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$u */
    /* loaded from: classes2.dex */
    static final class C2638u extends AbstractC2619b implements InterfaceC2616b {
        C2638u(ConcurrentHashMap concurrentHashMap) {
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2619b, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f587a.containsValue(obj);
        }

        @Override // p034j$.util.InterfaceC2616b, p034j$.lang.InterfaceC2562e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2629l[] c2629lArr = this.f587a.f579a;
            if (c2629lArr == null) {
                return;
            }
            C2633p c2633p = new C2633p(c2629lArr, c2629lArr.length, 0, c2629lArr.length);
            while (true) {
                C2629l m563a = c2633p.m563a();
                if (m563a == null) {
                    return;
                }
                consumer.accept(m563a.f597c);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3086w.m89b(consumer));
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2619b, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            C2629l[] c2629lArr = concurrentHashMap.f579a;
            int length = c2629lArr == null ? 0 : c2629lArr.length;
            return new C2636s(c2629lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2616b
        /* renamed from: k */
        public /* synthetic */ boolean mo551k(Predicate predicate) {
            return AbstractC2615a.m599h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3031O0.m162n0(AbstractC2615a.m600g(this));
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            C2618a c2618a;
            if (obj != null) {
                java.util.Iterator it = iterator();
                do {
                    c2618a = (C2618a) it;
                    if (!c2618a.hasNext()) {
                        return false;
                    }
                } while (!obj.equals(((C2636s) it).next()));
                c2618a.remove();
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2615a.m599h(this, C3087w0.m88a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, p034j$.util.InterfaceC2616b, p034j$.lang.InterfaceC2562e
        public InterfaceC2688s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            long m571m = concurrentHashMap.m571m();
            C2629l[] c2629lArr = concurrentHashMap.f579a;
            int length = c2629lArr == null ? 0 : c2629lArr.length;
            return new C2637t(c2629lArr, length, 0, length, m571m >= 0 ? m571m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable
        public /* synthetic */ Spliterator spliterator() {
            return C3056h.m130a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2616b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2615a.m598i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3031O0.m162n0(AbstractC2615a.m598i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3034S.m158a(intFunction).apply(0));
        }
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", C2631n[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        try {
            Unsafe m536c = AbstractC2645c.m536c();
            f571h = m536c;
            f572i = m536c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("sizeCtl"));
            f573j = m536c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("transferIndex"));
            f574k = m536c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("baseCount"));
            f575l = m536c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("cellsBusy"));
            f576m = m536c.objectFieldOffset(C2620c.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
            f577n = m536c.arrayBaseOffset(C2629l[].class);
            int arrayIndexScale = m536c.arrayIndexScale(C2629l[].class);
            if (((arrayIndexScale - 1) & arrayIndexScale) != 0) {
                throw new Error("data type scale not a power of two");
            }
            f578o = 31 - Integer.numberOfLeadingZeros(arrayIndexScale);
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
        this.sizeCtl = i >= 536870912 ? 1073741824 : m569o(i + (i >>> 1) + 1);
    }

    public ConcurrentHashMap(int i, float f, int i2) {
        if (f <= BitmapDescriptorFactory.HUE_RED || i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        long j = (long) (((i < i2 ? i2 : i) / f) + 1.0d);
        this.sizeCtl = j >= 1073741824 ? 1073741824 : m569o((int) j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r1.compareAndSwapLong(r11, r3, r5, r9) == false) goto L53;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m583a(long r12, int r14) {
        /*
            r11 = this;
            j$.util.concurrent.ConcurrentHashMap$c[] r0 = r11.f581c
            if (r0 != 0) goto L14
            sun.misc.Unsafe r1 = p034j$.util.concurrent.ConcurrentHashMap.f571h
            long r3 = p034j$.util.concurrent.ConcurrentHashMap.f574k
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
            int r3 = p034j$.util.concurrent.ThreadLocalRandom.m549b()
            r2 = r2 & r3
            r4 = r0[r2]
            if (r4 == 0) goto L94
            sun.misc.Unsafe r3 = p034j$.util.concurrent.ConcurrentHashMap.f571h
            long r5 = p034j$.util.concurrent.ConcurrentHashMap.f576m
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
            long r9 = r11.m571m()
        L3b:
            if (r14 < 0) goto L93
        L3d:
            int r4 = r11.sizeCtl
            long r12 = (long) r4
            int r12 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r12 < 0) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r12 = r11.f579a
            if (r12 == 0) goto L93
            int r13 = r12.length
            r14 = 1073741824(0x40000000, float:2.0)
            if (r13 >= r14) goto L93
            int r13 = m574j(r13)
            if (r4 >= 0) goto L7b
            int r14 = r4 >>> 16
            if (r14 != r13) goto L93
            int r14 = r13 + 1
            if (r4 == r14) goto L93
            r14 = 65535(0xffff, float:9.1834E-41)
            int r13 = r13 + r14
            if (r4 == r13) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r13 = r11.f580b
            if (r13 == 0) goto L93
            int r14 = r11.transferIndex
            if (r14 > 0) goto L6a
            goto L93
        L6a:
            sun.misc.Unsafe r0 = p034j$.util.concurrent.ConcurrentHashMap.f571h
            long r2 = p034j$.util.concurrent.ConcurrentHashMap.f572i
            int r5 = r4 + 1
            r1 = r11
            boolean r14 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r14 == 0) goto L8e
            r11.m568p(r12, r13)
            goto L8e
        L7b:
            sun.misc.Unsafe r0 = p034j$.util.concurrent.ConcurrentHashMap.f571h
            long r2 = p034j$.util.concurrent.ConcurrentHashMap.f572i
            int r13 = r13 << 16
            int r5 = r13 + 2
            r1 = r11
            boolean r13 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r13 == 0) goto L8e
            r13 = 0
            r11.m568p(r12, r13)
        L8e:
            long r9 = r11.m571m()
            goto L3d
        L93:
            return
        L94:
            r11.m579e(r12, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m583a(long, int):void");
    }

    /* renamed from: b */
    static final boolean m582b(C2629l[] c2629lArr, int i, C2629l c2629l, C2629l c2629l2) {
        return f571h.compareAndSwapObject(c2629lArr, (i << f578o) + f577n, (Object) null, c2629l2);
    }

    /* renamed from: c */
    static Class m581c(Object obj) {
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
    static int m580d(Class cls, Object obj, Object obj2) {
        if (obj2 == null || obj2.getClass() != cls) {
            return 0;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x009b, code lost:
        if (r24.f581c != r7) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009d, code lost:
        r1 = new p034j$.util.concurrent.ConcurrentHashMap.C2620c[r8 << 1];
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
        r24.f581c = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x001b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0101 A[SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m579e(long r25, boolean r27) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m579e(long, boolean):void");
    }

    /* renamed from: g */
    private final C2629l[] m577g() {
        while (true) {
            C2629l[] c2629lArr = this.f579a;
            if (c2629lArr != null && c2629lArr.length != 0) {
                return c2629lArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (f571h.compareAndSwapInt(this, f572i, i, -1)) {
                try {
                    C2629l[] c2629lArr2 = this.f579a;
                    if (c2629lArr2 == null || c2629lArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        C2629l[] c2629lArr3 = new C2629l[i2];
                        this.f579a = c2629lArr3;
                        i = i2 - (i2 >>> 2);
                        c2629lArr2 = c2629lArr3;
                    }
                    this.sizeCtl = i;
                    return c2629lArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* renamed from: j */
    static final int m574j(int i) {
        return Integer.numberOfLeadingZeros(i) | LiteMode.FLAG_CHAT_SCALE;
    }

    /* renamed from: k */
    static final void m573k(C2629l[] c2629lArr, int i, C2629l c2629l) {
        f571h.putObjectVolatile(c2629lArr, (i << f578o) + f577n, c2629l);
    }

    /* renamed from: l */
    static final int m572l(int i) {
        return (i ^ (i >>> 16)) & Integer.MAX_VALUE;
    }

    /* renamed from: n */
    static final C2629l m570n(C2629l[] c2629lArr, int i) {
        return (C2629l) f571h.getObjectVolatile(c2629lArr, (i << f578o) + f577n);
    }

    /* renamed from: o */
    private static final int m569o(int i) {
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
    private final void m568p(C2629l[] c2629lArr, C2629l[] c2629lArr2) {
        C2629l[] c2629lArr3;
        int i;
        C2629l[] c2629lArr4;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        C2624g c2624g;
        C2635r c2635r;
        int i7;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = c2629lArr.length;
        int i8 = f570g;
        boolean z = true;
        int i9 = i8 > 1 ? (length >>> 3) / i8 : length;
        int i10 = i9 < 16 ? 16 : i9;
        if (c2629lArr2 == null) {
            try {
                C2629l[] c2629lArr5 = new C2629l[length << 1];
                concurrentHashMap.f580b = c2629lArr5;
                concurrentHashMap.transferIndex = length;
                c2629lArr3 = c2629lArr5;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            c2629lArr3 = c2629lArr2;
        }
        int length2 = c2629lArr3.length;
        C2624g c2624g2 = new C2624g(c2629lArr3);
        int i11 = -1;
        C2629l[] c2629lArr6 = c2629lArr;
        boolean z2 = true;
        int i12 = 0;
        int i13 = 0;
        boolean z3 = false;
        while (true) {
            if (z2) {
                int i14 = i12 - 1;
                if (i14 >= i13 || z3) {
                    i = i14;
                    c2629lArr4 = c2629lArr6;
                    i2 = i13;
                    i3 = i11;
                    z2 = false;
                } else {
                    int i15 = concurrentHashMap.transferIndex;
                    if (i15 <= 0) {
                        i12 = i11;
                    } else {
                        Unsafe unsafe = f571h;
                        long j = f573j;
                        int i16 = i15 > i10 ? i15 - i10 : 0;
                        i = i14;
                        c2629lArr4 = c2629lArr6;
                        i2 = i13;
                        i3 = i11;
                        if (unsafe.compareAndSwapInt(this, j, i15, i16)) {
                            i12 = i15 - 1;
                            i11 = i3;
                            c2629lArr6 = c2629lArr4;
                            i13 = i16;
                        }
                    }
                    z2 = false;
                }
                i11 = i3;
                c2629lArr6 = c2629lArr4;
                i13 = i2;
                i12 = i;
            } else {
                C2629l[] c2629lArr7 = c2629lArr6;
                int i17 = i13;
                int i18 = i11;
                C2635r c2635r2 = null;
                if (i12 < 0 || i12 >= length || (i4 = i12 + length) >= length2) {
                    int i19 = i10;
                    int i20 = length2;
                    C2624g c2624g3 = c2624g2;
                    if (z3) {
                        this.f580b = null;
                        this.f579a = c2629lArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    Unsafe unsafe2 = f571h;
                    long j2 = f572i;
                    int i21 = this.sizeCtl;
                    int i22 = i12;
                    if (!unsafe2.compareAndSwapInt(this, j2, i21, i21 - 1)) {
                        c2624g2 = c2624g3;
                        concurrentHashMap = this;
                        z = true;
                        i12 = i22;
                        c2629lArr6 = c2629lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    } else if (i21 - 2 != (m574j(length) << 16)) {
                        return;
                    } else {
                        c2624g2 = c2624g3;
                        i12 = length;
                        concurrentHashMap = this;
                        z = true;
                        z2 = true;
                        z3 = true;
                        c2629lArr6 = c2629lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    }
                } else {
                    C2629l m570n = m570n(c2629lArr7, i12);
                    if (m570n == null) {
                        z2 = m582b(c2629lArr7, i12, null, c2624g2);
                    } else {
                        int i23 = m570n.f595a;
                        if (i23 == i18) {
                            z2 = z;
                        } else {
                            synchronized (m570n) {
                                if (m570n(c2629lArr7, i12) == m570n) {
                                    if (i23 >= 0) {
                                        int i24 = i23 & length;
                                        C2635r c2635r3 = m570n;
                                        for (C2635r c2635r4 = m570n.f598d; c2635r4 != null; c2635r4 = c2635r4.f598d) {
                                            int i25 = c2635r4.f595a & length;
                                            if (i25 != i24) {
                                                c2635r3 = c2635r4;
                                                i24 = i25;
                                            }
                                        }
                                        if (i24 == 0) {
                                            c2635r = null;
                                            c2635r2 = c2635r3;
                                        } else {
                                            c2635r = c2635r3;
                                        }
                                        C2629l c2629l = m570n;
                                        while (c2629l != c2635r3) {
                                            int i26 = c2629l.f595a;
                                            C2635r c2635r5 = c2635r3;
                                            Object obj = c2629l.f596b;
                                            int i27 = i10;
                                            Object obj2 = c2629l.f597c;
                                            if ((i26 & length) == 0) {
                                                i7 = length2;
                                                c2635r2 = new C2629l(i26, obj, obj2, c2635r2);
                                            } else {
                                                i7 = length2;
                                                c2635r = new C2629l(i26, obj, obj2, c2635r);
                                            }
                                            c2629l = c2629l.f598d;
                                            c2635r3 = c2635r5;
                                            i10 = i27;
                                            length2 = i7;
                                        }
                                        i5 = i10;
                                        i6 = length2;
                                        m573k(c2629lArr3, i12, c2635r2);
                                        m573k(c2629lArr3, i4, c2635r);
                                        m573k(c2629lArr7, i12, c2624g2);
                                        c2624g = c2624g2;
                                    } else {
                                        i5 = i10;
                                        i6 = length2;
                                        if (m570n instanceof C2634q) {
                                            C2634q c2634q = (C2634q) m570n;
                                            C2635r c2635r6 = null;
                                            C2635r c2635r7 = null;
                                            C2629l c2629l2 = c2634q.f614f;
                                            int i28 = 0;
                                            int i29 = 0;
                                            C2635r c2635r8 = null;
                                            while (c2629l2 != null) {
                                                C2634q c2634q2 = c2634q;
                                                int i30 = c2629l2.f595a;
                                                C2624g c2624g4 = c2624g2;
                                                C2635r c2635r9 = new C2635r(i30, c2629l2.f596b, c2629l2.f597c, null, null);
                                                if ((i30 & length) == 0) {
                                                    c2635r9.f619h = c2635r7;
                                                    if (c2635r7 == null) {
                                                        c2635r2 = c2635r9;
                                                    } else {
                                                        c2635r7.f598d = c2635r9;
                                                    }
                                                    i28++;
                                                    c2635r7 = c2635r9;
                                                } else {
                                                    c2635r9.f619h = c2635r6;
                                                    if (c2635r6 == null) {
                                                        c2635r8 = c2635r9;
                                                    } else {
                                                        c2635r6.f598d = c2635r9;
                                                    }
                                                    i29++;
                                                    c2635r6 = c2635r9;
                                                }
                                                c2629l2 = c2629l2.f598d;
                                                c2634q = c2634q2;
                                                c2624g2 = c2624g4;
                                            }
                                            C2634q c2634q3 = c2634q;
                                            C2624g c2624g5 = c2624g2;
                                            C2629l m565s = i28 <= 6 ? m565s(c2635r2) : i29 != 0 ? new C2634q(c2635r2) : c2634q3;
                                            C2629l m565s2 = i29 <= 6 ? m565s(c2635r8) : i28 != 0 ? new C2634q(c2635r8) : c2634q3;
                                            m573k(c2629lArr3, i12, m565s);
                                            m573k(c2629lArr3, i4, m565s2);
                                            c2624g = c2624g5;
                                            m573k(c2629lArr, i12, c2624g);
                                            c2629lArr7 = c2629lArr;
                                        }
                                    }
                                    z2 = true;
                                } else {
                                    i5 = i10;
                                    i6 = length2;
                                }
                                c2624g = c2624g2;
                            }
                            i11 = -1;
                            c2624g2 = c2624g;
                            c2629lArr6 = c2629lArr7;
                            i13 = i17;
                            i10 = i5;
                            length2 = i6;
                            z = true;
                            concurrentHashMap = this;
                        }
                    }
                    i11 = i18;
                    c2629lArr6 = c2629lArr7;
                    i13 = i17;
                }
            }
        }
    }

    /* renamed from: q */
    private final void m567q(C2629l[] c2629lArr, int i) {
        int length = c2629lArr.length;
        if (length < 64) {
            m566r(length << 1);
            return;
        }
        C2629l m570n = m570n(c2629lArr, i);
        if (m570n == null || m570n.f595a < 0) {
            return;
        }
        synchronized (m570n) {
            if (m570n(c2629lArr, i) == m570n) {
                C2635r c2635r = null;
                C2629l c2629l = m570n;
                C2635r c2635r2 = null;
                while (c2629l != null) {
                    C2635r c2635r3 = new C2635r(c2629l.f595a, c2629l.f596b, c2629l.f597c, null, null);
                    c2635r3.f619h = c2635r2;
                    if (c2635r2 == null) {
                        c2635r = c2635r3;
                    } else {
                        c2635r2.f598d = c2635r3;
                    }
                    c2629l = c2629l.f598d;
                    c2635r2 = c2635r3;
                }
                m573k(c2629lArr, i, new C2634q(c2635r));
            }
        }
    }

    /* renamed from: r */
    private final void m566r(int i) {
        int length;
        C2629l[] c2629lArr;
        int m569o = i >= 536870912 ? 1073741824 : m569o(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                return;
            }
            C2629l[] c2629lArr2 = this.f579a;
            if (c2629lArr2 == null || (length = c2629lArr2.length) == 0) {
                int i3 = i2 > m569o ? i2 : m569o;
                if (f571h.compareAndSwapInt(this, f572i, i2, -1)) {
                    try {
                        if (this.f579a == c2629lArr2) {
                            this.f579a = new C2629l[i3];
                            i2 = i3 - (i3 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i2;
                    }
                } else {
                    continue;
                }
            } else if (m569o <= i2 || length >= 1073741824) {
                return;
            } else {
                if (c2629lArr2 == this.f579a) {
                    int m574j = m574j(length);
                    if (i2 < 0) {
                        if ((i2 >>> 16) != m574j || i2 == m574j + 1 || i2 == m574j + RtpPacket.MAX_SEQUENCE_NUMBER || (c2629lArr = this.f580b) == null || this.transferIndex <= 0) {
                            return;
                        }
                        if (f571h.compareAndSwapInt(this, f572i, i2, i2 + 1)) {
                            m568p(c2629lArr2, c2629lArr);
                        }
                    } else if (f571h.compareAndSwapInt(this, f572i, i2, (m574j << 16) + 2)) {
                        m568p(c2629lArr2, null);
                    }
                } else {
                    continue;
                }
            }
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        long j;
        int m569o;
        boolean z;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j2 = 0;
        long j3 = 0;
        C2629l c2629l = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j3++;
            c2629l = new C2629l(m572l(readObject.hashCode()), readObject, readObject2, c2629l);
        }
        if (j3 == 0) {
            this.sizeCtl = 0;
            return;
        }
        boolean z2 = true;
        if (j3 >= 536870912) {
            m569o = 1073741824;
        } else {
            int i = (int) j3;
            m569o = m569o(i + (i >>> 1) + 1);
        }
        C2629l[] c2629lArr = new C2629l[m569o];
        int i2 = m569o - 1;
        while (c2629l != null) {
            C2629l c2629l2 = c2629l.f598d;
            int i3 = c2629l.f595a;
            int i4 = i3 & i2;
            C2629l m570n = m570n(c2629lArr, i4);
            if (m570n == null) {
                z = z2;
            } else {
                Object obj2 = c2629l.f596b;
                if (m570n.f595a >= 0) {
                    int i5 = 0;
                    for (C2629l c2629l3 = m570n; c2629l3 != null; c2629l3 = c2629l3.f598d) {
                        if (c2629l3.f595a == i3 && ((obj = c2629l3.f596b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i5++;
                    }
                    z = true;
                    if (z && i5 >= 8) {
                        j2++;
                        c2629l.f598d = m570n;
                        C2629l c2629l4 = c2629l;
                        C2635r c2635r = null;
                        C2635r c2635r2 = null;
                        while (c2629l4 != null) {
                            long j4 = j2;
                            C2635r c2635r3 = new C2635r(c2629l4.f595a, c2629l4.f596b, c2629l4.f597c, null, null);
                            c2635r3.f619h = c2635r2;
                            if (c2635r2 == null) {
                                c2635r = c2635r3;
                            } else {
                                c2635r2.f598d = c2635r3;
                            }
                            c2629l4 = c2629l4.f598d;
                            c2635r2 = c2635r3;
                            j2 = j4;
                        }
                        m573k(c2629lArr, i4, new C2634q(c2635r));
                    }
                } else if (((C2634q) m570n).m558f(i3, obj2, c2629l.f597c) == null) {
                    j2 += j;
                }
                z = false;
            }
            if (z) {
                j2++;
                c2629l.f598d = m570n;
                m573k(c2629lArr, i4, c2629l);
            }
            j = 1;
            c2629l = c2629l2;
            z2 = true;
        }
        this.f579a = c2629lArr;
        this.sizeCtl = m569o - (m569o >>> 2);
        this.baseCount = j2;
    }

    /* renamed from: s */
    static C2629l m565s(C2629l c2629l) {
        C2629l c2629l2 = null;
        C2629l c2629l3 = null;
        while (c2629l != null) {
            C2629l c2629l4 = new C2629l(c2629l.f595a, c2629l.f596b, c2629l.f597c, null);
            if (c2629l3 == null) {
                c2629l2 = c2629l4;
            } else {
                c2629l3.f598d = c2629l4;
            }
            c2629l = c2629l.f598d;
            c2629l3 = c2629l4;
        }
        return c2629l2;
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
        C2631n[] c2631nArr = new C2631n[16];
        for (int i5 = 0; i5 < 16; i5++) {
            c2631nArr[i5] = new C2631n(0.75f);
        }
        objectOutputStream.putFields().put("segments", c2631nArr);
        objectOutputStream.putFields().put("segmentShift", i3);
        objectOutputStream.putFields().put("segmentMask", i4);
        objectOutputStream.writeFields();
        C2629l[] c2629lArr = this.f579a;
        if (c2629lArr != null) {
            C2633p c2633p = new C2633p(c2629lArr, c2629lArr.length, 0, c2629lArr.length);
            while (true) {
                C2629l m563a = c2633p.m563a();
                if (m563a == null) {
                    break;
                }
                objectOutputStream.writeObject(m563a.f596b);
                objectOutputStream.writeObject(m563a.f597c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public void clear() {
        C2629l[] c2629lArr = this.f579a;
        int i = 0;
        long j = 0;
        while (c2629lArr != null && i < c2629lArr.length) {
            C2629l m570n = m570n(c2629lArr, i);
            if (m570n == null) {
                i++;
            } else {
                int i2 = m570n.f595a;
                if (i2 == -1) {
                    c2629lArr = m578f(c2629lArr, m570n);
                    i = 0;
                } else {
                    synchronized (m570n) {
                        if (m570n(c2629lArr, i) == m570n) {
                            for (C2629l c2629l = i2 >= 0 ? m570n : m570n instanceof C2634q ? ((C2634q) m570n).f614f : null; c2629l != null; c2629l = c2629l.f598d) {
                                j--;
                            }
                            m573k(c2629lArr, i, null);
                            i++;
                        }
                    }
                }
            }
        }
        if (j != 0) {
            m583a(j, -1);
        }
    }

    @Override // p034j$.util.Map
    public Object compute(Object obj, BiFunction biFunction) {
        int i;
        C2629l c2629l;
        Object obj2;
        Object obj3;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m572l = m572l(obj.hashCode());
        C2629l[] c2629lArr = this.f579a;
        int i2 = 0;
        Object obj4 = null;
        int i3 = 0;
        while (true) {
            if (c2629lArr != null) {
                int length = c2629lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m572l;
                    C2629l m570n = m570n(c2629lArr, i4);
                    if (m570n == null) {
                        C2630m c2630m = new C2630m();
                        synchronized (c2630m) {
                            if (m582b(c2629lArr, i4, null, c2630m)) {
                                Object apply = biFunction.apply(obj, null);
                                if (apply != null) {
                                    c2629l = new C2629l(m572l, obj, apply, null);
                                    i = 1;
                                } else {
                                    i = i2;
                                    c2629l = null;
                                }
                                m573k(c2629lArr, i4, c2629l);
                                i2 = i;
                                obj4 = apply;
                                i3 = 1;
                            }
                        }
                        if (i3 != 0) {
                            break;
                        }
                    } else {
                        int i5 = m570n.f595a;
                        if (i5 == -1) {
                            c2629lArr = m578f(c2629lArr, m570n);
                        } else {
                            synchronized (m570n) {
                                if (m570n(c2629lArr, i4) == m570n) {
                                    if (i5 >= 0) {
                                        C2629l c2629l2 = null;
                                        C2629l c2629l3 = m570n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2629l3.f595a != m572l || ((obj3 = c2629l3.f596b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2629l c2629l4 = c2629l3.f598d;
                                                if (c2629l4 == null) {
                                                    Object apply2 = biFunction.apply(obj, null);
                                                    if (apply2 != null) {
                                                        c2629l3.f598d = new C2629l(m572l, obj, apply2, null);
                                                        i2 = 1;
                                                    }
                                                    obj2 = apply2;
                                                } else {
                                                    i6++;
                                                    c2629l2 = c2629l3;
                                                    c2629l3 = c2629l4;
                                                }
                                            }
                                        }
                                        obj2 = biFunction.apply(obj, c2629l3.f597c);
                                        if (obj2 != null) {
                                            c2629l3.f597c = obj2;
                                        } else {
                                            C2629l c2629l5 = c2629l3.f598d;
                                            if (c2629l2 != null) {
                                                c2629l2.f598d = c2629l5;
                                            } else {
                                                m573k(c2629lArr, i4, c2629l5);
                                            }
                                            i2 = -1;
                                        }
                                        i3 = i6;
                                        obj4 = obj2;
                                    } else if (m570n instanceof C2634q) {
                                        C2634q c2634q = (C2634q) m570n;
                                        C2635r c2635r = c2634q.f613e;
                                        C2635r m552b = c2635r != null ? c2635r.m552b(m572l, obj, null) : null;
                                        Object apply3 = biFunction.apply(obj, m552b == null ? null : m552b.f597c);
                                        if (apply3 != null) {
                                            if (m552b != null) {
                                                m552b.f597c = apply3;
                                            } else {
                                                c2634q.m558f(m572l, obj, apply3);
                                                i2 = 1;
                                            }
                                        } else if (m552b != null) {
                                            if (c2634q.m557g(m552b)) {
                                                m573k(c2629lArr, i4, m565s(c2634q.f614f));
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
                                    m567q(c2629lArr, i4);
                                }
                            }
                        }
                    }
                }
            }
            c2629lArr = m577g();
        }
        if (i2 != 0) {
            m583a(i2, i3);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object compute(Object obj, java.util.function.BiFunction biFunction) {
        return compute(obj, C3078s.m97a(biFunction));
    }

    @Override // p034j$.util.concurrent.InterfaceC2644b, p034j$.util.Map
    public Object computeIfAbsent(Object obj, Function function) {
        int i;
        Object apply;
        C2635r m552b;
        Object obj2;
        Object obj3;
        if (obj == null || function == null) {
            throw null;
        }
        int m572l = m572l(obj.hashCode());
        C2629l[] c2629lArr = this.f579a;
        Object obj4 = null;
        int i2 = 0;
        while (true) {
            if (c2629lArr != null) {
                int length = c2629lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m572l;
                    C2629l m570n = m570n(c2629lArr, i3);
                    boolean z = true;
                    if (m570n == null) {
                        C2630m c2630m = new C2630m();
                        synchronized (c2630m) {
                            if (m582b(c2629lArr, i3, null, c2630m)) {
                                Object apply2 = function.apply(obj);
                                m573k(c2629lArr, i3, apply2 != null ? new C2629l(m572l, obj, apply2, null) : null);
                                obj4 = apply2;
                                i2 = 1;
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    } else {
                        int i4 = m570n.f595a;
                        if (i4 == -1) {
                            c2629lArr = m578f(c2629lArr, m570n);
                        } else {
                            synchronized (m570n) {
                                if (m570n(c2629lArr, i3) == m570n) {
                                    if (i4 >= 0) {
                                        C2629l c2629l = m570n;
                                        i = 1;
                                        while (true) {
                                            if (c2629l.f595a != m572l || ((obj3 = c2629l.f596b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2629l c2629l2 = c2629l.f598d;
                                                if (c2629l2 == null) {
                                                    apply = function.apply(obj);
                                                    if (apply != null) {
                                                        c2629l.f598d = new C2629l(m572l, obj, apply, null);
                                                    }
                                                } else {
                                                    i++;
                                                    c2629l = c2629l2;
                                                }
                                            }
                                        }
                                        obj2 = c2629l.f597c;
                                        z = false;
                                        int i5 = i;
                                        obj4 = obj2;
                                        i2 = i5;
                                    } else if (m570n instanceof C2634q) {
                                        i = 2;
                                        C2634q c2634q = (C2634q) m570n;
                                        C2635r c2635r = c2634q.f613e;
                                        if (c2635r == null || (m552b = c2635r.m552b(m572l, obj, null)) == null) {
                                            apply = function.apply(obj);
                                            if (apply != null) {
                                                c2634q.m558f(m572l, obj, apply);
                                                i2 = i;
                                                obj4 = apply;
                                            }
                                            z = false;
                                            i2 = i;
                                            obj4 = apply;
                                        } else {
                                            obj2 = m552b.f597c;
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
                                    m567q(c2629lArr, i3);
                                }
                                if (!z) {
                                    return obj4;
                                }
                            }
                        }
                    }
                }
            }
            c2629lArr = m577g();
        }
        if (obj4 != null) {
            m583a(1L, i2);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
        return computeIfAbsent(obj, C3024L.m184a(function));
    }

    @Override // p034j$.util.Map
    public Object computeIfPresent(Object obj, BiFunction biFunction) {
        C2635r m552b;
        C2629l m565s;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m572l = m572l(obj.hashCode());
        C2629l[] c2629lArr = this.f579a;
        int i = 0;
        Object obj3 = null;
        int i2 = 0;
        while (true) {
            if (c2629lArr != null) {
                int length = c2629lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m572l;
                    C2629l m570n = m570n(c2629lArr, i3);
                    if (m570n == null) {
                        break;
                    }
                    int i4 = m570n.f595a;
                    if (i4 == -1) {
                        c2629lArr = m578f(c2629lArr, m570n);
                    } else {
                        synchronized (m570n) {
                            if (m570n(c2629lArr, i3) == m570n) {
                                if (i4 >= 0) {
                                    i2 = 1;
                                    C2629l c2629l = null;
                                    C2629l c2629l2 = m570n;
                                    while (true) {
                                        if (c2629l2.f595a != m572l || ((obj2 = c2629l2.f596b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                            C2629l c2629l3 = c2629l2.f598d;
                                            if (c2629l3 == null) {
                                                break;
                                            }
                                            i2++;
                                            c2629l = c2629l2;
                                            c2629l2 = c2629l3;
                                        }
                                    }
                                    obj3 = biFunction.apply(obj, c2629l2.f597c);
                                    if (obj3 != null) {
                                        c2629l2.f597c = obj3;
                                    } else {
                                        m565s = c2629l2.f598d;
                                        if (c2629l != null) {
                                            c2629l.f598d = m565s;
                                            i = -1;
                                        }
                                        m573k(c2629lArr, i3, m565s);
                                        i = -1;
                                    }
                                } else if (m570n instanceof C2634q) {
                                    i2 = 2;
                                    C2634q c2634q = (C2634q) m570n;
                                    C2635r c2635r = c2634q.f613e;
                                    if (c2635r != null && (m552b = c2635r.m552b(m572l, obj, null)) != null) {
                                        obj3 = biFunction.apply(obj, m552b.f597c);
                                        if (obj3 != null) {
                                            m552b.f597c = obj3;
                                        } else {
                                            if (c2634q.m557g(m552b)) {
                                                m565s = m565s(c2634q.f614f);
                                                m573k(c2629lArr, i3, m565s);
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
            c2629lArr = m577g();
        }
        if (i != 0) {
            m583a(i, i2);
        }
        return obj3;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfPresent(Object obj, java.util.function.BiFunction biFunction) {
        return computeIfPresent(obj, C3078s.m97a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean containsValue(Object obj) {
        Objects.requireNonNull(obj);
        C2629l[] c2629lArr = this.f579a;
        if (c2629lArr != null) {
            C2633p c2633p = new C2633p(c2629lArr, c2629lArr.length, 0, c2629lArr.length);
            while (true) {
                C2629l m563a = c2633p.m563a();
                if (m563a == null) {
                    break;
                }
                Object obj2 = m563a.f597c;
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
        C2622e c2622e = this.f584f;
        if (c2622e != null) {
            return c2622e;
        }
        C2622e c2622e2 = new C2622e(this);
        this.f584f = c2622e2;
        return c2622e2;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean equals(Object obj) {
        V value;
        V v;
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                C2629l[] c2629lArr = this.f579a;
                int length = c2629lArr == null ? 0 : c2629lArr.length;
                C2633p c2633p = new C2633p(c2629lArr, length, 0, length);
                while (true) {
                    C2629l m563a = c2633p.m563a();
                    if (m563a == null) {
                        for (Map.Entry<K, V> entry : map.entrySet()) {
                            K key = entry.getKey();
                            if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                                return false;
                            }
                        }
                        return true;
                    }
                    Object obj2 = m563a.f597c;
                    Object obj3 = map.get(m563a.f596b);
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
    final C2629l[] m578f(C2629l[] c2629lArr, C2629l c2629l) {
        C2629l[] c2629lArr2;
        int i;
        if (!(c2629l instanceof C2624g) || (c2629lArr2 = ((C2624g) c2629l).f590e) == null) {
            return this.f579a;
        }
        int m574j = m574j(c2629lArr.length);
        while (true) {
            if (c2629lArr2 != this.f580b || this.f579a != c2629lArr || (i = this.sizeCtl) >= 0 || (i >>> 16) != m574j || i == m574j + 1 || i == RtpPacket.MAX_SEQUENCE_NUMBER + m574j || this.transferIndex <= 0) {
                break;
            } else if (f571h.compareAndSwapInt(this, f572i, i, i + 1)) {
                m568p(c2629lArr, c2629lArr2);
                break;
            }
        }
        return c2629lArr2;
    }

    @Override // p034j$.util.concurrent.InterfaceC2644b, p034j$.util.Map
    public void forEach(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2629l[] c2629lArr = this.f579a;
        if (c2629lArr == null) {
            return;
        }
        C2633p c2633p = new C2633p(c2629lArr, c2629lArr.length, 0, c2629lArr.length);
        while (true) {
            C2629l m563a = c2633p.m563a();
            if (m563a == null) {
                return;
            }
            biConsumer.accept(m563a.f596b, m563a.f597c);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void forEach(java.util.function.BiConsumer biConsumer) {
        forEach(C3074q.m102a(biConsumer));
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
        return (V) r1.f597c;
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
            int r0 = m572l(r0)
            j$.util.concurrent.ConcurrentHashMap$l[] r1 = r4.f579a
            r2 = 0
            if (r1 == 0) goto L4e
            int r3 = r1.length
            if (r3 <= 0) goto L4e
            int r3 = r3 + (-1)
            r3 = r3 & r0
            j$.util.concurrent.ConcurrentHashMap$l r1 = m570n(r1, r3)
            if (r1 == 0) goto L4e
            int r3 = r1.f595a
            if (r3 != r0) goto L2c
            java.lang.Object r3 = r1.f596b
            if (r3 == r5) goto L29
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L29:
            java.lang.Object r5 = r1.f597c
            return r5
        L2c:
            if (r3 >= 0) goto L37
            j$.util.concurrent.ConcurrentHashMap$l r5 = r1.mo553a(r0, r5)
            if (r5 == 0) goto L36
            java.lang.Object r2 = r5.f597c
        L36:
            return r2
        L37:
            j$.util.concurrent.ConcurrentHashMap$l r1 = r1.f598d
            if (r1 == 0) goto L4e
            int r3 = r1.f595a
            if (r3 != r0) goto L37
            java.lang.Object r3 = r1.f596b
            if (r3 == r5) goto L4b
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L4b:
            java.lang.Object r5 = r1.f597c
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
    final java.lang.Object m576h(java.lang.Object r9, java.lang.Object r10, boolean r11) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L98
            if (r10 == 0) goto L98
            int r1 = r9.hashCode()
            int r1 = m572l(r1)
            r2 = 0
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.f579a
        L10:
            if (r3 == 0) goto L92
            int r4 = r3.length
            if (r4 != 0) goto L17
            goto L92
        L17:
            int r4 = r4 + (-1)
            r4 = r4 & r1
            j$.util.concurrent.ConcurrentHashMap$l r5 = m570n(r3, r4)
            if (r5 != 0) goto L2c
            j$.util.concurrent.ConcurrentHashMap$l r5 = new j$.util.concurrent.ConcurrentHashMap$l
            r5.<init>(r1, r9, r10, r0)
            boolean r4 = m582b(r3, r4, r0, r5)
            if (r4 == 0) goto L10
            goto L89
        L2c:
            int r6 = r5.f595a
            r7 = -1
            if (r6 != r7) goto L36
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m578f(r3, r5)
            goto L10
        L36:
            monitor-enter(r5)
            j$.util.concurrent.ConcurrentHashMap$l r7 = m570n(r3, r4)     // Catch: java.lang.Throwable -> L8f
            if (r7 != r5) goto L7b
            if (r6 < 0) goto L68
            r2 = 1
            r6 = r5
        L41:
            int r7 = r6.f595a     // Catch: java.lang.Throwable -> L8f
            if (r7 != r1) goto L58
            java.lang.Object r7 = r6.f596b     // Catch: java.lang.Throwable -> L8f
            if (r7 == r9) goto L51
            if (r7 == 0) goto L58
            boolean r7 = r9.equals(r7)     // Catch: java.lang.Throwable -> L8f
            if (r7 == 0) goto L58
        L51:
            java.lang.Object r7 = r6.f597c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
        L55:
            r6.f597c = r10     // Catch: java.lang.Throwable -> L8f
            goto L7c
        L58:
            j$.util.concurrent.ConcurrentHashMap$l r7 = r6.f598d     // Catch: java.lang.Throwable -> L8f
            if (r7 != 0) goto L64
            j$.util.concurrent.ConcurrentHashMap$l r7 = new j$.util.concurrent.ConcurrentHashMap$l     // Catch: java.lang.Throwable -> L8f
            r7.<init>(r1, r9, r10, r0)     // Catch: java.lang.Throwable -> L8f
            r6.f598d = r7     // Catch: java.lang.Throwable -> L8f
            goto L7b
        L64:
            int r2 = r2 + 1
            r6 = r7
            goto L41
        L68:
            boolean r6 = r5 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2634q     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            r2 = 2
            r6 = r5
            j$.util.concurrent.ConcurrentHashMap$q r6 = (p034j$.util.concurrent.ConcurrentHashMap.C2634q) r6     // Catch: java.lang.Throwable -> L8f
            j$.util.concurrent.ConcurrentHashMap$r r6 = r6.m558f(r1, r9, r10)     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            java.lang.Object r7 = r6.f597c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
            goto L55
        L7b:
            r7 = r0
        L7c:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            if (r2 == 0) goto L10
            r9 = 8
            if (r2 < r9) goto L86
            r8.m567q(r3, r4)
        L86:
            if (r7 == 0) goto L89
            return r7
        L89:
            r9 = 1
            r8.m583a(r9, r2)
            return r0
        L8f:
            r9 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            throw r9
        L92:
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m577g()
            goto L10
        L98:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m576h(java.lang.Object, java.lang.Object, boolean):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public int hashCode() {
        C2629l[] c2629lArr = this.f579a;
        int i = 0;
        if (c2629lArr != null) {
            C2633p c2633p = new C2633p(c2629lArr, c2629lArr.length, 0, c2629lArr.length);
            while (true) {
                C2629l m563a = c2633p.m563a();
                if (m563a == null) {
                    break;
                }
                i += m563a.f597c.hashCode() ^ m563a.f596b.hashCode();
            }
        }
        return i;
    }

    /* renamed from: i */
    final Object m575i(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        C2629l m570n;
        Object obj4;
        C2635r m552b;
        C2629l m565s;
        Object obj5;
        int m572l = m572l(obj.hashCode());
        C2629l[] c2629lArr = this.f579a;
        while (true) {
            if (c2629lArr == null || (length = c2629lArr.length) == 0 || (m570n = m570n(c2629lArr, (i = (length - 1) & m572l))) == null) {
                break;
            }
            int i2 = m570n.f595a;
            if (i2 == -1) {
                c2629lArr = m578f(c2629lArr, m570n);
            } else {
                boolean z = false;
                synchronized (m570n) {
                    if (m570n(c2629lArr, i) == m570n) {
                        if (i2 >= 0) {
                            C2629l c2629l = null;
                            C2629l c2629l2 = m570n;
                            while (true) {
                                if (c2629l2.f595a != m572l || ((obj5 = c2629l2.f596b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                    C2629l c2629l3 = c2629l2.f598d;
                                    if (c2629l3 == null) {
                                        break;
                                    }
                                    c2629l = c2629l2;
                                    c2629l2 = c2629l3;
                                }
                            }
                            obj4 = c2629l2.f597c;
                            if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                if (obj2 != null) {
                                    c2629l2.f597c = obj2;
                                } else if (c2629l != null) {
                                    c2629l.f598d = c2629l2.f598d;
                                } else {
                                    m565s = c2629l2.f598d;
                                    m573k(c2629lArr, i, m565s);
                                }
                                z = true;
                            }
                            obj4 = null;
                            z = true;
                        } else if (m570n instanceof C2634q) {
                            C2634q c2634q = (C2634q) m570n;
                            C2635r c2635r = c2634q.f613e;
                            if (c2635r != null && (m552b = c2635r.m552b(m572l, obj, null)) != null) {
                                obj4 = m552b.f597c;
                                if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                    if (obj2 != null) {
                                        m552b.f597c = obj2;
                                    } else if (c2634q.m557g(m552b)) {
                                        m565s = m565s(c2634q.f614f);
                                        m573k(c2629lArr, i, m565s);
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
                            m583a(-1L, -1);
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
        return m571m() <= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public Set<K> keySet() {
        C2626i c2626i = this.f582d;
        if (c2626i != null) {
            return c2626i;
        }
        C2626i c2626i2 = new C2626i(this, null);
        this.f582d = c2626i2;
        return c2626i2;
    }

    /* renamed from: m */
    final long m571m() {
        C2620c[] c2620cArr = this.f581c;
        long j = this.baseCount;
        if (c2620cArr != null) {
            for (C2620c c2620c : c2620cArr) {
                if (c2620c != null) {
                    j += c2620c.value;
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
        int m572l = m572l(obj.hashCode());
        C2629l[] c2629lArr = this.f579a;
        int i2 = 0;
        Object obj6 = null;
        int i3 = 0;
        while (true) {
            if (c2629lArr != null) {
                int length = c2629lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m572l;
                    C2629l m570n = m570n(c2629lArr, i4);
                    i = 1;
                    if (m570n != null) {
                        int i5 = m570n.f595a;
                        if (i5 == -1) {
                            c2629lArr = m578f(c2629lArr, m570n);
                        } else {
                            synchronized (m570n) {
                                if (m570n(c2629lArr, i4) == m570n) {
                                    if (i5 >= 0) {
                                        C2629l c2629l = null;
                                        C2629l c2629l2 = m570n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2629l2.f595a != m572l || ((obj4 = c2629l2.f596b) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                C2629l c2629l3 = c2629l2.f598d;
                                                if (c2629l3 == null) {
                                                    c2629l2.f598d = new C2629l(m572l, obj, obj5, null);
                                                    obj3 = obj5;
                                                    break;
                                                }
                                                i6++;
                                                c2629l = c2629l2;
                                                c2629l2 = c2629l3;
                                            }
                                        }
                                        Object apply = biFunction.apply(c2629l2.f597c, obj5);
                                        if (apply != null) {
                                            c2629l2.f597c = apply;
                                        } else {
                                            C2629l c2629l4 = c2629l2.f598d;
                                            if (c2629l != null) {
                                                c2629l.f598d = c2629l4;
                                            } else {
                                                m573k(c2629lArr, i4, c2629l4);
                                            }
                                            i2 = -1;
                                        }
                                        i = i2;
                                        obj3 = apply;
                                        i3 = i6;
                                        obj6 = obj3;
                                        i2 = i;
                                    } else if (m570n instanceof C2634q) {
                                        i3 = 2;
                                        C2634q c2634q = (C2634q) m570n;
                                        C2635r c2635r = c2634q.f613e;
                                        C2635r m552b = c2635r == null ? null : c2635r.m552b(m572l, obj, null);
                                        Object apply2 = m552b == null ? obj5 : biFunction.apply(m552b.f597c, obj5);
                                        if (apply2 != null) {
                                            if (m552b != null) {
                                                m552b.f597c = apply2;
                                            } else {
                                                c2634q.m558f(m572l, obj, apply2);
                                                i2 = 1;
                                            }
                                        } else if (m552b != null) {
                                            if (c2634q.m557g(m552b)) {
                                                m573k(c2629lArr, i4, m565s(c2634q.f614f));
                                            }
                                            i2 = -1;
                                        }
                                        obj6 = apply2;
                                    }
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    m567q(c2629lArr, i4);
                                }
                                i = i2;
                                obj5 = obj6;
                            }
                        }
                    } else if (m582b(c2629lArr, i4, null, new C2629l(m572l, obj, obj5, null))) {
                        break;
                    }
                }
            }
            c2629lArr = m577g();
        }
        if (i != 0) {
            m583a(i, i3);
        }
        return obj5;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
        return merge(obj, obj2, C3078s.m97a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public V put(K k, V v) {
        return (V) m576h(k, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m566r(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            m576h(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public V putIfAbsent(K k, V v) {
        return (V) m576h(k, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public V remove(Object obj) {
        return (V) m575i(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        Objects.requireNonNull(obj);
        return (obj2 == null || m575i(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return m575i(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return m575i(obj, obj3, obj2) != null;
    }

    @Override // p034j$.util.Map
    public void replaceAll(BiFunction biFunction) {
        Objects.requireNonNull(biFunction);
        C2629l[] c2629lArr = this.f579a;
        if (c2629lArr == null) {
            return;
        }
        C2633p c2633p = new C2633p(c2629lArr, c2629lArr.length, 0, c2629lArr.length);
        while (true) {
            C2629l m563a = c2633p.m563a();
            if (m563a == null) {
                return;
            }
            Object obj = m563a.f597c;
            Object obj2 = m563a.f596b;
            do {
                Object apply = biFunction.apply(obj2, obj);
                Objects.requireNonNull(apply);
                if (m575i(obj2, apply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void replaceAll(java.util.function.BiFunction biFunction) {
        replaceAll(C3078s.m97a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public int size() {
        long m571m = m571m();
        if (m571m < 0) {
            return 0;
        }
        if (m571m > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) m571m;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        C2629l[] c2629lArr = this.f579a;
        int length = c2629lArr == null ? 0 : c2629lArr.length;
        C2633p c2633p = new C2633p(c2629lArr, length, 0, length);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        C2629l m563a = c2633p.m563a();
        if (m563a != null) {
            while (true) {
                Object obj = m563a.f596b;
                Object obj2 = m563a.f597c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                m563a = c2633p.m563a();
                if (m563a == null) {
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
        C2638u c2638u = this.f583e;
        if (c2638u != null) {
            return c2638u;
        }
        C2638u c2638u2 = new C2638u(this);
        this.f583e = c2638u2;
        return c2638u2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC2619b implements Collection, Serializable {

        /* renamed from: a */
        final ConcurrentHashMap f587a;

        AbstractC2619b(ConcurrentHashMap concurrentHashMap) {
            this.f587a = concurrentHashMap;
        }

        @Override // java.util.Collection
        public final void clear() {
            this.f587a.clear();
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
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.AbstractC2619b.containsAll(java.util.Collection):boolean");
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return this.f587a.isEmpty();
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
            return this.f587a.size();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            long m571m = this.f587a.m571m();
            if (m571m < 0) {
                m571m = 0;
            }
            if (m571m <= 2147483639) {
                int i = (int) m571m;
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
            long m571m = this.f587a.m571m();
            if (m571m < 0) {
                m571m = 0;
            }
            if (m571m <= 2147483639) {
                int i = (int) m571m;
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
