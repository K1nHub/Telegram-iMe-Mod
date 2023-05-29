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
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2660b;
import p034j$.util.InterfaceC2732s;
import p034j$.util.Iterator;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.Function;
import p034j$.util.function.Predicate;
import p034j$.wrappers.C3068L;
import p034j$.wrappers.C3075O0;
import p034j$.wrappers.C3078S;
import p034j$.wrappers.C3100h;
import p034j$.wrappers.C3118q;
import p034j$.wrappers.C3122s;
import p034j$.wrappers.C3130w;
import p034j$.wrappers.C3131w0;
import sun.misc.Unsafe;
/* renamed from: j$.util.concurrent.ConcurrentHashMap */
/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, InterfaceC2688b {

    /* renamed from: g */
    static final int f573g = Runtime.getRuntime().availableProcessors();

    /* renamed from: h */
    private static final Unsafe f574h;

    /* renamed from: i */
    private static final long f575i;

    /* renamed from: j */
    private static final long f576j;

    /* renamed from: k */
    private static final long f577k;

    /* renamed from: l */
    private static final long f578l;

    /* renamed from: m */
    private static final long f579m;

    /* renamed from: n */
    private static final long f580n;

    /* renamed from: o */
    private static final int f581o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;

    /* renamed from: a */
    volatile transient C2673l[] f582a;

    /* renamed from: b */
    private volatile transient C2673l[] f583b;
    private volatile transient long baseCount;

    /* renamed from: c */
    private volatile transient C2664c[] f584c;
    private volatile transient int cellsBusy;

    /* renamed from: d */
    private transient C2670i f585d;

    /* renamed from: e */
    private transient C2682u f586e;

    /* renamed from: f */
    private transient C2666e f587f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$a */
    /* loaded from: classes2.dex */
    public static class C2662a extends C2677p {

        /* renamed from: i */
        final ConcurrentHashMap f588i;

        /* renamed from: j */
        C2673l f589j;

        C2662a(C2673l[] c2673lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2673lArr, i, i2, i3);
            this.f588i = concurrentHashMap;
            m568a();
        }

        public final boolean hasMoreElements() {
            return this.f607b != null;
        }

        public final boolean hasNext() {
            return this.f607b != null;
        }

        public final void remove() {
            C2673l c2673l = this.f589j;
            if (c2673l == null) {
                throw new IllegalStateException();
            }
            this.f589j = null;
            this.f588i.m580i(c2673l.f599b, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$c */
    /* loaded from: classes2.dex */
    public static final class C2664c {
        volatile long value;

        C2664c(long j) {
            this.value = j;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$d */
    /* loaded from: classes2.dex */
    static final class C2665d extends C2662a implements Iterator, p034j$.util.Iterator {
        C2665d(C2673l[] c2673lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2673lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3130w.m94b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public Object next() {
            C2673l c2673l = this.f607b;
            if (c2673l != null) {
                Object obj = c2673l.f599b;
                Object obj2 = c2673l.f600c;
                this.f589j = c2673l;
                m568a();
                return new C2672k(obj, obj2, this.f588i);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$e */
    /* loaded from: classes2.dex */
    public static final class C2666e extends AbstractC2663b implements Set, InterfaceC2660b {
        C2666e(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set
        /* renamed from: a */
        public boolean add(Map.Entry entry) {
            return this.f590a.m581h(entry.getKey(), entry.getValue(), false) == null;
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2663b, java.util.Collection
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            Object value;
            return (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = this.f590a.get(key)) == null || (value = entry.getValue()) == null || (value != obj2 && !value.equals(obj2))) ? false : true;
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p034j$.util.InterfaceC2660b, p034j$.lang.InterfaceC2606e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2673l[] c2673lArr = this.f590a.f582a;
            if (c2673lArr == null) {
                return;
            }
            C2677p c2677p = new C2677p(c2673lArr, c2673lArr.length, 0, c2673lArr.length);
            while (true) {
                C2673l m568a = c2677p.m568a();
                if (m568a == null) {
                    return;
                }
                consumer.accept(new C2672k(m568a.f599b, m568a.f600c, this.f590a));
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3130w.m94b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            C2673l[] c2673lArr = this.f590a.f582a;
            int i = 0;
            if (c2673lArr != null) {
                C2677p c2677p = new C2677p(c2673lArr, c2673lArr.length, 0, c2673lArr.length);
                while (true) {
                    C2673l m568a = c2677p.m568a();
                    if (m568a == null) {
                        break;
                    }
                    i += m568a.hashCode();
                }
            }
            return i;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2663b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f590a;
            C2673l[] c2673lArr = concurrentHashMap.f582a;
            int length = c2673lArr == null ? 0 : c2673lArr.length;
            return new C2665d(c2673lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2660b
        /* renamed from: k */
        public /* synthetic */ boolean mo556k(Predicate predicate) {
            return AbstractC2659a.m603h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3075O0.m167n0(AbstractC2659a.m604g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && this.f590a.remove(key, value);
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2659a.m603h(this, C3131w0.m93a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2660b, p034j$.lang.InterfaceC2606e
        public InterfaceC2732s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f590a;
            long m576m = concurrentHashMap.m576m();
            C2673l[] c2673lArr = concurrentHashMap.f582a;
            int length = c2673lArr == null ? 0 : c2673lArr.length;
            return new C2667f(c2673lArr, length, 0, length, m576m >= 0 ? m576m : 0L, concurrentHashMap);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C3100h.m135a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2660b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2659a.m602i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3075O0.m167n0(AbstractC2659a.m602i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3078S.m163a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$f */
    /* loaded from: classes2.dex */
    public static final class C2667f extends C2677p implements InterfaceC2732s {

        /* renamed from: i */
        final ConcurrentHashMap f591i;

        /* renamed from: j */
        long f592j;

        C2667f(C2673l[] c2673lArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
            super(c2673lArr, i, i2, i3);
            this.f591i = concurrentHashMap;
            this.f592j = j;
        }

        @Override // p034j$.util.InterfaceC2732s
        /* renamed from: b */
        public boolean mo113b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2673l m568a = m568a();
            if (m568a == null) {
                return false;
            }
            consumer.accept(new C2672k(m568a.f599b, m568a.f600c, this.f591i));
            return true;
        }

        @Override // p034j$.util.InterfaceC2732s
        public int characteristics() {
            return 4353;
        }

        @Override // p034j$.util.InterfaceC2732s
        public long estimateSize() {
            return this.f592j;
        }

        @Override // p034j$.util.InterfaceC2732s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2673l m568a = m568a();
                if (m568a == null) {
                    return;
                }
                consumer.accept(new C2672k(m568a.f599b, m568a.f600c, this.f591i));
            }
        }

        @Override // p034j$.util.InterfaceC2732s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2732s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2659a.m606e(this);
        }

        @Override // p034j$.util.InterfaceC2732s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2659a.m605f(this, i);
        }

        @Override // p034j$.util.InterfaceC2732s
        public InterfaceC2732s trySplit() {
            int i = this.f611f;
            int i2 = this.f612g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2673l[] c2673lArr = this.f606a;
            int i4 = this.f613h;
            this.f612g = i3;
            long j = this.f592j >>> 1;
            this.f592j = j;
            return new C2667f(c2673lArr, i4, i3, i2, j, this.f591i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$g */
    /* loaded from: classes2.dex */
    public static final class C2668g extends C2673l {

        /* renamed from: e */
        final C2673l[] f593e;

        C2668g(C2673l[] c2673lArr) {
            super(-1, null, null, null);
            this.f593e = c2673lArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
            if ((r0 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2668g) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
            r0 = ((p034j$.util.concurrent.ConcurrentHashMap.C2668g) r0).f593e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
            return r0.mo558a(r5, r6);
         */
        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2673l
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        p034j$.util.concurrent.ConcurrentHashMap.C2673l mo558a(int r5, java.lang.Object r6) {
            /*
                r4 = this;
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r4.f593e
            L2:
                r1 = 0
                if (r0 == 0) goto L37
                int r2 = r0.length
                if (r2 == 0) goto L37
                int r2 = r2 + (-1)
                r2 = r2 & r5
                j$.util.concurrent.ConcurrentHashMap$l r0 = p034j$.util.concurrent.ConcurrentHashMap.m575n(r0, r2)
                if (r0 != 0) goto L12
                goto L37
            L12:
                int r2 = r0.f598a
                if (r2 != r5) goto L23
                java.lang.Object r3 = r0.f599b
                if (r3 == r6) goto L22
                if (r3 == 0) goto L23
                boolean r3 = r6.equals(r3)
                if (r3 == 0) goto L23
            L22:
                return r0
            L23:
                if (r2 >= 0) goto L33
                boolean r1 = r0 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2668g
                if (r1 == 0) goto L2e
                j$.util.concurrent.ConcurrentHashMap$g r0 = (p034j$.util.concurrent.ConcurrentHashMap.C2668g) r0
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r0.f593e
                goto L2
            L2e:
                j$.util.concurrent.ConcurrentHashMap$l r5 = r0.mo558a(r5, r6)
                return r5
            L33:
                j$.util.concurrent.ConcurrentHashMap$l r0 = r0.f601d
                if (r0 != 0) goto L12
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2668g.mo558a(int, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$l");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$h */
    /* loaded from: classes2.dex */
    public static final class C2669h extends C2662a implements java.util.Iterator, Enumeration, p034j$.util.Iterator {
        C2669h(C2673l[] c2673lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2673lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3130w.m94b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public final Object next() {
            C2673l c2673l = this.f607b;
            if (c2673l != null) {
                Object obj = c2673l.f599b;
                this.f589j = c2673l;
                m568a();
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
    public static class C2670i extends AbstractC2663b implements Set, InterfaceC2660b {
        C2670i(ConcurrentHashMap concurrentHashMap, Object obj) {
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2663b, java.util.Collection
        public boolean contains(Object obj) {
            return this.f590a.containsKey(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p034j$.util.InterfaceC2660b, p034j$.lang.InterfaceC2606e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2673l[] c2673lArr = this.f590a.f582a;
            if (c2673lArr == null) {
                return;
            }
            C2677p c2677p = new C2677p(c2673lArr, c2673lArr.length, 0, c2673lArr.length);
            while (true) {
                C2673l m568a = c2677p.m568a();
                if (m568a == null) {
                    return;
                }
                consumer.accept(m568a.f599b);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3130w.m94b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            java.util.Iterator it = iterator();
            int i = 0;
            while (((C2662a) it).hasNext()) {
                i += ((C2669h) it).next().hashCode();
            }
            return i;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2663b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f590a;
            C2673l[] c2673lArr = concurrentHashMap.f582a;
            int length = c2673lArr == null ? 0 : c2673lArr.length;
            return new C2669h(c2673lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2660b
        /* renamed from: k */
        public /* synthetic */ boolean mo556k(Predicate predicate) {
            return AbstractC2659a.m603h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3075O0.m167n0(AbstractC2659a.m604g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f590a.remove(obj) != null;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2659a.m603h(this, C3131w0.m93a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p034j$.util.InterfaceC2660b, p034j$.lang.InterfaceC2606e
        public InterfaceC2732s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f590a;
            long m576m = concurrentHashMap.m576m();
            C2673l[] c2673lArr = concurrentHashMap.f582a;
            int length = c2673lArr == null ? 0 : c2673lArr.length;
            return new C2671j(c2673lArr, length, 0, length, m576m >= 0 ? m576m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C3100h.m135a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2660b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2659a.m602i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3075O0.m167n0(AbstractC2659a.m602i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3078S.m163a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$j */
    /* loaded from: classes2.dex */
    public static final class C2671j extends C2677p implements InterfaceC2732s {

        /* renamed from: i */
        long f594i;

        C2671j(C2673l[] c2673lArr, int i, int i2, int i3, long j) {
            super(c2673lArr, i, i2, i3);
            this.f594i = j;
        }

        @Override // p034j$.util.InterfaceC2732s
        /* renamed from: b */
        public boolean mo113b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2673l m568a = m568a();
            if (m568a == null) {
                return false;
            }
            consumer.accept(m568a.f599b);
            return true;
        }

        @Override // p034j$.util.InterfaceC2732s
        public int characteristics() {
            return 4353;
        }

        @Override // p034j$.util.InterfaceC2732s
        public long estimateSize() {
            return this.f594i;
        }

        @Override // p034j$.util.InterfaceC2732s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2673l m568a = m568a();
                if (m568a == null) {
                    return;
                }
                consumer.accept(m568a.f599b);
            }
        }

        @Override // p034j$.util.InterfaceC2732s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2732s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2659a.m606e(this);
        }

        @Override // p034j$.util.InterfaceC2732s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2659a.m605f(this, i);
        }

        @Override // p034j$.util.InterfaceC2732s
        public InterfaceC2732s trySplit() {
            int i = this.f611f;
            int i2 = this.f612g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2673l[] c2673lArr = this.f606a;
            int i4 = this.f613h;
            this.f612g = i3;
            long j = this.f594i >>> 1;
            this.f594i = j;
            return new C2671j(c2673lArr, i4, i3, i2, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$k */
    /* loaded from: classes2.dex */
    public static final class C2672k implements Map.Entry {

        /* renamed from: a */
        final Object f595a;

        /* renamed from: b */
        Object f596b;

        /* renamed from: c */
        final ConcurrentHashMap f597c;

        C2672k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
            this.f595a = obj;
            this.f596b = obj2;
            this.f597c = concurrentHashMap;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f595a) || key.equals(obj2)) && (value == (obj3 = this.f596b) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f595a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f596b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f595a.hashCode() ^ this.f596b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Objects.requireNonNull(obj);
            Object obj2 = this.f596b;
            this.f596b = obj;
            this.f597c.put(this.f595a, obj);
            return obj2;
        }

        public String toString() {
            return this.f595a + "=" + this.f596b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$l */
    /* loaded from: classes2.dex */
    public static class C2673l implements Map.Entry {

        /* renamed from: a */
        final int f598a;

        /* renamed from: b */
        final Object f599b;

        /* renamed from: c */
        volatile Object f600c;

        /* renamed from: d */
        volatile C2673l f601d;

        C2673l(int i, Object obj, Object obj2, C2673l c2673l) {
            this.f598a = i;
            this.f599b = obj;
            this.f600c = obj2;
            this.f601d = c2673l;
        }

        /* renamed from: a */
        C2673l mo558a(int i, Object obj) {
            Object obj2;
            C2673l c2673l = this;
            do {
                if (c2673l.f598a == i && ((obj2 = c2673l.f599b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return c2673l;
                }
                c2673l = c2673l.f601d;
            } while (c2673l != null);
            return null;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f599b) || key.equals(obj2)) && (value == (obj3 = this.f600c) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f599b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f600c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f599b.hashCode() ^ this.f600c.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public final String toString() {
            return this.f599b + "=" + this.f600c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$m */
    /* loaded from: classes2.dex */
    public static final class C2674m extends C2673l {
        C2674m() {
            super(-3, null, null, null);
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2673l
        /* renamed from: a */
        C2673l mo558a(int i, Object obj) {
            return null;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$n */
    /* loaded from: classes2.dex */
    static class C2675n extends ReentrantLock {
        C2675n(float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$o */
    /* loaded from: classes2.dex */
    public static final class C2676o {

        /* renamed from: a */
        int f602a;

        /* renamed from: b */
        int f603b;

        /* renamed from: c */
        C2673l[] f604c;

        /* renamed from: d */
        C2676o f605d;

        C2676o() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$p */
    /* loaded from: classes2.dex */
    public static class C2677p {

        /* renamed from: a */
        C2673l[] f606a;

        /* renamed from: b */
        C2673l f607b = null;

        /* renamed from: c */
        C2676o f608c;

        /* renamed from: d */
        C2676o f609d;

        /* renamed from: e */
        int f610e;

        /* renamed from: f */
        int f611f;

        /* renamed from: g */
        int f612g;

        /* renamed from: h */
        final int f613h;

        C2677p(C2673l[] c2673lArr, int i, int i2, int i3) {
            this.f606a = c2673lArr;
            this.f613h = i;
            this.f610e = i2;
            this.f611f = i2;
            this.f612g = i3;
        }

        /* renamed from: a */
        final C2673l m568a() {
            C2673l[] c2673lArr;
            int length;
            int i;
            C2676o c2676o;
            C2673l c2673l = this.f607b;
            if (c2673l != null) {
                c2673l = c2673l.f601d;
            }
            while (c2673l == null) {
                if (this.f611f >= this.f612g || (c2673lArr = this.f606a) == null || (length = c2673lArr.length) <= (i = this.f610e) || i < 0) {
                    this.f607b = null;
                    return null;
                }
                C2673l m575n = ConcurrentHashMap.m575n(c2673lArr, i);
                if (m575n == null || m575n.f598a >= 0) {
                    c2673l = m575n;
                } else if (m575n instanceof C2668g) {
                    this.f606a = ((C2668g) m575n).f593e;
                    C2676o c2676o2 = this.f609d;
                    if (c2676o2 != null) {
                        this.f609d = c2676o2.f605d;
                    } else {
                        c2676o2 = new C2676o();
                    }
                    c2676o2.f604c = c2673lArr;
                    c2676o2.f602a = length;
                    c2676o2.f603b = i;
                    c2676o2.f605d = this.f608c;
                    this.f608c = c2676o2;
                    c2673l = null;
                } else {
                    c2673l = m575n instanceof C2678q ? ((C2678q) m575n).f617f : null;
                }
                if (this.f608c != null) {
                    while (true) {
                        c2676o = this.f608c;
                        if (c2676o == null) {
                            break;
                        }
                        int i2 = this.f610e;
                        int i3 = c2676o.f602a;
                        int i4 = i2 + i3;
                        this.f610e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.f610e = c2676o.f603b;
                        this.f606a = c2676o.f604c;
                        c2676o.f604c = null;
                        C2676o c2676o3 = c2676o.f605d;
                        c2676o.f605d = this.f609d;
                        this.f608c = c2676o3;
                        this.f609d = c2676o;
                        length = i3;
                    }
                    if (c2676o == null) {
                        int i5 = this.f610e + this.f613h;
                        this.f610e = i5;
                        if (i5 >= length) {
                            int i6 = this.f611f + 1;
                            this.f611f = i6;
                            this.f610e = i6;
                        }
                    }
                } else {
                    int i7 = i + this.f613h;
                    this.f610e = i7;
                    if (i7 >= length) {
                        int i8 = this.f611f + 1;
                        this.f611f = i8;
                        this.f610e = i8;
                    }
                }
            }
            this.f607b = c2673l;
            return c2673l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$q */
    /* loaded from: classes2.dex */
    public static final class C2678q extends C2673l {

        /* renamed from: h */
        private static final Unsafe f614h;

        /* renamed from: i */
        private static final long f615i;

        /* renamed from: e */
        C2679r f616e;

        /* renamed from: f */
        volatile C2679r f617f;

        /* renamed from: g */
        volatile Thread f618g;
        volatile int lockState;

        static {
            try {
                Unsafe m541c = AbstractC2689c.m541c();
                f614h = m541c;
                f615i = m541c.objectFieldOffset(C2678q.class.getDeclaredField("lockState"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        C2678q(C2679r c2679r) {
            super(-2, null, null, null);
            int m585d;
            int m559j;
            this.f617f = c2679r;
            C2679r c2679r2 = null;
            while (c2679r != null) {
                C2679r c2679r3 = (C2679r) c2679r.f601d;
                c2679r.f621g = null;
                c2679r.f620f = null;
                if (c2679r2 == null) {
                    c2679r.f619e = null;
                    c2679r.f623i = false;
                } else {
                    Object obj = c2679r.f599b;
                    int i = c2679r.f598a;
                    C2679r c2679r4 = c2679r2;
                    Class cls = null;
                    while (true) {
                        Object obj2 = c2679r4.f599b;
                        int i2 = c2679r4.f598a;
                        m559j = i2 > i ? -1 : i2 < i ? 1 : ((cls == null && (cls = ConcurrentHashMap.m586c(obj)) == null) || (m585d = ConcurrentHashMap.m585d(cls, obj, obj2)) == 0) ? m559j(obj, obj2) : m585d;
                        C2679r c2679r5 = m559j <= 0 ? c2679r4.f620f : c2679r4.f621g;
                        if (c2679r5 == null) {
                            break;
                        }
                        c2679r4 = c2679r5;
                    }
                    c2679r.f619e = c2679r4;
                    if (m559j <= 0) {
                        c2679r4.f620f = c2679r;
                    } else {
                        c2679r4.f621g = c2679r;
                    }
                    c2679r = m566c(c2679r2, c2679r);
                }
                c2679r2 = c2679r;
                c2679r = c2679r3;
            }
            this.f616e = c2679r2;
        }

        /* renamed from: b */
        static C2679r m567b(C2679r c2679r, C2679r c2679r2) {
            while (c2679r2 != null && c2679r2 != c2679r) {
                C2679r c2679r3 = c2679r2.f619e;
                if (c2679r3 == null) {
                    c2679r2.f623i = false;
                    return c2679r2;
                } else if (c2679r2.f623i) {
                    c2679r2.f623i = false;
                    return c2679r;
                } else {
                    C2679r c2679r4 = c2679r3.f620f;
                    C2679r c2679r5 = null;
                    if (c2679r4 == c2679r2) {
                        c2679r4 = c2679r3.f621g;
                        if (c2679r4 != null && c2679r4.f623i) {
                            c2679r4.f623i = false;
                            c2679r3.f623i = true;
                            c2679r = m561h(c2679r, c2679r3);
                            c2679r3 = c2679r2.f619e;
                            c2679r4 = c2679r3 == null ? null : c2679r3.f621g;
                        }
                        if (c2679r4 == null) {
                            c2679r2 = c2679r3;
                        } else {
                            C2679r c2679r6 = c2679r4.f620f;
                            C2679r c2679r7 = c2679r4.f621g;
                            if ((c2679r7 != null && c2679r7.f623i) || (c2679r6 != null && c2679r6.f623i)) {
                                if (c2679r7 == null || !c2679r7.f623i) {
                                    if (c2679r6 != null) {
                                        c2679r6.f623i = false;
                                    }
                                    c2679r4.f623i = true;
                                    c2679r = m560i(c2679r, c2679r4);
                                    c2679r3 = c2679r2.f619e;
                                    if (c2679r3 != null) {
                                        c2679r5 = c2679r3.f621g;
                                    }
                                } else {
                                    c2679r5 = c2679r4;
                                }
                                if (c2679r5 != null) {
                                    c2679r5.f623i = c2679r3 == null ? false : c2679r3.f623i;
                                    C2679r c2679r8 = c2679r5.f621g;
                                    if (c2679r8 != null) {
                                        c2679r8.f623i = false;
                                    }
                                }
                                if (c2679r3 != null) {
                                    c2679r3.f623i = false;
                                    c2679r = m561h(c2679r, c2679r3);
                                }
                                c2679r2 = c2679r;
                                c2679r = c2679r2;
                            }
                            c2679r4.f623i = true;
                            c2679r2 = c2679r3;
                        }
                    } else {
                        if (c2679r4 != null && c2679r4.f623i) {
                            c2679r4.f623i = false;
                            c2679r3.f623i = true;
                            c2679r = m560i(c2679r, c2679r3);
                            c2679r3 = c2679r2.f619e;
                            c2679r4 = c2679r3 == null ? null : c2679r3.f620f;
                        }
                        if (c2679r4 == null) {
                            c2679r2 = c2679r3;
                        } else {
                            C2679r c2679r9 = c2679r4.f620f;
                            C2679r c2679r10 = c2679r4.f621g;
                            if ((c2679r9 != null && c2679r9.f623i) || (c2679r10 != null && c2679r10.f623i)) {
                                if (c2679r9 == null || !c2679r9.f623i) {
                                    if (c2679r10 != null) {
                                        c2679r10.f623i = false;
                                    }
                                    c2679r4.f623i = true;
                                    c2679r = m561h(c2679r, c2679r4);
                                    c2679r3 = c2679r2.f619e;
                                    if (c2679r3 != null) {
                                        c2679r5 = c2679r3.f620f;
                                    }
                                } else {
                                    c2679r5 = c2679r4;
                                }
                                if (c2679r5 != null) {
                                    c2679r5.f623i = c2679r3 == null ? false : c2679r3.f623i;
                                    C2679r c2679r11 = c2679r5.f620f;
                                    if (c2679r11 != null) {
                                        c2679r11.f623i = false;
                                    }
                                }
                                if (c2679r3 != null) {
                                    c2679r3.f623i = false;
                                    c2679r = m560i(c2679r, c2679r3);
                                }
                                c2679r2 = c2679r;
                                c2679r = c2679r2;
                            }
                            c2679r4.f623i = true;
                            c2679r2 = c2679r3;
                        }
                    }
                }
            }
            return c2679r;
        }

        /* renamed from: c */
        static C2679r m566c(C2679r c2679r, C2679r c2679r2) {
            C2679r c2679r3;
            c2679r2.f623i = true;
            while (true) {
                C2679r c2679r4 = c2679r2.f619e;
                if (c2679r4 == null) {
                    c2679r2.f623i = false;
                    return c2679r2;
                } else if (!c2679r4.f623i || (c2679r3 = c2679r4.f619e) == null) {
                    break;
                } else {
                    C2679r c2679r5 = c2679r3.f620f;
                    if (c2679r4 == c2679r5) {
                        c2679r5 = c2679r3.f621g;
                        if (c2679r5 == null || !c2679r5.f623i) {
                            if (c2679r2 == c2679r4.f621g) {
                                c2679r = m561h(c2679r, c2679r4);
                                C2679r c2679r6 = c2679r4.f619e;
                                c2679r3 = c2679r6 == null ? null : c2679r6.f619e;
                                c2679r4 = c2679r6;
                                c2679r2 = c2679r4;
                            }
                            if (c2679r4 != null) {
                                c2679r4.f623i = false;
                                if (c2679r3 != null) {
                                    c2679r3.f623i = true;
                                    c2679r = m560i(c2679r, c2679r3);
                                }
                            }
                        } else {
                            c2679r5.f623i = false;
                            c2679r4.f623i = false;
                            c2679r3.f623i = true;
                            c2679r2 = c2679r3;
                        }
                    } else if (c2679r5 == null || !c2679r5.f623i) {
                        if (c2679r2 == c2679r4.f620f) {
                            c2679r = m560i(c2679r, c2679r4);
                            C2679r c2679r7 = c2679r4.f619e;
                            c2679r3 = c2679r7 == null ? null : c2679r7.f619e;
                            c2679r4 = c2679r7;
                            c2679r2 = c2679r4;
                        }
                        if (c2679r4 != null) {
                            c2679r4.f623i = false;
                            if (c2679r3 != null) {
                                c2679r3.f623i = true;
                                c2679r = m561h(c2679r, c2679r3);
                            }
                        }
                    } else {
                        c2679r5.f623i = false;
                        c2679r4.f623i = false;
                        c2679r3.f623i = true;
                        c2679r2 = c2679r3;
                    }
                }
            }
            return c2679r;
        }

        /* renamed from: d */
        private final void m565d() {
            boolean z = false;
            while (true) {
                int i = this.lockState;
                if ((i & (-3)) == 0) {
                    if (f614h.compareAndSwapInt(this, f615i, i, 1)) {
                        break;
                    }
                } else if ((i & 2) == 0) {
                    if (f614h.compareAndSwapInt(this, f615i, i, i | 2)) {
                        z = true;
                        this.f618g = Thread.currentThread();
                    }
                } else if (z) {
                    LockSupport.park(this);
                }
            }
            if (z) {
                this.f618g = null;
            }
        }

        /* renamed from: e */
        private final void m564e() {
            if (f614h.compareAndSwapInt(this, f615i, 0, 1)) {
                return;
            }
            m565d();
        }

        /* renamed from: h */
        static C2679r m561h(C2679r c2679r, C2679r c2679r2) {
            C2679r c2679r3 = c2679r2.f621g;
            if (c2679r3 != null) {
                C2679r c2679r4 = c2679r3.f620f;
                c2679r2.f621g = c2679r4;
                if (c2679r4 != null) {
                    c2679r4.f619e = c2679r2;
                }
                C2679r c2679r5 = c2679r2.f619e;
                c2679r3.f619e = c2679r5;
                if (c2679r5 == null) {
                    c2679r3.f623i = false;
                    c2679r = c2679r3;
                } else if (c2679r5.f620f == c2679r2) {
                    c2679r5.f620f = c2679r3;
                } else {
                    c2679r5.f621g = c2679r3;
                }
                c2679r3.f620f = c2679r2;
                c2679r2.f619e = c2679r3;
            }
            return c2679r;
        }

        /* renamed from: i */
        static C2679r m560i(C2679r c2679r, C2679r c2679r2) {
            C2679r c2679r3 = c2679r2.f620f;
            if (c2679r3 != null) {
                C2679r c2679r4 = c2679r3.f621g;
                c2679r2.f620f = c2679r4;
                if (c2679r4 != null) {
                    c2679r4.f619e = c2679r2;
                }
                C2679r c2679r5 = c2679r2.f619e;
                c2679r3.f619e = c2679r5;
                if (c2679r5 == null) {
                    c2679r3.f623i = false;
                    c2679r = c2679r3;
                } else if (c2679r5.f621g == c2679r2) {
                    c2679r5.f621g = c2679r3;
                } else {
                    c2679r5.f620f = c2679r3;
                }
                c2679r3.f621g = c2679r2;
                c2679r2.f619e = c2679r3;
            }
            return c2679r;
        }

        /* renamed from: j */
        static int m559j(Object obj, Object obj2) {
            int compareTo;
            return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2673l
        /* renamed from: a */
        final C2673l mo558a(int i, Object obj) {
            Object obj2;
            Thread thread;
            Thread thread2;
            C2673l c2673l = this.f617f;
            while (true) {
                C2679r c2679r = null;
                if (c2673l == null) {
                    return null;
                }
                int i2 = this.lockState;
                if ((i2 & 3) == 0) {
                    Unsafe unsafe = f614h;
                    long j = f615i;
                    if (unsafe.compareAndSwapInt(this, j, i2, i2 + 4)) {
                        try {
                            C2679r c2679r2 = this.f616e;
                            if (c2679r2 != null) {
                                c2679r = c2679r2.m557b(i, obj, null);
                            }
                            if (AbstractC2689c.m543a(unsafe, this, j, -4) == 6 && (thread2 = this.f618g) != null) {
                                LockSupport.unpark(thread2);
                            }
                            return c2679r;
                        } catch (Throwable th) {
                            if (AbstractC2689c.m543a(f614h, this, f615i, -4) == 6 && (thread = this.f618g) != null) {
                                LockSupport.unpark(thread);
                            }
                            throw th;
                        }
                    }
                } else if (c2673l.f598a != i || ((obj2 = c2673l.f599b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                    c2673l = c2673l.f601d;
                }
            }
            return c2673l;
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
        final p034j$.util.concurrent.ConcurrentHashMap.C2679r m563f(int r16, java.lang.Object r17, java.lang.Object r18) {
            /*
                r15 = this;
                r1 = r15
                r0 = r16
                r4 = r17
                j$.util.concurrent.ConcurrentHashMap$r r2 = r1.f616e
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
                r1.f616e = r9
                r1.f617f = r9
                goto La2
            L22:
                int r5 = r10.f598a
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
                java.lang.Object r5 = r10.f599b
                if (r5 == r4) goto Laa
                if (r5 == 0) goto L3c
                boolean r6 = r4.equals(r5)
                if (r6 == 0) goto L3c
                goto Laa
            L3c:
                if (r2 != 0) goto L44
                java.lang.Class r2 = p034j$.util.concurrent.ConcurrentHashMap.m586c(r17)
                if (r2 == 0) goto L4a
            L44:
                int r6 = p034j$.util.concurrent.ConcurrentHashMap.m585d(r2, r4, r5)
                if (r6 != 0) goto L67
            L4a:
                if (r3 != 0) goto L62
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f620f
                if (r3 == 0) goto L56
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m557b(r0, r4, r2)
                if (r3 != 0) goto L60
            L56:
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f621g
                if (r3 == 0) goto L61
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m557b(r0, r4, r2)
                if (r3 == 0) goto L61
            L60:
                return r3
            L61:
                r3 = r11
            L62:
                int r5 = m559j(r4, r5)
                goto L28
            L67:
                r12 = r6
            L68:
                if (r12 > 0) goto L6d
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f620f
                goto L6f
            L6d:
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f621g
            L6f:
                if (r5 != 0) goto La7
                j$.util.concurrent.ConcurrentHashMap$r r13 = r1.f617f
                j$.util.concurrent.ConcurrentHashMap$r r14 = new j$.util.concurrent.ConcurrentHashMap$r
                r2 = r14
                r3 = r16
                r4 = r17
                r5 = r18
                r6 = r13
                r7 = r10
                r2.<init>(r3, r4, r5, r6, r7)
                r1.f617f = r14
                if (r13 == 0) goto L87
                r13.f622h = r14
            L87:
                if (r12 > 0) goto L8c
                r10.f620f = r14
                goto L8e
            L8c:
                r10.f621g = r14
            L8e:
                boolean r0 = r10.f623i
                if (r0 != 0) goto L95
                r14.f623i = r11
                goto La2
            L95:
                r15.m564e()
                j$.util.concurrent.ConcurrentHashMap$r r0 = r1.f616e     // Catch: java.lang.Throwable -> La3
                j$.util.concurrent.ConcurrentHashMap$r r0 = m566c(r0, r14)     // Catch: java.lang.Throwable -> La3
                r1.f616e = r0     // Catch: java.lang.Throwable -> La3
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
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2678q.m563f(int, java.lang.Object, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$r");
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
        final boolean m562g(p034j$.util.concurrent.ConcurrentHashMap.C2679r r11) {
            /*
                Method dump skipped, instructions count: 205
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.C2678q.m562g(j$.util.concurrent.ConcurrentHashMap$r):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$r */
    /* loaded from: classes2.dex */
    public static final class C2679r extends C2673l {

        /* renamed from: e */
        C2679r f619e;

        /* renamed from: f */
        C2679r f620f;

        /* renamed from: g */
        C2679r f621g;

        /* renamed from: h */
        C2679r f622h;

        /* renamed from: i */
        boolean f623i;

        C2679r(int i, Object obj, Object obj2, C2673l c2673l, C2679r c2679r) {
            super(i, obj, obj2, c2673l);
            this.f619e = c2679r;
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.C2673l
        /* renamed from: a */
        C2673l mo558a(int i, Object obj) {
            return m557b(i, obj, null);
        }

        /* renamed from: b */
        final C2679r m557b(int i, Object obj, Class cls) {
            int m585d;
            if (obj != null) {
                C2679r c2679r = this;
                do {
                    C2679r c2679r2 = c2679r.f620f;
                    C2679r c2679r3 = c2679r.f621g;
                    int i2 = c2679r.f598a;
                    if (i2 <= i) {
                        if (i2 >= i) {
                            Object obj2 = c2679r.f599b;
                            if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                                return c2679r;
                            }
                            if (c2679r2 != null) {
                                if (c2679r3 != null) {
                                    if ((cls == null && (cls = ConcurrentHashMap.m586c(obj)) == null) || (m585d = ConcurrentHashMap.m585d(cls, obj, obj2)) == 0) {
                                        C2679r m557b = c2679r3.m557b(i, obj, cls);
                                        if (m557b != null) {
                                            return m557b;
                                        }
                                    } else if (m585d >= 0) {
                                        c2679r2 = c2679r3;
                                    }
                                }
                            }
                        }
                        c2679r = c2679r3;
                        continue;
                    }
                    c2679r = c2679r2;
                    continue;
                } while (c2679r != null);
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$s */
    /* loaded from: classes2.dex */
    public static final class C2680s extends C2662a implements java.util.Iterator, Enumeration, p034j$.util.Iterator {
        C2680s(C2673l[] c2673lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2673lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p034j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3130w.m94b(consumer));
        }

        @Override // java.util.Iterator, p034j$.util.Iterator
        public final Object next() {
            C2673l c2673l = this.f607b;
            if (c2673l != null) {
                Object obj = c2673l.f600c;
                this.f589j = c2673l;
                m568a();
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
    public static final class C2681t extends C2677p implements InterfaceC2732s {

        /* renamed from: i */
        long f624i;

        C2681t(C2673l[] c2673lArr, int i, int i2, int i3, long j) {
            super(c2673lArr, i, i2, i3);
            this.f624i = j;
        }

        @Override // p034j$.util.InterfaceC2732s
        /* renamed from: b */
        public boolean mo113b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2673l m568a = m568a();
            if (m568a == null) {
                return false;
            }
            consumer.accept(m568a.f600c);
            return true;
        }

        @Override // p034j$.util.InterfaceC2732s
        public int characteristics() {
            return 4352;
        }

        @Override // p034j$.util.InterfaceC2732s
        public long estimateSize() {
            return this.f624i;
        }

        @Override // p034j$.util.InterfaceC2732s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2673l m568a = m568a();
                if (m568a == null) {
                    return;
                }
                consumer.accept(m568a.f600c);
            }
        }

        @Override // p034j$.util.InterfaceC2732s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2732s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2659a.m606e(this);
        }

        @Override // p034j$.util.InterfaceC2732s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2659a.m605f(this, i);
        }

        @Override // p034j$.util.InterfaceC2732s
        public InterfaceC2732s trySplit() {
            int i = this.f611f;
            int i2 = this.f612g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2673l[] c2673lArr = this.f606a;
            int i4 = this.f613h;
            this.f612g = i3;
            long j = this.f624i >>> 1;
            this.f624i = j;
            return new C2681t(c2673lArr, i4, i3, i2, j);
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$u */
    /* loaded from: classes2.dex */
    static final class C2682u extends AbstractC2663b implements InterfaceC2660b {
        C2682u(ConcurrentHashMap concurrentHashMap) {
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

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2663b, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f590a.containsValue(obj);
        }

        @Override // p034j$.util.InterfaceC2660b, p034j$.lang.InterfaceC2606e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2673l[] c2673lArr = this.f590a.f582a;
            if (c2673lArr == null) {
                return;
            }
            C2677p c2677p = new C2677p(c2673lArr, c2673lArr.length, 0, c2673lArr.length);
            while (true) {
                C2673l m568a = c2677p.m568a();
                if (m568a == null) {
                    return;
                }
                consumer.accept(m568a.f600c);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3130w.m94b(consumer));
        }

        @Override // p034j$.util.concurrent.ConcurrentHashMap.AbstractC2663b, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f590a;
            C2673l[] c2673lArr = concurrentHashMap.f582a;
            int length = c2673lArr == null ? 0 : c2673lArr.length;
            return new C2680s(c2673lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p034j$.util.InterfaceC2660b
        /* renamed from: k */
        public /* synthetic */ boolean mo556k(Predicate predicate) {
            return AbstractC2659a.m603h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3075O0.m167n0(AbstractC2659a.m604g(this));
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            C2662a c2662a;
            if (obj != null) {
                java.util.Iterator it = iterator();
                do {
                    c2662a = (C2662a) it;
                    if (!c2662a.hasNext()) {
                        return false;
                    }
                } while (!obj.equals(((C2680s) it).next()));
                c2662a.remove();
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2659a.m603h(this, C3131w0.m93a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, p034j$.util.InterfaceC2660b, p034j$.lang.InterfaceC2606e
        public InterfaceC2732s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f590a;
            long m576m = concurrentHashMap.m576m();
            C2673l[] c2673lArr = concurrentHashMap.f582a;
            int length = c2673lArr == null ? 0 : c2673lArr.length;
            return new C2681t(c2673lArr, length, 0, length, m576m >= 0 ? m576m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable
        public /* synthetic */ Spliterator spliterator() {
            return C3100h.m135a(spliterator());
        }

        @Override // java.util.Collection, p034j$.util.InterfaceC2660b
        public /* synthetic */ p034j$.util.stream.Stream stream() {
            return AbstractC2659a.m602i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3075O0.m167n0(AbstractC2659a.m602i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3078S.m163a(intFunction).apply(0));
        }
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", C2675n[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        try {
            Unsafe m541c = AbstractC2689c.m541c();
            f574h = m541c;
            f575i = m541c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("sizeCtl"));
            f576j = m541c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("transferIndex"));
            f577k = m541c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("baseCount"));
            f578l = m541c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("cellsBusy"));
            f579m = m541c.objectFieldOffset(C2664c.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
            f580n = m541c.arrayBaseOffset(C2673l[].class);
            int arrayIndexScale = m541c.arrayIndexScale(C2673l[].class);
            if (((arrayIndexScale - 1) & arrayIndexScale) != 0) {
                throw new Error("data type scale not a power of two");
            }
            f581o = 31 - Integer.numberOfLeadingZeros(arrayIndexScale);
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
        this.sizeCtl = i >= 536870912 ? 1073741824 : m574o(i + (i >>> 1) + 1);
    }

    public ConcurrentHashMap(int i, float f, int i2) {
        if (f <= BitmapDescriptorFactory.HUE_RED || i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        long j = (long) (((i < i2 ? i2 : i) / f) + 1.0d);
        this.sizeCtl = j >= 1073741824 ? 1073741824 : m574o((int) j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r1.compareAndSwapLong(r11, r3, r5, r9) == false) goto L53;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m588a(long r12, int r14) {
        /*
            r11 = this;
            j$.util.concurrent.ConcurrentHashMap$c[] r0 = r11.f584c
            if (r0 != 0) goto L14
            sun.misc.Unsafe r1 = p034j$.util.concurrent.ConcurrentHashMap.f574h
            long r3 = p034j$.util.concurrent.ConcurrentHashMap.f577k
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
            int r3 = p034j$.util.concurrent.ThreadLocalRandom.m554b()
            r2 = r2 & r3
            r4 = r0[r2]
            if (r4 == 0) goto L94
            sun.misc.Unsafe r3 = p034j$.util.concurrent.ConcurrentHashMap.f574h
            long r5 = p034j$.util.concurrent.ConcurrentHashMap.f579m
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
            long r9 = r11.m576m()
        L3b:
            if (r14 < 0) goto L93
        L3d:
            int r4 = r11.sizeCtl
            long r12 = (long) r4
            int r12 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r12 < 0) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r12 = r11.f582a
            if (r12 == 0) goto L93
            int r13 = r12.length
            r14 = 1073741824(0x40000000, float:2.0)
            if (r13 >= r14) goto L93
            int r13 = m579j(r13)
            if (r4 >= 0) goto L7b
            int r14 = r4 >>> 16
            if (r14 != r13) goto L93
            int r14 = r13 + 1
            if (r4 == r14) goto L93
            r14 = 65535(0xffff, float:9.1834E-41)
            int r13 = r13 + r14
            if (r4 == r13) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r13 = r11.f583b
            if (r13 == 0) goto L93
            int r14 = r11.transferIndex
            if (r14 > 0) goto L6a
            goto L93
        L6a:
            sun.misc.Unsafe r0 = p034j$.util.concurrent.ConcurrentHashMap.f574h
            long r2 = p034j$.util.concurrent.ConcurrentHashMap.f575i
            int r5 = r4 + 1
            r1 = r11
            boolean r14 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r14 == 0) goto L8e
            r11.m573p(r12, r13)
            goto L8e
        L7b:
            sun.misc.Unsafe r0 = p034j$.util.concurrent.ConcurrentHashMap.f574h
            long r2 = p034j$.util.concurrent.ConcurrentHashMap.f575i
            int r13 = r13 << 16
            int r5 = r13 + 2
            r1 = r11
            boolean r13 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r13 == 0) goto L8e
            r13 = 0
            r11.m573p(r12, r13)
        L8e:
            long r9 = r11.m576m()
            goto L3d
        L93:
            return
        L94:
            r11.m584e(r12, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m588a(long, int):void");
    }

    /* renamed from: b */
    static final boolean m587b(C2673l[] c2673lArr, int i, C2673l c2673l, C2673l c2673l2) {
        return f574h.compareAndSwapObject(c2673lArr, (i << f581o) + f580n, (Object) null, c2673l2);
    }

    /* renamed from: c */
    static Class m586c(Object obj) {
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
    static int m585d(Class cls, Object obj, Object obj2) {
        if (obj2 == null || obj2.getClass() != cls) {
            return 0;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x009b, code lost:
        if (r24.f584c != r7) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009d, code lost:
        r1 = new p034j$.util.concurrent.ConcurrentHashMap.C2664c[r8 << 1];
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
        r24.f584c = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x001b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0101 A[SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m584e(long r25, boolean r27) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m584e(long, boolean):void");
    }

    /* renamed from: g */
    private final C2673l[] m582g() {
        while (true) {
            C2673l[] c2673lArr = this.f582a;
            if (c2673lArr != null && c2673lArr.length != 0) {
                return c2673lArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (f574h.compareAndSwapInt(this, f575i, i, -1)) {
                try {
                    C2673l[] c2673lArr2 = this.f582a;
                    if (c2673lArr2 == null || c2673lArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        C2673l[] c2673lArr3 = new C2673l[i2];
                        this.f582a = c2673lArr3;
                        i = i2 - (i2 >>> 2);
                        c2673lArr2 = c2673lArr3;
                    }
                    this.sizeCtl = i;
                    return c2673lArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* renamed from: j */
    static final int m579j(int i) {
        return Integer.numberOfLeadingZeros(i) | LiteMode.FLAG_CHAT_SCALE;
    }

    /* renamed from: k */
    static final void m578k(C2673l[] c2673lArr, int i, C2673l c2673l) {
        f574h.putObjectVolatile(c2673lArr, (i << f581o) + f580n, c2673l);
    }

    /* renamed from: l */
    static final int m577l(int i) {
        return (i ^ (i >>> 16)) & Integer.MAX_VALUE;
    }

    /* renamed from: n */
    static final C2673l m575n(C2673l[] c2673lArr, int i) {
        return (C2673l) f574h.getObjectVolatile(c2673lArr, (i << f581o) + f580n);
    }

    /* renamed from: o */
    private static final int m574o(int i) {
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
    private final void m573p(C2673l[] c2673lArr, C2673l[] c2673lArr2) {
        C2673l[] c2673lArr3;
        int i;
        C2673l[] c2673lArr4;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        C2668g c2668g;
        C2679r c2679r;
        int i7;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = c2673lArr.length;
        int i8 = f573g;
        boolean z = true;
        int i9 = i8 > 1 ? (length >>> 3) / i8 : length;
        int i10 = i9 < 16 ? 16 : i9;
        if (c2673lArr2 == null) {
            try {
                C2673l[] c2673lArr5 = new C2673l[length << 1];
                concurrentHashMap.f583b = c2673lArr5;
                concurrentHashMap.transferIndex = length;
                c2673lArr3 = c2673lArr5;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            c2673lArr3 = c2673lArr2;
        }
        int length2 = c2673lArr3.length;
        C2668g c2668g2 = new C2668g(c2673lArr3);
        int i11 = -1;
        C2673l[] c2673lArr6 = c2673lArr;
        boolean z2 = true;
        int i12 = 0;
        int i13 = 0;
        boolean z3 = false;
        while (true) {
            if (z2) {
                int i14 = i12 - 1;
                if (i14 >= i13 || z3) {
                    i = i14;
                    c2673lArr4 = c2673lArr6;
                    i2 = i13;
                    i3 = i11;
                    z2 = false;
                } else {
                    int i15 = concurrentHashMap.transferIndex;
                    if (i15 <= 0) {
                        i12 = i11;
                    } else {
                        Unsafe unsafe = f574h;
                        long j = f576j;
                        int i16 = i15 > i10 ? i15 - i10 : 0;
                        i = i14;
                        c2673lArr4 = c2673lArr6;
                        i2 = i13;
                        i3 = i11;
                        if (unsafe.compareAndSwapInt(this, j, i15, i16)) {
                            i12 = i15 - 1;
                            i11 = i3;
                            c2673lArr6 = c2673lArr4;
                            i13 = i16;
                        }
                    }
                    z2 = false;
                }
                i11 = i3;
                c2673lArr6 = c2673lArr4;
                i13 = i2;
                i12 = i;
            } else {
                C2673l[] c2673lArr7 = c2673lArr6;
                int i17 = i13;
                int i18 = i11;
                C2679r c2679r2 = null;
                if (i12 < 0 || i12 >= length || (i4 = i12 + length) >= length2) {
                    int i19 = i10;
                    int i20 = length2;
                    C2668g c2668g3 = c2668g2;
                    if (z3) {
                        this.f583b = null;
                        this.f582a = c2673lArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    Unsafe unsafe2 = f574h;
                    long j2 = f575i;
                    int i21 = this.sizeCtl;
                    int i22 = i12;
                    if (!unsafe2.compareAndSwapInt(this, j2, i21, i21 - 1)) {
                        c2668g2 = c2668g3;
                        concurrentHashMap = this;
                        z = true;
                        i12 = i22;
                        c2673lArr6 = c2673lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    } else if (i21 - 2 != (m579j(length) << 16)) {
                        return;
                    } else {
                        c2668g2 = c2668g3;
                        i12 = length;
                        concurrentHashMap = this;
                        z = true;
                        z2 = true;
                        z3 = true;
                        c2673lArr6 = c2673lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    }
                } else {
                    C2673l m575n = m575n(c2673lArr7, i12);
                    if (m575n == null) {
                        z2 = m587b(c2673lArr7, i12, null, c2668g2);
                    } else {
                        int i23 = m575n.f598a;
                        if (i23 == i18) {
                            z2 = z;
                        } else {
                            synchronized (m575n) {
                                if (m575n(c2673lArr7, i12) == m575n) {
                                    if (i23 >= 0) {
                                        int i24 = i23 & length;
                                        C2679r c2679r3 = m575n;
                                        for (C2679r c2679r4 = m575n.f601d; c2679r4 != null; c2679r4 = c2679r4.f601d) {
                                            int i25 = c2679r4.f598a & length;
                                            if (i25 != i24) {
                                                c2679r3 = c2679r4;
                                                i24 = i25;
                                            }
                                        }
                                        if (i24 == 0) {
                                            c2679r = null;
                                            c2679r2 = c2679r3;
                                        } else {
                                            c2679r = c2679r3;
                                        }
                                        C2673l c2673l = m575n;
                                        while (c2673l != c2679r3) {
                                            int i26 = c2673l.f598a;
                                            C2679r c2679r5 = c2679r3;
                                            Object obj = c2673l.f599b;
                                            int i27 = i10;
                                            Object obj2 = c2673l.f600c;
                                            if ((i26 & length) == 0) {
                                                i7 = length2;
                                                c2679r2 = new C2673l(i26, obj, obj2, c2679r2);
                                            } else {
                                                i7 = length2;
                                                c2679r = new C2673l(i26, obj, obj2, c2679r);
                                            }
                                            c2673l = c2673l.f601d;
                                            c2679r3 = c2679r5;
                                            i10 = i27;
                                            length2 = i7;
                                        }
                                        i5 = i10;
                                        i6 = length2;
                                        m578k(c2673lArr3, i12, c2679r2);
                                        m578k(c2673lArr3, i4, c2679r);
                                        m578k(c2673lArr7, i12, c2668g2);
                                        c2668g = c2668g2;
                                    } else {
                                        i5 = i10;
                                        i6 = length2;
                                        if (m575n instanceof C2678q) {
                                            C2678q c2678q = (C2678q) m575n;
                                            C2679r c2679r6 = null;
                                            C2679r c2679r7 = null;
                                            C2673l c2673l2 = c2678q.f617f;
                                            int i28 = 0;
                                            int i29 = 0;
                                            C2679r c2679r8 = null;
                                            while (c2673l2 != null) {
                                                C2678q c2678q2 = c2678q;
                                                int i30 = c2673l2.f598a;
                                                C2668g c2668g4 = c2668g2;
                                                C2679r c2679r9 = new C2679r(i30, c2673l2.f599b, c2673l2.f600c, null, null);
                                                if ((i30 & length) == 0) {
                                                    c2679r9.f622h = c2679r7;
                                                    if (c2679r7 == null) {
                                                        c2679r2 = c2679r9;
                                                    } else {
                                                        c2679r7.f601d = c2679r9;
                                                    }
                                                    i28++;
                                                    c2679r7 = c2679r9;
                                                } else {
                                                    c2679r9.f622h = c2679r6;
                                                    if (c2679r6 == null) {
                                                        c2679r8 = c2679r9;
                                                    } else {
                                                        c2679r6.f601d = c2679r9;
                                                    }
                                                    i29++;
                                                    c2679r6 = c2679r9;
                                                }
                                                c2673l2 = c2673l2.f601d;
                                                c2678q = c2678q2;
                                                c2668g2 = c2668g4;
                                            }
                                            C2678q c2678q3 = c2678q;
                                            C2668g c2668g5 = c2668g2;
                                            C2673l m570s = i28 <= 6 ? m570s(c2679r2) : i29 != 0 ? new C2678q(c2679r2) : c2678q3;
                                            C2673l m570s2 = i29 <= 6 ? m570s(c2679r8) : i28 != 0 ? new C2678q(c2679r8) : c2678q3;
                                            m578k(c2673lArr3, i12, m570s);
                                            m578k(c2673lArr3, i4, m570s2);
                                            c2668g = c2668g5;
                                            m578k(c2673lArr, i12, c2668g);
                                            c2673lArr7 = c2673lArr;
                                        }
                                    }
                                    z2 = true;
                                } else {
                                    i5 = i10;
                                    i6 = length2;
                                }
                                c2668g = c2668g2;
                            }
                            i11 = -1;
                            c2668g2 = c2668g;
                            c2673lArr6 = c2673lArr7;
                            i13 = i17;
                            i10 = i5;
                            length2 = i6;
                            z = true;
                            concurrentHashMap = this;
                        }
                    }
                    i11 = i18;
                    c2673lArr6 = c2673lArr7;
                    i13 = i17;
                }
            }
        }
    }

    /* renamed from: q */
    private final void m572q(C2673l[] c2673lArr, int i) {
        int length = c2673lArr.length;
        if (length < 64) {
            m571r(length << 1);
            return;
        }
        C2673l m575n = m575n(c2673lArr, i);
        if (m575n == null || m575n.f598a < 0) {
            return;
        }
        synchronized (m575n) {
            if (m575n(c2673lArr, i) == m575n) {
                C2679r c2679r = null;
                C2673l c2673l = m575n;
                C2679r c2679r2 = null;
                while (c2673l != null) {
                    C2679r c2679r3 = new C2679r(c2673l.f598a, c2673l.f599b, c2673l.f600c, null, null);
                    c2679r3.f622h = c2679r2;
                    if (c2679r2 == null) {
                        c2679r = c2679r3;
                    } else {
                        c2679r2.f601d = c2679r3;
                    }
                    c2673l = c2673l.f601d;
                    c2679r2 = c2679r3;
                }
                m578k(c2673lArr, i, new C2678q(c2679r));
            }
        }
    }

    /* renamed from: r */
    private final void m571r(int i) {
        int length;
        C2673l[] c2673lArr;
        int m574o = i >= 536870912 ? 1073741824 : m574o(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                return;
            }
            C2673l[] c2673lArr2 = this.f582a;
            if (c2673lArr2 == null || (length = c2673lArr2.length) == 0) {
                int i3 = i2 > m574o ? i2 : m574o;
                if (f574h.compareAndSwapInt(this, f575i, i2, -1)) {
                    try {
                        if (this.f582a == c2673lArr2) {
                            this.f582a = new C2673l[i3];
                            i2 = i3 - (i3 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i2;
                    }
                } else {
                    continue;
                }
            } else if (m574o <= i2 || length >= 1073741824) {
                return;
            } else {
                if (c2673lArr2 == this.f582a) {
                    int m579j = m579j(length);
                    if (i2 < 0) {
                        if ((i2 >>> 16) != m579j || i2 == m579j + 1 || i2 == m579j + RtpPacket.MAX_SEQUENCE_NUMBER || (c2673lArr = this.f583b) == null || this.transferIndex <= 0) {
                            return;
                        }
                        if (f574h.compareAndSwapInt(this, f575i, i2, i2 + 1)) {
                            m573p(c2673lArr2, c2673lArr);
                        }
                    } else if (f574h.compareAndSwapInt(this, f575i, i2, (m579j << 16) + 2)) {
                        m573p(c2673lArr2, null);
                    }
                } else {
                    continue;
                }
            }
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        long j;
        int m574o;
        boolean z;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j2 = 0;
        long j3 = 0;
        C2673l c2673l = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j3++;
            c2673l = new C2673l(m577l(readObject.hashCode()), readObject, readObject2, c2673l);
        }
        if (j3 == 0) {
            this.sizeCtl = 0;
            return;
        }
        boolean z2 = true;
        if (j3 >= 536870912) {
            m574o = 1073741824;
        } else {
            int i = (int) j3;
            m574o = m574o(i + (i >>> 1) + 1);
        }
        C2673l[] c2673lArr = new C2673l[m574o];
        int i2 = m574o - 1;
        while (c2673l != null) {
            C2673l c2673l2 = c2673l.f601d;
            int i3 = c2673l.f598a;
            int i4 = i3 & i2;
            C2673l m575n = m575n(c2673lArr, i4);
            if (m575n == null) {
                z = z2;
            } else {
                Object obj2 = c2673l.f599b;
                if (m575n.f598a >= 0) {
                    int i5 = 0;
                    for (C2673l c2673l3 = m575n; c2673l3 != null; c2673l3 = c2673l3.f601d) {
                        if (c2673l3.f598a == i3 && ((obj = c2673l3.f599b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i5++;
                    }
                    z = true;
                    if (z && i5 >= 8) {
                        j2++;
                        c2673l.f601d = m575n;
                        C2673l c2673l4 = c2673l;
                        C2679r c2679r = null;
                        C2679r c2679r2 = null;
                        while (c2673l4 != null) {
                            long j4 = j2;
                            C2679r c2679r3 = new C2679r(c2673l4.f598a, c2673l4.f599b, c2673l4.f600c, null, null);
                            c2679r3.f622h = c2679r2;
                            if (c2679r2 == null) {
                                c2679r = c2679r3;
                            } else {
                                c2679r2.f601d = c2679r3;
                            }
                            c2673l4 = c2673l4.f601d;
                            c2679r2 = c2679r3;
                            j2 = j4;
                        }
                        m578k(c2673lArr, i4, new C2678q(c2679r));
                    }
                } else if (((C2678q) m575n).m563f(i3, obj2, c2673l.f600c) == null) {
                    j2 += j;
                }
                z = false;
            }
            if (z) {
                j2++;
                c2673l.f601d = m575n;
                m578k(c2673lArr, i4, c2673l);
            }
            j = 1;
            c2673l = c2673l2;
            z2 = true;
        }
        this.f582a = c2673lArr;
        this.sizeCtl = m574o - (m574o >>> 2);
        this.baseCount = j2;
    }

    /* renamed from: s */
    static C2673l m570s(C2673l c2673l) {
        C2673l c2673l2 = null;
        C2673l c2673l3 = null;
        while (c2673l != null) {
            C2673l c2673l4 = new C2673l(c2673l.f598a, c2673l.f599b, c2673l.f600c, null);
            if (c2673l3 == null) {
                c2673l2 = c2673l4;
            } else {
                c2673l3.f601d = c2673l4;
            }
            c2673l = c2673l.f601d;
            c2673l3 = c2673l4;
        }
        return c2673l2;
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
        C2675n[] c2675nArr = new C2675n[16];
        for (int i5 = 0; i5 < 16; i5++) {
            c2675nArr[i5] = new C2675n(0.75f);
        }
        objectOutputStream.putFields().put("segments", c2675nArr);
        objectOutputStream.putFields().put("segmentShift", i3);
        objectOutputStream.putFields().put("segmentMask", i4);
        objectOutputStream.writeFields();
        C2673l[] c2673lArr = this.f582a;
        if (c2673lArr != null) {
            C2677p c2677p = new C2677p(c2673lArr, c2673lArr.length, 0, c2673lArr.length);
            while (true) {
                C2673l m568a = c2677p.m568a();
                if (m568a == null) {
                    break;
                }
                objectOutputStream.writeObject(m568a.f599b);
                objectOutputStream.writeObject(m568a.f600c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public void clear() {
        C2673l[] c2673lArr = this.f582a;
        int i = 0;
        long j = 0;
        while (c2673lArr != null && i < c2673lArr.length) {
            C2673l m575n = m575n(c2673lArr, i);
            if (m575n == null) {
                i++;
            } else {
                int i2 = m575n.f598a;
                if (i2 == -1) {
                    c2673lArr = m583f(c2673lArr, m575n);
                    i = 0;
                } else {
                    synchronized (m575n) {
                        if (m575n(c2673lArr, i) == m575n) {
                            for (C2673l c2673l = i2 >= 0 ? m575n : m575n instanceof C2678q ? ((C2678q) m575n).f617f : null; c2673l != null; c2673l = c2673l.f601d) {
                                j--;
                            }
                            m578k(c2673lArr, i, null);
                            i++;
                        }
                    }
                }
            }
        }
        if (j != 0) {
            m588a(j, -1);
        }
    }

    @Override // p034j$.util.Map
    public Object compute(Object obj, BiFunction biFunction) {
        int i;
        C2673l c2673l;
        Object obj2;
        Object obj3;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m577l = m577l(obj.hashCode());
        C2673l[] c2673lArr = this.f582a;
        int i2 = 0;
        Object obj4 = null;
        int i3 = 0;
        while (true) {
            if (c2673lArr != null) {
                int length = c2673lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m577l;
                    C2673l m575n = m575n(c2673lArr, i4);
                    if (m575n == null) {
                        C2674m c2674m = new C2674m();
                        synchronized (c2674m) {
                            if (m587b(c2673lArr, i4, null, c2674m)) {
                                Object apply = biFunction.apply(obj, null);
                                if (apply != null) {
                                    c2673l = new C2673l(m577l, obj, apply, null);
                                    i = 1;
                                } else {
                                    i = i2;
                                    c2673l = null;
                                }
                                m578k(c2673lArr, i4, c2673l);
                                i2 = i;
                                obj4 = apply;
                                i3 = 1;
                            }
                        }
                        if (i3 != 0) {
                            break;
                        }
                    } else {
                        int i5 = m575n.f598a;
                        if (i5 == -1) {
                            c2673lArr = m583f(c2673lArr, m575n);
                        } else {
                            synchronized (m575n) {
                                if (m575n(c2673lArr, i4) == m575n) {
                                    if (i5 >= 0) {
                                        C2673l c2673l2 = null;
                                        C2673l c2673l3 = m575n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2673l3.f598a != m577l || ((obj3 = c2673l3.f599b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2673l c2673l4 = c2673l3.f601d;
                                                if (c2673l4 == null) {
                                                    Object apply2 = biFunction.apply(obj, null);
                                                    if (apply2 != null) {
                                                        c2673l3.f601d = new C2673l(m577l, obj, apply2, null);
                                                        i2 = 1;
                                                    }
                                                    obj2 = apply2;
                                                } else {
                                                    i6++;
                                                    c2673l2 = c2673l3;
                                                    c2673l3 = c2673l4;
                                                }
                                            }
                                        }
                                        obj2 = biFunction.apply(obj, c2673l3.f600c);
                                        if (obj2 != null) {
                                            c2673l3.f600c = obj2;
                                        } else {
                                            C2673l c2673l5 = c2673l3.f601d;
                                            if (c2673l2 != null) {
                                                c2673l2.f601d = c2673l5;
                                            } else {
                                                m578k(c2673lArr, i4, c2673l5);
                                            }
                                            i2 = -1;
                                        }
                                        i3 = i6;
                                        obj4 = obj2;
                                    } else if (m575n instanceof C2678q) {
                                        C2678q c2678q = (C2678q) m575n;
                                        C2679r c2679r = c2678q.f616e;
                                        C2679r m557b = c2679r != null ? c2679r.m557b(m577l, obj, null) : null;
                                        Object apply3 = biFunction.apply(obj, m557b == null ? null : m557b.f600c);
                                        if (apply3 != null) {
                                            if (m557b != null) {
                                                m557b.f600c = apply3;
                                            } else {
                                                c2678q.m563f(m577l, obj, apply3);
                                                i2 = 1;
                                            }
                                        } else if (m557b != null) {
                                            if (c2678q.m562g(m557b)) {
                                                m578k(c2673lArr, i4, m570s(c2678q.f617f));
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
                                    m572q(c2673lArr, i4);
                                }
                            }
                        }
                    }
                }
            }
            c2673lArr = m582g();
        }
        if (i2 != 0) {
            m588a(i2, i3);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object compute(Object obj, java.util.function.BiFunction biFunction) {
        return compute(obj, C3122s.m102a(biFunction));
    }

    @Override // p034j$.util.concurrent.InterfaceC2688b, p034j$.util.Map
    public Object computeIfAbsent(Object obj, Function function) {
        int i;
        Object apply;
        C2679r m557b;
        Object obj2;
        Object obj3;
        if (obj == null || function == null) {
            throw null;
        }
        int m577l = m577l(obj.hashCode());
        C2673l[] c2673lArr = this.f582a;
        Object obj4 = null;
        int i2 = 0;
        while (true) {
            if (c2673lArr != null) {
                int length = c2673lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m577l;
                    C2673l m575n = m575n(c2673lArr, i3);
                    boolean z = true;
                    if (m575n == null) {
                        C2674m c2674m = new C2674m();
                        synchronized (c2674m) {
                            if (m587b(c2673lArr, i3, null, c2674m)) {
                                Object apply2 = function.apply(obj);
                                m578k(c2673lArr, i3, apply2 != null ? new C2673l(m577l, obj, apply2, null) : null);
                                obj4 = apply2;
                                i2 = 1;
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    } else {
                        int i4 = m575n.f598a;
                        if (i4 == -1) {
                            c2673lArr = m583f(c2673lArr, m575n);
                        } else {
                            synchronized (m575n) {
                                if (m575n(c2673lArr, i3) == m575n) {
                                    if (i4 >= 0) {
                                        C2673l c2673l = m575n;
                                        i = 1;
                                        while (true) {
                                            if (c2673l.f598a != m577l || ((obj3 = c2673l.f599b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2673l c2673l2 = c2673l.f601d;
                                                if (c2673l2 == null) {
                                                    apply = function.apply(obj);
                                                    if (apply != null) {
                                                        c2673l.f601d = new C2673l(m577l, obj, apply, null);
                                                    }
                                                } else {
                                                    i++;
                                                    c2673l = c2673l2;
                                                }
                                            }
                                        }
                                        obj2 = c2673l.f600c;
                                        z = false;
                                        int i5 = i;
                                        obj4 = obj2;
                                        i2 = i5;
                                    } else if (m575n instanceof C2678q) {
                                        i = 2;
                                        C2678q c2678q = (C2678q) m575n;
                                        C2679r c2679r = c2678q.f616e;
                                        if (c2679r == null || (m557b = c2679r.m557b(m577l, obj, null)) == null) {
                                            apply = function.apply(obj);
                                            if (apply != null) {
                                                c2678q.m563f(m577l, obj, apply);
                                                i2 = i;
                                                obj4 = apply;
                                            }
                                            z = false;
                                            i2 = i;
                                            obj4 = apply;
                                        } else {
                                            obj2 = m557b.f600c;
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
                                    m572q(c2673lArr, i3);
                                }
                                if (!z) {
                                    return obj4;
                                }
                            }
                        }
                    }
                }
            }
            c2673lArr = m582g();
        }
        if (obj4 != null) {
            m588a(1L, i2);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
        return computeIfAbsent(obj, C3068L.m189a(function));
    }

    @Override // p034j$.util.Map
    public Object computeIfPresent(Object obj, BiFunction biFunction) {
        C2679r m557b;
        C2673l m570s;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m577l = m577l(obj.hashCode());
        C2673l[] c2673lArr = this.f582a;
        int i = 0;
        Object obj3 = null;
        int i2 = 0;
        while (true) {
            if (c2673lArr != null) {
                int length = c2673lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m577l;
                    C2673l m575n = m575n(c2673lArr, i3);
                    if (m575n == null) {
                        break;
                    }
                    int i4 = m575n.f598a;
                    if (i4 == -1) {
                        c2673lArr = m583f(c2673lArr, m575n);
                    } else {
                        synchronized (m575n) {
                            if (m575n(c2673lArr, i3) == m575n) {
                                if (i4 >= 0) {
                                    i2 = 1;
                                    C2673l c2673l = null;
                                    C2673l c2673l2 = m575n;
                                    while (true) {
                                        if (c2673l2.f598a != m577l || ((obj2 = c2673l2.f599b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                            C2673l c2673l3 = c2673l2.f601d;
                                            if (c2673l3 == null) {
                                                break;
                                            }
                                            i2++;
                                            c2673l = c2673l2;
                                            c2673l2 = c2673l3;
                                        }
                                    }
                                    obj3 = biFunction.apply(obj, c2673l2.f600c);
                                    if (obj3 != null) {
                                        c2673l2.f600c = obj3;
                                    } else {
                                        m570s = c2673l2.f601d;
                                        if (c2673l != null) {
                                            c2673l.f601d = m570s;
                                            i = -1;
                                        }
                                        m578k(c2673lArr, i3, m570s);
                                        i = -1;
                                    }
                                } else if (m575n instanceof C2678q) {
                                    i2 = 2;
                                    C2678q c2678q = (C2678q) m575n;
                                    C2679r c2679r = c2678q.f616e;
                                    if (c2679r != null && (m557b = c2679r.m557b(m577l, obj, null)) != null) {
                                        obj3 = biFunction.apply(obj, m557b.f600c);
                                        if (obj3 != null) {
                                            m557b.f600c = obj3;
                                        } else {
                                            if (c2678q.m562g(m557b)) {
                                                m570s = m570s(c2678q.f617f);
                                                m578k(c2673lArr, i3, m570s);
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
            c2673lArr = m582g();
        }
        if (i != 0) {
            m588a(i, i2);
        }
        return obj3;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfPresent(Object obj, java.util.function.BiFunction biFunction) {
        return computeIfPresent(obj, C3122s.m102a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean containsValue(Object obj) {
        Objects.requireNonNull(obj);
        C2673l[] c2673lArr = this.f582a;
        if (c2673lArr != null) {
            C2677p c2677p = new C2677p(c2673lArr, c2673lArr.length, 0, c2673lArr.length);
            while (true) {
                C2673l m568a = c2677p.m568a();
                if (m568a == null) {
                    break;
                }
                Object obj2 = m568a.f600c;
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
        C2666e c2666e = this.f587f;
        if (c2666e != null) {
            return c2666e;
        }
        C2666e c2666e2 = new C2666e(this);
        this.f587f = c2666e2;
        return c2666e2;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public boolean equals(Object obj) {
        V value;
        V v;
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                C2673l[] c2673lArr = this.f582a;
                int length = c2673lArr == null ? 0 : c2673lArr.length;
                C2677p c2677p = new C2677p(c2673lArr, length, 0, length);
                while (true) {
                    C2673l m568a = c2677p.m568a();
                    if (m568a == null) {
                        for (Map.Entry<K, V> entry : map.entrySet()) {
                            K key = entry.getKey();
                            if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                                return false;
                            }
                        }
                        return true;
                    }
                    Object obj2 = m568a.f600c;
                    Object obj3 = map.get(m568a.f599b);
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
    final C2673l[] m583f(C2673l[] c2673lArr, C2673l c2673l) {
        C2673l[] c2673lArr2;
        int i;
        if (!(c2673l instanceof C2668g) || (c2673lArr2 = ((C2668g) c2673l).f593e) == null) {
            return this.f582a;
        }
        int m579j = m579j(c2673lArr.length);
        while (true) {
            if (c2673lArr2 != this.f583b || this.f582a != c2673lArr || (i = this.sizeCtl) >= 0 || (i >>> 16) != m579j || i == m579j + 1 || i == RtpPacket.MAX_SEQUENCE_NUMBER + m579j || this.transferIndex <= 0) {
                break;
            } else if (f574h.compareAndSwapInt(this, f575i, i, i + 1)) {
                m573p(c2673lArr, c2673lArr2);
                break;
            }
        }
        return c2673lArr2;
    }

    @Override // p034j$.util.concurrent.InterfaceC2688b, p034j$.util.Map
    public void forEach(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2673l[] c2673lArr = this.f582a;
        if (c2673lArr == null) {
            return;
        }
        C2677p c2677p = new C2677p(c2673lArr, c2673lArr.length, 0, c2673lArr.length);
        while (true) {
            C2673l m568a = c2677p.m568a();
            if (m568a == null) {
                return;
            }
            biConsumer.accept(m568a.f599b, m568a.f600c);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void forEach(java.util.function.BiConsumer biConsumer) {
        forEach(C3118q.m107a(biConsumer));
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
        return (V) r1.f600c;
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
            int r0 = m577l(r0)
            j$.util.concurrent.ConcurrentHashMap$l[] r1 = r4.f582a
            r2 = 0
            if (r1 == 0) goto L4e
            int r3 = r1.length
            if (r3 <= 0) goto L4e
            int r3 = r3 + (-1)
            r3 = r3 & r0
            j$.util.concurrent.ConcurrentHashMap$l r1 = m575n(r1, r3)
            if (r1 == 0) goto L4e
            int r3 = r1.f598a
            if (r3 != r0) goto L2c
            java.lang.Object r3 = r1.f599b
            if (r3 == r5) goto L29
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L29:
            java.lang.Object r5 = r1.f600c
            return r5
        L2c:
            if (r3 >= 0) goto L37
            j$.util.concurrent.ConcurrentHashMap$l r5 = r1.mo558a(r0, r5)
            if (r5 == 0) goto L36
            java.lang.Object r2 = r5.f600c
        L36:
            return r2
        L37:
            j$.util.concurrent.ConcurrentHashMap$l r1 = r1.f601d
            if (r1 == 0) goto L4e
            int r3 = r1.f598a
            if (r3 != r0) goto L37
            java.lang.Object r3 = r1.f599b
            if (r3 == r5) goto L4b
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L4b:
            java.lang.Object r5 = r1.f600c
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
    final java.lang.Object m581h(java.lang.Object r9, java.lang.Object r10, boolean r11) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L98
            if (r10 == 0) goto L98
            int r1 = r9.hashCode()
            int r1 = m577l(r1)
            r2 = 0
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.f582a
        L10:
            if (r3 == 0) goto L92
            int r4 = r3.length
            if (r4 != 0) goto L17
            goto L92
        L17:
            int r4 = r4 + (-1)
            r4 = r4 & r1
            j$.util.concurrent.ConcurrentHashMap$l r5 = m575n(r3, r4)
            if (r5 != 0) goto L2c
            j$.util.concurrent.ConcurrentHashMap$l r5 = new j$.util.concurrent.ConcurrentHashMap$l
            r5.<init>(r1, r9, r10, r0)
            boolean r4 = m587b(r3, r4, r0, r5)
            if (r4 == 0) goto L10
            goto L89
        L2c:
            int r6 = r5.f598a
            r7 = -1
            if (r6 != r7) goto L36
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m583f(r3, r5)
            goto L10
        L36:
            monitor-enter(r5)
            j$.util.concurrent.ConcurrentHashMap$l r7 = m575n(r3, r4)     // Catch: java.lang.Throwable -> L8f
            if (r7 != r5) goto L7b
            if (r6 < 0) goto L68
            r2 = 1
            r6 = r5
        L41:
            int r7 = r6.f598a     // Catch: java.lang.Throwable -> L8f
            if (r7 != r1) goto L58
            java.lang.Object r7 = r6.f599b     // Catch: java.lang.Throwable -> L8f
            if (r7 == r9) goto L51
            if (r7 == 0) goto L58
            boolean r7 = r9.equals(r7)     // Catch: java.lang.Throwable -> L8f
            if (r7 == 0) goto L58
        L51:
            java.lang.Object r7 = r6.f600c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
        L55:
            r6.f600c = r10     // Catch: java.lang.Throwable -> L8f
            goto L7c
        L58:
            j$.util.concurrent.ConcurrentHashMap$l r7 = r6.f601d     // Catch: java.lang.Throwable -> L8f
            if (r7 != 0) goto L64
            j$.util.concurrent.ConcurrentHashMap$l r7 = new j$.util.concurrent.ConcurrentHashMap$l     // Catch: java.lang.Throwable -> L8f
            r7.<init>(r1, r9, r10, r0)     // Catch: java.lang.Throwable -> L8f
            r6.f601d = r7     // Catch: java.lang.Throwable -> L8f
            goto L7b
        L64:
            int r2 = r2 + 1
            r6 = r7
            goto L41
        L68:
            boolean r6 = r5 instanceof p034j$.util.concurrent.ConcurrentHashMap.C2678q     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            r2 = 2
            r6 = r5
            j$.util.concurrent.ConcurrentHashMap$q r6 = (p034j$.util.concurrent.ConcurrentHashMap.C2678q) r6     // Catch: java.lang.Throwable -> L8f
            j$.util.concurrent.ConcurrentHashMap$r r6 = r6.m563f(r1, r9, r10)     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            java.lang.Object r7 = r6.f600c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
            goto L55
        L7b:
            r7 = r0
        L7c:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            if (r2 == 0) goto L10
            r9 = 8
            if (r2 < r9) goto L86
            r8.m572q(r3, r4)
        L86:
            if (r7 == 0) goto L89
            return r7
        L89:
            r9 = 1
            r8.m588a(r9, r2)
            return r0
        L8f:
            r9 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            throw r9
        L92:
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m582g()
            goto L10
        L98:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.m581h(java.lang.Object, java.lang.Object, boolean):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public int hashCode() {
        C2673l[] c2673lArr = this.f582a;
        int i = 0;
        if (c2673lArr != null) {
            C2677p c2677p = new C2677p(c2673lArr, c2673lArr.length, 0, c2673lArr.length);
            while (true) {
                C2673l m568a = c2677p.m568a();
                if (m568a == null) {
                    break;
                }
                i += m568a.f600c.hashCode() ^ m568a.f599b.hashCode();
            }
        }
        return i;
    }

    /* renamed from: i */
    final Object m580i(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        C2673l m575n;
        Object obj4;
        C2679r m557b;
        C2673l m570s;
        Object obj5;
        int m577l = m577l(obj.hashCode());
        C2673l[] c2673lArr = this.f582a;
        while (true) {
            if (c2673lArr == null || (length = c2673lArr.length) == 0 || (m575n = m575n(c2673lArr, (i = (length - 1) & m577l))) == null) {
                break;
            }
            int i2 = m575n.f598a;
            if (i2 == -1) {
                c2673lArr = m583f(c2673lArr, m575n);
            } else {
                boolean z = false;
                synchronized (m575n) {
                    if (m575n(c2673lArr, i) == m575n) {
                        if (i2 >= 0) {
                            C2673l c2673l = null;
                            C2673l c2673l2 = m575n;
                            while (true) {
                                if (c2673l2.f598a != m577l || ((obj5 = c2673l2.f599b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                    C2673l c2673l3 = c2673l2.f601d;
                                    if (c2673l3 == null) {
                                        break;
                                    }
                                    c2673l = c2673l2;
                                    c2673l2 = c2673l3;
                                }
                            }
                            obj4 = c2673l2.f600c;
                            if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                if (obj2 != null) {
                                    c2673l2.f600c = obj2;
                                } else if (c2673l != null) {
                                    c2673l.f601d = c2673l2.f601d;
                                } else {
                                    m570s = c2673l2.f601d;
                                    m578k(c2673lArr, i, m570s);
                                }
                                z = true;
                            }
                            obj4 = null;
                            z = true;
                        } else if (m575n instanceof C2678q) {
                            C2678q c2678q = (C2678q) m575n;
                            C2679r c2679r = c2678q.f616e;
                            if (c2679r != null && (m557b = c2679r.m557b(m577l, obj, null)) != null) {
                                obj4 = m557b.f600c;
                                if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                    if (obj2 != null) {
                                        m557b.f600c = obj2;
                                    } else if (c2678q.m562g(m557b)) {
                                        m570s = m570s(c2678q.f617f);
                                        m578k(c2673lArr, i, m570s);
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
                            m588a(-1L, -1);
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
        return m576m() <= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public Set<K> keySet() {
        C2670i c2670i = this.f585d;
        if (c2670i != null) {
            return c2670i;
        }
        C2670i c2670i2 = new C2670i(this, null);
        this.f585d = c2670i2;
        return c2670i2;
    }

    /* renamed from: m */
    final long m576m() {
        C2664c[] c2664cArr = this.f584c;
        long j = this.baseCount;
        if (c2664cArr != null) {
            for (C2664c c2664c : c2664cArr) {
                if (c2664c != null) {
                    j += c2664c.value;
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
        int m577l = m577l(obj.hashCode());
        C2673l[] c2673lArr = this.f582a;
        int i2 = 0;
        Object obj6 = null;
        int i3 = 0;
        while (true) {
            if (c2673lArr != null) {
                int length = c2673lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m577l;
                    C2673l m575n = m575n(c2673lArr, i4);
                    i = 1;
                    if (m575n != null) {
                        int i5 = m575n.f598a;
                        if (i5 == -1) {
                            c2673lArr = m583f(c2673lArr, m575n);
                        } else {
                            synchronized (m575n) {
                                if (m575n(c2673lArr, i4) == m575n) {
                                    if (i5 >= 0) {
                                        C2673l c2673l = null;
                                        C2673l c2673l2 = m575n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2673l2.f598a != m577l || ((obj4 = c2673l2.f599b) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                C2673l c2673l3 = c2673l2.f601d;
                                                if (c2673l3 == null) {
                                                    c2673l2.f601d = new C2673l(m577l, obj, obj5, null);
                                                    obj3 = obj5;
                                                    break;
                                                }
                                                i6++;
                                                c2673l = c2673l2;
                                                c2673l2 = c2673l3;
                                            }
                                        }
                                        Object apply = biFunction.apply(c2673l2.f600c, obj5);
                                        if (apply != null) {
                                            c2673l2.f600c = apply;
                                        } else {
                                            C2673l c2673l4 = c2673l2.f601d;
                                            if (c2673l != null) {
                                                c2673l.f601d = c2673l4;
                                            } else {
                                                m578k(c2673lArr, i4, c2673l4);
                                            }
                                            i2 = -1;
                                        }
                                        i = i2;
                                        obj3 = apply;
                                        i3 = i6;
                                        obj6 = obj3;
                                        i2 = i;
                                    } else if (m575n instanceof C2678q) {
                                        i3 = 2;
                                        C2678q c2678q = (C2678q) m575n;
                                        C2679r c2679r = c2678q.f616e;
                                        C2679r m557b = c2679r == null ? null : c2679r.m557b(m577l, obj, null);
                                        Object apply2 = m557b == null ? obj5 : biFunction.apply(m557b.f600c, obj5);
                                        if (apply2 != null) {
                                            if (m557b != null) {
                                                m557b.f600c = apply2;
                                            } else {
                                                c2678q.m563f(m577l, obj, apply2);
                                                i2 = 1;
                                            }
                                        } else if (m557b != null) {
                                            if (c2678q.m562g(m557b)) {
                                                m578k(c2673lArr, i4, m570s(c2678q.f617f));
                                            }
                                            i2 = -1;
                                        }
                                        obj6 = apply2;
                                    }
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    m572q(c2673lArr, i4);
                                }
                                i = i2;
                                obj5 = obj6;
                            }
                        }
                    } else if (m587b(c2673lArr, i4, null, new C2673l(m577l, obj, obj5, null))) {
                        break;
                    }
                }
            }
            c2673lArr = m582g();
        }
        if (i != 0) {
            m588a(i, i3);
        }
        return obj5;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
        return merge(obj, obj2, C3122s.m102a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public V put(K k, V v) {
        return (V) m581h(k, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m571r(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            m581h(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public V putIfAbsent(K k, V v) {
        return (V) m581h(k, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public V remove(Object obj) {
        return (V) m580i(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        Objects.requireNonNull(obj);
        return (obj2 == null || m580i(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return m580i(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p034j$.util.Map
    public boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return m580i(obj, obj3, obj2) != null;
    }

    @Override // p034j$.util.Map
    public void replaceAll(BiFunction biFunction) {
        Objects.requireNonNull(biFunction);
        C2673l[] c2673lArr = this.f582a;
        if (c2673lArr == null) {
            return;
        }
        C2677p c2677p = new C2677p(c2673lArr, c2673lArr.length, 0, c2673lArr.length);
        while (true) {
            C2673l m568a = c2677p.m568a();
            if (m568a == null) {
                return;
            }
            Object obj = m568a.f600c;
            Object obj2 = m568a.f599b;
            do {
                Object apply = biFunction.apply(obj2, obj);
                Objects.requireNonNull(apply);
                if (m580i(obj2, apply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void replaceAll(java.util.function.BiFunction biFunction) {
        replaceAll(C3122s.m102a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p034j$.util.Map
    public int size() {
        long m576m = m576m();
        if (m576m < 0) {
            return 0;
        }
        if (m576m > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) m576m;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        C2673l[] c2673lArr = this.f582a;
        int length = c2673lArr == null ? 0 : c2673lArr.length;
        C2677p c2677p = new C2677p(c2673lArr, length, 0, length);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        C2673l m568a = c2677p.m568a();
        if (m568a != null) {
            while (true) {
                Object obj = m568a.f599b;
                Object obj2 = m568a.f600c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                m568a = c2677p.m568a();
                if (m568a == null) {
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
        C2682u c2682u = this.f586e;
        if (c2682u != null) {
            return c2682u;
        }
        C2682u c2682u2 = new C2682u(this);
        this.f586e = c2682u2;
        return c2682u2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC2663b implements Collection, Serializable {

        /* renamed from: a */
        final ConcurrentHashMap f590a;

        AbstractC2663b(ConcurrentHashMap concurrentHashMap) {
            this.f590a = concurrentHashMap;
        }

        @Override // java.util.Collection
        public final void clear() {
            this.f590a.clear();
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
            throw new UnsupportedOperationException("Method not decompiled: p034j$.util.concurrent.ConcurrentHashMap.AbstractC2663b.containsAll(java.util.Collection):boolean");
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return this.f590a.isEmpty();
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
            return this.f590a.size();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            long m576m = this.f590a.m576m();
            if (m576m < 0) {
                m576m = 0;
            }
            if (m576m <= 2147483639) {
                int i = (int) m576m;
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
            long m576m = this.f590a.m576m();
            if (m576m < 0) {
                m576m = 0;
            }
            if (m576m <= 2147483639) {
                int i = (int) m576m;
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
