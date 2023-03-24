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
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2553b;
import p034j$.util.InterfaceC2625s;
import p034j$.util.Iterator;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C2961L;
import p034j$.wrappers.C2968O0;
import p034j$.wrappers.C2971S;
import p034j$.wrappers.C2993h;
import p034j$.wrappers.C3011q;
import p034j$.wrappers.C3015s;
import p034j$.wrappers.C3023w;
import p034j$.wrappers.C3024w0;
import sun.misc.Unsafe;
/* renamed from: j$.util.concurrent.ConcurrentHashMap */
/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, InterfaceC2581b {

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
    volatile transient C2566l[] f579a;

    /* renamed from: b */
    private volatile transient C2566l[] f580b;
    private volatile transient long baseCount;

    /* renamed from: c */
    private volatile transient C2557c[] f581c;
    private volatile transient int cellsBusy;

    /* renamed from: d */
    private transient C2563i f582d;

    /* renamed from: e */
    private transient C2575u f583e;

    /* renamed from: f */
    private transient C2559e f584f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$a */
    /* loaded from: classes2.dex */
    public static class C2555a extends C2570p {

        /* renamed from: i */
        final ConcurrentHashMap f585i;

        /* renamed from: j */
        C2566l f586j;

        C2555a(C2566l[] c2566lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2566lArr, i, i2, i3);
            this.f585i = concurrentHashMap;
            m582a();
        }

        public final boolean hasMoreElements() {
            return this.f604b != null;
        }

        public final boolean hasNext() {
            return this.f604b != null;
        }

        public final void remove() {
            C2566l c2566l = this.f586j;
            if (c2566l == null) {
                throw new IllegalStateException();
            }
            this.f586j = null;
            this.f585i.m594i(c2566l.f596b, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$c */
    /* loaded from: classes2.dex */
    public static final class C2557c {
        volatile long value;

        C2557c(long j) {
            this.value = j;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$d */
    /* loaded from: classes2.dex */
    static final class C2558d extends C2555a implements Iterator, p034j$.util.Iterator {
        C2558d(C2566l[] c2566lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2566lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3023w.m108b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public Object next() {
            C2566l c2566l = this.f604b;
            if (c2566l != null) {
                Object obj = c2566l.f596b;
                Object obj2 = c2566l.f597c;
                this.f586j = c2566l;
                m582a();
                return new C2565k(obj, obj2, this.f585i);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$e */
    /* loaded from: classes2.dex */
    public static final class C2559e extends AbstractC2556b implements Set, InterfaceC2553b {
        C2559e(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set
        /* renamed from: a */
        public boolean add(Map.Entry entry) {
            return this.f587a.m595h(entry.getKey(), entry.getValue(), false) == null;
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2556b, java.util.Collection
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

        @Override // p034j$.util.InterfaceC2553b, p034j$.lang.InterfaceC2499e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2566l[] c2566lArr = this.f587a.f579a;
            if (c2566lArr == null) {
                return;
            }
            C2570p c2570p = new C2570p(c2566lArr, c2566lArr.length, 0, c2566lArr.length);
            while (true) {
                C2566l m582a = c2570p.m582a();
                if (m582a == null) {
                    return;
                }
                consumer.accept(new C2565k(m582a.f596b, m582a.f597c, this.f587a));
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3023w.m108b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            C2566l[] c2566lArr = this.f587a.f579a;
            int i = 0;
            if (c2566lArr != null) {
                C2570p c2570p = new C2570p(c2566lArr, c2566lArr.length, 0, c2566lArr.length);
                while (true) {
                    C2566l m582a = c2570p.m582a();
                    if (m582a == null) {
                        break;
                    }
                    i += m582a.hashCode();
                }
            }
            return i;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2556b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            C2566l[] c2566lArr = concurrentHashMap.f579a;
            int length = c2566lArr == null ? 0 : c2566lArr.length;
            return new C2558d(c2566lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2553b
        /* renamed from: k */
        public /* synthetic */ boolean mo570k(Predicate predicate) {
            return AbstractC2552a.m618h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C2968O0.m181n0(AbstractC2552a.m619g(this));
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
            return AbstractC2552a.m618h(this, C3024w0.m107a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2553b, p034j$.lang.InterfaceC2499e
        public InterfaceC2625s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            long m590m = concurrentHashMap.m590m();
            C2566l[] c2566lArr = concurrentHashMap.f579a;
            int length = c2566lArr == null ? 0 : c2566lArr.length;
            return new C2560f(c2566lArr, length, 0, length, m590m >= 0 ? m590m : 0L, concurrentHashMap);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C2993h.m149a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2553b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2552a.m617i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C2968O0.m181n0(AbstractC2552a.m617i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C2971S.m177a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$f */
    /* loaded from: classes2.dex */
    public static final class C2560f extends C2570p implements InterfaceC2625s {

        /* renamed from: i */
        final ConcurrentHashMap f588i;

        /* renamed from: j */
        long f589j;

        C2560f(C2566l[] c2566lArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
            super(c2566lArr, i, i2, i3);
            this.f588i = concurrentHashMap;
            this.f589j = j;
        }

        @Override // p034j$.util.InterfaceC2625s
        /* renamed from: b */
        public boolean mo127b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2566l m582a = m582a();
            if (m582a == null) {
                return false;
            }
            consumer.accept(new C2565k(m582a.f596b, m582a.f597c, this.f588i));
            return true;
        }

        @Override // p034j$.util.InterfaceC2625s
        public int characteristics() {
            return 4353;
        }

        @Override // p034j$.util.InterfaceC2625s
        public long estimateSize() {
            return this.f589j;
        }

        @Override // p034j$.util.InterfaceC2625s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2566l m582a = m582a();
                if (m582a == null) {
                    return;
                }
                consumer.accept(new C2565k(m582a.f596b, m582a.f597c, this.f588i));
            }
        }

        @Override // p034j$.util.InterfaceC2625s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2552a.m621e(this);
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2552a.m620f(this, i);
        }

        @Override // p034j$.util.InterfaceC2625s
        public InterfaceC2625s trySplit() {
            int i = this.f608f;
            int i2 = this.f609g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2566l[] c2566lArr = this.f603a;
            int i4 = this.f610h;
            this.f609g = i3;
            long j = this.f589j >>> 1;
            this.f589j = j;
            return new C2560f(c2566lArr, i4, i3, i2, j, this.f588i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$g */
    /* loaded from: classes2.dex */
    public static final class C2561g extends C2566l {

        /* renamed from: e */
        final C2566l[] f590e;

        C2561g(C2566l[] c2566lArr) {
            super(-1, null, null, null);
            this.f590e = c2566lArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
            if ((r0 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2561g) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
            r0 = ((p034j$.util.concurrent.ConcurrentHashMap.C2561g) r0).f590e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
            return r0.mo572a(r5, r6);
         */
        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2566l
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        p034j$.util.concurrent.ConcurrentHashMap.C2566l mo572a(int r5, java.lang.Object r6) {
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
                j$.util.concurrent.ConcurrentHashMap$l r0 = p034j$.util.concurrent.ConcurrentHashMap.m589n(r0, r2)
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
                boolean r1 = r0 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2561g
                if (r1 == 0) goto L2e
                j$.util.concurrent.ConcurrentHashMap$g r0 = (p034j$.util.concurrent.ConcurrentHashMap.C2561g) r0
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r0.f590e
                goto L2
            L2e:
                j$.util.concurrent.ConcurrentHashMap$l r5 = r0.mo572a(r5, r6)
                return r5
            L33:
                j$.util.concurrent.ConcurrentHashMap$l r0 = r0.f598d
                if (r0 != 0) goto L12
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2561g.mo572a(int, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$l");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$h */
    /* loaded from: classes2.dex */
    public static final class C2562h extends C2555a implements java.util.Iterator, Enumeration, p034j$.util.Iterator {
        C2562h(C2566l[] c2566lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2566lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3023w.m108b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public final Object next() {
            C2566l c2566l = this.f604b;
            if (c2566l != null) {
                Object obj = c2566l.f596b;
                this.f586j = c2566l;
                m582a();
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
    public static class C2563i extends AbstractC2556b implements Set, InterfaceC2553b {
        C2563i(ConcurrentHashMap concurrentHashMap, Object obj) {
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2556b, java.util.Collection
        public boolean contains(Object obj) {
            return this.f587a.containsKey(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p034j$.util.InterfaceC2553b, p034j$.lang.InterfaceC2499e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2566l[] c2566lArr = this.f587a.f579a;
            if (c2566lArr == null) {
                return;
            }
            C2570p c2570p = new C2570p(c2566lArr, c2566lArr.length, 0, c2566lArr.length);
            while (true) {
                C2566l m582a = c2570p.m582a();
                if (m582a == null) {
                    return;
                }
                consumer.accept(m582a.f596b);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3023w.m108b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            java.util.Iterator it = iterator();
            int i = 0;
            while (((C2555a) it).hasNext()) {
                i += ((C2562h) it).next().hashCode();
            }
            return i;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2556b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            C2566l[] c2566lArr = concurrentHashMap.f579a;
            int length = c2566lArr == null ? 0 : c2566lArr.length;
            return new C2562h(c2566lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2553b
        /* renamed from: k */
        public /* synthetic */ boolean mo570k(Predicate predicate) {
            return AbstractC2552a.m618h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C2968O0.m181n0(AbstractC2552a.m619g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f587a.remove(obj) != null;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2552a.m618h(this, C3024w0.m107a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2553b, p034j$.lang.InterfaceC2499e
        public InterfaceC2625s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            long m590m = concurrentHashMap.m590m();
            C2566l[] c2566lArr = concurrentHashMap.f579a;
            int length = c2566lArr == null ? 0 : c2566lArr.length;
            return new C2564j(c2566lArr, length, 0, length, m590m >= 0 ? m590m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C2993h.m149a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2553b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2552a.m617i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C2968O0.m181n0(AbstractC2552a.m617i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C2971S.m177a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$j */
    /* loaded from: classes2.dex */
    public static final class C2564j extends C2570p implements InterfaceC2625s {

        /* renamed from: i */
        long f591i;

        C2564j(C2566l[] c2566lArr, int i, int i2, int i3, long j) {
            super(c2566lArr, i, i2, i3);
            this.f591i = j;
        }

        @Override // p034j$.util.InterfaceC2625s
        /* renamed from: b */
        public boolean mo127b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2566l m582a = m582a();
            if (m582a == null) {
                return false;
            }
            consumer.accept(m582a.f596b);
            return true;
        }

        @Override // p034j$.util.InterfaceC2625s
        public int characteristics() {
            return 4353;
        }

        @Override // p034j$.util.InterfaceC2625s
        public long estimateSize() {
            return this.f591i;
        }

        @Override // p034j$.util.InterfaceC2625s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2566l m582a = m582a();
                if (m582a == null) {
                    return;
                }
                consumer.accept(m582a.f596b);
            }
        }

        @Override // p034j$.util.InterfaceC2625s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2552a.m621e(this);
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2552a.m620f(this, i);
        }

        @Override // p034j$.util.InterfaceC2625s
        public InterfaceC2625s trySplit() {
            int i = this.f608f;
            int i2 = this.f609g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2566l[] c2566lArr = this.f603a;
            int i4 = this.f610h;
            this.f609g = i3;
            long j = this.f591i >>> 1;
            this.f591i = j;
            return new C2564j(c2566lArr, i4, i3, i2, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$k */
    /* loaded from: classes2.dex */
    public static final class C2565k implements Map.Entry {

        /* renamed from: a */
        final Object f592a;

        /* renamed from: b */
        Object f593b;

        /* renamed from: c */
        final ConcurrentHashMap f594c;

        C2565k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
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
    public static class C2566l implements Map.Entry {

        /* renamed from: a */
        final int f595a;

        /* renamed from: b */
        final Object f596b;

        /* renamed from: c */
        volatile Object f597c;

        /* renamed from: d */
        volatile C2566l f598d;

        C2566l(int i, Object obj, Object obj2, C2566l c2566l) {
            this.f595a = i;
            this.f596b = obj;
            this.f597c = obj2;
            this.f598d = c2566l;
        }

        /* renamed from: a */
        C2566l mo572a(int i, Object obj) {
            Object obj2;
            C2566l c2566l = this;
            do {
                if (c2566l.f595a == i && ((obj2 = c2566l.f596b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return c2566l;
                }
                c2566l = c2566l.f598d;
            } while (c2566l != null);
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
    public static final class C2567m extends C2566l {
        C2567m() {
            super(-3, null, null, null);
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2566l
        /* renamed from: a */
        C2566l mo572a(int i, Object obj) {
            return null;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$n */
    /* loaded from: classes2.dex */
    static class C2568n extends ReentrantLock {
        C2568n(float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$o */
    /* loaded from: classes2.dex */
    public static final class C2569o {

        /* renamed from: a */
        int f599a;

        /* renamed from: b */
        int f600b;

        /* renamed from: c */
        C2566l[] f601c;

        /* renamed from: d */
        C2569o f602d;

        C2569o() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$p */
    /* loaded from: classes2.dex */
    public static class C2570p {

        /* renamed from: a */
        C2566l[] f603a;

        /* renamed from: b */
        C2566l f604b = null;

        /* renamed from: c */
        C2569o f605c;

        /* renamed from: d */
        C2569o f606d;

        /* renamed from: e */
        int f607e;

        /* renamed from: f */
        int f608f;

        /* renamed from: g */
        int f609g;

        /* renamed from: h */
        final int f610h;

        C2570p(C2566l[] c2566lArr, int i, int i2, int i3) {
            this.f603a = c2566lArr;
            this.f610h = i;
            this.f607e = i2;
            this.f608f = i2;
            this.f609g = i3;
        }

        /* renamed from: a */
        final C2566l m582a() {
            C2566l[] c2566lArr;
            int length;
            int i;
            C2569o c2569o;
            C2566l c2566l = this.f604b;
            if (c2566l != null) {
                c2566l = c2566l.f598d;
            }
            while (c2566l == null) {
                if (this.f608f >= this.f609g || (c2566lArr = this.f603a) == null || (length = c2566lArr.length) <= (i = this.f607e) || i < 0) {
                    this.f604b = null;
                    return null;
                }
                C2566l m589n = ConcurrentHashMap.m589n(c2566lArr, i);
                if (m589n == null || m589n.f595a >= 0) {
                    c2566l = m589n;
                } else if (m589n instanceof C2561g) {
                    this.f603a = ((C2561g) m589n).f590e;
                    C2569o c2569o2 = this.f606d;
                    if (c2569o2 != null) {
                        this.f606d = c2569o2.f602d;
                    } else {
                        c2569o2 = new C2569o();
                    }
                    c2569o2.f601c = c2566lArr;
                    c2569o2.f599a = length;
                    c2569o2.f600b = i;
                    c2569o2.f602d = this.f605c;
                    this.f605c = c2569o2;
                    c2566l = null;
                } else {
                    c2566l = m589n instanceof C2571q ? ((C2571q) m589n).f614f : null;
                }
                if (this.f605c != null) {
                    while (true) {
                        c2569o = this.f605c;
                        if (c2569o == null) {
                            break;
                        }
                        int i2 = this.f607e;
                        int i3 = c2569o.f599a;
                        int i4 = i2 + i3;
                        this.f607e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.f607e = c2569o.f600b;
                        this.f603a = c2569o.f601c;
                        c2569o.f601c = null;
                        C2569o c2569o3 = c2569o.f602d;
                        c2569o.f602d = this.f606d;
                        this.f605c = c2569o3;
                        this.f606d = c2569o;
                        length = i3;
                    }
                    if (c2569o == null) {
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
            this.f604b = c2566l;
            return c2566l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$q */
    /* loaded from: classes2.dex */
    public static final class C2571q extends C2566l {

        /* renamed from: h */
        private static final Unsafe f611h;

        /* renamed from: i */
        private static final long f612i;

        /* renamed from: e */
        C2572r f613e;

        /* renamed from: f */
        volatile C2572r f614f;

        /* renamed from: g */
        volatile Thread f615g;
        volatile int lockState;

        static {
            try {
                Unsafe m555c = AbstractC2582c.m555c();
                f611h = m555c;
                f612i = m555c.objectFieldOffset(C2571q.class.getDeclaredField("lockState"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        C2571q(C2572r c2572r) {
            super(-2, null, null, null);
            int m599d;
            int m573j;
            this.f614f = c2572r;
            C2572r c2572r2 = null;
            while (c2572r != null) {
                C2572r c2572r3 = (C2572r) c2572r.f598d;
                c2572r.f618g = null;
                c2572r.f617f = null;
                if (c2572r2 == null) {
                    c2572r.f616e = null;
                    c2572r.f620i = false;
                } else {
                    Object obj = c2572r.f596b;
                    int i = c2572r.f595a;
                    C2572r c2572r4 = c2572r2;
                    Class cls = null;
                    while (true) {
                        Object obj2 = c2572r4.f596b;
                        int i2 = c2572r4.f595a;
                        m573j = i2 > i ? -1 : i2 < i ? 1 : ((cls == null && (cls = ConcurrentHashMap.m600c(obj)) == null) || (m599d = ConcurrentHashMap.m599d(cls, obj, obj2)) == 0) ? m573j(obj, obj2) : m599d;
                        C2572r c2572r5 = m573j <= 0 ? c2572r4.f617f : c2572r4.f618g;
                        if (c2572r5 == null) {
                            break;
                        }
                        c2572r4 = c2572r5;
                    }
                    c2572r.f616e = c2572r4;
                    if (m573j <= 0) {
                        c2572r4.f617f = c2572r;
                    } else {
                        c2572r4.f618g = c2572r;
                    }
                    c2572r = m580c(c2572r2, c2572r);
                }
                c2572r2 = c2572r;
                c2572r = c2572r3;
            }
            this.f613e = c2572r2;
        }

        /* renamed from: b */
        static C2572r m581b(C2572r c2572r, C2572r c2572r2) {
            while (c2572r2 != null && c2572r2 != c2572r) {
                C2572r c2572r3 = c2572r2.f616e;
                if (c2572r3 == null) {
                    c2572r2.f620i = false;
                    return c2572r2;
                } else if (c2572r2.f620i) {
                    c2572r2.f620i = false;
                    return c2572r;
                } else {
                    C2572r c2572r4 = c2572r3.f617f;
                    C2572r c2572r5 = null;
                    if (c2572r4 == c2572r2) {
                        c2572r4 = c2572r3.f618g;
                        if (c2572r4 != null && c2572r4.f620i) {
                            c2572r4.f620i = false;
                            c2572r3.f620i = true;
                            c2572r = m575h(c2572r, c2572r3);
                            c2572r3 = c2572r2.f616e;
                            c2572r4 = c2572r3 == null ? null : c2572r3.f618g;
                        }
                        if (c2572r4 == null) {
                            c2572r2 = c2572r3;
                        } else {
                            C2572r c2572r6 = c2572r4.f617f;
                            C2572r c2572r7 = c2572r4.f618g;
                            if ((c2572r7 != null && c2572r7.f620i) || (c2572r6 != null && c2572r6.f620i)) {
                                if (c2572r7 == null || !c2572r7.f620i) {
                                    if (c2572r6 != null) {
                                        c2572r6.f620i = false;
                                    }
                                    c2572r4.f620i = true;
                                    c2572r = m574i(c2572r, c2572r4);
                                    c2572r3 = c2572r2.f616e;
                                    if (c2572r3 != null) {
                                        c2572r5 = c2572r3.f618g;
                                    }
                                } else {
                                    c2572r5 = c2572r4;
                                }
                                if (c2572r5 != null) {
                                    c2572r5.f620i = c2572r3 == null ? false : c2572r3.f620i;
                                    C2572r c2572r8 = c2572r5.f618g;
                                    if (c2572r8 != null) {
                                        c2572r8.f620i = false;
                                    }
                                }
                                if (c2572r3 != null) {
                                    c2572r3.f620i = false;
                                    c2572r = m575h(c2572r, c2572r3);
                                }
                                c2572r2 = c2572r;
                                c2572r = c2572r2;
                            }
                            c2572r4.f620i = true;
                            c2572r2 = c2572r3;
                        }
                    } else {
                        if (c2572r4 != null && c2572r4.f620i) {
                            c2572r4.f620i = false;
                            c2572r3.f620i = true;
                            c2572r = m574i(c2572r, c2572r3);
                            c2572r3 = c2572r2.f616e;
                            c2572r4 = c2572r3 == null ? null : c2572r3.f617f;
                        }
                        if (c2572r4 == null) {
                            c2572r2 = c2572r3;
                        } else {
                            C2572r c2572r9 = c2572r4.f617f;
                            C2572r c2572r10 = c2572r4.f618g;
                            if ((c2572r9 != null && c2572r9.f620i) || (c2572r10 != null && c2572r10.f620i)) {
                                if (c2572r9 == null || !c2572r9.f620i) {
                                    if (c2572r10 != null) {
                                        c2572r10.f620i = false;
                                    }
                                    c2572r4.f620i = true;
                                    c2572r = m575h(c2572r, c2572r4);
                                    c2572r3 = c2572r2.f616e;
                                    if (c2572r3 != null) {
                                        c2572r5 = c2572r3.f617f;
                                    }
                                } else {
                                    c2572r5 = c2572r4;
                                }
                                if (c2572r5 != null) {
                                    c2572r5.f620i = c2572r3 == null ? false : c2572r3.f620i;
                                    C2572r c2572r11 = c2572r5.f617f;
                                    if (c2572r11 != null) {
                                        c2572r11.f620i = false;
                                    }
                                }
                                if (c2572r3 != null) {
                                    c2572r3.f620i = false;
                                    c2572r = m574i(c2572r, c2572r3);
                                }
                                c2572r2 = c2572r;
                                c2572r = c2572r2;
                            }
                            c2572r4.f620i = true;
                            c2572r2 = c2572r3;
                        }
                    }
                }
            }
            return c2572r;
        }

        /* renamed from: c */
        static C2572r m580c(C2572r c2572r, C2572r c2572r2) {
            C2572r c2572r3;
            c2572r2.f620i = true;
            while (true) {
                C2572r c2572r4 = c2572r2.f616e;
                if (c2572r4 == null) {
                    c2572r2.f620i = false;
                    return c2572r2;
                } else if (!c2572r4.f620i || (c2572r3 = c2572r4.f616e) == null) {
                    break;
                } else {
                    C2572r c2572r5 = c2572r3.f617f;
                    if (c2572r4 == c2572r5) {
                        c2572r5 = c2572r3.f618g;
                        if (c2572r5 == null || !c2572r5.f620i) {
                            if (c2572r2 == c2572r4.f618g) {
                                c2572r = m575h(c2572r, c2572r4);
                                C2572r c2572r6 = c2572r4.f616e;
                                c2572r3 = c2572r6 == null ? null : c2572r6.f616e;
                                c2572r4 = c2572r6;
                                c2572r2 = c2572r4;
                            }
                            if (c2572r4 != null) {
                                c2572r4.f620i = false;
                                if (c2572r3 != null) {
                                    c2572r3.f620i = true;
                                    c2572r = m574i(c2572r, c2572r3);
                                }
                            }
                        } else {
                            c2572r5.f620i = false;
                            c2572r4.f620i = false;
                            c2572r3.f620i = true;
                            c2572r2 = c2572r3;
                        }
                    } else if (c2572r5 == null || !c2572r5.f620i) {
                        if (c2572r2 == c2572r4.f617f) {
                            c2572r = m574i(c2572r, c2572r4);
                            C2572r c2572r7 = c2572r4.f616e;
                            c2572r3 = c2572r7 == null ? null : c2572r7.f616e;
                            c2572r4 = c2572r7;
                            c2572r2 = c2572r4;
                        }
                        if (c2572r4 != null) {
                            c2572r4.f620i = false;
                            if (c2572r3 != null) {
                                c2572r3.f620i = true;
                                c2572r = m575h(c2572r, c2572r3);
                            }
                        }
                    } else {
                        c2572r5.f620i = false;
                        c2572r4.f620i = false;
                        c2572r3.f620i = true;
                        c2572r2 = c2572r3;
                    }
                }
            }
            return c2572r;
        }

        /* renamed from: d */
        private final void m579d() {
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
        private final void m578e() {
            if (f611h.compareAndSwapInt(this, f612i, 0, 1)) {
                return;
            }
            m579d();
        }

        /* renamed from: h */
        static C2572r m575h(C2572r c2572r, C2572r c2572r2) {
            C2572r c2572r3 = c2572r2.f618g;
            if (c2572r3 != null) {
                C2572r c2572r4 = c2572r3.f617f;
                c2572r2.f618g = c2572r4;
                if (c2572r4 != null) {
                    c2572r4.f616e = c2572r2;
                }
                C2572r c2572r5 = c2572r2.f616e;
                c2572r3.f616e = c2572r5;
                if (c2572r5 == null) {
                    c2572r3.f620i = false;
                    c2572r = c2572r3;
                } else if (c2572r5.f617f == c2572r2) {
                    c2572r5.f617f = c2572r3;
                } else {
                    c2572r5.f618g = c2572r3;
                }
                c2572r3.f617f = c2572r2;
                c2572r2.f616e = c2572r3;
            }
            return c2572r;
        }

        /* renamed from: i */
        static C2572r m574i(C2572r c2572r, C2572r c2572r2) {
            C2572r c2572r3 = c2572r2.f617f;
            if (c2572r3 != null) {
                C2572r c2572r4 = c2572r3.f618g;
                c2572r2.f617f = c2572r4;
                if (c2572r4 != null) {
                    c2572r4.f616e = c2572r2;
                }
                C2572r c2572r5 = c2572r2.f616e;
                c2572r3.f616e = c2572r5;
                if (c2572r5 == null) {
                    c2572r3.f620i = false;
                    c2572r = c2572r3;
                } else if (c2572r5.f618g == c2572r2) {
                    c2572r5.f618g = c2572r3;
                } else {
                    c2572r5.f617f = c2572r3;
                }
                c2572r3.f618g = c2572r2;
                c2572r2.f616e = c2572r3;
            }
            return c2572r;
        }

        /* renamed from: j */
        static int m573j(Object obj, Object obj2) {
            int compareTo;
            return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2566l
        /* renamed from: a */
        final C2566l mo572a(int i, Object obj) {
            Object obj2;
            Thread thread;
            Thread thread2;
            C2566l c2566l = this.f614f;
            while (true) {
                C2572r c2572r = null;
                if (c2566l == null) {
                    return null;
                }
                int i2 = this.lockState;
                if ((i2 & 3) == 0) {
                    Unsafe unsafe = f611h;
                    long j = f612i;
                    if (unsafe.compareAndSwapInt(this, j, i2, i2 + 4)) {
                        try {
                            C2572r c2572r2 = this.f613e;
                            if (c2572r2 != null) {
                                c2572r = c2572r2.m571b(i, obj, null);
                            }
                            if (AbstractC2582c.m557a(unsafe, this, j, -4) == 6 && (thread2 = this.f615g) != null) {
                                LockSupport.unpark(thread2);
                            }
                            return c2572r;
                        } catch (Throwable th) {
                            if (AbstractC2582c.m557a(f611h, this, f612i, -4) == 6 && (thread = this.f615g) != null) {
                                LockSupport.unpark(thread);
                            }
                            throw th;
                        }
                    }
                } else if (c2566l.f595a != i || ((obj2 = c2566l.f596b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                    c2566l = c2566l.f598d;
                }
            }
            return c2566l;
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
        final p034j$.util.concurrent.ConcurrentHashMap.C2572r m577f(int r16, java.lang.Object r17, java.lang.Object r18) {
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
                java.lang.Class r2 = p034j$.util.concurrent.ConcurrentHashMap.m600c(r17)
                if (r2 == 0) goto L4a
            L44:
                int r6 = p034j$.util.concurrent.ConcurrentHashMap.m599d(r2, r4, r5)
                if (r6 != 0) goto L67
            L4a:
                if (r3 != 0) goto L62
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f617f
                if (r3 == 0) goto L56
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m571b(r0, r4, r2)
                if (r3 != 0) goto L60
            L56:
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f618g
                if (r3 == 0) goto L61
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m571b(r0, r4, r2)
                if (r3 == 0) goto L61
            L60:
                return r3
            L61:
                r3 = r11
            L62:
                int r5 = m573j(r4, r5)
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
                r15.m578e()
                j$.util.concurrent.ConcurrentHashMap$r r0 = r1.f613e     // Catch: java.lang.Throwable -> La3
                j$.util.concurrent.ConcurrentHashMap$r r0 = m580c(r0, r14)     // Catch: java.lang.Throwable -> La3
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
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2571q.m577f(int, java.lang.Object, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$r");
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
        final boolean m576g(p034j$.util.concurrent.ConcurrentHashMap.C2572r r11) {
            /*
                Method dump skipped, instructions count: 205
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2571q.m576g(j$.util.concurrent.ConcurrentHashMap$r):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$r */
    /* loaded from: classes2.dex */
    public static final class C2572r extends C2566l {

        /* renamed from: e */
        C2572r f616e;

        /* renamed from: f */
        C2572r f617f;

        /* renamed from: g */
        C2572r f618g;

        /* renamed from: h */
        C2572r f619h;

        /* renamed from: i */
        boolean f620i;

        C2572r(int i, Object obj, Object obj2, C2566l c2566l, C2572r c2572r) {
            super(i, obj, obj2, c2566l);
            this.f616e = c2572r;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2566l
        /* renamed from: a */
        C2566l mo572a(int i, Object obj) {
            return m571b(i, obj, null);
        }

        /* renamed from: b */
        final C2572r m571b(int i, Object obj, Class cls) {
            int m599d;
            if (obj != null) {
                C2572r c2572r = this;
                do {
                    C2572r c2572r2 = c2572r.f617f;
                    C2572r c2572r3 = c2572r.f618g;
                    int i2 = c2572r.f595a;
                    if (i2 <= i) {
                        if (i2 >= i) {
                            Object obj2 = c2572r.f596b;
                            if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                                return c2572r;
                            }
                            if (c2572r2 != null) {
                                if (c2572r3 != null) {
                                    if ((cls == null && (cls = ConcurrentHashMap.m600c(obj)) == null) || (m599d = ConcurrentHashMap.m599d(cls, obj, obj2)) == 0) {
                                        C2572r m571b = c2572r3.m571b(i, obj, cls);
                                        if (m571b != null) {
                                            return m571b;
                                        }
                                    } else if (m599d >= 0) {
                                        c2572r2 = c2572r3;
                                    }
                                }
                            }
                        }
                        c2572r = c2572r3;
                        continue;
                    }
                    c2572r = c2572r2;
                    continue;
                } while (c2572r != null);
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$s */
    /* loaded from: classes2.dex */
    public static final class C2573s extends C2555a implements java.util.Iterator, Enumeration, p034j$.util.Iterator {
        C2573s(C2566l[] c2566lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2566lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3023w.m108b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public final Object next() {
            C2566l c2566l = this.f604b;
            if (c2566l != null) {
                Object obj = c2566l.f597c;
                this.f586j = c2566l;
                m582a();
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
    public static final class C2574t extends C2570p implements InterfaceC2625s {

        /* renamed from: i */
        long f621i;

        C2574t(C2566l[] c2566lArr, int i, int i2, int i3, long j) {
            super(c2566lArr, i, i2, i3);
            this.f621i = j;
        }

        @Override // p034j$.util.InterfaceC2625s
        /* renamed from: b */
        public boolean mo127b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2566l m582a = m582a();
            if (m582a == null) {
                return false;
            }
            consumer.accept(m582a.f597c);
            return true;
        }

        @Override // p034j$.util.InterfaceC2625s
        public int characteristics() {
            return 4352;
        }

        @Override // p034j$.util.InterfaceC2625s
        public long estimateSize() {
            return this.f621i;
        }

        @Override // p034j$.util.InterfaceC2625s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2566l m582a = m582a();
                if (m582a == null) {
                    return;
                }
                consumer.accept(m582a.f597c);
            }
        }

        @Override // p034j$.util.InterfaceC2625s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2552a.m621e(this);
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2552a.m620f(this, i);
        }

        @Override // p034j$.util.InterfaceC2625s
        public InterfaceC2625s trySplit() {
            int i = this.f608f;
            int i2 = this.f609g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2566l[] c2566lArr = this.f603a;
            int i4 = this.f610h;
            this.f609g = i3;
            long j = this.f621i >>> 1;
            this.f621i = j;
            return new C2574t(c2566lArr, i4, i3, i2, j);
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$u */
    /* loaded from: classes2.dex */
    static final class C2575u extends AbstractC2556b implements InterfaceC2553b {
        C2575u(ConcurrentHashMap concurrentHashMap) {
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2556b, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f587a.containsValue(obj);
        }

        @Override // p034j$.util.InterfaceC2553b, p034j$.lang.InterfaceC2499e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2566l[] c2566lArr = this.f587a.f579a;
            if (c2566lArr == null) {
                return;
            }
            C2570p c2570p = new C2570p(c2566lArr, c2566lArr.length, 0, c2566lArr.length);
            while (true) {
                C2566l m582a = c2570p.m582a();
                if (m582a == null) {
                    return;
                }
                consumer.accept(m582a.f597c);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3023w.m108b(consumer));
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2556b, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            C2566l[] c2566lArr = concurrentHashMap.f579a;
            int length = c2566lArr == null ? 0 : c2566lArr.length;
            return new C2573s(c2566lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2553b
        /* renamed from: k */
        public /* synthetic */ boolean mo570k(Predicate predicate) {
            return AbstractC2552a.m618h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C2968O0.m181n0(AbstractC2552a.m619g(this));
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            C2555a c2555a;
            if (obj != null) {
                java.util.Iterator it = iterator();
                do {
                    c2555a = (C2555a) it;
                    if (!c2555a.hasNext()) {
                        return false;
                    }
                } while (!obj.equals(((C2573s) it).next()));
                c2555a.remove();
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2552a.m618h(this, C3024w0.m107a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, p034j$.util.InterfaceC2553b, p034j$.lang.InterfaceC2499e
        public InterfaceC2625s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f587a;
            long m590m = concurrentHashMap.m590m();
            C2566l[] c2566lArr = concurrentHashMap.f579a;
            int length = c2566lArr == null ? 0 : c2566lArr.length;
            return new C2574t(c2566lArr, length, 0, length, m590m >= 0 ? m590m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable
        public /* synthetic */ Spliterator spliterator() {
            return C2993h.m149a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2553b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2552a.m617i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C2968O0.m181n0(AbstractC2552a.m617i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C2971S.m177a(intFunction).apply(0));
        }
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", C2568n[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        try {
            Unsafe m555c = AbstractC2582c.m555c();
            f571h = m555c;
            f572i = m555c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("sizeCtl"));
            f573j = m555c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("transferIndex"));
            f574k = m555c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("baseCount"));
            f575l = m555c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("cellsBusy"));
            f576m = m555c.objectFieldOffset(C2557c.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
            f577n = m555c.arrayBaseOffset(C2566l[].class);
            int arrayIndexScale = m555c.arrayIndexScale(C2566l[].class);
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
        this.sizeCtl = i >= 536870912 ? 1073741824 : m588o(i + (i >>> 1) + 1);
    }

    public ConcurrentHashMap(int i, float f, int i2) {
        if (f <= BitmapDescriptorFactory.HUE_RED || i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        long j = (long) (((i < i2 ? i2 : i) / f) + 1.0d);
        this.sizeCtl = j >= 1073741824 ? 1073741824 : m588o((int) j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r1.compareAndSwapLong(r11, r3, r5, r9) == false) goto L53;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m602a(long r12, int r14) {
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
            int r3 = p034j$.util.concurrent.ThreadLocalRandom.m568b()
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
            long r9 = r11.m590m()
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
            int r13 = m593j(r13)
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
            r11.m587p(r12, r13)
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
            r11.m587p(r12, r13)
        L8e:
            long r9 = r11.m590m()
            goto L3d
        L93:
            return
        L94:
            r11.m598e(r12, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m602a(long, int):void");
    }

    /* renamed from: b */
    static final boolean m601b(C2566l[] c2566lArr, int i, C2566l c2566l, C2566l c2566l2) {
        return f571h.compareAndSwapObject(c2566lArr, (i << f578o) + f577n, (Object) null, c2566l2);
    }

    /* renamed from: c */
    static Class m600c(Object obj) {
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
    static int m599d(Class cls, Object obj, Object obj2) {
        if (obj2 == null || obj2.getClass() != cls) {
            return 0;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x009b, code lost:
        if (r24.f581c != r7) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009d, code lost:
        r1 = new p034j$.util.concurrent.ConcurrentHashMap.C2557c[r8 << 1];
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
    private final void m598e(long r25, boolean r27) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m598e(long, boolean):void");
    }

    /* renamed from: g */
    private final C2566l[] m596g() {
        while (true) {
            C2566l[] c2566lArr = this.f579a;
            if (c2566lArr != null && c2566lArr.length != 0) {
                return c2566lArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (f571h.compareAndSwapInt(this, f572i, i, -1)) {
                try {
                    C2566l[] c2566lArr2 = this.f579a;
                    if (c2566lArr2 == null || c2566lArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        C2566l[] c2566lArr3 = new C2566l[i2];
                        this.f579a = c2566lArr3;
                        i = i2 - (i2 >>> 2);
                        c2566lArr2 = c2566lArr3;
                    }
                    this.sizeCtl = i;
                    return c2566lArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* renamed from: j */
    static final int m593j(int i) {
        return Integer.numberOfLeadingZeros(i) | LiteMode.FLAG_CHAT_SCALE;
    }

    /* renamed from: k */
    static final void m592k(C2566l[] c2566lArr, int i, C2566l c2566l) {
        f571h.putObjectVolatile(c2566lArr, (i << f578o) + f577n, c2566l);
    }

    /* renamed from: l */
    static final int m591l(int i) {
        return (i ^ (i >>> 16)) & Integer.MAX_VALUE;
    }

    /* renamed from: n */
    static final C2566l m589n(C2566l[] c2566lArr, int i) {
        return (C2566l) f571h.getObjectVolatile(c2566lArr, (i << f578o) + f577n);
    }

    /* renamed from: o */
    private static final int m588o(int i) {
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
    private final void m587p(C2566l[] c2566lArr, C2566l[] c2566lArr2) {
        C2566l[] c2566lArr3;
        int i;
        C2566l[] c2566lArr4;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        C2561g c2561g;
        C2572r c2572r;
        int i7;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = c2566lArr.length;
        int i8 = f570g;
        boolean z = true;
        int i9 = i8 > 1 ? (length >>> 3) / i8 : length;
        int i10 = i9 < 16 ? 16 : i9;
        if (c2566lArr2 == null) {
            try {
                C2566l[] c2566lArr5 = new C2566l[length << 1];
                concurrentHashMap.f580b = c2566lArr5;
                concurrentHashMap.transferIndex = length;
                c2566lArr3 = c2566lArr5;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            c2566lArr3 = c2566lArr2;
        }
        int length2 = c2566lArr3.length;
        C2561g c2561g2 = new C2561g(c2566lArr3);
        int i11 = -1;
        C2566l[] c2566lArr6 = c2566lArr;
        boolean z2 = true;
        int i12 = 0;
        int i13 = 0;
        boolean z3 = false;
        while (true) {
            if (z2) {
                int i14 = i12 - 1;
                if (i14 >= i13 || z3) {
                    i = i14;
                    c2566lArr4 = c2566lArr6;
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
                        c2566lArr4 = c2566lArr6;
                        i2 = i13;
                        i3 = i11;
                        if (unsafe.compareAndSwapInt(this, j, i15, i16)) {
                            i12 = i15 - 1;
                            i11 = i3;
                            c2566lArr6 = c2566lArr4;
                            i13 = i16;
                        }
                    }
                    z2 = false;
                }
                i11 = i3;
                c2566lArr6 = c2566lArr4;
                i13 = i2;
                i12 = i;
            } else {
                C2566l[] c2566lArr7 = c2566lArr6;
                int i17 = i13;
                int i18 = i11;
                C2572r c2572r2 = null;
                if (i12 < 0 || i12 >= length || (i4 = i12 + length) >= length2) {
                    int i19 = i10;
                    int i20 = length2;
                    C2561g c2561g3 = c2561g2;
                    if (z3) {
                        this.f580b = null;
                        this.f579a = c2566lArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    Unsafe unsafe2 = f571h;
                    long j2 = f572i;
                    int i21 = this.sizeCtl;
                    int i22 = i12;
                    if (!unsafe2.compareAndSwapInt(this, j2, i21, i21 - 1)) {
                        c2561g2 = c2561g3;
                        concurrentHashMap = this;
                        z = true;
                        i12 = i22;
                        c2566lArr6 = c2566lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    } else if (i21 - 2 != (m593j(length) << 16)) {
                        return;
                    } else {
                        c2561g2 = c2561g3;
                        i12 = length;
                        concurrentHashMap = this;
                        z = true;
                        z2 = true;
                        z3 = true;
                        c2566lArr6 = c2566lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    }
                } else {
                    C2566l m589n = m589n(c2566lArr7, i12);
                    if (m589n == null) {
                        z2 = m601b(c2566lArr7, i12, null, c2561g2);
                    } else {
                        int i23 = m589n.f595a;
                        if (i23 == i18) {
                            z2 = z;
                        } else {
                            synchronized (m589n) {
                                if (m589n(c2566lArr7, i12) == m589n) {
                                    if (i23 >= 0) {
                                        int i24 = i23 & length;
                                        C2572r c2572r3 = m589n;
                                        for (C2572r c2572r4 = m589n.f598d; c2572r4 != null; c2572r4 = c2572r4.f598d) {
                                            int i25 = c2572r4.f595a & length;
                                            if (i25 != i24) {
                                                c2572r3 = c2572r4;
                                                i24 = i25;
                                            }
                                        }
                                        if (i24 == 0) {
                                            c2572r = null;
                                            c2572r2 = c2572r3;
                                        } else {
                                            c2572r = c2572r3;
                                        }
                                        C2566l c2566l = m589n;
                                        while (c2566l != c2572r3) {
                                            int i26 = c2566l.f595a;
                                            C2572r c2572r5 = c2572r3;
                                            Object obj = c2566l.f596b;
                                            int i27 = i10;
                                            Object obj2 = c2566l.f597c;
                                            if ((i26 & length) == 0) {
                                                i7 = length2;
                                                c2572r2 = new C2566l(i26, obj, obj2, c2572r2);
                                            } else {
                                                i7 = length2;
                                                c2572r = new C2566l(i26, obj, obj2, c2572r);
                                            }
                                            c2566l = c2566l.f598d;
                                            c2572r3 = c2572r5;
                                            i10 = i27;
                                            length2 = i7;
                                        }
                                        i5 = i10;
                                        i6 = length2;
                                        m592k(c2566lArr3, i12, c2572r2);
                                        m592k(c2566lArr3, i4, c2572r);
                                        m592k(c2566lArr7, i12, c2561g2);
                                        c2561g = c2561g2;
                                    } else {
                                        i5 = i10;
                                        i6 = length2;
                                        if (m589n instanceof C2571q) {
                                            C2571q c2571q = (C2571q) m589n;
                                            C2572r c2572r6 = null;
                                            C2572r c2572r7 = null;
                                            C2566l c2566l2 = c2571q.f614f;
                                            int i28 = 0;
                                            int i29 = 0;
                                            C2572r c2572r8 = null;
                                            while (c2566l2 != null) {
                                                C2571q c2571q2 = c2571q;
                                                int i30 = c2566l2.f595a;
                                                C2561g c2561g4 = c2561g2;
                                                C2572r c2572r9 = new C2572r(i30, c2566l2.f596b, c2566l2.f597c, null, null);
                                                if ((i30 & length) == 0) {
                                                    c2572r9.f619h = c2572r7;
                                                    if (c2572r7 == null) {
                                                        c2572r2 = c2572r9;
                                                    } else {
                                                        c2572r7.f598d = c2572r9;
                                                    }
                                                    i28++;
                                                    c2572r7 = c2572r9;
                                                } else {
                                                    c2572r9.f619h = c2572r6;
                                                    if (c2572r6 == null) {
                                                        c2572r8 = c2572r9;
                                                    } else {
                                                        c2572r6.f598d = c2572r9;
                                                    }
                                                    i29++;
                                                    c2572r6 = c2572r9;
                                                }
                                                c2566l2 = c2566l2.f598d;
                                                c2571q = c2571q2;
                                                c2561g2 = c2561g4;
                                            }
                                            C2571q c2571q3 = c2571q;
                                            C2561g c2561g5 = c2561g2;
                                            C2566l m584s = i28 <= 6 ? m584s(c2572r2) : i29 != 0 ? new C2571q(c2572r2) : c2571q3;
                                            C2566l m584s2 = i29 <= 6 ? m584s(c2572r8) : i28 != 0 ? new C2571q(c2572r8) : c2571q3;
                                            m592k(c2566lArr3, i12, m584s);
                                            m592k(c2566lArr3, i4, m584s2);
                                            c2561g = c2561g5;
                                            m592k(c2566lArr, i12, c2561g);
                                            c2566lArr7 = c2566lArr;
                                        }
                                    }
                                    z2 = true;
                                } else {
                                    i5 = i10;
                                    i6 = length2;
                                }
                                c2561g = c2561g2;
                            }
                            i11 = -1;
                            c2561g2 = c2561g;
                            c2566lArr6 = c2566lArr7;
                            i13 = i17;
                            i10 = i5;
                            length2 = i6;
                            z = true;
                            concurrentHashMap = this;
                        }
                    }
                    i11 = i18;
                    c2566lArr6 = c2566lArr7;
                    i13 = i17;
                }
            }
        }
    }

    /* renamed from: q */
    private final void m586q(C2566l[] c2566lArr, int i) {
        int length = c2566lArr.length;
        if (length < 64) {
            m585r(length << 1);
            return;
        }
        C2566l m589n = m589n(c2566lArr, i);
        if (m589n == null || m589n.f595a < 0) {
            return;
        }
        synchronized (m589n) {
            if (m589n(c2566lArr, i) == m589n) {
                C2572r c2572r = null;
                C2566l c2566l = m589n;
                C2572r c2572r2 = null;
                while (c2566l != null) {
                    C2572r c2572r3 = new C2572r(c2566l.f595a, c2566l.f596b, c2566l.f597c, null, null);
                    c2572r3.f619h = c2572r2;
                    if (c2572r2 == null) {
                        c2572r = c2572r3;
                    } else {
                        c2572r2.f598d = c2572r3;
                    }
                    c2566l = c2566l.f598d;
                    c2572r2 = c2572r3;
                }
                m592k(c2566lArr, i, new C2571q(c2572r));
            }
        }
    }

    /* renamed from: r */
    private final void m585r(int i) {
        int length;
        C2566l[] c2566lArr;
        int m588o = i >= 536870912 ? 1073741824 : m588o(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                return;
            }
            C2566l[] c2566lArr2 = this.f579a;
            if (c2566lArr2 == null || (length = c2566lArr2.length) == 0) {
                int i3 = i2 > m588o ? i2 : m588o;
                if (f571h.compareAndSwapInt(this, f572i, i2, -1)) {
                    try {
                        if (this.f579a == c2566lArr2) {
                            this.f579a = new C2566l[i3];
                            i2 = i3 - (i3 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i2;
                    }
                } else {
                    continue;
                }
            } else if (m588o <= i2 || length >= 1073741824) {
                return;
            } else {
                if (c2566lArr2 == this.f579a) {
                    int m593j = m593j(length);
                    if (i2 < 0) {
                        if ((i2 >>> 16) != m593j || i2 == m593j + 1 || i2 == m593j + RtpPacket.MAX_SEQUENCE_NUMBER || (c2566lArr = this.f580b) == null || this.transferIndex <= 0) {
                            return;
                        }
                        if (f571h.compareAndSwapInt(this, f572i, i2, i2 + 1)) {
                            m587p(c2566lArr2, c2566lArr);
                        }
                    } else if (f571h.compareAndSwapInt(this, f572i, i2, (m593j << 16) + 2)) {
                        m587p(c2566lArr2, null);
                    }
                } else {
                    continue;
                }
            }
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        long j;
        int m588o;
        boolean z;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j2 = 0;
        long j3 = 0;
        C2566l c2566l = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j3++;
            c2566l = new C2566l(m591l(readObject.hashCode()), readObject, readObject2, c2566l);
        }
        if (j3 == 0) {
            this.sizeCtl = 0;
            return;
        }
        boolean z2 = true;
        if (j3 >= 536870912) {
            m588o = 1073741824;
        } else {
            int i = (int) j3;
            m588o = m588o(i + (i >>> 1) + 1);
        }
        C2566l[] c2566lArr = new C2566l[m588o];
        int i2 = m588o - 1;
        while (c2566l != null) {
            C2566l c2566l2 = c2566l.f598d;
            int i3 = c2566l.f595a;
            int i4 = i3 & i2;
            C2566l m589n = m589n(c2566lArr, i4);
            if (m589n == null) {
                z = z2;
            } else {
                Object obj2 = c2566l.f596b;
                if (m589n.f595a >= 0) {
                    int i5 = 0;
                    for (C2566l c2566l3 = m589n; c2566l3 != null; c2566l3 = c2566l3.f598d) {
                        if (c2566l3.f595a == i3 && ((obj = c2566l3.f596b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i5++;
                    }
                    z = true;
                    if (z && i5 >= 8) {
                        j2++;
                        c2566l.f598d = m589n;
                        C2566l c2566l4 = c2566l;
                        C2572r c2572r = null;
                        C2572r c2572r2 = null;
                        while (c2566l4 != null) {
                            long j4 = j2;
                            C2572r c2572r3 = new C2572r(c2566l4.f595a, c2566l4.f596b, c2566l4.f597c, null, null);
                            c2572r3.f619h = c2572r2;
                            if (c2572r2 == null) {
                                c2572r = c2572r3;
                            } else {
                                c2572r2.f598d = c2572r3;
                            }
                            c2566l4 = c2566l4.f598d;
                            c2572r2 = c2572r3;
                            j2 = j4;
                        }
                        m592k(c2566lArr, i4, new C2571q(c2572r));
                    }
                } else if (((C2571q) m589n).m577f(i3, obj2, c2566l.f597c) == null) {
                    j2 += j;
                }
                z = false;
            }
            if (z) {
                j2++;
                c2566l.f598d = m589n;
                m592k(c2566lArr, i4, c2566l);
            }
            j = 1;
            c2566l = c2566l2;
            z2 = true;
        }
        this.f579a = c2566lArr;
        this.sizeCtl = m588o - (m588o >>> 2);
        this.baseCount = j2;
    }

    /* renamed from: s */
    static C2566l m584s(C2566l c2566l) {
        C2566l c2566l2 = null;
        C2566l c2566l3 = null;
        while (c2566l != null) {
            C2566l c2566l4 = new C2566l(c2566l.f595a, c2566l.f596b, c2566l.f597c, null);
            if (c2566l3 == null) {
                c2566l2 = c2566l4;
            } else {
                c2566l3.f598d = c2566l4;
            }
            c2566l = c2566l.f598d;
            c2566l3 = c2566l4;
        }
        return c2566l2;
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
        C2568n[] c2568nArr = new C2568n[16];
        for (int i5 = 0; i5 < 16; i5++) {
            c2568nArr[i5] = new C2568n(0.75f);
        }
        objectOutputStream.putFields().put("segments", c2568nArr);
        objectOutputStream.putFields().put("segmentShift", i3);
        objectOutputStream.putFields().put("segmentMask", i4);
        objectOutputStream.writeFields();
        C2566l[] c2566lArr = this.f579a;
        if (c2566lArr != null) {
            C2570p c2570p = new C2570p(c2566lArr, c2566lArr.length, 0, c2566lArr.length);
            while (true) {
                C2566l m582a = c2570p.m582a();
                if (m582a == null) {
                    break;
                }
                objectOutputStream.writeObject(m582a.f596b);
                objectOutputStream.writeObject(m582a.f597c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public void clear() {
        C2566l[] c2566lArr = this.f579a;
        int i = 0;
        long j = 0;
        while (c2566lArr != null && i < c2566lArr.length) {
            C2566l m589n = m589n(c2566lArr, i);
            if (m589n == null) {
                i++;
            } else {
                int i2 = m589n.f595a;
                if (i2 == -1) {
                    c2566lArr = m597f(c2566lArr, m589n);
                    i = 0;
                } else {
                    synchronized (m589n) {
                        if (m589n(c2566lArr, i) == m589n) {
                            for (C2566l c2566l = i2 >= 0 ? m589n : m589n instanceof C2571q ? ((C2571q) m589n).f614f : null; c2566l != null; c2566l = c2566l.f598d) {
                                j--;
                            }
                            m592k(c2566lArr, i, null);
                            i++;
                        }
                    }
                }
            }
        }
        if (j != 0) {
            m602a(j, -1);
        }
    }

    @Override // p034j$.util.Map
    public Object compute(Object obj, BiFunction biFunction) {
        int i;
        C2566l c2566l;
        Object obj2;
        Object obj3;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m591l = m591l(obj.hashCode());
        C2566l[] c2566lArr = this.f579a;
        int i2 = 0;
        Object obj4 = null;
        int i3 = 0;
        while (true) {
            if (c2566lArr != null) {
                int length = c2566lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m591l;
                    C2566l m589n = m589n(c2566lArr, i4);
                    if (m589n == null) {
                        C2567m c2567m = new C2567m();
                        synchronized (c2567m) {
                            if (m601b(c2566lArr, i4, null, c2567m)) {
                                Object apply = biFunction.apply(obj, null);
                                if (apply != null) {
                                    c2566l = new C2566l(m591l, obj, apply, null);
                                    i = 1;
                                } else {
                                    i = i2;
                                    c2566l = null;
                                }
                                m592k(c2566lArr, i4, c2566l);
                                i2 = i;
                                obj4 = apply;
                                i3 = 1;
                            }
                        }
                        if (i3 != 0) {
                            break;
                        }
                    } else {
                        int i5 = m589n.f595a;
                        if (i5 == -1) {
                            c2566lArr = m597f(c2566lArr, m589n);
                        } else {
                            synchronized (m589n) {
                                if (m589n(c2566lArr, i4) == m589n) {
                                    if (i5 >= 0) {
                                        C2566l c2566l2 = null;
                                        C2566l c2566l3 = m589n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2566l3.f595a != m591l || ((obj3 = c2566l3.f596b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2566l c2566l4 = c2566l3.f598d;
                                                if (c2566l4 == null) {
                                                    Object apply2 = biFunction.apply(obj, null);
                                                    if (apply2 != null) {
                                                        c2566l3.f598d = new C2566l(m591l, obj, apply2, null);
                                                        i2 = 1;
                                                    }
                                                    obj2 = apply2;
                                                } else {
                                                    i6++;
                                                    c2566l2 = c2566l3;
                                                    c2566l3 = c2566l4;
                                                }
                                            }
                                        }
                                        obj2 = biFunction.apply(obj, c2566l3.f597c);
                                        if (obj2 != null) {
                                            c2566l3.f597c = obj2;
                                        } else {
                                            C2566l c2566l5 = c2566l3.f598d;
                                            if (c2566l2 != null) {
                                                c2566l2.f598d = c2566l5;
                                            } else {
                                                m592k(c2566lArr, i4, c2566l5);
                                            }
                                            i2 = -1;
                                        }
                                        i3 = i6;
                                        obj4 = obj2;
                                    } else if (m589n instanceof C2571q) {
                                        C2571q c2571q = (C2571q) m589n;
                                        C2572r c2572r = c2571q.f613e;
                                        C2572r m571b = c2572r != null ? c2572r.m571b(m591l, obj, null) : null;
                                        Object apply3 = biFunction.apply(obj, m571b == null ? null : m571b.f597c);
                                        if (apply3 != null) {
                                            if (m571b != null) {
                                                m571b.f597c = apply3;
                                            } else {
                                                c2571q.m577f(m591l, obj, apply3);
                                                i2 = 1;
                                            }
                                        } else if (m571b != null) {
                                            if (c2571q.m576g(m571b)) {
                                                m592k(c2566lArr, i4, m584s(c2571q.f614f));
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
                                    m586q(c2566lArr, i4);
                                }
                            }
                        }
                    }
                }
            }
            c2566lArr = m596g();
        }
        if (i2 != 0) {
            m602a(i2, i3);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object compute(Object obj, java.util.function.BiFunction biFunction) {
        return compute(obj, C3015s.m116a(biFunction));
    }

    @Override // p034j$.util.concurrent.InterfaceC2581b, p034j$.util.Map
    public Object computeIfAbsent(Object obj, Function function) {
        int i;
        Object apply;
        C2572r m571b;
        Object obj2;
        Object obj3;
        if (obj == null || function == null) {
            throw null;
        }
        int m591l = m591l(obj.hashCode());
        C2566l[] c2566lArr = this.f579a;
        Object obj4 = null;
        int i2 = 0;
        while (true) {
            if (c2566lArr != null) {
                int length = c2566lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m591l;
                    C2566l m589n = m589n(c2566lArr, i3);
                    boolean z = true;
                    if (m589n == null) {
                        C2567m c2567m = new C2567m();
                        synchronized (c2567m) {
                            if (m601b(c2566lArr, i3, null, c2567m)) {
                                Object apply2 = function.apply(obj);
                                m592k(c2566lArr, i3, apply2 != null ? new C2566l(m591l, obj, apply2, null) : null);
                                obj4 = apply2;
                                i2 = 1;
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    } else {
                        int i4 = m589n.f595a;
                        if (i4 == -1) {
                            c2566lArr = m597f(c2566lArr, m589n);
                        } else {
                            synchronized (m589n) {
                                if (m589n(c2566lArr, i3) == m589n) {
                                    if (i4 >= 0) {
                                        C2566l c2566l = m589n;
                                        i = 1;
                                        while (true) {
                                            if (c2566l.f595a != m591l || ((obj3 = c2566l.f596b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2566l c2566l2 = c2566l.f598d;
                                                if (c2566l2 == null) {
                                                    apply = function.apply(obj);
                                                    if (apply != null) {
                                                        c2566l.f598d = new C2566l(m591l, obj, apply, null);
                                                    }
                                                } else {
                                                    i++;
                                                    c2566l = c2566l2;
                                                }
                                            }
                                        }
                                        obj2 = c2566l.f597c;
                                        z = false;
                                        int i5 = i;
                                        obj4 = obj2;
                                        i2 = i5;
                                    } else if (m589n instanceof C2571q) {
                                        i = 2;
                                        C2571q c2571q = (C2571q) m589n;
                                        C2572r c2572r = c2571q.f613e;
                                        if (c2572r == null || (m571b = c2572r.m571b(m591l, obj, null)) == null) {
                                            apply = function.apply(obj);
                                            if (apply != null) {
                                                c2571q.m577f(m591l, obj, apply);
                                                i2 = i;
                                                obj4 = apply;
                                            }
                                            z = false;
                                            i2 = i;
                                            obj4 = apply;
                                        } else {
                                            obj2 = m571b.f597c;
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
                                    m586q(c2566lArr, i3);
                                }
                                if (!z) {
                                    return obj4;
                                }
                            }
                        }
                    }
                }
            }
            c2566lArr = m596g();
        }
        if (obj4 != null) {
            m602a(1L, i2);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
        return computeIfAbsent(obj, C2961L.m203a(function));
    }

    @Override // p034j$.util.Map
    public Object computeIfPresent(Object obj, BiFunction biFunction) {
        C2572r m571b;
        C2566l m584s;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m591l = m591l(obj.hashCode());
        C2566l[] c2566lArr = this.f579a;
        int i = 0;
        Object obj3 = null;
        int i2 = 0;
        while (true) {
            if (c2566lArr != null) {
                int length = c2566lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m591l;
                    C2566l m589n = m589n(c2566lArr, i3);
                    if (m589n == null) {
                        break;
                    }
                    int i4 = m589n.f595a;
                    if (i4 == -1) {
                        c2566lArr = m597f(c2566lArr, m589n);
                    } else {
                        synchronized (m589n) {
                            if (m589n(c2566lArr, i3) == m589n) {
                                if (i4 >= 0) {
                                    i2 = 1;
                                    C2566l c2566l = null;
                                    C2566l c2566l2 = m589n;
                                    while (true) {
                                        if (c2566l2.f595a != m591l || ((obj2 = c2566l2.f596b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                            C2566l c2566l3 = c2566l2.f598d;
                                            if (c2566l3 == null) {
                                                break;
                                            }
                                            i2++;
                                            c2566l = c2566l2;
                                            c2566l2 = c2566l3;
                                        }
                                    }
                                    obj3 = biFunction.apply(obj, c2566l2.f597c);
                                    if (obj3 != null) {
                                        c2566l2.f597c = obj3;
                                    } else {
                                        m584s = c2566l2.f598d;
                                        if (c2566l != null) {
                                            c2566l.f598d = m584s;
                                            i = -1;
                                        }
                                        m592k(c2566lArr, i3, m584s);
                                        i = -1;
                                    }
                                } else if (m589n instanceof C2571q) {
                                    i2 = 2;
                                    C2571q c2571q = (C2571q) m589n;
                                    C2572r c2572r = c2571q.f613e;
                                    if (c2572r != null && (m571b = c2572r.m571b(m591l, obj, null)) != null) {
                                        obj3 = biFunction.apply(obj, m571b.f597c);
                                        if (obj3 != null) {
                                            m571b.f597c = obj3;
                                        } else {
                                            if (c2571q.m576g(m571b)) {
                                                m584s = m584s(c2571q.f614f);
                                                m592k(c2566lArr, i3, m584s);
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
            c2566lArr = m596g();
        }
        if (i != 0) {
            m602a(i, i2);
        }
        return obj3;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfPresent(Object obj, java.util.function.BiFunction biFunction) {
        return computeIfPresent(obj, C3015s.m116a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean containsValue(Object obj) {
        Objects.requireNonNull(obj);
        C2566l[] c2566lArr = this.f579a;
        if (c2566lArr != null) {
            C2570p c2570p = new C2570p(c2566lArr, c2566lArr.length, 0, c2566lArr.length);
            while (true) {
                C2566l m582a = c2570p.m582a();
                if (m582a == null) {
                    break;
                }
                Object obj2 = m582a.f597c;
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
        C2559e c2559e = this.f584f;
        if (c2559e != null) {
            return c2559e;
        }
        C2559e c2559e2 = new C2559e(this);
        this.f584f = c2559e2;
        return c2559e2;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean equals(Object obj) {
        V value;
        V v;
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                C2566l[] c2566lArr = this.f579a;
                int length = c2566lArr == null ? 0 : c2566lArr.length;
                C2570p c2570p = new C2570p(c2566lArr, length, 0, length);
                while (true) {
                    C2566l m582a = c2570p.m582a();
                    if (m582a == null) {
                        for (Map.Entry<K, V> entry : map.entrySet()) {
                            K key = entry.getKey();
                            if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                                return false;
                            }
                        }
                        return true;
                    }
                    Object obj2 = m582a.f597c;
                    Object obj3 = map.get(m582a.f596b);
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
    final C2566l[] m597f(C2566l[] c2566lArr, C2566l c2566l) {
        C2566l[] c2566lArr2;
        int i;
        if (!(c2566l instanceof C2561g) || (c2566lArr2 = ((C2561g) c2566l).f590e) == null) {
            return this.f579a;
        }
        int m593j = m593j(c2566lArr.length);
        while (true) {
            if (c2566lArr2 != this.f580b || this.f579a != c2566lArr || (i = this.sizeCtl) >= 0 || (i >>> 16) != m593j || i == m593j + 1 || i == RtpPacket.MAX_SEQUENCE_NUMBER + m593j || this.transferIndex <= 0) {
                break;
            } else if (f571h.compareAndSwapInt(this, f572i, i, i + 1)) {
                m587p(c2566lArr, c2566lArr2);
                break;
            }
        }
        return c2566lArr2;
    }

    @Override // p034j$.util.concurrent.InterfaceC2581b, p034j$.util.Map
    public void forEach(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2566l[] c2566lArr = this.f579a;
        if (c2566lArr == null) {
            return;
        }
        C2570p c2570p = new C2570p(c2566lArr, c2566lArr.length, 0, c2566lArr.length);
        while (true) {
            C2566l m582a = c2570p.m582a();
            if (m582a == null) {
                return;
            }
            biConsumer.accept(m582a.f596b, m582a.f597c);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void forEach(java.util.function.BiConsumer biConsumer) {
        forEach(C3011q.m121a(biConsumer));
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
            int r0 = m591l(r0)
            j$.util.concurrent.ConcurrentHashMap$l[] r1 = r4.f579a
            r2 = 0
            if (r1 == 0) goto L4e
            int r3 = r1.length
            if (r3 <= 0) goto L4e
            int r3 = r3 + (-1)
            r3 = r3 & r0
            j$.util.concurrent.ConcurrentHashMap$l r1 = m589n(r1, r3)
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
            j$.util.concurrent.ConcurrentHashMap$l r5 = r1.mo572a(r0, r5)
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
    final java.lang.Object m595h(java.lang.Object r9, java.lang.Object r10, boolean r11) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L98
            if (r10 == 0) goto L98
            int r1 = r9.hashCode()
            int r1 = m591l(r1)
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
            j$.util.concurrent.ConcurrentHashMap$l r5 = m589n(r3, r4)
            if (r5 != 0) goto L2c
            j$.util.concurrent.ConcurrentHashMap$l r5 = new j$.util.concurrent.ConcurrentHashMap$l
            r5.<init>(r1, r9, r10, r0)
            boolean r4 = m601b(r3, r4, r0, r5)
            if (r4 == 0) goto L10
            goto L89
        L2c:
            int r6 = r5.f595a
            r7 = -1
            if (r6 != r7) goto L36
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m597f(r3, r5)
            goto L10
        L36:
            monitor-enter(r5)
            j$.util.concurrent.ConcurrentHashMap$l r7 = m589n(r3, r4)     // Catch: java.lang.Throwable -> L8f
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
            boolean r6 = r5 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2571q     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            r2 = 2
            r6 = r5
            j$.util.concurrent.ConcurrentHashMap$q r6 = (p034j$.util.concurrent.ConcurrentHashMap.C2571q) r6     // Catch: java.lang.Throwable -> L8f
            j$.util.concurrent.ConcurrentHashMap$r r6 = r6.m577f(r1, r9, r10)     // Catch: java.lang.Throwable -> L8f
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
            r8.m586q(r3, r4)
        L86:
            if (r7 == 0) goto L89
            return r7
        L89:
            r9 = 1
            r8.m602a(r9, r2)
            return r0
        L8f:
            r9 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            throw r9
        L92:
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m596g()
            goto L10
        L98:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m595h(java.lang.Object, java.lang.Object, boolean):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public int hashCode() {
        C2566l[] c2566lArr = this.f579a;
        int i = 0;
        if (c2566lArr != null) {
            C2570p c2570p = new C2570p(c2566lArr, c2566lArr.length, 0, c2566lArr.length);
            while (true) {
                C2566l m582a = c2570p.m582a();
                if (m582a == null) {
                    break;
                }
                i += m582a.f597c.hashCode() ^ m582a.f596b.hashCode();
            }
        }
        return i;
    }

    /* renamed from: i */
    final Object m594i(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        C2566l m589n;
        Object obj4;
        C2572r m571b;
        C2566l m584s;
        Object obj5;
        int m591l = m591l(obj.hashCode());
        C2566l[] c2566lArr = this.f579a;
        while (true) {
            if (c2566lArr == null || (length = c2566lArr.length) == 0 || (m589n = m589n(c2566lArr, (i = (length - 1) & m591l))) == null) {
                break;
            }
            int i2 = m589n.f595a;
            if (i2 == -1) {
                c2566lArr = m597f(c2566lArr, m589n);
            } else {
                boolean z = false;
                synchronized (m589n) {
                    if (m589n(c2566lArr, i) == m589n) {
                        if (i2 >= 0) {
                            C2566l c2566l = null;
                            C2566l c2566l2 = m589n;
                            while (true) {
                                if (c2566l2.f595a != m591l || ((obj5 = c2566l2.f596b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                    C2566l c2566l3 = c2566l2.f598d;
                                    if (c2566l3 == null) {
                                        break;
                                    }
                                    c2566l = c2566l2;
                                    c2566l2 = c2566l3;
                                }
                            }
                            obj4 = c2566l2.f597c;
                            if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                if (obj2 != null) {
                                    c2566l2.f597c = obj2;
                                } else if (c2566l != null) {
                                    c2566l.f598d = c2566l2.f598d;
                                } else {
                                    m584s = c2566l2.f598d;
                                    m592k(c2566lArr, i, m584s);
                                }
                                z = true;
                            }
                            obj4 = null;
                            z = true;
                        } else if (m589n instanceof C2571q) {
                            C2571q c2571q = (C2571q) m589n;
                            C2572r c2572r = c2571q.f613e;
                            if (c2572r != null && (m571b = c2572r.m571b(m591l, obj, null)) != null) {
                                obj4 = m571b.f597c;
                                if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                    if (obj2 != null) {
                                        m571b.f597c = obj2;
                                    } else if (c2571q.m576g(m571b)) {
                                        m584s = m584s(c2571q.f614f);
                                        m592k(c2566lArr, i, m584s);
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
                            m602a(-1L, -1);
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
        return m590m() <= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public Set<K> keySet() {
        C2563i c2563i = this.f582d;
        if (c2563i != null) {
            return c2563i;
        }
        C2563i c2563i2 = new C2563i(this, null);
        this.f582d = c2563i2;
        return c2563i2;
    }

    /* renamed from: m */
    final long m590m() {
        C2557c[] c2557cArr = this.f581c;
        long j = this.baseCount;
        if (c2557cArr != null) {
            for (C2557c c2557c : c2557cArr) {
                if (c2557c != null) {
                    j += c2557c.value;
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
        int m591l = m591l(obj.hashCode());
        C2566l[] c2566lArr = this.f579a;
        int i2 = 0;
        Object obj6 = null;
        int i3 = 0;
        while (true) {
            if (c2566lArr != null) {
                int length = c2566lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m591l;
                    C2566l m589n = m589n(c2566lArr, i4);
                    i = 1;
                    if (m589n != null) {
                        int i5 = m589n.f595a;
                        if (i5 == -1) {
                            c2566lArr = m597f(c2566lArr, m589n);
                        } else {
                            synchronized (m589n) {
                                if (m589n(c2566lArr, i4) == m589n) {
                                    if (i5 >= 0) {
                                        C2566l c2566l = null;
                                        C2566l c2566l2 = m589n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2566l2.f595a != m591l || ((obj4 = c2566l2.f596b) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                C2566l c2566l3 = c2566l2.f598d;
                                                if (c2566l3 == null) {
                                                    c2566l2.f598d = new C2566l(m591l, obj, obj5, null);
                                                    obj3 = obj5;
                                                    break;
                                                }
                                                i6++;
                                                c2566l = c2566l2;
                                                c2566l2 = c2566l3;
                                            }
                                        }
                                        Object apply = biFunction.apply(c2566l2.f597c, obj5);
                                        if (apply != null) {
                                            c2566l2.f597c = apply;
                                        } else {
                                            C2566l c2566l4 = c2566l2.f598d;
                                            if (c2566l != null) {
                                                c2566l.f598d = c2566l4;
                                            } else {
                                                m592k(c2566lArr, i4, c2566l4);
                                            }
                                            i2 = -1;
                                        }
                                        i = i2;
                                        obj3 = apply;
                                        i3 = i6;
                                        obj6 = obj3;
                                        i2 = i;
                                    } else if (m589n instanceof C2571q) {
                                        i3 = 2;
                                        C2571q c2571q = (C2571q) m589n;
                                        C2572r c2572r = c2571q.f613e;
                                        C2572r m571b = c2572r == null ? null : c2572r.m571b(m591l, obj, null);
                                        Object apply2 = m571b == null ? obj5 : biFunction.apply(m571b.f597c, obj5);
                                        if (apply2 != null) {
                                            if (m571b != null) {
                                                m571b.f597c = apply2;
                                            } else {
                                                c2571q.m577f(m591l, obj, apply2);
                                                i2 = 1;
                                            }
                                        } else if (m571b != null) {
                                            if (c2571q.m576g(m571b)) {
                                                m592k(c2566lArr, i4, m584s(c2571q.f614f));
                                            }
                                            i2 = -1;
                                        }
                                        obj6 = apply2;
                                    }
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    m586q(c2566lArr, i4);
                                }
                                i = i2;
                                obj5 = obj6;
                            }
                        }
                    } else if (m601b(c2566lArr, i4, null, new C2566l(m591l, obj, obj5, null))) {
                        break;
                    }
                }
            }
            c2566lArr = m596g();
        }
        if (i != 0) {
            m602a(i, i3);
        }
        return obj5;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
        return merge(obj, obj2, C3015s.m116a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public V put(K k, V v) {
        return (V) m595h(k, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m585r(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            m595h(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public V putIfAbsent(K k, V v) {
        return (V) m595h(k, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public V remove(Object obj) {
        return (V) m594i(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        Objects.requireNonNull(obj);
        return (obj2 == null || m594i(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return m594i(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return m594i(obj, obj3, obj2) != null;
    }

    @Override // p034j$.util.Map
    public void replaceAll(BiFunction biFunction) {
        Objects.requireNonNull(biFunction);
        C2566l[] c2566lArr = this.f579a;
        if (c2566lArr == null) {
            return;
        }
        C2570p c2570p = new C2570p(c2566lArr, c2566lArr.length, 0, c2566lArr.length);
        while (true) {
            C2566l m582a = c2570p.m582a();
            if (m582a == null) {
                return;
            }
            Object obj = m582a.f597c;
            Object obj2 = m582a.f596b;
            do {
                Object apply = biFunction.apply(obj2, obj);
                Objects.requireNonNull(apply);
                if (m594i(obj2, apply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void replaceAll(java.util.function.BiFunction biFunction) {
        replaceAll(C3015s.m116a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public int size() {
        long m590m = m590m();
        if (m590m < 0) {
            return 0;
        }
        if (m590m > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) m590m;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        C2566l[] c2566lArr = this.f579a;
        int length = c2566lArr == null ? 0 : c2566lArr.length;
        C2570p c2570p = new C2570p(c2566lArr, length, 0, length);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        C2566l m582a = c2570p.m582a();
        if (m582a != null) {
            while (true) {
                Object obj = m582a.f596b;
                Object obj2 = m582a.f597c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                m582a = c2570p.m582a();
                if (m582a == null) {
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
        C2575u c2575u = this.f583e;
        if (c2575u != null) {
            return c2575u;
        }
        C2575u c2575u2 = new C2575u(this);
        this.f583e = c2575u2;
        return c2575u2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC2556b implements Collection, Serializable {

        /* renamed from: a */
        final ConcurrentHashMap f587a;

        AbstractC2556b(ConcurrentHashMap concurrentHashMap) {
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
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.AbstractC2556b.containsAll(java.util.Collection):boolean");
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
            long m590m = this.f587a.m590m();
            if (m590m < 0) {
                m590m = 0;
            }
            if (m590m <= 2147483639) {
                int i = (int) m590m;
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
            long m590m = this.f587a.m590m();
            if (m590m < 0) {
                m590m = 0;
            }
            if (m590m <= 2147483639) {
                int i = (int) m590m;
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
