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
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2415b;
import p034j$.util.InterfaceC2487s;
import p034j$.util.Iterator;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C2823L;
import p034j$.wrappers.C2830O0;
import p034j$.wrappers.C2833S;
import p034j$.wrappers.C2855h;
import p034j$.wrappers.C2873q;
import p034j$.wrappers.C2877s;
import p034j$.wrappers.C2885w;
import p034j$.wrappers.C2886w0;
import sun.misc.Unsafe;
/* renamed from: j$.util.concurrent.ConcurrentHashMap */
/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, InterfaceC2443b {

    /* renamed from: g */
    static final int f564g = Runtime.getRuntime().availableProcessors();

    /* renamed from: h */
    private static final Unsafe f565h;

    /* renamed from: i */
    private static final long f566i;

    /* renamed from: j */
    private static final long f567j;

    /* renamed from: k */
    private static final long f568k;

    /* renamed from: l */
    private static final long f569l;

    /* renamed from: m */
    private static final long f570m;

    /* renamed from: n */
    private static final long f571n;

    /* renamed from: o */
    private static final int f572o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;

    /* renamed from: a */
    volatile transient C2428l[] f573a;

    /* renamed from: b */
    private volatile transient C2428l[] f574b;
    private volatile transient long baseCount;

    /* renamed from: c */
    private volatile transient C2419c[] f575c;
    private volatile transient int cellsBusy;

    /* renamed from: d */
    private transient C2425i f576d;

    /* renamed from: e */
    private transient C2437u f577e;

    /* renamed from: f */
    private transient C2421e f578f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$a */
    /* loaded from: classes2.dex */
    public static class C2417a extends C2432p {

        /* renamed from: i */
        final ConcurrentHashMap f579i;

        /* renamed from: j */
        C2428l f580j;

        C2417a(C2428l[] c2428lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2428lArr, i, i2, i3);
            this.f579i = concurrentHashMap;
            m583a();
        }

        public final boolean hasMoreElements() {
            return this.f598b != null;
        }

        public final boolean hasNext() {
            return this.f598b != null;
        }

        public final void remove() {
            C2428l c2428l = this.f580j;
            if (c2428l == null) {
                throw new IllegalStateException();
            }
            this.f580j = null;
            this.f579i.m595i(c2428l.f590b, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$c */
    /* loaded from: classes2.dex */
    public static final class C2419c {
        volatile long value;

        C2419c(long j) {
            this.value = j;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$d */
    /* loaded from: classes2.dex */
    static final class C2420d extends C2417a implements Iterator, p034j$.util.Iterator {
        C2420d(C2428l[] c2428lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2428lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C2885w.m109b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public Object next() {
            C2428l c2428l = this.f598b;
            if (c2428l != null) {
                Object obj = c2428l.f590b;
                Object obj2 = c2428l.f591c;
                this.f580j = c2428l;
                m583a();
                return new C2427k(obj, obj2, this.f579i);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$e */
    /* loaded from: classes2.dex */
    public static final class C2421e extends AbstractC2418b implements Set, InterfaceC2415b {
        C2421e(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set
        /* renamed from: a */
        public boolean add(Map.Entry entry) {
            return this.f581a.m596h(entry.getKey(), entry.getValue(), false) == null;
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2418b, java.util.Collection
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            Object value;
            return (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = this.f581a.get(key)) == null || (value = entry.getValue()) == null || (value != obj2 && !value.equals(obj2))) ? false : true;
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p034j$.util.InterfaceC2415b, p034j$.lang.InterfaceC2361e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2428l[] c2428lArr = this.f581a.f573a;
            if (c2428lArr == null) {
                return;
            }
            C2432p c2432p = new C2432p(c2428lArr, c2428lArr.length, 0, c2428lArr.length);
            while (true) {
                C2428l m583a = c2432p.m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(new C2427k(m583a.f590b, m583a.f591c, this.f581a));
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C2885w.m109b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            C2428l[] c2428lArr = this.f581a.f573a;
            int i = 0;
            if (c2428lArr != null) {
                C2432p c2432p = new C2432p(c2428lArr, c2428lArr.length, 0, c2428lArr.length);
                while (true) {
                    C2428l m583a = c2432p.m583a();
                    if (m583a == null) {
                        break;
                    }
                    i += m583a.hashCode();
                }
            }
            return i;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2418b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f581a;
            C2428l[] c2428lArr = concurrentHashMap.f573a;
            int length = c2428lArr == null ? 0 : c2428lArr.length;
            return new C2420d(c2428lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2415b
        /* renamed from: k */
        public /* synthetic */ boolean mo571k(Predicate predicate) {
            return AbstractC2414a.m619h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C2830O0.m182n0(AbstractC2414a.m620g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && this.f581a.remove(key, value);
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2414a.m619h(this, C2886w0.m108a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2415b, p034j$.lang.InterfaceC2361e
        public InterfaceC2487s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f581a;
            long m591m = concurrentHashMap.m591m();
            C2428l[] c2428lArr = concurrentHashMap.f573a;
            int length = c2428lArr == null ? 0 : c2428lArr.length;
            return new C2422f(c2428lArr, length, 0, length, m591m >= 0 ? m591m : 0L, concurrentHashMap);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2415b, p034j$.lang.InterfaceC2361e
        public /* synthetic */ Spliterator spliterator() {
            return C2855h.m150a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2415b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2414a.m618i(this);
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2415b
        public /* synthetic */ Stream stream() {
            return C2830O0.m182n0(AbstractC2414a.m618i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C2833S.m178a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$f */
    /* loaded from: classes2.dex */
    public static final class C2422f extends C2432p implements InterfaceC2487s {

        /* renamed from: i */
        final ConcurrentHashMap f582i;

        /* renamed from: j */
        long f583j;

        C2422f(C2428l[] c2428lArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
            super(c2428lArr, i, i2, i3);
            this.f582i = concurrentHashMap;
            this.f583j = j;
        }

        @Override // p034j$.util.InterfaceC2487s
        /* renamed from: b */
        public boolean mo128b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2428l m583a = m583a();
            if (m583a == null) {
                return false;
            }
            consumer.accept(new C2427k(m583a.f590b, m583a.f591c, this.f582i));
            return true;
        }

        @Override // p034j$.util.InterfaceC2487s
        public int characteristics() {
            return 4353;
        }

        @Override // p034j$.util.InterfaceC2487s
        public long estimateSize() {
            return this.f583j;
        }

        @Override // p034j$.util.InterfaceC2487s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2428l m583a = m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(new C2427k(m583a.f590b, m583a.f591c, this.f582i));
            }
        }

        @Override // p034j$.util.InterfaceC2487s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2487s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2414a.m622e(this);
        }

        @Override // p034j$.util.InterfaceC2487s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2414a.m621f(this, i);
        }

        @Override // p034j$.util.InterfaceC2487s
        public InterfaceC2487s trySplit() {
            int i = this.f602f;
            int i2 = this.f603g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2428l[] c2428lArr = this.f597a;
            int i4 = this.f604h;
            this.f603g = i3;
            long j = this.f583j >>> 1;
            this.f583j = j;
            return new C2422f(c2428lArr, i4, i3, i2, j, this.f582i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$g */
    /* loaded from: classes2.dex */
    public static final class C2423g extends C2428l {

        /* renamed from: e */
        final C2428l[] f584e;

        C2423g(C2428l[] c2428lArr) {
            super(-1, null, null, null);
            this.f584e = c2428lArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
            if ((r0 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2423g) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
            r0 = ((p034j$.util.concurrent.ConcurrentHashMap.C2423g) r0).f584e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
            return r0.mo573a(r5, r6);
         */
        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2428l
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        p034j$.util.concurrent.ConcurrentHashMap.C2428l mo573a(int r5, java.lang.Object r6) {
            /*
                r4 = this;
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r4.f584e
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
                int r2 = r0.f589a
                if (r2 != r5) goto L23
                java.lang.Object r3 = r0.f590b
                if (r3 == r6) goto L22
                if (r3 == 0) goto L23
                boolean r3 = r6.equals(r3)
                if (r3 == 0) goto L23
            L22:
                return r0
            L23:
                if (r2 >= 0) goto L33
                boolean r1 = r0 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2423g
                if (r1 == 0) goto L2e
                j$.util.concurrent.ConcurrentHashMap$g r0 = (p034j$.util.concurrent.ConcurrentHashMap.C2423g) r0
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r0.f584e
                goto L2
            L2e:
                j$.util.concurrent.ConcurrentHashMap$l r5 = r0.mo573a(r5, r6)
                return r5
            L33:
                j$.util.concurrent.ConcurrentHashMap$l r0 = r0.f592d
                if (r0 != 0) goto L12
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2423g.mo573a(int, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$l");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$h */
    /* loaded from: classes2.dex */
    public static final class C2424h extends C2417a implements java.util.Iterator, Enumeration, p034j$.util.Iterator {
        C2424h(C2428l[] c2428lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2428lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C2885w.m109b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public final Object next() {
            C2428l c2428l = this.f598b;
            if (c2428l != null) {
                Object obj = c2428l.f590b;
                this.f580j = c2428l;
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
    public static class C2425i extends AbstractC2418b implements Set, InterfaceC2415b {
        C2425i(ConcurrentHashMap concurrentHashMap, Object obj) {
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2418b, java.util.Collection
        public boolean contains(Object obj) {
            return this.f581a.containsKey(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p034j$.util.InterfaceC2415b, p034j$.lang.InterfaceC2361e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2428l[] c2428lArr = this.f581a.f573a;
            if (c2428lArr == null) {
                return;
            }
            C2432p c2432p = new C2432p(c2428lArr, c2428lArr.length, 0, c2428lArr.length);
            while (true) {
                C2428l m583a = c2432p.m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(m583a.f590b);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C2885w.m109b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            java.util.Iterator it = iterator();
            int i = 0;
            while (((C2417a) it).hasNext()) {
                i += ((C2424h) it).next().hashCode();
            }
            return i;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2418b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f581a;
            C2428l[] c2428lArr = concurrentHashMap.f573a;
            int length = c2428lArr == null ? 0 : c2428lArr.length;
            return new C2424h(c2428lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2415b
        /* renamed from: k */
        public /* synthetic */ boolean mo571k(Predicate predicate) {
            return AbstractC2414a.m619h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C2830O0.m182n0(AbstractC2414a.m620g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f581a.remove(obj) != null;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2414a.m619h(this, C2886w0.m108a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2415b, p034j$.lang.InterfaceC2361e
        public InterfaceC2487s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f581a;
            long m591m = concurrentHashMap.m591m();
            C2428l[] c2428lArr = concurrentHashMap.f573a;
            int length = c2428lArr == null ? 0 : c2428lArr.length;
            return new C2426j(c2428lArr, length, 0, length, m591m >= 0 ? m591m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2415b, p034j$.lang.InterfaceC2361e
        public /* synthetic */ Spliterator spliterator() {
            return C2855h.m150a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2415b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2414a.m618i(this);
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2415b
        public /* synthetic */ Stream stream() {
            return C2830O0.m182n0(AbstractC2414a.m618i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C2833S.m178a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$j */
    /* loaded from: classes2.dex */
    public static final class C2426j extends C2432p implements InterfaceC2487s {

        /* renamed from: i */
        long f585i;

        C2426j(C2428l[] c2428lArr, int i, int i2, int i3, long j) {
            super(c2428lArr, i, i2, i3);
            this.f585i = j;
        }

        @Override // p034j$.util.InterfaceC2487s
        /* renamed from: b */
        public boolean mo128b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2428l m583a = m583a();
            if (m583a == null) {
                return false;
            }
            consumer.accept(m583a.f590b);
            return true;
        }

        @Override // p034j$.util.InterfaceC2487s
        public int characteristics() {
            return 4353;
        }

        @Override // p034j$.util.InterfaceC2487s
        public long estimateSize() {
            return this.f585i;
        }

        @Override // p034j$.util.InterfaceC2487s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2428l m583a = m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(m583a.f590b);
            }
        }

        @Override // p034j$.util.InterfaceC2487s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2487s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2414a.m622e(this);
        }

        @Override // p034j$.util.InterfaceC2487s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2414a.m621f(this, i);
        }

        @Override // p034j$.util.InterfaceC2487s
        public InterfaceC2487s trySplit() {
            int i = this.f602f;
            int i2 = this.f603g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2428l[] c2428lArr = this.f597a;
            int i4 = this.f604h;
            this.f603g = i3;
            long j = this.f585i >>> 1;
            this.f585i = j;
            return new C2426j(c2428lArr, i4, i3, i2, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$k */
    /* loaded from: classes2.dex */
    public static final class C2427k implements Map.Entry {

        /* renamed from: a */
        final Object f586a;

        /* renamed from: b */
        Object f587b;

        /* renamed from: c */
        final ConcurrentHashMap f588c;

        C2427k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
            this.f586a = obj;
            this.f587b = obj2;
            this.f588c = concurrentHashMap;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f586a) || key.equals(obj2)) && (value == (obj3 = this.f587b) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f586a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f587b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f586a.hashCode() ^ this.f587b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Objects.requireNonNull(obj);
            Object obj2 = this.f587b;
            this.f587b = obj;
            this.f588c.put(this.f586a, obj);
            return obj2;
        }

        public String toString() {
            return this.f586a + "=" + this.f587b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$l */
    /* loaded from: classes2.dex */
    public static class C2428l implements Map.Entry {

        /* renamed from: a */
        final int f589a;

        /* renamed from: b */
        final Object f590b;

        /* renamed from: c */
        volatile Object f591c;

        /* renamed from: d */
        volatile C2428l f592d;

        C2428l(int i, Object obj, Object obj2, C2428l c2428l) {
            this.f589a = i;
            this.f590b = obj;
            this.f591c = obj2;
            this.f592d = c2428l;
        }

        /* renamed from: a */
        C2428l mo573a(int i, Object obj) {
            Object obj2;
            C2428l c2428l = this;
            do {
                if (c2428l.f589a == i && ((obj2 = c2428l.f590b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return c2428l;
                }
                c2428l = c2428l.f592d;
            } while (c2428l != null);
            return null;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f590b) || key.equals(obj2)) && (value == (obj3 = this.f591c) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f590b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f591c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f590b.hashCode() ^ this.f591c.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public final String toString() {
            return this.f590b + "=" + this.f591c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$m */
    /* loaded from: classes2.dex */
    public static final class C2429m extends C2428l {
        C2429m() {
            super(-3, null, null, null);
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2428l
        /* renamed from: a */
        C2428l mo573a(int i, Object obj) {
            return null;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$n */
    /* loaded from: classes2.dex */
    static class C2430n extends ReentrantLock {
        C2430n(float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$o */
    /* loaded from: classes2.dex */
    public static final class C2431o {

        /* renamed from: a */
        int f593a;

        /* renamed from: b */
        int f594b;

        /* renamed from: c */
        C2428l[] f595c;

        /* renamed from: d */
        C2431o f596d;

        C2431o() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$p */
    /* loaded from: classes2.dex */
    public static class C2432p {

        /* renamed from: a */
        C2428l[] f597a;

        /* renamed from: b */
        C2428l f598b = null;

        /* renamed from: c */
        C2431o f599c;

        /* renamed from: d */
        C2431o f600d;

        /* renamed from: e */
        int f601e;

        /* renamed from: f */
        int f602f;

        /* renamed from: g */
        int f603g;

        /* renamed from: h */
        final int f604h;

        C2432p(C2428l[] c2428lArr, int i, int i2, int i3) {
            this.f597a = c2428lArr;
            this.f604h = i;
            this.f601e = i2;
            this.f602f = i2;
            this.f603g = i3;
        }

        /* renamed from: a */
        final C2428l m583a() {
            C2428l[] c2428lArr;
            int length;
            int i;
            C2431o c2431o;
            C2428l c2428l = this.f598b;
            if (c2428l != null) {
                c2428l = c2428l.f592d;
            }
            while (c2428l == null) {
                if (this.f602f >= this.f603g || (c2428lArr = this.f597a) == null || (length = c2428lArr.length) <= (i = this.f601e) || i < 0) {
                    this.f598b = null;
                    return null;
                }
                C2428l m590n = ConcurrentHashMap.m590n(c2428lArr, i);
                if (m590n == null || m590n.f589a >= 0) {
                    c2428l = m590n;
                } else if (m590n instanceof C2423g) {
                    this.f597a = ((C2423g) m590n).f584e;
                    C2431o c2431o2 = this.f600d;
                    if (c2431o2 != null) {
                        this.f600d = c2431o2.f596d;
                    } else {
                        c2431o2 = new C2431o();
                    }
                    c2431o2.f595c = c2428lArr;
                    c2431o2.f593a = length;
                    c2431o2.f594b = i;
                    c2431o2.f596d = this.f599c;
                    this.f599c = c2431o2;
                    c2428l = null;
                } else {
                    c2428l = m590n instanceof C2433q ? ((C2433q) m590n).f608f : null;
                }
                if (this.f599c != null) {
                    while (true) {
                        c2431o = this.f599c;
                        if (c2431o == null) {
                            break;
                        }
                        int i2 = this.f601e;
                        int i3 = c2431o.f593a;
                        int i4 = i2 + i3;
                        this.f601e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.f601e = c2431o.f594b;
                        this.f597a = c2431o.f595c;
                        c2431o.f595c = null;
                        C2431o c2431o3 = c2431o.f596d;
                        c2431o.f596d = this.f600d;
                        this.f599c = c2431o3;
                        this.f600d = c2431o;
                        length = i3;
                    }
                    if (c2431o == null) {
                        int i5 = this.f601e + this.f604h;
                        this.f601e = i5;
                        if (i5 >= length) {
                            int i6 = this.f602f + 1;
                            this.f602f = i6;
                            this.f601e = i6;
                        }
                    }
                } else {
                    int i7 = i + this.f604h;
                    this.f601e = i7;
                    if (i7 >= length) {
                        int i8 = this.f602f + 1;
                        this.f602f = i8;
                        this.f601e = i8;
                    }
                }
            }
            this.f598b = c2428l;
            return c2428l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$q */
    /* loaded from: classes2.dex */
    public static final class C2433q extends C2428l {

        /* renamed from: h */
        private static final Unsafe f605h;

        /* renamed from: i */
        private static final long f606i;

        /* renamed from: e */
        C2434r f607e;

        /* renamed from: f */
        volatile C2434r f608f;

        /* renamed from: g */
        volatile Thread f609g;
        volatile int lockState;

        static {
            try {
                Unsafe m556c = AbstractC2444c.m556c();
                f605h = m556c;
                f606i = m556c.objectFieldOffset(C2433q.class.getDeclaredField("lockState"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        C2433q(C2434r c2434r) {
            super(-2, null, null, null);
            int m600d;
            int m574j;
            this.f608f = c2434r;
            C2434r c2434r2 = null;
            while (c2434r != null) {
                C2434r c2434r3 = (C2434r) c2434r.f592d;
                c2434r.f612g = null;
                c2434r.f611f = null;
                if (c2434r2 == null) {
                    c2434r.f610e = null;
                    c2434r.f614i = false;
                } else {
                    Object obj = c2434r.f590b;
                    int i = c2434r.f589a;
                    C2434r c2434r4 = c2434r2;
                    Class cls = null;
                    while (true) {
                        Object obj2 = c2434r4.f590b;
                        int i2 = c2434r4.f589a;
                        m574j = i2 > i ? -1 : i2 < i ? 1 : ((cls == null && (cls = ConcurrentHashMap.m601c(obj)) == null) || (m600d = ConcurrentHashMap.m600d(cls, obj, obj2)) == 0) ? m574j(obj, obj2) : m600d;
                        C2434r c2434r5 = m574j <= 0 ? c2434r4.f611f : c2434r4.f612g;
                        if (c2434r5 == null) {
                            break;
                        }
                        c2434r4 = c2434r5;
                    }
                    c2434r.f610e = c2434r4;
                    if (m574j <= 0) {
                        c2434r4.f611f = c2434r;
                    } else {
                        c2434r4.f612g = c2434r;
                    }
                    c2434r = m581c(c2434r2, c2434r);
                }
                c2434r2 = c2434r;
                c2434r = c2434r3;
            }
            this.f607e = c2434r2;
        }

        /* renamed from: b */
        static C2434r m582b(C2434r c2434r, C2434r c2434r2) {
            while (c2434r2 != null && c2434r2 != c2434r) {
                C2434r c2434r3 = c2434r2.f610e;
                if (c2434r3 == null) {
                    c2434r2.f614i = false;
                    return c2434r2;
                } else if (c2434r2.f614i) {
                    c2434r2.f614i = false;
                    return c2434r;
                } else {
                    C2434r c2434r4 = c2434r3.f611f;
                    C2434r c2434r5 = null;
                    if (c2434r4 == c2434r2) {
                        c2434r4 = c2434r3.f612g;
                        if (c2434r4 != null && c2434r4.f614i) {
                            c2434r4.f614i = false;
                            c2434r3.f614i = true;
                            c2434r = m576h(c2434r, c2434r3);
                            c2434r3 = c2434r2.f610e;
                            c2434r4 = c2434r3 == null ? null : c2434r3.f612g;
                        }
                        if (c2434r4 == null) {
                            c2434r2 = c2434r3;
                        } else {
                            C2434r c2434r6 = c2434r4.f611f;
                            C2434r c2434r7 = c2434r4.f612g;
                            if ((c2434r7 != null && c2434r7.f614i) || (c2434r6 != null && c2434r6.f614i)) {
                                if (c2434r7 == null || !c2434r7.f614i) {
                                    if (c2434r6 != null) {
                                        c2434r6.f614i = false;
                                    }
                                    c2434r4.f614i = true;
                                    c2434r = m575i(c2434r, c2434r4);
                                    c2434r3 = c2434r2.f610e;
                                    if (c2434r3 != null) {
                                        c2434r5 = c2434r3.f612g;
                                    }
                                } else {
                                    c2434r5 = c2434r4;
                                }
                                if (c2434r5 != null) {
                                    c2434r5.f614i = c2434r3 == null ? false : c2434r3.f614i;
                                    C2434r c2434r8 = c2434r5.f612g;
                                    if (c2434r8 != null) {
                                        c2434r8.f614i = false;
                                    }
                                }
                                if (c2434r3 != null) {
                                    c2434r3.f614i = false;
                                    c2434r = m576h(c2434r, c2434r3);
                                }
                                c2434r2 = c2434r;
                                c2434r = c2434r2;
                            }
                            c2434r4.f614i = true;
                            c2434r2 = c2434r3;
                        }
                    } else {
                        if (c2434r4 != null && c2434r4.f614i) {
                            c2434r4.f614i = false;
                            c2434r3.f614i = true;
                            c2434r = m575i(c2434r, c2434r3);
                            c2434r3 = c2434r2.f610e;
                            c2434r4 = c2434r3 == null ? null : c2434r3.f611f;
                        }
                        if (c2434r4 == null) {
                            c2434r2 = c2434r3;
                        } else {
                            C2434r c2434r9 = c2434r4.f611f;
                            C2434r c2434r10 = c2434r4.f612g;
                            if ((c2434r9 != null && c2434r9.f614i) || (c2434r10 != null && c2434r10.f614i)) {
                                if (c2434r9 == null || !c2434r9.f614i) {
                                    if (c2434r10 != null) {
                                        c2434r10.f614i = false;
                                    }
                                    c2434r4.f614i = true;
                                    c2434r = m576h(c2434r, c2434r4);
                                    c2434r3 = c2434r2.f610e;
                                    if (c2434r3 != null) {
                                        c2434r5 = c2434r3.f611f;
                                    }
                                } else {
                                    c2434r5 = c2434r4;
                                }
                                if (c2434r5 != null) {
                                    c2434r5.f614i = c2434r3 == null ? false : c2434r3.f614i;
                                    C2434r c2434r11 = c2434r5.f611f;
                                    if (c2434r11 != null) {
                                        c2434r11.f614i = false;
                                    }
                                }
                                if (c2434r3 != null) {
                                    c2434r3.f614i = false;
                                    c2434r = m575i(c2434r, c2434r3);
                                }
                                c2434r2 = c2434r;
                                c2434r = c2434r2;
                            }
                            c2434r4.f614i = true;
                            c2434r2 = c2434r3;
                        }
                    }
                }
            }
            return c2434r;
        }

        /* renamed from: c */
        static C2434r m581c(C2434r c2434r, C2434r c2434r2) {
            C2434r c2434r3;
            c2434r2.f614i = true;
            while (true) {
                C2434r c2434r4 = c2434r2.f610e;
                if (c2434r4 == null) {
                    c2434r2.f614i = false;
                    return c2434r2;
                } else if (!c2434r4.f614i || (c2434r3 = c2434r4.f610e) == null) {
                    break;
                } else {
                    C2434r c2434r5 = c2434r3.f611f;
                    if (c2434r4 == c2434r5) {
                        c2434r5 = c2434r3.f612g;
                        if (c2434r5 == null || !c2434r5.f614i) {
                            if (c2434r2 == c2434r4.f612g) {
                                c2434r = m576h(c2434r, c2434r4);
                                C2434r c2434r6 = c2434r4.f610e;
                                c2434r3 = c2434r6 == null ? null : c2434r6.f610e;
                                c2434r4 = c2434r6;
                                c2434r2 = c2434r4;
                            }
                            if (c2434r4 != null) {
                                c2434r4.f614i = false;
                                if (c2434r3 != null) {
                                    c2434r3.f614i = true;
                                    c2434r = m575i(c2434r, c2434r3);
                                }
                            }
                        } else {
                            c2434r5.f614i = false;
                            c2434r4.f614i = false;
                            c2434r3.f614i = true;
                            c2434r2 = c2434r3;
                        }
                    } else if (c2434r5 == null || !c2434r5.f614i) {
                        if (c2434r2 == c2434r4.f611f) {
                            c2434r = m575i(c2434r, c2434r4);
                            C2434r c2434r7 = c2434r4.f610e;
                            c2434r3 = c2434r7 == null ? null : c2434r7.f610e;
                            c2434r4 = c2434r7;
                            c2434r2 = c2434r4;
                        }
                        if (c2434r4 != null) {
                            c2434r4.f614i = false;
                            if (c2434r3 != null) {
                                c2434r3.f614i = true;
                                c2434r = m576h(c2434r, c2434r3);
                            }
                        }
                    } else {
                        c2434r5.f614i = false;
                        c2434r4.f614i = false;
                        c2434r3.f614i = true;
                        c2434r2 = c2434r3;
                    }
                }
            }
            return c2434r;
        }

        /* renamed from: d */
        private final void m580d() {
            boolean z = false;
            while (true) {
                int i = this.lockState;
                if ((i & (-3)) == 0) {
                    if (f605h.compareAndSwapInt(this, f606i, i, 1)) {
                        break;
                    }
                } else if ((i & 2) == 0) {
                    if (f605h.compareAndSwapInt(this, f606i, i, i | 2)) {
                        z = true;
                        this.f609g = Thread.currentThread();
                    }
                } else if (z) {
                    LockSupport.park(this);
                }
            }
            if (z) {
                this.f609g = null;
            }
        }

        /* renamed from: e */
        private final void m579e() {
            if (f605h.compareAndSwapInt(this, f606i, 0, 1)) {
                return;
            }
            m580d();
        }

        /* renamed from: h */
        static C2434r m576h(C2434r c2434r, C2434r c2434r2) {
            C2434r c2434r3 = c2434r2.f612g;
            if (c2434r3 != null) {
                C2434r c2434r4 = c2434r3.f611f;
                c2434r2.f612g = c2434r4;
                if (c2434r4 != null) {
                    c2434r4.f610e = c2434r2;
                }
                C2434r c2434r5 = c2434r2.f610e;
                c2434r3.f610e = c2434r5;
                if (c2434r5 == null) {
                    c2434r3.f614i = false;
                    c2434r = c2434r3;
                } else if (c2434r5.f611f == c2434r2) {
                    c2434r5.f611f = c2434r3;
                } else {
                    c2434r5.f612g = c2434r3;
                }
                c2434r3.f611f = c2434r2;
                c2434r2.f610e = c2434r3;
            }
            return c2434r;
        }

        /* renamed from: i */
        static C2434r m575i(C2434r c2434r, C2434r c2434r2) {
            C2434r c2434r3 = c2434r2.f611f;
            if (c2434r3 != null) {
                C2434r c2434r4 = c2434r3.f612g;
                c2434r2.f611f = c2434r4;
                if (c2434r4 != null) {
                    c2434r4.f610e = c2434r2;
                }
                C2434r c2434r5 = c2434r2.f610e;
                c2434r3.f610e = c2434r5;
                if (c2434r5 == null) {
                    c2434r3.f614i = false;
                    c2434r = c2434r3;
                } else if (c2434r5.f612g == c2434r2) {
                    c2434r5.f612g = c2434r3;
                } else {
                    c2434r5.f611f = c2434r3;
                }
                c2434r3.f612g = c2434r2;
                c2434r2.f610e = c2434r3;
            }
            return c2434r;
        }

        /* renamed from: j */
        static int m574j(Object obj, Object obj2) {
            int compareTo;
            return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2428l
        /* renamed from: a */
        final C2428l mo573a(int i, Object obj) {
            Object obj2;
            Thread thread;
            Thread thread2;
            C2428l c2428l = this.f608f;
            while (true) {
                C2434r c2434r = null;
                if (c2428l == null) {
                    return null;
                }
                int i2 = this.lockState;
                if ((i2 & 3) == 0) {
                    Unsafe unsafe = f605h;
                    long j = f606i;
                    if (unsafe.compareAndSwapInt(this, j, i2, i2 + 4)) {
                        try {
                            C2434r c2434r2 = this.f607e;
                            if (c2434r2 != null) {
                                c2434r = c2434r2.m572b(i, obj, null);
                            }
                            if (AbstractC2444c.m558a(unsafe, this, j, -4) == 6 && (thread2 = this.f609g) != null) {
                                LockSupport.unpark(thread2);
                            }
                            return c2434r;
                        } catch (Throwable th) {
                            if (AbstractC2444c.m558a(f605h, this, f606i, -4) == 6 && (thread = this.f609g) != null) {
                                LockSupport.unpark(thread);
                            }
                            throw th;
                        }
                    }
                } else if (c2428l.f589a != i || ((obj2 = c2428l.f590b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                    c2428l = c2428l.f592d;
                }
            }
            return c2428l;
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
        final p034j$.util.concurrent.ConcurrentHashMap.C2434r m578f(int r16, java.lang.Object r17, java.lang.Object r18) {
            /*
                r15 = this;
                r1 = r15
                r0 = r16
                r4 = r17
                j$.util.concurrent.ConcurrentHashMap$r r2 = r1.f607e
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
                r1.f607e = r9
                r1.f608f = r9
                goto La3
            L22:
                int r5 = r10.f589a
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
                java.lang.Object r5 = r10.f590b
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
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f611f
                if (r3 == 0) goto L56
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m572b(r0, r4, r2)
                if (r3 != 0) goto L60
            L56:
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f612g
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
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f611f
                goto L70
            L6e:
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f612g
            L70:
                if (r5 != 0) goto La8
                j$.util.concurrent.ConcurrentHashMap$r r13 = r1.f608f
                j$.util.concurrent.ConcurrentHashMap$r r14 = new j$.util.concurrent.ConcurrentHashMap$r
                r2 = r14
                r3 = r16
                r4 = r17
                r5 = r18
                r6 = r13
                r7 = r10
                r2.<init>(r3, r4, r5, r6, r7)
                r1.f608f = r14
                if (r13 == 0) goto L88
                r13.f613h = r14
            L88:
                if (r12 > 0) goto L8d
                r10.f611f = r14
                goto L8f
            L8d:
                r10.f612g = r14
            L8f:
                boolean r0 = r10.f614i
                if (r0 != 0) goto L96
                r14.f614i = r11
                goto La3
            L96:
                r15.m579e()
                j$.util.concurrent.ConcurrentHashMap$r r0 = r1.f607e     // Catch: java.lang.Throwable -> La4
                j$.util.concurrent.ConcurrentHashMap$r r0 = m581c(r0, r14)     // Catch: java.lang.Throwable -> La4
                r1.f607e = r0     // Catch: java.lang.Throwable -> La4
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
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2433q.m578f(int, java.lang.Object, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$r");
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
        final boolean m577g(p034j$.util.concurrent.ConcurrentHashMap.C2434r r11) {
            /*
                Method dump skipped, instructions count: 205
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2433q.m577g(j$.util.concurrent.ConcurrentHashMap$r):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$r */
    /* loaded from: classes2.dex */
    public static final class C2434r extends C2428l {

        /* renamed from: e */
        C2434r f610e;

        /* renamed from: f */
        C2434r f611f;

        /* renamed from: g */
        C2434r f612g;

        /* renamed from: h */
        C2434r f613h;

        /* renamed from: i */
        boolean f614i;

        C2434r(int i, Object obj, Object obj2, C2428l c2428l, C2434r c2434r) {
            super(i, obj, obj2, c2428l);
            this.f610e = c2434r;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2428l
        /* renamed from: a */
        C2428l mo573a(int i, Object obj) {
            return m572b(i, obj, null);
        }

        /* renamed from: b */
        final C2434r m572b(int i, Object obj, Class cls) {
            int m600d;
            if (obj != null) {
                C2434r c2434r = this;
                do {
                    C2434r c2434r2 = c2434r.f611f;
                    C2434r c2434r3 = c2434r.f612g;
                    int i2 = c2434r.f589a;
                    if (i2 <= i) {
                        if (i2 >= i) {
                            Object obj2 = c2434r.f590b;
                            if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                                return c2434r;
                            }
                            if (c2434r2 != null) {
                                if (c2434r3 != null) {
                                    if ((cls == null && (cls = ConcurrentHashMap.m601c(obj)) == null) || (m600d = ConcurrentHashMap.m600d(cls, obj, obj2)) == 0) {
                                        C2434r m572b = c2434r3.m572b(i, obj, cls);
                                        if (m572b != null) {
                                            return m572b;
                                        }
                                    } else if (m600d >= 0) {
                                        c2434r2 = c2434r3;
                                    }
                                }
                            }
                        }
                        c2434r = c2434r3;
                        continue;
                    }
                    c2434r = c2434r2;
                    continue;
                } while (c2434r != null);
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$s */
    /* loaded from: classes2.dex */
    public static final class C2435s extends C2417a implements java.util.Iterator, Enumeration, p034j$.util.Iterator {
        C2435s(C2428l[] c2428lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2428lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C2885w.m109b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public final Object next() {
            C2428l c2428l = this.f598b;
            if (c2428l != null) {
                Object obj = c2428l.f591c;
                this.f580j = c2428l;
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
    public static final class C2436t extends C2432p implements InterfaceC2487s {

        /* renamed from: i */
        long f615i;

        C2436t(C2428l[] c2428lArr, int i, int i2, int i3, long j) {
            super(c2428lArr, i, i2, i3);
            this.f615i = j;
        }

        @Override // p034j$.util.InterfaceC2487s
        /* renamed from: b */
        public boolean mo128b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2428l m583a = m583a();
            if (m583a == null) {
                return false;
            }
            consumer.accept(m583a.f591c);
            return true;
        }

        @Override // p034j$.util.InterfaceC2487s
        public int characteristics() {
            return 4352;
        }

        @Override // p034j$.util.InterfaceC2487s
        public long estimateSize() {
            return this.f615i;
        }

        @Override // p034j$.util.InterfaceC2487s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2428l m583a = m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(m583a.f591c);
            }
        }

        @Override // p034j$.util.InterfaceC2487s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2487s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2414a.m622e(this);
        }

        @Override // p034j$.util.InterfaceC2487s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2414a.m621f(this, i);
        }

        @Override // p034j$.util.InterfaceC2487s
        public InterfaceC2487s trySplit() {
            int i = this.f602f;
            int i2 = this.f603g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2428l[] c2428lArr = this.f597a;
            int i4 = this.f604h;
            this.f603g = i3;
            long j = this.f615i >>> 1;
            this.f615i = j;
            return new C2436t(c2428lArr, i4, i3, i2, j);
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$u */
    /* loaded from: classes2.dex */
    static final class C2437u extends AbstractC2418b implements InterfaceC2415b {
        C2437u(ConcurrentHashMap concurrentHashMap) {
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2418b, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f581a.containsValue(obj);
        }

        @Override // p034j$.util.InterfaceC2415b, p034j$.lang.InterfaceC2361e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2428l[] c2428lArr = this.f581a.f573a;
            if (c2428lArr == null) {
                return;
            }
            C2432p c2432p = new C2432p(c2428lArr, c2428lArr.length, 0, c2428lArr.length);
            while (true) {
                C2428l m583a = c2432p.m583a();
                if (m583a == null) {
                    return;
                }
                consumer.accept(m583a.f591c);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C2885w.m109b(consumer));
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2418b, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f581a;
            C2428l[] c2428lArr = concurrentHashMap.f573a;
            int length = c2428lArr == null ? 0 : c2428lArr.length;
            return new C2435s(c2428lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2415b
        /* renamed from: k */
        public /* synthetic */ boolean mo571k(Predicate predicate) {
            return AbstractC2414a.m619h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C2830O0.m182n0(AbstractC2414a.m620g(this));
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            C2417a c2417a;
            if (obj != null) {
                java.util.Iterator it = iterator();
                do {
                    c2417a = (C2417a) it;
                    if (!c2417a.hasNext()) {
                        return false;
                    }
                } while (!obj.equals(((C2435s) it).next()));
                c2417a.remove();
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2414a.m619h(this, C2886w0.m108a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, p034j$.util.InterfaceC2415b, p034j$.lang.InterfaceC2361e
        public InterfaceC2487s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f581a;
            long m591m = concurrentHashMap.m591m();
            C2428l[] c2428lArr = concurrentHashMap.f573a;
            int length = c2428lArr == null ? 0 : c2428lArr.length;
            return new C2436t(c2428lArr, length, 0, length, m591m >= 0 ? m591m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable, p034j$.util.InterfaceC2415b, p034j$.lang.InterfaceC2361e
        public /* synthetic */ Spliterator spliterator() {
            return C2855h.m150a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2415b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2414a.m618i(this);
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2415b
        public /* synthetic */ Stream stream() {
            return C2830O0.m182n0(AbstractC2414a.m618i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C2833S.m178a(intFunction).apply(0));
        }
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", C2430n[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        try {
            Unsafe m556c = AbstractC2444c.m556c();
            f565h = m556c;
            f566i = m556c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("sizeCtl"));
            f567j = m556c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("transferIndex"));
            f568k = m556c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("baseCount"));
            f569l = m556c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("cellsBusy"));
            f570m = m556c.objectFieldOffset(C2419c.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
            f571n = m556c.arrayBaseOffset(C2428l[].class);
            int arrayIndexScale = m556c.arrayIndexScale(C2428l[].class);
            if (((arrayIndexScale - 1) & arrayIndexScale) != 0) {
                throw new Error("data type scale not a power of two");
            }
            f572o = 31 - Integer.numberOfLeadingZeros(arrayIndexScale);
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
            j$.util.concurrent.ConcurrentHashMap$c[] r0 = r11.f575c
            if (r0 != 0) goto L14
            sun.misc.Unsafe r1 = p034j$.util.concurrent.ConcurrentHashMap.f565h
            long r3 = p034j$.util.concurrent.ConcurrentHashMap.f568k
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
            sun.misc.Unsafe r3 = p034j$.util.concurrent.ConcurrentHashMap.f565h
            long r5 = p034j$.util.concurrent.ConcurrentHashMap.f570m
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
            j$.util.concurrent.ConcurrentHashMap$l[] r12 = r11.f573a
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
            j$.util.concurrent.ConcurrentHashMap$l[] r13 = r11.f574b
            if (r13 == 0) goto L93
            int r14 = r11.transferIndex
            if (r14 > 0) goto L6a
            goto L93
        L6a:
            sun.misc.Unsafe r0 = p034j$.util.concurrent.ConcurrentHashMap.f565h
            long r2 = p034j$.util.concurrent.ConcurrentHashMap.f566i
            int r5 = r4 + 1
            r1 = r11
            boolean r14 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r14 == 0) goto L8e
            r11.m588p(r12, r13)
            goto L8e
        L7b:
            sun.misc.Unsafe r0 = p034j$.util.concurrent.ConcurrentHashMap.f565h
            long r2 = p034j$.util.concurrent.ConcurrentHashMap.f566i
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
    static final boolean m602b(C2428l[] c2428lArr, int i, C2428l c2428l, C2428l c2428l2) {
        return f565h.compareAndSwapObject(c2428lArr, (i << f572o) + f571n, (Object) null, c2428l2);
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
        if (r24.f575c != r7) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009d, code lost:
        r1 = new p034j$.util.concurrent.ConcurrentHashMap.C2419c[r8 << 1];
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
        r24.f575c = r1;
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
    private final C2428l[] m597g() {
        while (true) {
            C2428l[] c2428lArr = this.f573a;
            if (c2428lArr != null && c2428lArr.length != 0) {
                return c2428lArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (f565h.compareAndSwapInt(this, f566i, i, -1)) {
                try {
                    C2428l[] c2428lArr2 = this.f573a;
                    if (c2428lArr2 == null || c2428lArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        C2428l[] c2428lArr3 = new C2428l[i2];
                        this.f573a = c2428lArr3;
                        i = i2 - (i2 >>> 2);
                        c2428lArr2 = c2428lArr3;
                    }
                    this.sizeCtl = i;
                    return c2428lArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* renamed from: j */
    static final int m594j(int i) {
        return Integer.numberOfLeadingZeros(i) | 32768;
    }

    /* renamed from: k */
    static final void m593k(C2428l[] c2428lArr, int i, C2428l c2428l) {
        f565h.putObjectVolatile(c2428lArr, (i << f572o) + f571n, c2428l);
    }

    /* renamed from: l */
    static final int m592l(int i) {
        return (i ^ (i >>> 16)) & Integer.MAX_VALUE;
    }

    /* renamed from: n */
    static final C2428l m590n(C2428l[] c2428lArr, int i) {
        return (C2428l) f565h.getObjectVolatile(c2428lArr, (i << f572o) + f571n);
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
    private final void m588p(C2428l[] c2428lArr, C2428l[] c2428lArr2) {
        C2428l[] c2428lArr3;
        C2428l[] c2428lArr4;
        int i;
        int i2;
        int i3;
        int i4;
        C2423g c2423g;
        C2434r c2434r;
        int i5;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = c2428lArr.length;
        int i6 = f564g;
        int i7 = i6 > 1 ? (length >>> 3) / i6 : length;
        int i8 = i7 < 16 ? 16 : i7;
        if (c2428lArr2 == null) {
            try {
                C2428l[] c2428lArr5 = new C2428l[length << 1];
                concurrentHashMap.f574b = c2428lArr5;
                concurrentHashMap.transferIndex = length;
                c2428lArr3 = c2428lArr5;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            c2428lArr3 = c2428lArr2;
        }
        int length2 = c2428lArr3.length;
        C2423g c2423g2 = new C2423g(c2428lArr3);
        C2428l[] c2428lArr6 = c2428lArr;
        int i9 = 0;
        int i10 = 0;
        boolean z = true;
        boolean z2 = false;
        while (true) {
            if (z) {
                int i11 = i9 - 1;
                if (i11 >= i10 || z2) {
                    c2428lArr4 = c2428lArr6;
                    i9 = i11;
                    i10 = i10;
                } else {
                    int i12 = concurrentHashMap.transferIndex;
                    if (i12 <= 0) {
                        c2428lArr4 = c2428lArr6;
                        i9 = -1;
                    } else {
                        Unsafe unsafe = f565h;
                        long j = f567j;
                        int i13 = i12 > i8 ? i12 - i8 : 0;
                        c2428lArr4 = c2428lArr6;
                        i = i10;
                        if (unsafe.compareAndSwapInt(this, j, i12, i13)) {
                            i9 = i12 - 1;
                            i10 = i13;
                        } else {
                            c2428lArr6 = c2428lArr4;
                            i9 = i11;
                            i10 = i;
                        }
                    }
                }
                c2428lArr6 = c2428lArr4;
                z = false;
            } else {
                C2428l[] c2428lArr7 = c2428lArr6;
                i = i10;
                C2434r c2434r2 = null;
                if (i9 < 0 || i9 >= length || (i2 = i9 + length) >= length2) {
                    int i14 = i8;
                    int i15 = length2;
                    C2423g c2423g3 = c2423g2;
                    if (z2) {
                        this.f574b = null;
                        this.f573a = c2428lArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    Unsafe unsafe2 = f565h;
                    long j2 = f566i;
                    int i16 = this.sizeCtl;
                    int i17 = i9;
                    if (!unsafe2.compareAndSwapInt(this, j2, i16, i16 - 1)) {
                        c2423g2 = c2423g3;
                        concurrentHashMap = this;
                        i9 = i17;
                        c2428lArr6 = c2428lArr7;
                        i10 = i;
                        i8 = i14;
                        length2 = i15;
                    } else if (i16 - 2 != (m594j(length) << 16)) {
                        return;
                    } else {
                        c2423g2 = c2423g3;
                        i9 = length;
                        concurrentHashMap = this;
                        c2428lArr6 = c2428lArr7;
                        i10 = i;
                        i8 = i14;
                        length2 = i15;
                        z = true;
                        z2 = true;
                    }
                } else {
                    C2428l m590n = m590n(c2428lArr7, i9);
                    if (m590n == null) {
                        z = m602b(c2428lArr7, i9, null, c2423g2);
                        c2428lArr6 = c2428lArr7;
                        i10 = i;
                    } else {
                        int i18 = m590n.f589a;
                        if (i18 == -1) {
                            c2428lArr6 = c2428lArr7;
                            i10 = i;
                            z = true;
                        } else {
                            synchronized (m590n) {
                                if (m590n(c2428lArr7, i9) == m590n) {
                                    if (i18 >= 0) {
                                        int i19 = i18 & length;
                                        C2434r c2434r3 = m590n;
                                        for (C2434r c2434r4 = m590n.f592d; c2434r4 != null; c2434r4 = c2434r4.f592d) {
                                            int i20 = c2434r4.f589a & length;
                                            if (i20 != i19) {
                                                c2434r3 = c2434r4;
                                                i19 = i20;
                                            }
                                        }
                                        if (i19 == 0) {
                                            c2434r = null;
                                            c2434r2 = c2434r3;
                                        } else {
                                            c2434r = c2434r3;
                                        }
                                        C2428l c2428l = m590n;
                                        while (c2428l != c2434r3) {
                                            int i21 = c2428l.f589a;
                                            C2434r c2434r5 = c2434r3;
                                            Object obj = c2428l.f590b;
                                            int i22 = i8;
                                            Object obj2 = c2428l.f591c;
                                            if ((i21 & length) == 0) {
                                                i5 = length2;
                                                c2434r2 = new C2428l(i21, obj, obj2, c2434r2);
                                            } else {
                                                i5 = length2;
                                                c2434r = new C2428l(i21, obj, obj2, c2434r);
                                            }
                                            c2428l = c2428l.f592d;
                                            c2434r3 = c2434r5;
                                            i8 = i22;
                                            length2 = i5;
                                        }
                                        i3 = i8;
                                        i4 = length2;
                                        m593k(c2428lArr3, i9, c2434r2);
                                        m593k(c2428lArr3, i2, c2434r);
                                        m593k(c2428lArr7, i9, c2423g2);
                                        c2423g = c2423g2;
                                        c2428lArr6 = c2428lArr7;
                                    } else {
                                        i3 = i8;
                                        i4 = length2;
                                        if (m590n instanceof C2433q) {
                                            C2433q c2433q = (C2433q) m590n;
                                            C2434r c2434r6 = null;
                                            C2434r c2434r7 = null;
                                            C2428l c2428l2 = c2433q.f608f;
                                            int i23 = 0;
                                            int i24 = 0;
                                            C2434r c2434r8 = null;
                                            while (c2428l2 != null) {
                                                C2433q c2433q2 = c2433q;
                                                int i25 = c2428l2.f589a;
                                                C2423g c2423g4 = c2423g2;
                                                C2434r c2434r9 = new C2434r(i25, c2428l2.f590b, c2428l2.f591c, null, null);
                                                if ((i25 & length) == 0) {
                                                    c2434r9.f613h = c2434r7;
                                                    if (c2434r7 == null) {
                                                        c2434r2 = c2434r9;
                                                    } else {
                                                        c2434r7.f592d = c2434r9;
                                                    }
                                                    i23++;
                                                    c2434r7 = c2434r9;
                                                } else {
                                                    c2434r9.f613h = c2434r6;
                                                    if (c2434r6 == null) {
                                                        c2434r8 = c2434r9;
                                                    } else {
                                                        c2434r6.f592d = c2434r9;
                                                    }
                                                    i24++;
                                                    c2434r6 = c2434r9;
                                                }
                                                c2428l2 = c2428l2.f592d;
                                                c2433q = c2433q2;
                                                c2423g2 = c2423g4;
                                            }
                                            C2433q c2433q3 = c2433q;
                                            C2423g c2423g5 = c2423g2;
                                            C2428l m585s = i23 <= 6 ? m585s(c2434r2) : i24 != 0 ? new C2433q(c2434r2) : c2433q3;
                                            C2428l m585s2 = i24 <= 6 ? m585s(c2434r8) : i23 != 0 ? new C2433q(c2434r8) : c2433q3;
                                            m593k(c2428lArr3, i9, m585s);
                                            m593k(c2428lArr3, i2, m585s2);
                                            c2423g = c2423g5;
                                            m593k(c2428lArr, i9, c2423g);
                                            c2428lArr6 = c2428lArr;
                                        }
                                    }
                                    z = true;
                                } else {
                                    i3 = i8;
                                    i4 = length2;
                                }
                                c2423g = c2423g2;
                                c2428lArr6 = c2428lArr7;
                            }
                            c2423g2 = c2423g;
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
    private final void m587q(C2428l[] c2428lArr, int i) {
        int length = c2428lArr.length;
        if (length < 64) {
            m586r(length << 1);
            return;
        }
        C2428l m590n = m590n(c2428lArr, i);
        if (m590n == null || m590n.f589a < 0) {
            return;
        }
        synchronized (m590n) {
            if (m590n(c2428lArr, i) == m590n) {
                C2434r c2434r = null;
                C2428l c2428l = m590n;
                C2434r c2434r2 = null;
                while (c2428l != null) {
                    C2434r c2434r3 = new C2434r(c2428l.f589a, c2428l.f590b, c2428l.f591c, null, null);
                    c2434r3.f613h = c2434r2;
                    if (c2434r2 == null) {
                        c2434r = c2434r3;
                    } else {
                        c2434r2.f592d = c2434r3;
                    }
                    c2428l = c2428l.f592d;
                    c2434r2 = c2434r3;
                }
                m593k(c2428lArr, i, new C2433q(c2434r));
            }
        }
    }

    /* renamed from: r */
    private final void m586r(int i) {
        int length;
        C2428l[] c2428lArr;
        int m589o = i >= 536870912 ? 1073741824 : m589o(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                return;
            }
            C2428l[] c2428lArr2 = this.f573a;
            if (c2428lArr2 == null || (length = c2428lArr2.length) == 0) {
                int i3 = i2 > m589o ? i2 : m589o;
                if (f565h.compareAndSwapInt(this, f566i, i2, -1)) {
                    try {
                        if (this.f573a == c2428lArr2) {
                            this.f573a = new C2428l[i3];
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
                if (c2428lArr2 == this.f573a) {
                    int m594j = m594j(length);
                    if (i2 < 0) {
                        if ((i2 >>> 16) != m594j || i2 == m594j + 1 || i2 == m594j + RtpPacket.MAX_SEQUENCE_NUMBER || (c2428lArr = this.f574b) == null || this.transferIndex <= 0) {
                            return;
                        }
                        if (f565h.compareAndSwapInt(this, f566i, i2, i2 + 1)) {
                            m588p(c2428lArr2, c2428lArr);
                        }
                    } else if (f565h.compareAndSwapInt(this, f566i, i2, (m594j << 16) + 2)) {
                        m588p(c2428lArr2, null);
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
        C2428l c2428l = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j3++;
            c2428l = new C2428l(m592l(readObject.hashCode()), readObject, readObject2, c2428l);
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
        C2428l[] c2428lArr = new C2428l[m589o];
        int i2 = m589o - 1;
        while (c2428l != null) {
            C2428l c2428l2 = c2428l.f592d;
            int i3 = c2428l.f589a;
            int i4 = i3 & i2;
            C2428l m590n = m590n(c2428lArr, i4);
            if (m590n == null) {
                z = true;
            } else {
                Object obj2 = c2428l.f590b;
                if (m590n.f589a >= 0) {
                    int i5 = 0;
                    for (C2428l c2428l3 = m590n; c2428l3 != null; c2428l3 = c2428l3.f592d) {
                        if (c2428l3.f589a == i3 && ((obj = c2428l3.f590b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i5++;
                    }
                    z = true;
                    if (z && i5 >= 8) {
                        j2++;
                        c2428l.f592d = m590n;
                        C2428l c2428l4 = c2428l;
                        C2434r c2434r = null;
                        C2434r c2434r2 = null;
                        while (c2428l4 != null) {
                            long j4 = j2;
                            C2434r c2434r3 = new C2434r(c2428l4.f589a, c2428l4.f590b, c2428l4.f591c, null, null);
                            c2434r3.f613h = c2434r2;
                            if (c2434r2 == null) {
                                c2434r = c2434r3;
                            } else {
                                c2434r2.f592d = c2434r3;
                            }
                            c2428l4 = c2428l4.f592d;
                            c2434r2 = c2434r3;
                            j2 = j4;
                        }
                        m593k(c2428lArr, i4, new C2433q(c2434r));
                    }
                } else if (((C2433q) m590n).m578f(i3, obj2, c2428l.f591c) == null) {
                    j2 += j;
                }
                z = false;
            }
            if (z) {
                j2++;
                c2428l.f592d = m590n;
                m593k(c2428lArr, i4, c2428l);
            }
            j = 1;
            c2428l = c2428l2;
        }
        this.f573a = c2428lArr;
        this.sizeCtl = m589o - (m589o >>> 2);
        this.baseCount = j2;
    }

    /* renamed from: s */
    static C2428l m585s(C2428l c2428l) {
        C2428l c2428l2 = null;
        C2428l c2428l3 = null;
        while (c2428l != null) {
            C2428l c2428l4 = new C2428l(c2428l.f589a, c2428l.f590b, c2428l.f591c, null);
            if (c2428l3 == null) {
                c2428l2 = c2428l4;
            } else {
                c2428l3.f592d = c2428l4;
            }
            c2428l = c2428l.f592d;
            c2428l3 = c2428l4;
        }
        return c2428l2;
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
        C2430n[] c2430nArr = new C2430n[16];
        for (int i5 = 0; i5 < 16; i5++) {
            c2430nArr[i5] = new C2430n(0.75f);
        }
        objectOutputStream.putFields().put("segments", c2430nArr);
        objectOutputStream.putFields().put("segmentShift", i3);
        objectOutputStream.putFields().put("segmentMask", i4);
        objectOutputStream.writeFields();
        C2428l[] c2428lArr = this.f573a;
        if (c2428lArr != null) {
            C2432p c2432p = new C2432p(c2428lArr, c2428lArr.length, 0, c2428lArr.length);
            while (true) {
                C2428l m583a = c2432p.m583a();
                if (m583a == null) {
                    break;
                }
                objectOutputStream.writeObject(m583a.f590b);
                objectOutputStream.writeObject(m583a.f591c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public void clear() {
        C2428l m590n;
        C2428l[] c2428lArr = this.f573a;
        long j = 0;
        loop0: while (true) {
            int i = 0;
            while (c2428lArr != null && i < c2428lArr.length) {
                m590n = m590n(c2428lArr, i);
                if (m590n == null) {
                    i++;
                } else {
                    int i2 = m590n.f589a;
                    if (i2 == -1) {
                        break;
                    }
                    synchronized (m590n) {
                        if (m590n(c2428lArr, i) == m590n) {
                            for (C2428l c2428l = i2 >= 0 ? m590n : m590n instanceof C2433q ? ((C2433q) m590n).f608f : null; c2428l != null; c2428l = c2428l.f592d) {
                                j--;
                            }
                            m593k(c2428lArr, i, null);
                            i++;
                        }
                    }
                }
            }
            c2428lArr = m598f(c2428lArr, m590n);
        }
        if (j != 0) {
            m603a(j, -1);
        }
    }

    @Override // p034j$.util.Map
    public Object compute(Object obj, BiFunction biFunction) {
        int i;
        C2428l c2428l;
        Object obj2;
        Object obj3;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m592l = m592l(obj.hashCode());
        C2428l[] c2428lArr = this.f573a;
        int i2 = 0;
        Object obj4 = null;
        int i3 = 0;
        while (true) {
            if (c2428lArr != null) {
                int length = c2428lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m592l;
                    C2428l m590n = m590n(c2428lArr, i4);
                    if (m590n == null) {
                        C2429m c2429m = new C2429m();
                        synchronized (c2429m) {
                            if (m602b(c2428lArr, i4, null, c2429m)) {
                                Object apply = biFunction.apply(obj, null);
                                if (apply != null) {
                                    c2428l = new C2428l(m592l, obj, apply, null);
                                    i = 1;
                                } else {
                                    i = i2;
                                    c2428l = null;
                                }
                                m593k(c2428lArr, i4, c2428l);
                                i2 = i;
                                obj4 = apply;
                                i3 = 1;
                            }
                        }
                        if (i3 != 0) {
                            break;
                        }
                    } else {
                        int i5 = m590n.f589a;
                        if (i5 == -1) {
                            c2428lArr = m598f(c2428lArr, m590n);
                        } else {
                            synchronized (m590n) {
                                if (m590n(c2428lArr, i4) == m590n) {
                                    if (i5 >= 0) {
                                        C2428l c2428l2 = null;
                                        C2428l c2428l3 = m590n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2428l3.f589a != m592l || ((obj3 = c2428l3.f590b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2428l c2428l4 = c2428l3.f592d;
                                                if (c2428l4 == null) {
                                                    Object apply2 = biFunction.apply(obj, null);
                                                    if (apply2 != null) {
                                                        c2428l3.f592d = new C2428l(m592l, obj, apply2, null);
                                                        i2 = 1;
                                                    }
                                                    obj2 = apply2;
                                                } else {
                                                    i6++;
                                                    c2428l2 = c2428l3;
                                                    c2428l3 = c2428l4;
                                                }
                                            }
                                        }
                                        obj2 = biFunction.apply(obj, c2428l3.f591c);
                                        if (obj2 != null) {
                                            c2428l3.f591c = obj2;
                                        } else {
                                            C2428l c2428l5 = c2428l3.f592d;
                                            if (c2428l2 != null) {
                                                c2428l2.f592d = c2428l5;
                                            } else {
                                                m593k(c2428lArr, i4, c2428l5);
                                            }
                                            i2 = -1;
                                        }
                                        i3 = i6;
                                        obj4 = obj2;
                                    } else if (m590n instanceof C2433q) {
                                        C2433q c2433q = (C2433q) m590n;
                                        C2434r c2434r = c2433q.f607e;
                                        C2434r m572b = c2434r != null ? c2434r.m572b(m592l, obj, null) : null;
                                        Object apply3 = biFunction.apply(obj, m572b == null ? null : m572b.f591c);
                                        if (apply3 != null) {
                                            if (m572b != null) {
                                                m572b.f591c = apply3;
                                            } else {
                                                c2433q.m578f(m592l, obj, apply3);
                                                i2 = 1;
                                            }
                                        } else if (m572b != null) {
                                            if (c2433q.m577g(m572b)) {
                                                m593k(c2428lArr, i4, m585s(c2433q.f608f));
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
                                    m587q(c2428lArr, i4);
                                }
                            }
                        }
                    }
                }
            }
            c2428lArr = m597g();
        }
        if (i2 != 0) {
            m603a(i2, i3);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object compute(Object obj, java.util.function.BiFunction biFunction) {
        return compute(obj, C2877s.m117a(biFunction));
    }

    @Override // p034j$.util.concurrent.InterfaceC2443b, p034j$.util.Map
    public Object computeIfAbsent(Object obj, Function function) {
        int i;
        Object apply;
        C2434r m572b;
        Object obj2;
        Object obj3;
        if (obj == null || function == null) {
            throw null;
        }
        int m592l = m592l(obj.hashCode());
        C2428l[] c2428lArr = this.f573a;
        Object obj4 = null;
        int i2 = 0;
        while (true) {
            if (c2428lArr != null) {
                int length = c2428lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m592l;
                    C2428l m590n = m590n(c2428lArr, i3);
                    boolean z = true;
                    if (m590n == null) {
                        C2429m c2429m = new C2429m();
                        synchronized (c2429m) {
                            if (m602b(c2428lArr, i3, null, c2429m)) {
                                Object apply2 = function.apply(obj);
                                m593k(c2428lArr, i3, apply2 != null ? new C2428l(m592l, obj, apply2, null) : null);
                                obj4 = apply2;
                                i2 = 1;
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    } else {
                        int i4 = m590n.f589a;
                        if (i4 == -1) {
                            c2428lArr = m598f(c2428lArr, m590n);
                        } else {
                            synchronized (m590n) {
                                if (m590n(c2428lArr, i3) == m590n) {
                                    if (i4 >= 0) {
                                        C2428l c2428l = m590n;
                                        i = 1;
                                        while (true) {
                                            if (c2428l.f589a != m592l || ((obj3 = c2428l.f590b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2428l c2428l2 = c2428l.f592d;
                                                if (c2428l2 == null) {
                                                    apply = function.apply(obj);
                                                    if (apply != null) {
                                                        c2428l.f592d = new C2428l(m592l, obj, apply, null);
                                                    }
                                                } else {
                                                    i++;
                                                    c2428l = c2428l2;
                                                }
                                            }
                                        }
                                        obj2 = c2428l.f591c;
                                        z = false;
                                        int i5 = i;
                                        obj4 = obj2;
                                        i2 = i5;
                                    } else if (m590n instanceof C2433q) {
                                        i = 2;
                                        C2433q c2433q = (C2433q) m590n;
                                        C2434r c2434r = c2433q.f607e;
                                        if (c2434r == null || (m572b = c2434r.m572b(m592l, obj, null)) == null) {
                                            apply = function.apply(obj);
                                            if (apply != null) {
                                                c2433q.m578f(m592l, obj, apply);
                                                i2 = i;
                                                obj4 = apply;
                                            }
                                            z = false;
                                            i2 = i;
                                            obj4 = apply;
                                        } else {
                                            obj2 = m572b.f591c;
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
                                    m587q(c2428lArr, i3);
                                }
                                if (!z) {
                                    return obj4;
                                }
                            }
                        }
                    }
                }
            }
            c2428lArr = m597g();
        }
        if (obj4 != null) {
            m603a(1L, i2);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
        return computeIfAbsent(obj, C2823L.m204a(function));
    }

    @Override // p034j$.util.Map
    public Object computeIfPresent(Object obj, BiFunction biFunction) {
        C2434r m572b;
        C2428l m585s;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m592l = m592l(obj.hashCode());
        C2428l[] c2428lArr = this.f573a;
        int i = 0;
        Object obj3 = null;
        int i2 = 0;
        while (true) {
            if (c2428lArr != null) {
                int length = c2428lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m592l;
                    C2428l m590n = m590n(c2428lArr, i3);
                    if (m590n == null) {
                        break;
                    }
                    int i4 = m590n.f589a;
                    if (i4 == -1) {
                        c2428lArr = m598f(c2428lArr, m590n);
                    } else {
                        synchronized (m590n) {
                            if (m590n(c2428lArr, i3) == m590n) {
                                if (i4 >= 0) {
                                    i2 = 1;
                                    C2428l c2428l = null;
                                    C2428l c2428l2 = m590n;
                                    while (true) {
                                        if (c2428l2.f589a != m592l || ((obj2 = c2428l2.f590b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                            C2428l c2428l3 = c2428l2.f592d;
                                            if (c2428l3 == null) {
                                                break;
                                            }
                                            i2++;
                                            c2428l = c2428l2;
                                            c2428l2 = c2428l3;
                                        }
                                    }
                                    obj3 = biFunction.apply(obj, c2428l2.f591c);
                                    if (obj3 != null) {
                                        c2428l2.f591c = obj3;
                                    } else {
                                        m585s = c2428l2.f592d;
                                        if (c2428l != null) {
                                            c2428l.f592d = m585s;
                                            i = -1;
                                        }
                                        m593k(c2428lArr, i3, m585s);
                                        i = -1;
                                    }
                                } else if (m590n instanceof C2433q) {
                                    i2 = 2;
                                    C2433q c2433q = (C2433q) m590n;
                                    C2434r c2434r = c2433q.f607e;
                                    if (c2434r != null && (m572b = c2434r.m572b(m592l, obj, null)) != null) {
                                        obj3 = biFunction.apply(obj, m572b.f591c);
                                        if (obj3 != null) {
                                            m572b.f591c = obj3;
                                        } else {
                                            if (c2433q.m577g(m572b)) {
                                                m585s = m585s(c2433q.f608f);
                                                m593k(c2428lArr, i3, m585s);
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
            c2428lArr = m597g();
        }
        if (i != 0) {
            m603a(i, i2);
        }
        return obj3;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfPresent(Object obj, java.util.function.BiFunction biFunction) {
        return computeIfPresent(obj, C2877s.m117a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean containsValue(Object obj) {
        Objects.requireNonNull(obj);
        C2428l[] c2428lArr = this.f573a;
        if (c2428lArr != null) {
            C2432p c2432p = new C2432p(c2428lArr, c2428lArr.length, 0, c2428lArr.length);
            while (true) {
                C2428l m583a = c2432p.m583a();
                if (m583a == null) {
                    break;
                }
                Object obj2 = m583a.f591c;
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
        C2421e c2421e = this.f578f;
        if (c2421e != null) {
            return c2421e;
        }
        C2421e c2421e2 = new C2421e(this);
        this.f578f = c2421e2;
        return c2421e2;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean equals(Object obj) {
        V value;
        V v;
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                C2428l[] c2428lArr = this.f573a;
                int length = c2428lArr == null ? 0 : c2428lArr.length;
                C2432p c2432p = new C2432p(c2428lArr, length, 0, length);
                while (true) {
                    C2428l m583a = c2432p.m583a();
                    if (m583a == null) {
                        for (Map.Entry<K, V> entry : map.entrySet()) {
                            K key = entry.getKey();
                            if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                                return false;
                            }
                        }
                        return true;
                    }
                    Object obj2 = m583a.f591c;
                    Object obj3 = map.get(m583a.f590b);
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
    final C2428l[] m598f(C2428l[] c2428lArr, C2428l c2428l) {
        C2428l[] c2428lArr2;
        int i;
        if (!(c2428l instanceof C2423g) || (c2428lArr2 = ((C2423g) c2428l).f584e) == null) {
            return this.f573a;
        }
        int m594j = m594j(c2428lArr.length);
        while (true) {
            if (c2428lArr2 != this.f574b || this.f573a != c2428lArr || (i = this.sizeCtl) >= 0 || (i >>> 16) != m594j || i == m594j + 1 || i == RtpPacket.MAX_SEQUENCE_NUMBER + m594j || this.transferIndex <= 0) {
                break;
            } else if (f565h.compareAndSwapInt(this, f566i, i, i + 1)) {
                m588p(c2428lArr, c2428lArr2);
                break;
            }
        }
        return c2428lArr2;
    }

    @Override // p034j$.util.concurrent.InterfaceC2443b, p034j$.util.Map
    public void forEach(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2428l[] c2428lArr = this.f573a;
        if (c2428lArr == null) {
            return;
        }
        C2432p c2432p = new C2432p(c2428lArr, c2428lArr.length, 0, c2428lArr.length);
        while (true) {
            C2428l m583a = c2432p.m583a();
            if (m583a == null) {
                return;
            }
            biConsumer.accept(m583a.f590b, m583a.f591c);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void forEach(java.util.function.BiConsumer biConsumer) {
        forEach(C2873q.m122a(biConsumer));
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
        return (V) r1.f591c;
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
            j$.util.concurrent.ConcurrentHashMap$l[] r1 = r4.f573a
            r2 = 0
            if (r1 == 0) goto L4e
            int r3 = r1.length
            if (r3 <= 0) goto L4e
            int r3 = r3 + (-1)
            r3 = r3 & r0
            j$.util.concurrent.ConcurrentHashMap$l r1 = m590n(r1, r3)
            if (r1 == 0) goto L4e
            int r3 = r1.f589a
            if (r3 != r0) goto L2c
            java.lang.Object r3 = r1.f590b
            if (r3 == r5) goto L29
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L29:
            java.lang.Object r5 = r1.f591c
            return r5
        L2c:
            if (r3 >= 0) goto L37
            j$.util.concurrent.ConcurrentHashMap$l r5 = r1.mo573a(r0, r5)
            if (r5 == 0) goto L36
            java.lang.Object r2 = r5.f591c
        L36:
            return r2
        L37:
            j$.util.concurrent.ConcurrentHashMap$l r1 = r1.f592d
            if (r1 == 0) goto L4e
            int r3 = r1.f589a
            if (r3 != r0) goto L37
            java.lang.Object r3 = r1.f590b
            if (r3 == r5) goto L4b
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L4b:
            java.lang.Object r5 = r1.f591c
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
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.f573a
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
            int r6 = r5.f589a
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
            int r7 = r6.f589a     // Catch: java.lang.Throwable -> L8f
            if (r7 != r1) goto L58
            java.lang.Object r7 = r6.f590b     // Catch: java.lang.Throwable -> L8f
            if (r7 == r9) goto L51
            if (r7 == 0) goto L58
            boolean r7 = r9.equals(r7)     // Catch: java.lang.Throwable -> L8f
            if (r7 == 0) goto L58
        L51:
            java.lang.Object r7 = r6.f591c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
        L55:
            r6.f591c = r10     // Catch: java.lang.Throwable -> L8f
            goto L7c
        L58:
            j$.util.concurrent.ConcurrentHashMap$l r7 = r6.f592d     // Catch: java.lang.Throwable -> L8f
            if (r7 != 0) goto L64
            j$.util.concurrent.ConcurrentHashMap$l r7 = new j$.util.concurrent.ConcurrentHashMap$l     // Catch: java.lang.Throwable -> L8f
            r7.<init>(r1, r9, r10, r0)     // Catch: java.lang.Throwable -> L8f
            r6.f592d = r7     // Catch: java.lang.Throwable -> L8f
            goto L7b
        L64:
            int r2 = r2 + 1
            r6 = r7
            goto L41
        L68:
            boolean r6 = r5 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2433q     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            r2 = 2
            r6 = r5
            j$.util.concurrent.ConcurrentHashMap$q r6 = (p034j$.util.concurrent.ConcurrentHashMap.C2433q) r6     // Catch: java.lang.Throwable -> L8f
            j$.util.concurrent.ConcurrentHashMap$r r6 = r6.m578f(r1, r9, r10)     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            java.lang.Object r7 = r6.f591c     // Catch: java.lang.Throwable -> L8f
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
        C2428l[] c2428lArr = this.f573a;
        int i = 0;
        if (c2428lArr != null) {
            C2432p c2432p = new C2432p(c2428lArr, c2428lArr.length, 0, c2428lArr.length);
            while (true) {
                C2428l m583a = c2432p.m583a();
                if (m583a == null) {
                    break;
                }
                i += m583a.f591c.hashCode() ^ m583a.f590b.hashCode();
            }
        }
        return i;
    }

    /* renamed from: i */
    final Object m595i(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        C2428l m590n;
        Object obj4;
        C2434r m572b;
        C2428l m585s;
        Object obj5;
        int m592l = m592l(obj.hashCode());
        C2428l[] c2428lArr = this.f573a;
        while (true) {
            if (c2428lArr == null || (length = c2428lArr.length) == 0 || (m590n = m590n(c2428lArr, (i = (length - 1) & m592l))) == null) {
                break;
            }
            int i2 = m590n.f589a;
            if (i2 == -1) {
                c2428lArr = m598f(c2428lArr, m590n);
            } else {
                boolean z = false;
                synchronized (m590n) {
                    if (m590n(c2428lArr, i) == m590n) {
                        if (i2 >= 0) {
                            C2428l c2428l = null;
                            C2428l c2428l2 = m590n;
                            while (true) {
                                if (c2428l2.f589a != m592l || ((obj5 = c2428l2.f590b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                    C2428l c2428l3 = c2428l2.f592d;
                                    if (c2428l3 == null) {
                                        break;
                                    }
                                    c2428l = c2428l2;
                                    c2428l2 = c2428l3;
                                }
                            }
                            obj4 = c2428l2.f591c;
                            if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                if (obj2 != null) {
                                    c2428l2.f591c = obj2;
                                } else if (c2428l != null) {
                                    c2428l.f592d = c2428l2.f592d;
                                } else {
                                    m585s = c2428l2.f592d;
                                    m593k(c2428lArr, i, m585s);
                                }
                                z = true;
                            }
                            obj4 = null;
                            z = true;
                        } else if (m590n instanceof C2433q) {
                            C2433q c2433q = (C2433q) m590n;
                            C2434r c2434r = c2433q.f607e;
                            if (c2434r != null && (m572b = c2434r.m572b(m592l, obj, null)) != null) {
                                obj4 = m572b.f591c;
                                if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                    if (obj2 != null) {
                                        m572b.f591c = obj2;
                                    } else if (c2433q.m577g(m572b)) {
                                        m585s = m585s(c2433q.f608f);
                                        m593k(c2428lArr, i, m585s);
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
        C2425i c2425i = this.f576d;
        if (c2425i != null) {
            return c2425i;
        }
        C2425i c2425i2 = new C2425i(this, null);
        this.f576d = c2425i2;
        return c2425i2;
    }

    /* renamed from: m */
    final long m591m() {
        C2419c[] c2419cArr = this.f575c;
        long j = this.baseCount;
        if (c2419cArr != null) {
            for (C2419c c2419c : c2419cArr) {
                if (c2419c != null) {
                    j += c2419c.value;
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
        C2428l[] c2428lArr = this.f573a;
        int i2 = 0;
        Object obj6 = null;
        int i3 = 0;
        while (true) {
            if (c2428lArr != null) {
                int length = c2428lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m592l;
                    C2428l m590n = m590n(c2428lArr, i4);
                    i = 1;
                    if (m590n != null) {
                        int i5 = m590n.f589a;
                        if (i5 == -1) {
                            c2428lArr = m598f(c2428lArr, m590n);
                        } else {
                            synchronized (m590n) {
                                if (m590n(c2428lArr, i4) == m590n) {
                                    if (i5 >= 0) {
                                        C2428l c2428l = null;
                                        C2428l c2428l2 = m590n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2428l2.f589a != m592l || ((obj4 = c2428l2.f590b) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                C2428l c2428l3 = c2428l2.f592d;
                                                if (c2428l3 == null) {
                                                    c2428l2.f592d = new C2428l(m592l, obj, obj5, null);
                                                    obj3 = obj5;
                                                    break;
                                                }
                                                i6++;
                                                c2428l = c2428l2;
                                                c2428l2 = c2428l3;
                                            }
                                        }
                                        Object apply = biFunction.apply(c2428l2.f591c, obj5);
                                        if (apply != null) {
                                            c2428l2.f591c = apply;
                                        } else {
                                            C2428l c2428l4 = c2428l2.f592d;
                                            if (c2428l != null) {
                                                c2428l.f592d = c2428l4;
                                            } else {
                                                m593k(c2428lArr, i4, c2428l4);
                                            }
                                            i2 = -1;
                                        }
                                        i = i2;
                                        obj3 = apply;
                                        i3 = i6;
                                        obj6 = obj3;
                                        i2 = i;
                                    } else if (m590n instanceof C2433q) {
                                        i3 = 2;
                                        C2433q c2433q = (C2433q) m590n;
                                        C2434r c2434r = c2433q.f607e;
                                        C2434r m572b = c2434r == null ? null : c2434r.m572b(m592l, obj, null);
                                        Object apply2 = m572b == null ? obj5 : biFunction.apply(m572b.f591c, obj5);
                                        if (apply2 != null) {
                                            if (m572b != null) {
                                                m572b.f591c = apply2;
                                            } else {
                                                c2433q.m578f(m592l, obj, apply2);
                                                i2 = 1;
                                            }
                                        } else if (m572b != null) {
                                            if (c2433q.m577g(m572b)) {
                                                m593k(c2428lArr, i4, m585s(c2433q.f608f));
                                            }
                                            i2 = -1;
                                        }
                                        obj6 = apply2;
                                    }
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    m587q(c2428lArr, i4);
                                }
                                i = i2;
                                obj5 = obj6;
                            }
                        }
                    } else if (m602b(c2428lArr, i4, null, new C2428l(m592l, obj, obj5, null))) {
                        break;
                    }
                }
            }
            c2428lArr = m597g();
        }
        if (i != 0) {
            m603a(i, i3);
        }
        return obj5;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
        return merge(obj, obj2, C2877s.m117a(biFunction));
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
        C2428l[] c2428lArr = this.f573a;
        if (c2428lArr == null) {
            return;
        }
        C2432p c2432p = new C2432p(c2428lArr, c2428lArr.length, 0, c2428lArr.length);
        while (true) {
            C2428l m583a = c2432p.m583a();
            if (m583a == null) {
                return;
            }
            Object obj = m583a.f591c;
            Object obj2 = m583a.f590b;
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
        replaceAll(C2877s.m117a(biFunction));
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
        C2428l[] c2428lArr = this.f573a;
        int length = c2428lArr == null ? 0 : c2428lArr.length;
        C2432p c2432p = new C2432p(c2428lArr, length, 0, length);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        C2428l m583a = c2432p.m583a();
        if (m583a != null) {
            while (true) {
                Object obj = m583a.f590b;
                Object obj2 = m583a.f591c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                m583a = c2432p.m583a();
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
        C2437u c2437u = this.f577e;
        if (c2437u != null) {
            return c2437u;
        }
        C2437u c2437u2 = new C2437u(this);
        this.f577e = c2437u2;
        return c2437u2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC2418b implements Collection, Serializable {

        /* renamed from: a */
        final ConcurrentHashMap f581a;

        AbstractC2418b(ConcurrentHashMap concurrentHashMap) {
            this.f581a = concurrentHashMap;
        }

        @Override // java.util.Collection
        public final void clear() {
            this.f581a.clear();
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
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.AbstractC2418b.containsAll(java.util.Collection):boolean");
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return this.f581a.isEmpty();
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
            return this.f581a.size();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            long m591m = this.f581a.m591m();
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
            long m591m = this.f581a.m591m();
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
