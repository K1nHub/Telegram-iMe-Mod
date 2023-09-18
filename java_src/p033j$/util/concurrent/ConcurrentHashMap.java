package p033j$.util.concurrent;

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
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2836b;
import p033j$.util.InterfaceC2908s;
import p033j$.util.Iterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.Predicate;
import p033j$.wrappers.C3244L;
import p033j$.wrappers.C3251O0;
import p033j$.wrappers.C3254S;
import p033j$.wrappers.C3276h;
import p033j$.wrappers.C3294q;
import p033j$.wrappers.C3298s;
import p033j$.wrappers.C3306w;
import p033j$.wrappers.C3307w0;
import sun.misc.Unsafe;
/* renamed from: j$.util.concurrent.ConcurrentHashMap */
/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, InterfaceC2864b {

    /* renamed from: g */
    static final int f659g = Runtime.getRuntime().availableProcessors();

    /* renamed from: h */
    private static final Unsafe f660h;

    /* renamed from: i */
    private static final long f661i;

    /* renamed from: j */
    private static final long f662j;

    /* renamed from: k */
    private static final long f663k;

    /* renamed from: l */
    private static final long f664l;

    /* renamed from: m */
    private static final long f665m;

    /* renamed from: n */
    private static final long f666n;

    /* renamed from: o */
    private static final int f667o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;

    /* renamed from: a */
    volatile transient C2849l[] f668a;

    /* renamed from: b */
    private volatile transient C2849l[] f669b;
    private volatile transient long baseCount;

    /* renamed from: c */
    private volatile transient C2840c[] f670c;
    private volatile transient int cellsBusy;

    /* renamed from: d */
    private transient C2846i f671d;

    /* renamed from: e */
    private transient C2858u f672e;

    /* renamed from: f */
    private transient C2842e f673f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$a */
    /* loaded from: classes2.dex */
    public static class C2838a extends C2853p {

        /* renamed from: i */
        final ConcurrentHashMap f674i;

        /* renamed from: j */
        C2849l f675j;

        C2838a(C2849l[] c2849lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2849lArr, i, i2, i3);
            this.f674i = concurrentHashMap;
            m586a();
        }

        public final boolean hasMoreElements() {
            return this.f693b != null;
        }

        public final boolean hasNext() {
            return this.f693b != null;
        }

        public final void remove() {
            C2849l c2849l = this.f675j;
            if (c2849l == null) {
                throw new IllegalStateException();
            }
            this.f675j = null;
            this.f674i.m598i(c2849l.f685b, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$c */
    /* loaded from: classes2.dex */
    public static final class C2840c {
        volatile long value;

        C2840c(long j) {
            this.value = j;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$d */
    /* loaded from: classes2.dex */
    static final class C2841d extends C2838a implements Iterator, p033j$.util.Iterator {
        C2841d(C2849l[] c2849lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2849lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3306w.m112b(consumer));
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public Object next() {
            C2849l c2849l = this.f693b;
            if (c2849l != null) {
                Object obj = c2849l.f685b;
                Object obj2 = c2849l.f686c;
                this.f675j = c2849l;
                m586a();
                return new C2848k(obj, obj2, this.f674i);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$e */
    /* loaded from: classes2.dex */
    public static final class C2842e extends AbstractC2839b implements Set, InterfaceC2836b {
        C2842e(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set
        /* renamed from: a */
        public boolean add(Map.Entry entry) {
            return this.f676a.m599h(entry.getKey(), entry.getValue(), false) == null;
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

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2839b, java.util.Collection
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            Object value;
            return (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = this.f676a.get(key)) == null || (value = entry.getValue()) == null || (value != obj2 && !value.equals(obj2))) ? false : true;
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p033j$.util.InterfaceC2836b, p033j$.lang.InterfaceC2782e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2849l[] c2849lArr = this.f676a.f668a;
            if (c2849lArr == null) {
                return;
            }
            C2853p c2853p = new C2853p(c2849lArr, c2849lArr.length, 0, c2849lArr.length);
            while (true) {
                C2849l m586a = c2853p.m586a();
                if (m586a == null) {
                    return;
                }
                consumer.accept(new C2848k(m586a.f685b, m586a.f686c, this.f676a));
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3306w.m112b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            C2849l[] c2849lArr = this.f676a.f668a;
            int i = 0;
            if (c2849lArr != null) {
                C2853p c2853p = new C2853p(c2849lArr, c2849lArr.length, 0, c2849lArr.length);
                while (true) {
                    C2849l m586a = c2853p.m586a();
                    if (m586a == null) {
                        break;
                    }
                    i += m586a.hashCode();
                }
            }
            return i;
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2839b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f676a;
            C2849l[] c2849lArr = concurrentHashMap.f668a;
            int length = c2849lArr == null ? 0 : c2849lArr.length;
            return new C2841d(c2849lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p033j$.util.InterfaceC2836b
        /* renamed from: k */
        public /* synthetic */ boolean mo574k(Predicate predicate) {
            return AbstractC2835a.m621h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3251O0.m185n0(AbstractC2835a.m622g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && this.f676a.remove(key, value);
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2835a.m621h(this, C3307w0.m111a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p033j$.util.InterfaceC2836b, p033j$.lang.InterfaceC2782e
        public InterfaceC2908s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f676a;
            long m594m = concurrentHashMap.m594m();
            C2849l[] c2849lArr = concurrentHashMap.f668a;
            int length = c2849lArr == null ? 0 : c2849lArr.length;
            return new C2843f(c2849lArr, length, 0, length, m594m >= 0 ? m594m : 0L, concurrentHashMap);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C3276h.m153a(spliterator());
        }

        @Override // java.util.Collection, p033j$.util.InterfaceC2836b
        public /* synthetic */ p033j$.util.stream.Stream stream() {
            return AbstractC2835a.m620i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3251O0.m185n0(AbstractC2835a.m620i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3254S.m181a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$f */
    /* loaded from: classes2.dex */
    public static final class C2843f extends C2853p implements InterfaceC2908s {

        /* renamed from: i */
        final ConcurrentHashMap f677i;

        /* renamed from: j */
        long f678j;

        C2843f(C2849l[] c2849lArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
            super(c2849lArr, i, i2, i3);
            this.f677i = concurrentHashMap;
            this.f678j = j;
        }

        @Override // p033j$.util.InterfaceC2908s
        /* renamed from: b */
        public boolean mo131b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2849l m586a = m586a();
            if (m586a == null) {
                return false;
            }
            consumer.accept(new C2848k(m586a.f685b, m586a.f686c, this.f677i));
            return true;
        }

        @Override // p033j$.util.InterfaceC2908s
        public int characteristics() {
            return 4353;
        }

        @Override // p033j$.util.InterfaceC2908s
        public long estimateSize() {
            return this.f678j;
        }

        @Override // p033j$.util.InterfaceC2908s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2849l m586a = m586a();
                if (m586a == null) {
                    return;
                }
                consumer.accept(new C2848k(m586a.f685b, m586a.f686c, this.f677i));
            }
        }

        @Override // p033j$.util.InterfaceC2908s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2908s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2835a.m624e(this);
        }

        @Override // p033j$.util.InterfaceC2908s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2835a.m623f(this, i);
        }

        @Override // p033j$.util.InterfaceC2908s
        public InterfaceC2908s trySplit() {
            int i = this.f697f;
            int i2 = this.f698g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2849l[] c2849lArr = this.f692a;
            int i4 = this.f699h;
            this.f698g = i3;
            long j = this.f678j >>> 1;
            this.f678j = j;
            return new C2843f(c2849lArr, i4, i3, i2, j, this.f677i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$g */
    /* loaded from: classes2.dex */
    public static final class C2844g extends C2849l {

        /* renamed from: e */
        final C2849l[] f679e;

        C2844g(C2849l[] c2849lArr) {
            super(-1, null, null, null);
            this.f679e = c2849lArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
            if ((r0 instanceof p033j$.util.concurrent.ConcurrentHashMap.C2844g) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
            r0 = ((p033j$.util.concurrent.ConcurrentHashMap.C2844g) r0).f679e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
            return r0.mo576a(r5, r6);
         */
        @Override // p033j$.util.concurrent.ConcurrentHashMap.C2849l
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        p033j$.util.concurrent.ConcurrentHashMap.C2849l mo576a(int r5, java.lang.Object r6) {
            /*
                r4 = this;
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r4.f679e
            L2:
                r1 = 0
                if (r0 == 0) goto L37
                int r2 = r0.length
                if (r2 == 0) goto L37
                int r2 = r2 + (-1)
                r2 = r2 & r5
                j$.util.concurrent.ConcurrentHashMap$l r0 = p033j$.util.concurrent.ConcurrentHashMap.m593n(r0, r2)
                if (r0 != 0) goto L12
                goto L37
            L12:
                int r2 = r0.f684a
                if (r2 != r5) goto L23
                java.lang.Object r3 = r0.f685b
                if (r3 == r6) goto L22
                if (r3 == 0) goto L23
                boolean r3 = r6.equals(r3)
                if (r3 == 0) goto L23
            L22:
                return r0
            L23:
                if (r2 >= 0) goto L33
                boolean r1 = r0 instanceof p033j$.util.concurrent.ConcurrentHashMap.C2844g
                if (r1 == 0) goto L2e
                j$.util.concurrent.ConcurrentHashMap$g r0 = (p033j$.util.concurrent.ConcurrentHashMap.C2844g) r0
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r0.f679e
                goto L2
            L2e:
                j$.util.concurrent.ConcurrentHashMap$l r5 = r0.mo576a(r5, r6)
                return r5
            L33:
                j$.util.concurrent.ConcurrentHashMap$l r0 = r0.f687d
                if (r0 != 0) goto L12
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.C2844g.mo576a(int, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$l");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$h */
    /* loaded from: classes2.dex */
    public static final class C2845h extends C2838a implements java.util.Iterator, Enumeration, p033j$.util.Iterator {
        C2845h(C2849l[] c2849lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2849lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3306w.m112b(consumer));
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public final Object next() {
            C2849l c2849l = this.f693b;
            if (c2849l != null) {
                Object obj = c2849l.f685b;
                this.f675j = c2849l;
                m586a();
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
    public static class C2846i extends AbstractC2839b implements Set, InterfaceC2836b {
        C2846i(ConcurrentHashMap concurrentHashMap, Object obj) {
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

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2839b, java.util.Collection
        public boolean contains(Object obj) {
            return this.f676a.containsKey(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p033j$.util.InterfaceC2836b, p033j$.lang.InterfaceC2782e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2849l[] c2849lArr = this.f676a.f668a;
            if (c2849lArr == null) {
                return;
            }
            C2853p c2853p = new C2853p(c2849lArr, c2849lArr.length, 0, c2849lArr.length);
            while (true) {
                C2849l m586a = c2853p.m586a();
                if (m586a == null) {
                    return;
                }
                consumer.accept(m586a.f685b);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3306w.m112b(consumer));
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            java.util.Iterator it = iterator();
            int i = 0;
            while (((C2838a) it).hasNext()) {
                i += ((C2845h) it).next().hashCode();
            }
            return i;
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2839b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f676a;
            C2849l[] c2849lArr = concurrentHashMap.f668a;
            int length = c2849lArr == null ? 0 : c2849lArr.length;
            return new C2845h(c2849lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p033j$.util.InterfaceC2836b
        /* renamed from: k */
        public /* synthetic */ boolean mo574k(Predicate predicate) {
            return AbstractC2835a.m621h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3251O0.m185n0(AbstractC2835a.m622g(this));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f676a.remove(obj) != null;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2835a.m621h(this, C3307w0.m111a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p033j$.util.InterfaceC2836b, p033j$.lang.InterfaceC2782e
        public InterfaceC2908s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f676a;
            long m594m = concurrentHashMap.m594m();
            C2849l[] c2849lArr = concurrentHashMap.f668a;
            int length = c2849lArr == null ? 0 : c2849lArr.length;
            return new C2847j(c2849lArr, length, 0, length, m594m >= 0 ? m594m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Spliterator spliterator() {
            return C3276h.m153a(spliterator());
        }

        @Override // java.util.Collection, p033j$.util.InterfaceC2836b
        public /* synthetic */ p033j$.util.stream.Stream stream() {
            return AbstractC2835a.m620i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3251O0.m185n0(AbstractC2835a.m620i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3254S.m181a(intFunction).apply(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$j */
    /* loaded from: classes2.dex */
    public static final class C2847j extends C2853p implements InterfaceC2908s {

        /* renamed from: i */
        long f680i;

        C2847j(C2849l[] c2849lArr, int i, int i2, int i3, long j) {
            super(c2849lArr, i, i2, i3);
            this.f680i = j;
        }

        @Override // p033j$.util.InterfaceC2908s
        /* renamed from: b */
        public boolean mo131b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2849l m586a = m586a();
            if (m586a == null) {
                return false;
            }
            consumer.accept(m586a.f685b);
            return true;
        }

        @Override // p033j$.util.InterfaceC2908s
        public int characteristics() {
            return 4353;
        }

        @Override // p033j$.util.InterfaceC2908s
        public long estimateSize() {
            return this.f680i;
        }

        @Override // p033j$.util.InterfaceC2908s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2849l m586a = m586a();
                if (m586a == null) {
                    return;
                }
                consumer.accept(m586a.f685b);
            }
        }

        @Override // p033j$.util.InterfaceC2908s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2908s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2835a.m624e(this);
        }

        @Override // p033j$.util.InterfaceC2908s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2835a.m623f(this, i);
        }

        @Override // p033j$.util.InterfaceC2908s
        public InterfaceC2908s trySplit() {
            int i = this.f697f;
            int i2 = this.f698g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2849l[] c2849lArr = this.f692a;
            int i4 = this.f699h;
            this.f698g = i3;
            long j = this.f680i >>> 1;
            this.f680i = j;
            return new C2847j(c2849lArr, i4, i3, i2, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$k */
    /* loaded from: classes2.dex */
    public static final class C2848k implements Map.Entry {

        /* renamed from: a */
        final Object f681a;

        /* renamed from: b */
        Object f682b;

        /* renamed from: c */
        final ConcurrentHashMap f683c;

        C2848k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
            this.f681a = obj;
            this.f682b = obj2;
            this.f683c = concurrentHashMap;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f681a) || key.equals(obj2)) && (value == (obj3 = this.f682b) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f681a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f682b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f681a.hashCode() ^ this.f682b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Objects.requireNonNull(obj);
            Object obj2 = this.f682b;
            this.f682b = obj;
            this.f683c.put(this.f681a, obj);
            return obj2;
        }

        public String toString() {
            return this.f681a + "=" + this.f682b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$l */
    /* loaded from: classes2.dex */
    public static class C2849l implements Map.Entry {

        /* renamed from: a */
        final int f684a;

        /* renamed from: b */
        final Object f685b;

        /* renamed from: c */
        volatile Object f686c;

        /* renamed from: d */
        volatile C2849l f687d;

        C2849l(int i, Object obj, Object obj2, C2849l c2849l) {
            this.f684a = i;
            this.f685b = obj;
            this.f686c = obj2;
            this.f687d = c2849l;
        }

        /* renamed from: a */
        C2849l mo576a(int i, Object obj) {
            Object obj2;
            C2849l c2849l = this;
            do {
                if (c2849l.f684a == i && ((obj2 = c2849l.f685b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return c2849l;
                }
                c2849l = c2849l.f687d;
            } while (c2849l != null);
            return null;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f685b) || key.equals(obj2)) && (value == (obj3 = this.f686c) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f685b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f686c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f685b.hashCode() ^ this.f686c.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public final String toString() {
            return this.f685b + "=" + this.f686c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$m */
    /* loaded from: classes2.dex */
    public static final class C2850m extends C2849l {
        C2850m() {
            super(-3, null, null, null);
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.C2849l
        /* renamed from: a */
        C2849l mo576a(int i, Object obj) {
            return null;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$n */
    /* loaded from: classes2.dex */
    static class C2851n extends ReentrantLock {
        C2851n(float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$o */
    /* loaded from: classes2.dex */
    public static final class C2852o {

        /* renamed from: a */
        int f688a;

        /* renamed from: b */
        int f689b;

        /* renamed from: c */
        C2849l[] f690c;

        /* renamed from: d */
        C2852o f691d;

        C2852o() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$p */
    /* loaded from: classes2.dex */
    public static class C2853p {

        /* renamed from: a */
        C2849l[] f692a;

        /* renamed from: b */
        C2849l f693b = null;

        /* renamed from: c */
        C2852o f694c;

        /* renamed from: d */
        C2852o f695d;

        /* renamed from: e */
        int f696e;

        /* renamed from: f */
        int f697f;

        /* renamed from: g */
        int f698g;

        /* renamed from: h */
        final int f699h;

        C2853p(C2849l[] c2849lArr, int i, int i2, int i3) {
            this.f692a = c2849lArr;
            this.f699h = i;
            this.f696e = i2;
            this.f697f = i2;
            this.f698g = i3;
        }

        /* renamed from: a */
        final C2849l m586a() {
            C2849l[] c2849lArr;
            int length;
            int i;
            C2852o c2852o;
            C2849l c2849l = this.f693b;
            if (c2849l != null) {
                c2849l = c2849l.f687d;
            }
            while (c2849l == null) {
                if (this.f697f >= this.f698g || (c2849lArr = this.f692a) == null || (length = c2849lArr.length) <= (i = this.f696e) || i < 0) {
                    this.f693b = null;
                    return null;
                }
                C2849l m593n = ConcurrentHashMap.m593n(c2849lArr, i);
                if (m593n == null || m593n.f684a >= 0) {
                    c2849l = m593n;
                } else if (m593n instanceof C2844g) {
                    this.f692a = ((C2844g) m593n).f679e;
                    C2852o c2852o2 = this.f695d;
                    if (c2852o2 != null) {
                        this.f695d = c2852o2.f691d;
                    } else {
                        c2852o2 = new C2852o();
                    }
                    c2852o2.f690c = c2849lArr;
                    c2852o2.f688a = length;
                    c2852o2.f689b = i;
                    c2852o2.f691d = this.f694c;
                    this.f694c = c2852o2;
                    c2849l = null;
                } else {
                    c2849l = m593n instanceof C2854q ? ((C2854q) m593n).f703f : null;
                }
                if (this.f694c != null) {
                    while (true) {
                        c2852o = this.f694c;
                        if (c2852o == null) {
                            break;
                        }
                        int i2 = this.f696e;
                        int i3 = c2852o.f688a;
                        int i4 = i2 + i3;
                        this.f696e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.f696e = c2852o.f689b;
                        this.f692a = c2852o.f690c;
                        c2852o.f690c = null;
                        C2852o c2852o3 = c2852o.f691d;
                        c2852o.f691d = this.f695d;
                        this.f694c = c2852o3;
                        this.f695d = c2852o;
                        length = i3;
                    }
                    if (c2852o == null) {
                        int i5 = this.f696e + this.f699h;
                        this.f696e = i5;
                        if (i5 >= length) {
                            int i6 = this.f697f + 1;
                            this.f697f = i6;
                            this.f696e = i6;
                        }
                    }
                } else {
                    int i7 = i + this.f699h;
                    this.f696e = i7;
                    if (i7 >= length) {
                        int i8 = this.f697f + 1;
                        this.f697f = i8;
                        this.f696e = i8;
                    }
                }
            }
            this.f693b = c2849l;
            return c2849l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$q */
    /* loaded from: classes2.dex */
    public static final class C2854q extends C2849l {

        /* renamed from: h */
        private static final Unsafe f700h;

        /* renamed from: i */
        private static final long f701i;

        /* renamed from: e */
        C2855r f702e;

        /* renamed from: f */
        volatile C2855r f703f;

        /* renamed from: g */
        volatile Thread f704g;
        volatile int lockState;

        static {
            try {
                Unsafe m559c = AbstractC2865c.m559c();
                f700h = m559c;
                f701i = m559c.objectFieldOffset(C2854q.class.getDeclaredField("lockState"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        C2854q(C2855r c2855r) {
            super(-2, null, null, null);
            int m603d;
            int m577j;
            this.f703f = c2855r;
            C2855r c2855r2 = null;
            while (c2855r != null) {
                C2855r c2855r3 = (C2855r) c2855r.f687d;
                c2855r.f707g = null;
                c2855r.f706f = null;
                if (c2855r2 == null) {
                    c2855r.f705e = null;
                    c2855r.f709i = false;
                } else {
                    Object obj = c2855r.f685b;
                    int i = c2855r.f684a;
                    C2855r c2855r4 = c2855r2;
                    Class cls = null;
                    while (true) {
                        Object obj2 = c2855r4.f685b;
                        int i2 = c2855r4.f684a;
                        m577j = i2 > i ? -1 : i2 < i ? 1 : ((cls == null && (cls = ConcurrentHashMap.m604c(obj)) == null) || (m603d = ConcurrentHashMap.m603d(cls, obj, obj2)) == 0) ? m577j(obj, obj2) : m603d;
                        C2855r c2855r5 = m577j <= 0 ? c2855r4.f706f : c2855r4.f707g;
                        if (c2855r5 == null) {
                            break;
                        }
                        c2855r4 = c2855r5;
                    }
                    c2855r.f705e = c2855r4;
                    if (m577j <= 0) {
                        c2855r4.f706f = c2855r;
                    } else {
                        c2855r4.f707g = c2855r;
                    }
                    c2855r = m584c(c2855r2, c2855r);
                }
                c2855r2 = c2855r;
                c2855r = c2855r3;
            }
            this.f702e = c2855r2;
        }

        /* renamed from: b */
        static C2855r m585b(C2855r c2855r, C2855r c2855r2) {
            while (c2855r2 != null && c2855r2 != c2855r) {
                C2855r c2855r3 = c2855r2.f705e;
                if (c2855r3 == null) {
                    c2855r2.f709i = false;
                    return c2855r2;
                } else if (c2855r2.f709i) {
                    c2855r2.f709i = false;
                    return c2855r;
                } else {
                    C2855r c2855r4 = c2855r3.f706f;
                    C2855r c2855r5 = null;
                    if (c2855r4 == c2855r2) {
                        c2855r4 = c2855r3.f707g;
                        if (c2855r4 != null && c2855r4.f709i) {
                            c2855r4.f709i = false;
                            c2855r3.f709i = true;
                            c2855r = m579h(c2855r, c2855r3);
                            c2855r3 = c2855r2.f705e;
                            c2855r4 = c2855r3 == null ? null : c2855r3.f707g;
                        }
                        if (c2855r4 == null) {
                            c2855r2 = c2855r3;
                        } else {
                            C2855r c2855r6 = c2855r4.f706f;
                            C2855r c2855r7 = c2855r4.f707g;
                            if ((c2855r7 != null && c2855r7.f709i) || (c2855r6 != null && c2855r6.f709i)) {
                                if (c2855r7 == null || !c2855r7.f709i) {
                                    if (c2855r6 != null) {
                                        c2855r6.f709i = false;
                                    }
                                    c2855r4.f709i = true;
                                    c2855r = m578i(c2855r, c2855r4);
                                    c2855r3 = c2855r2.f705e;
                                    if (c2855r3 != null) {
                                        c2855r5 = c2855r3.f707g;
                                    }
                                } else {
                                    c2855r5 = c2855r4;
                                }
                                if (c2855r5 != null) {
                                    c2855r5.f709i = c2855r3 == null ? false : c2855r3.f709i;
                                    C2855r c2855r8 = c2855r5.f707g;
                                    if (c2855r8 != null) {
                                        c2855r8.f709i = false;
                                    }
                                }
                                if (c2855r3 != null) {
                                    c2855r3.f709i = false;
                                    c2855r = m579h(c2855r, c2855r3);
                                }
                                c2855r2 = c2855r;
                                c2855r = c2855r2;
                            }
                            c2855r4.f709i = true;
                            c2855r2 = c2855r3;
                        }
                    } else {
                        if (c2855r4 != null && c2855r4.f709i) {
                            c2855r4.f709i = false;
                            c2855r3.f709i = true;
                            c2855r = m578i(c2855r, c2855r3);
                            c2855r3 = c2855r2.f705e;
                            c2855r4 = c2855r3 == null ? null : c2855r3.f706f;
                        }
                        if (c2855r4 == null) {
                            c2855r2 = c2855r3;
                        } else {
                            C2855r c2855r9 = c2855r4.f706f;
                            C2855r c2855r10 = c2855r4.f707g;
                            if ((c2855r9 != null && c2855r9.f709i) || (c2855r10 != null && c2855r10.f709i)) {
                                if (c2855r9 == null || !c2855r9.f709i) {
                                    if (c2855r10 != null) {
                                        c2855r10.f709i = false;
                                    }
                                    c2855r4.f709i = true;
                                    c2855r = m579h(c2855r, c2855r4);
                                    c2855r3 = c2855r2.f705e;
                                    if (c2855r3 != null) {
                                        c2855r5 = c2855r3.f706f;
                                    }
                                } else {
                                    c2855r5 = c2855r4;
                                }
                                if (c2855r5 != null) {
                                    c2855r5.f709i = c2855r3 == null ? false : c2855r3.f709i;
                                    C2855r c2855r11 = c2855r5.f706f;
                                    if (c2855r11 != null) {
                                        c2855r11.f709i = false;
                                    }
                                }
                                if (c2855r3 != null) {
                                    c2855r3.f709i = false;
                                    c2855r = m578i(c2855r, c2855r3);
                                }
                                c2855r2 = c2855r;
                                c2855r = c2855r2;
                            }
                            c2855r4.f709i = true;
                            c2855r2 = c2855r3;
                        }
                    }
                }
            }
            return c2855r;
        }

        /* renamed from: c */
        static C2855r m584c(C2855r c2855r, C2855r c2855r2) {
            C2855r c2855r3;
            c2855r2.f709i = true;
            while (true) {
                C2855r c2855r4 = c2855r2.f705e;
                if (c2855r4 == null) {
                    c2855r2.f709i = false;
                    return c2855r2;
                } else if (!c2855r4.f709i || (c2855r3 = c2855r4.f705e) == null) {
                    break;
                } else {
                    C2855r c2855r5 = c2855r3.f706f;
                    if (c2855r4 == c2855r5) {
                        c2855r5 = c2855r3.f707g;
                        if (c2855r5 == null || !c2855r5.f709i) {
                            if (c2855r2 == c2855r4.f707g) {
                                c2855r = m579h(c2855r, c2855r4);
                                C2855r c2855r6 = c2855r4.f705e;
                                c2855r3 = c2855r6 == null ? null : c2855r6.f705e;
                                c2855r4 = c2855r6;
                                c2855r2 = c2855r4;
                            }
                            if (c2855r4 != null) {
                                c2855r4.f709i = false;
                                if (c2855r3 != null) {
                                    c2855r3.f709i = true;
                                    c2855r = m578i(c2855r, c2855r3);
                                }
                            }
                        } else {
                            c2855r5.f709i = false;
                            c2855r4.f709i = false;
                            c2855r3.f709i = true;
                            c2855r2 = c2855r3;
                        }
                    } else if (c2855r5 == null || !c2855r5.f709i) {
                        if (c2855r2 == c2855r4.f706f) {
                            c2855r = m578i(c2855r, c2855r4);
                            C2855r c2855r7 = c2855r4.f705e;
                            c2855r3 = c2855r7 == null ? null : c2855r7.f705e;
                            c2855r4 = c2855r7;
                            c2855r2 = c2855r4;
                        }
                        if (c2855r4 != null) {
                            c2855r4.f709i = false;
                            if (c2855r3 != null) {
                                c2855r3.f709i = true;
                                c2855r = m579h(c2855r, c2855r3);
                            }
                        }
                    } else {
                        c2855r5.f709i = false;
                        c2855r4.f709i = false;
                        c2855r3.f709i = true;
                        c2855r2 = c2855r3;
                    }
                }
            }
            return c2855r;
        }

        /* renamed from: d */
        private final void m583d() {
            boolean z = false;
            while (true) {
                int i = this.lockState;
                if ((i & (-3)) == 0) {
                    if (f700h.compareAndSwapInt(this, f701i, i, 1)) {
                        break;
                    }
                } else if ((i & 2) == 0) {
                    if (f700h.compareAndSwapInt(this, f701i, i, i | 2)) {
                        z = true;
                        this.f704g = Thread.currentThread();
                    }
                } else if (z) {
                    LockSupport.park(this);
                }
            }
            if (z) {
                this.f704g = null;
            }
        }

        /* renamed from: e */
        private final void m582e() {
            if (f700h.compareAndSwapInt(this, f701i, 0, 1)) {
                return;
            }
            m583d();
        }

        /* renamed from: h */
        static C2855r m579h(C2855r c2855r, C2855r c2855r2) {
            C2855r c2855r3 = c2855r2.f707g;
            if (c2855r3 != null) {
                C2855r c2855r4 = c2855r3.f706f;
                c2855r2.f707g = c2855r4;
                if (c2855r4 != null) {
                    c2855r4.f705e = c2855r2;
                }
                C2855r c2855r5 = c2855r2.f705e;
                c2855r3.f705e = c2855r5;
                if (c2855r5 == null) {
                    c2855r3.f709i = false;
                    c2855r = c2855r3;
                } else if (c2855r5.f706f == c2855r2) {
                    c2855r5.f706f = c2855r3;
                } else {
                    c2855r5.f707g = c2855r3;
                }
                c2855r3.f706f = c2855r2;
                c2855r2.f705e = c2855r3;
            }
            return c2855r;
        }

        /* renamed from: i */
        static C2855r m578i(C2855r c2855r, C2855r c2855r2) {
            C2855r c2855r3 = c2855r2.f706f;
            if (c2855r3 != null) {
                C2855r c2855r4 = c2855r3.f707g;
                c2855r2.f706f = c2855r4;
                if (c2855r4 != null) {
                    c2855r4.f705e = c2855r2;
                }
                C2855r c2855r5 = c2855r2.f705e;
                c2855r3.f705e = c2855r5;
                if (c2855r5 == null) {
                    c2855r3.f709i = false;
                    c2855r = c2855r3;
                } else if (c2855r5.f707g == c2855r2) {
                    c2855r5.f707g = c2855r3;
                } else {
                    c2855r5.f706f = c2855r3;
                }
                c2855r3.f707g = c2855r2;
                c2855r2.f705e = c2855r3;
            }
            return c2855r;
        }

        /* renamed from: j */
        static int m577j(Object obj, Object obj2) {
            int compareTo;
            return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.C2849l
        /* renamed from: a */
        final C2849l mo576a(int i, Object obj) {
            Object obj2;
            Thread thread;
            Thread thread2;
            C2849l c2849l = this.f703f;
            while (true) {
                C2855r c2855r = null;
                if (c2849l == null) {
                    return null;
                }
                int i2 = this.lockState;
                if ((i2 & 3) == 0) {
                    Unsafe unsafe = f700h;
                    long j = f701i;
                    if (unsafe.compareAndSwapInt(this, j, i2, i2 + 4)) {
                        try {
                            C2855r c2855r2 = this.f702e;
                            if (c2855r2 != null) {
                                c2855r = c2855r2.m575b(i, obj, null);
                            }
                            if (AbstractC2865c.m561a(unsafe, this, j, -4) == 6 && (thread2 = this.f704g) != null) {
                                LockSupport.unpark(thread2);
                            }
                            return c2855r;
                        } catch (Throwable th) {
                            if (AbstractC2865c.m561a(f700h, this, f701i, -4) == 6 && (thread = this.f704g) != null) {
                                LockSupport.unpark(thread);
                            }
                            throw th;
                        }
                    }
                } else if (c2849l.f684a != i || ((obj2 = c2849l.f685b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                    c2849l = c2849l.f687d;
                }
            }
            return c2849l;
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
        final p033j$.util.concurrent.ConcurrentHashMap.C2855r m581f(int r16, java.lang.Object r17, java.lang.Object r18) {
            /*
                r15 = this;
                r1 = r15
                r0 = r16
                r4 = r17
                j$.util.concurrent.ConcurrentHashMap$r r2 = r1.f702e
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
                r1.f702e = r9
                r1.f703f = r9
                goto La2
            L22:
                int r5 = r10.f684a
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
                java.lang.Object r5 = r10.f685b
                if (r5 == r4) goto Laa
                if (r5 == 0) goto L3c
                boolean r6 = r4.equals(r5)
                if (r6 == 0) goto L3c
                goto Laa
            L3c:
                if (r2 != 0) goto L44
                java.lang.Class r2 = p033j$.util.concurrent.ConcurrentHashMap.m604c(r17)
                if (r2 == 0) goto L4a
            L44:
                int r6 = p033j$.util.concurrent.ConcurrentHashMap.m603d(r2, r4, r5)
                if (r6 != 0) goto L67
            L4a:
                if (r3 != 0) goto L62
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f706f
                if (r3 == 0) goto L56
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m575b(r0, r4, r2)
                if (r3 != 0) goto L60
            L56:
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f707g
                if (r3 == 0) goto L61
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m575b(r0, r4, r2)
                if (r3 == 0) goto L61
            L60:
                return r3
            L61:
                r3 = r11
            L62:
                int r5 = m577j(r4, r5)
                goto L28
            L67:
                r12 = r6
            L68:
                if (r12 > 0) goto L6d
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f706f
                goto L6f
            L6d:
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f707g
            L6f:
                if (r5 != 0) goto La7
                j$.util.concurrent.ConcurrentHashMap$r r13 = r1.f703f
                j$.util.concurrent.ConcurrentHashMap$r r14 = new j$.util.concurrent.ConcurrentHashMap$r
                r2 = r14
                r3 = r16
                r4 = r17
                r5 = r18
                r6 = r13
                r7 = r10
                r2.<init>(r3, r4, r5, r6, r7)
                r1.f703f = r14
                if (r13 == 0) goto L87
                r13.f708h = r14
            L87:
                if (r12 > 0) goto L8c
                r10.f706f = r14
                goto L8e
            L8c:
                r10.f707g = r14
            L8e:
                boolean r0 = r10.f709i
                if (r0 != 0) goto L95
                r14.f709i = r11
                goto La2
            L95:
                r15.m582e()
                j$.util.concurrent.ConcurrentHashMap$r r0 = r1.f702e     // Catch: java.lang.Throwable -> La3
                j$.util.concurrent.ConcurrentHashMap$r r0 = m584c(r0, r14)     // Catch: java.lang.Throwable -> La3
                r1.f702e = r0     // Catch: java.lang.Throwable -> La3
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
            throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.C2854q.m581f(int, java.lang.Object, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$r");
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
        final boolean m580g(p033j$.util.concurrent.ConcurrentHashMap.C2855r r11) {
            /*
                Method dump skipped, instructions count: 205
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.C2854q.m580g(j$.util.concurrent.ConcurrentHashMap$r):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$r */
    /* loaded from: classes2.dex */
    public static final class C2855r extends C2849l {

        /* renamed from: e */
        C2855r f705e;

        /* renamed from: f */
        C2855r f706f;

        /* renamed from: g */
        C2855r f707g;

        /* renamed from: h */
        C2855r f708h;

        /* renamed from: i */
        boolean f709i;

        C2855r(int i, Object obj, Object obj2, C2849l c2849l, C2855r c2855r) {
            super(i, obj, obj2, c2849l);
            this.f705e = c2855r;
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.C2849l
        /* renamed from: a */
        C2849l mo576a(int i, Object obj) {
            return m575b(i, obj, null);
        }

        /* renamed from: b */
        final C2855r m575b(int i, Object obj, Class cls) {
            int m603d;
            if (obj != null) {
                C2855r c2855r = this;
                do {
                    C2855r c2855r2 = c2855r.f706f;
                    C2855r c2855r3 = c2855r.f707g;
                    int i2 = c2855r.f684a;
                    if (i2 <= i) {
                        if (i2 >= i) {
                            Object obj2 = c2855r.f685b;
                            if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                                return c2855r;
                            }
                            if (c2855r2 != null) {
                                if (c2855r3 != null) {
                                    if ((cls == null && (cls = ConcurrentHashMap.m604c(obj)) == null) || (m603d = ConcurrentHashMap.m603d(cls, obj, obj2)) == 0) {
                                        C2855r m575b = c2855r3.m575b(i, obj, cls);
                                        if (m575b != null) {
                                            return m575b;
                                        }
                                    } else if (m603d >= 0) {
                                        c2855r2 = c2855r3;
                                    }
                                }
                            }
                        }
                        c2855r = c2855r3;
                        continue;
                    }
                    c2855r = c2855r2;
                    continue;
                } while (c2855r != null);
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$s */
    /* loaded from: classes2.dex */
    public static final class C2856s extends C2838a implements java.util.Iterator, Enumeration, p033j$.util.Iterator {
        C2856s(C2849l[] c2849lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2849lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3306w.m112b(consumer));
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public final Object next() {
            C2849l c2849l = this.f693b;
            if (c2849l != null) {
                Object obj = c2849l.f686c;
                this.f675j = c2849l;
                m586a();
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
    public static final class C2857t extends C2853p implements InterfaceC2908s {

        /* renamed from: i */
        long f710i;

        C2857t(C2849l[] c2849lArr, int i, int i2, int i3, long j) {
            super(c2849lArr, i, i2, i3);
            this.f710i = j;
        }

        @Override // p033j$.util.InterfaceC2908s
        /* renamed from: b */
        public boolean mo131b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2849l m586a = m586a();
            if (m586a == null) {
                return false;
            }
            consumer.accept(m586a.f686c);
            return true;
        }

        @Override // p033j$.util.InterfaceC2908s
        public int characteristics() {
            return 4352;
        }

        @Override // p033j$.util.InterfaceC2908s
        public long estimateSize() {
            return this.f710i;
        }

        @Override // p033j$.util.InterfaceC2908s
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2849l m586a = m586a();
                if (m586a == null) {
                    return;
                }
                consumer.accept(m586a.f686c);
            }
        }

        @Override // p033j$.util.InterfaceC2908s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2908s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2835a.m624e(this);
        }

        @Override // p033j$.util.InterfaceC2908s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2835a.m623f(this, i);
        }

        @Override // p033j$.util.InterfaceC2908s
        public InterfaceC2908s trySplit() {
            int i = this.f697f;
            int i2 = this.f698g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2849l[] c2849lArr = this.f692a;
            int i4 = this.f699h;
            this.f698g = i3;
            long j = this.f710i >>> 1;
            this.f710i = j;
            return new C2857t(c2849lArr, i4, i3, i2, j);
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$u */
    /* loaded from: classes2.dex */
    static final class C2858u extends AbstractC2839b implements InterfaceC2836b {
        C2858u(ConcurrentHashMap concurrentHashMap) {
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

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2839b, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f676a.containsValue(obj);
        }

        @Override // p033j$.util.InterfaceC2836b, p033j$.lang.InterfaceC2782e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2849l[] c2849lArr = this.f676a.f668a;
            if (c2849lArr == null) {
                return;
            }
            C2853p c2853p = new C2853p(c2849lArr, c2849lArr.length, 0, c2849lArr.length);
            while (true) {
                C2849l m586a = c2853p.m586a();
                if (m586a == null) {
                    return;
                }
                consumer.accept(m586a.f686c);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3306w.m112b(consumer));
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2839b, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f676a;
            C2849l[] c2849lArr = concurrentHashMap.f668a;
            int length = c2849lArr == null ? 0 : c2849lArr.length;
            return new C2856s(c2849lArr, length, 0, length, concurrentHashMap);
        }

        @Override // p033j$.util.InterfaceC2836b
        /* renamed from: k */
        public /* synthetic */ boolean mo574k(Predicate predicate) {
            return AbstractC2835a.m621h(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return C3251O0.m185n0(AbstractC2835a.m622g(this));
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            C2838a c2838a;
            if (obj != null) {
                java.util.Iterator it = iterator();
                do {
                    c2838a = (C2838a) it;
                    if (!c2838a.hasNext()) {
                        return false;
                    }
                } while (!obj.equals(((C2856s) it).next()));
                c2838a.remove();
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return AbstractC2835a.m621h(this, C3307w0.m111a(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, p033j$.util.InterfaceC2836b, p033j$.lang.InterfaceC2782e
        public InterfaceC2908s spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f676a;
            long m594m = concurrentHashMap.m594m();
            C2849l[] c2849lArr = concurrentHashMap.f668a;
            int length = c2849lArr == null ? 0 : c2849lArr.length;
            return new C2857t(c2849lArr, length, 0, length, m594m >= 0 ? m594m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable
        public /* synthetic */ Spliterator spliterator() {
            return C3276h.m153a(spliterator());
        }

        @Override // java.util.Collection, p033j$.util.InterfaceC2836b
        public /* synthetic */ p033j$.util.stream.Stream stream() {
            return AbstractC2835a.m620i(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream stream() {
            return C3251O0.m185n0(AbstractC2835a.m620i(this));
        }

        public Object[] toArray(IntFunction intFunction) {
            return toArray((Object[]) C3254S.m181a(intFunction).apply(0));
        }
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", C2851n[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        try {
            Unsafe m559c = AbstractC2865c.m559c();
            f660h = m559c;
            f661i = m559c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("sizeCtl"));
            f662j = m559c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("transferIndex"));
            f663k = m559c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("baseCount"));
            f664l = m559c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("cellsBusy"));
            f665m = m559c.objectFieldOffset(C2840c.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
            f666n = m559c.arrayBaseOffset(C2849l[].class);
            int arrayIndexScale = m559c.arrayIndexScale(C2849l[].class);
            if (((arrayIndexScale - 1) & arrayIndexScale) != 0) {
                throw new Error("data type scale not a power of two");
            }
            f667o = 31 - Integer.numberOfLeadingZeros(arrayIndexScale);
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
        this.sizeCtl = i >= 536870912 ? 1073741824 : m592o(i + (i >>> 1) + 1);
    }

    public ConcurrentHashMap(int i, float f, int i2) {
        if (f <= BitmapDescriptorFactory.HUE_RED || i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        long j = (long) (((i < i2 ? i2 : i) / f) + 1.0d);
        this.sizeCtl = j >= 1073741824 ? 1073741824 : m592o((int) j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r1.compareAndSwapLong(r11, r3, r5, r9) == false) goto L53;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m606a(long r12, int r14) {
        /*
            r11 = this;
            j$.util.concurrent.ConcurrentHashMap$c[] r0 = r11.f670c
            if (r0 != 0) goto L14
            sun.misc.Unsafe r1 = p033j$.util.concurrent.ConcurrentHashMap.f660h
            long r3 = p033j$.util.concurrent.ConcurrentHashMap.f663k
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
            int r3 = p033j$.util.concurrent.ThreadLocalRandom.m572b()
            r2 = r2 & r3
            r4 = r0[r2]
            if (r4 == 0) goto L94
            sun.misc.Unsafe r3 = p033j$.util.concurrent.ConcurrentHashMap.f660h
            long r5 = p033j$.util.concurrent.ConcurrentHashMap.f665m
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
            long r9 = r11.m594m()
        L3b:
            if (r14 < 0) goto L93
        L3d:
            int r4 = r11.sizeCtl
            long r12 = (long) r4
            int r12 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r12 < 0) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r12 = r11.f668a
            if (r12 == 0) goto L93
            int r13 = r12.length
            r14 = 1073741824(0x40000000, float:2.0)
            if (r13 >= r14) goto L93
            int r13 = m597j(r13)
            if (r4 >= 0) goto L7b
            int r14 = r4 >>> 16
            if (r14 != r13) goto L93
            int r14 = r13 + 1
            if (r4 == r14) goto L93
            r14 = 65535(0xffff, float:9.1834E-41)
            int r13 = r13 + r14
            if (r4 == r13) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r13 = r11.f669b
            if (r13 == 0) goto L93
            int r14 = r11.transferIndex
            if (r14 > 0) goto L6a
            goto L93
        L6a:
            sun.misc.Unsafe r0 = p033j$.util.concurrent.ConcurrentHashMap.f660h
            long r2 = p033j$.util.concurrent.ConcurrentHashMap.f661i
            int r5 = r4 + 1
            r1 = r11
            boolean r14 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r14 == 0) goto L8e
            r11.m591p(r12, r13)
            goto L8e
        L7b:
            sun.misc.Unsafe r0 = p033j$.util.concurrent.ConcurrentHashMap.f660h
            long r2 = p033j$.util.concurrent.ConcurrentHashMap.f661i
            int r13 = r13 << 16
            int r5 = r13 + 2
            r1 = r11
            boolean r13 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r13 == 0) goto L8e
            r13 = 0
            r11.m591p(r12, r13)
        L8e:
            long r9 = r11.m594m()
            goto L3d
        L93:
            return
        L94:
            r11.m602e(r12, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.m606a(long, int):void");
    }

    /* renamed from: b */
    static final boolean m605b(C2849l[] c2849lArr, int i, C2849l c2849l, C2849l c2849l2) {
        return f660h.compareAndSwapObject(c2849lArr, (i << f667o) + f666n, (Object) null, c2849l2);
    }

    /* renamed from: c */
    static Class m604c(Object obj) {
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
    static int m603d(Class cls, Object obj, Object obj2) {
        if (obj2 == null || obj2.getClass() != cls) {
            return 0;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x009b, code lost:
        if (r24.f670c != r7) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009d, code lost:
        r1 = new p033j$.util.concurrent.ConcurrentHashMap.C2840c[r8 << 1];
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
        r24.f670c = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x001b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0101 A[SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m602e(long r25, boolean r27) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.m602e(long, boolean):void");
    }

    /* renamed from: g */
    private final C2849l[] m600g() {
        while (true) {
            C2849l[] c2849lArr = this.f668a;
            if (c2849lArr != null && c2849lArr.length != 0) {
                return c2849lArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (f660h.compareAndSwapInt(this, f661i, i, -1)) {
                try {
                    C2849l[] c2849lArr2 = this.f668a;
                    if (c2849lArr2 == null || c2849lArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        C2849l[] c2849lArr3 = new C2849l[i2];
                        this.f668a = c2849lArr3;
                        i = i2 - (i2 >>> 2);
                        c2849lArr2 = c2849lArr3;
                    }
                    this.sizeCtl = i;
                    return c2849lArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* renamed from: j */
    static final int m597j(int i) {
        return Integer.numberOfLeadingZeros(i) | LiteMode.FLAG_CHAT_SCALE;
    }

    /* renamed from: k */
    static final void m596k(C2849l[] c2849lArr, int i, C2849l c2849l) {
        f660h.putObjectVolatile(c2849lArr, (i << f667o) + f666n, c2849l);
    }

    /* renamed from: l */
    static final int m595l(int i) {
        return (i ^ (i >>> 16)) & Integer.MAX_VALUE;
    }

    /* renamed from: n */
    static final C2849l m593n(C2849l[] c2849lArr, int i) {
        return (C2849l) f660h.getObjectVolatile(c2849lArr, (i << f667o) + f666n);
    }

    /* renamed from: o */
    private static final int m592o(int i) {
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
    private final void m591p(C2849l[] c2849lArr, C2849l[] c2849lArr2) {
        C2849l[] c2849lArr3;
        int i;
        C2849l[] c2849lArr4;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        C2844g c2844g;
        C2855r c2855r;
        int i7;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = c2849lArr.length;
        int i8 = f659g;
        boolean z = true;
        int i9 = i8 > 1 ? (length >>> 3) / i8 : length;
        int i10 = i9 < 16 ? 16 : i9;
        if (c2849lArr2 == null) {
            try {
                C2849l[] c2849lArr5 = new C2849l[length << 1];
                concurrentHashMap.f669b = c2849lArr5;
                concurrentHashMap.transferIndex = length;
                c2849lArr3 = c2849lArr5;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            c2849lArr3 = c2849lArr2;
        }
        int length2 = c2849lArr3.length;
        C2844g c2844g2 = new C2844g(c2849lArr3);
        int i11 = -1;
        C2849l[] c2849lArr6 = c2849lArr;
        boolean z2 = true;
        int i12 = 0;
        int i13 = 0;
        boolean z3 = false;
        while (true) {
            if (z2) {
                int i14 = i12 - 1;
                if (i14 >= i13 || z3) {
                    i = i14;
                    c2849lArr4 = c2849lArr6;
                    i2 = i13;
                    i3 = i11;
                    z2 = false;
                } else {
                    int i15 = concurrentHashMap.transferIndex;
                    if (i15 <= 0) {
                        i12 = i11;
                    } else {
                        Unsafe unsafe = f660h;
                        long j = f662j;
                        int i16 = i15 > i10 ? i15 - i10 : 0;
                        i = i14;
                        c2849lArr4 = c2849lArr6;
                        i2 = i13;
                        i3 = i11;
                        if (unsafe.compareAndSwapInt(this, j, i15, i16)) {
                            i12 = i15 - 1;
                            i11 = i3;
                            c2849lArr6 = c2849lArr4;
                            i13 = i16;
                        }
                    }
                    z2 = false;
                }
                i11 = i3;
                c2849lArr6 = c2849lArr4;
                i13 = i2;
                i12 = i;
            } else {
                C2849l[] c2849lArr7 = c2849lArr6;
                int i17 = i13;
                int i18 = i11;
                C2855r c2855r2 = null;
                if (i12 < 0 || i12 >= length || (i4 = i12 + length) >= length2) {
                    int i19 = i10;
                    int i20 = length2;
                    C2844g c2844g3 = c2844g2;
                    if (z3) {
                        this.f669b = null;
                        this.f668a = c2849lArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    Unsafe unsafe2 = f660h;
                    long j2 = f661i;
                    int i21 = this.sizeCtl;
                    int i22 = i12;
                    if (!unsafe2.compareAndSwapInt(this, j2, i21, i21 - 1)) {
                        c2844g2 = c2844g3;
                        concurrentHashMap = this;
                        z = true;
                        i12 = i22;
                        c2849lArr6 = c2849lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    } else if (i21 - 2 != (m597j(length) << 16)) {
                        return;
                    } else {
                        c2844g2 = c2844g3;
                        i12 = length;
                        concurrentHashMap = this;
                        z = true;
                        z2 = true;
                        z3 = true;
                        c2849lArr6 = c2849lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    }
                } else {
                    C2849l m593n = m593n(c2849lArr7, i12);
                    if (m593n == null) {
                        z2 = m605b(c2849lArr7, i12, null, c2844g2);
                    } else {
                        int i23 = m593n.f684a;
                        if (i23 == i18) {
                            z2 = z;
                        } else {
                            synchronized (m593n) {
                                if (m593n(c2849lArr7, i12) == m593n) {
                                    if (i23 >= 0) {
                                        int i24 = i23 & length;
                                        C2855r c2855r3 = m593n;
                                        for (C2855r c2855r4 = m593n.f687d; c2855r4 != null; c2855r4 = c2855r4.f687d) {
                                            int i25 = c2855r4.f684a & length;
                                            if (i25 != i24) {
                                                c2855r3 = c2855r4;
                                                i24 = i25;
                                            }
                                        }
                                        if (i24 == 0) {
                                            c2855r = null;
                                            c2855r2 = c2855r3;
                                        } else {
                                            c2855r = c2855r3;
                                        }
                                        C2849l c2849l = m593n;
                                        while (c2849l != c2855r3) {
                                            int i26 = c2849l.f684a;
                                            C2855r c2855r5 = c2855r3;
                                            Object obj = c2849l.f685b;
                                            int i27 = i10;
                                            Object obj2 = c2849l.f686c;
                                            if ((i26 & length) == 0) {
                                                i7 = length2;
                                                c2855r2 = new C2849l(i26, obj, obj2, c2855r2);
                                            } else {
                                                i7 = length2;
                                                c2855r = new C2849l(i26, obj, obj2, c2855r);
                                            }
                                            c2849l = c2849l.f687d;
                                            c2855r3 = c2855r5;
                                            i10 = i27;
                                            length2 = i7;
                                        }
                                        i5 = i10;
                                        i6 = length2;
                                        m596k(c2849lArr3, i12, c2855r2);
                                        m596k(c2849lArr3, i4, c2855r);
                                        m596k(c2849lArr7, i12, c2844g2);
                                        c2844g = c2844g2;
                                    } else {
                                        i5 = i10;
                                        i6 = length2;
                                        if (m593n instanceof C2854q) {
                                            C2854q c2854q = (C2854q) m593n;
                                            C2855r c2855r6 = null;
                                            C2855r c2855r7 = null;
                                            C2849l c2849l2 = c2854q.f703f;
                                            int i28 = 0;
                                            int i29 = 0;
                                            C2855r c2855r8 = null;
                                            while (c2849l2 != null) {
                                                C2854q c2854q2 = c2854q;
                                                int i30 = c2849l2.f684a;
                                                C2844g c2844g4 = c2844g2;
                                                C2855r c2855r9 = new C2855r(i30, c2849l2.f685b, c2849l2.f686c, null, null);
                                                if ((i30 & length) == 0) {
                                                    c2855r9.f708h = c2855r7;
                                                    if (c2855r7 == null) {
                                                        c2855r2 = c2855r9;
                                                    } else {
                                                        c2855r7.f687d = c2855r9;
                                                    }
                                                    i28++;
                                                    c2855r7 = c2855r9;
                                                } else {
                                                    c2855r9.f708h = c2855r6;
                                                    if (c2855r6 == null) {
                                                        c2855r8 = c2855r9;
                                                    } else {
                                                        c2855r6.f687d = c2855r9;
                                                    }
                                                    i29++;
                                                    c2855r6 = c2855r9;
                                                }
                                                c2849l2 = c2849l2.f687d;
                                                c2854q = c2854q2;
                                                c2844g2 = c2844g4;
                                            }
                                            C2854q c2854q3 = c2854q;
                                            C2844g c2844g5 = c2844g2;
                                            C2849l m588s = i28 <= 6 ? m588s(c2855r2) : i29 != 0 ? new C2854q(c2855r2) : c2854q3;
                                            C2849l m588s2 = i29 <= 6 ? m588s(c2855r8) : i28 != 0 ? new C2854q(c2855r8) : c2854q3;
                                            m596k(c2849lArr3, i12, m588s);
                                            m596k(c2849lArr3, i4, m588s2);
                                            c2844g = c2844g5;
                                            m596k(c2849lArr, i12, c2844g);
                                            c2849lArr7 = c2849lArr;
                                        }
                                    }
                                    z2 = true;
                                } else {
                                    i5 = i10;
                                    i6 = length2;
                                }
                                c2844g = c2844g2;
                            }
                            i11 = -1;
                            c2844g2 = c2844g;
                            c2849lArr6 = c2849lArr7;
                            i13 = i17;
                            i10 = i5;
                            length2 = i6;
                            z = true;
                            concurrentHashMap = this;
                        }
                    }
                    i11 = i18;
                    c2849lArr6 = c2849lArr7;
                    i13 = i17;
                }
            }
        }
    }

    /* renamed from: q */
    private final void m590q(C2849l[] c2849lArr, int i) {
        int length = c2849lArr.length;
        if (length < 64) {
            m589r(length << 1);
            return;
        }
        C2849l m593n = m593n(c2849lArr, i);
        if (m593n == null || m593n.f684a < 0) {
            return;
        }
        synchronized (m593n) {
            if (m593n(c2849lArr, i) == m593n) {
                C2855r c2855r = null;
                C2849l c2849l = m593n;
                C2855r c2855r2 = null;
                while (c2849l != null) {
                    C2855r c2855r3 = new C2855r(c2849l.f684a, c2849l.f685b, c2849l.f686c, null, null);
                    c2855r3.f708h = c2855r2;
                    if (c2855r2 == null) {
                        c2855r = c2855r3;
                    } else {
                        c2855r2.f687d = c2855r3;
                    }
                    c2849l = c2849l.f687d;
                    c2855r2 = c2855r3;
                }
                m596k(c2849lArr, i, new C2854q(c2855r));
            }
        }
    }

    /* renamed from: r */
    private final void m589r(int i) {
        int length;
        C2849l[] c2849lArr;
        int m592o = i >= 536870912 ? 1073741824 : m592o(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                return;
            }
            C2849l[] c2849lArr2 = this.f668a;
            if (c2849lArr2 == null || (length = c2849lArr2.length) == 0) {
                int i3 = i2 > m592o ? i2 : m592o;
                if (f660h.compareAndSwapInt(this, f661i, i2, -1)) {
                    try {
                        if (this.f668a == c2849lArr2) {
                            this.f668a = new C2849l[i3];
                            i2 = i3 - (i3 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i2;
                    }
                } else {
                    continue;
                }
            } else if (m592o <= i2 || length >= 1073741824) {
                return;
            } else {
                if (c2849lArr2 == this.f668a) {
                    int m597j = m597j(length);
                    if (i2 < 0) {
                        if ((i2 >>> 16) != m597j || i2 == m597j + 1 || i2 == m597j + RtpPacket.MAX_SEQUENCE_NUMBER || (c2849lArr = this.f669b) == null || this.transferIndex <= 0) {
                            return;
                        }
                        if (f660h.compareAndSwapInt(this, f661i, i2, i2 + 1)) {
                            m591p(c2849lArr2, c2849lArr);
                        }
                    } else if (f660h.compareAndSwapInt(this, f661i, i2, (m597j << 16) + 2)) {
                        m591p(c2849lArr2, null);
                    }
                } else {
                    continue;
                }
            }
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        long j;
        int m592o;
        boolean z;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j2 = 0;
        long j3 = 0;
        C2849l c2849l = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j3++;
            c2849l = new C2849l(m595l(readObject.hashCode()), readObject, readObject2, c2849l);
        }
        if (j3 == 0) {
            this.sizeCtl = 0;
            return;
        }
        boolean z2 = true;
        if (j3 >= 536870912) {
            m592o = 1073741824;
        } else {
            int i = (int) j3;
            m592o = m592o(i + (i >>> 1) + 1);
        }
        C2849l[] c2849lArr = new C2849l[m592o];
        int i2 = m592o - 1;
        while (c2849l != null) {
            C2849l c2849l2 = c2849l.f687d;
            int i3 = c2849l.f684a;
            int i4 = i3 & i2;
            C2849l m593n = m593n(c2849lArr, i4);
            if (m593n == null) {
                z = z2;
            } else {
                Object obj2 = c2849l.f685b;
                if (m593n.f684a >= 0) {
                    int i5 = 0;
                    for (C2849l c2849l3 = m593n; c2849l3 != null; c2849l3 = c2849l3.f687d) {
                        if (c2849l3.f684a == i3 && ((obj = c2849l3.f685b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i5++;
                    }
                    z = true;
                    if (z && i5 >= 8) {
                        j2++;
                        c2849l.f687d = m593n;
                        C2849l c2849l4 = c2849l;
                        C2855r c2855r = null;
                        C2855r c2855r2 = null;
                        while (c2849l4 != null) {
                            long j4 = j2;
                            C2855r c2855r3 = new C2855r(c2849l4.f684a, c2849l4.f685b, c2849l4.f686c, null, null);
                            c2855r3.f708h = c2855r2;
                            if (c2855r2 == null) {
                                c2855r = c2855r3;
                            } else {
                                c2855r2.f687d = c2855r3;
                            }
                            c2849l4 = c2849l4.f687d;
                            c2855r2 = c2855r3;
                            j2 = j4;
                        }
                        m596k(c2849lArr, i4, new C2854q(c2855r));
                    }
                } else if (((C2854q) m593n).m581f(i3, obj2, c2849l.f686c) == null) {
                    j2 += j;
                }
                z = false;
            }
            if (z) {
                j2++;
                c2849l.f687d = m593n;
                m596k(c2849lArr, i4, c2849l);
            }
            j = 1;
            c2849l = c2849l2;
            z2 = true;
        }
        this.f668a = c2849lArr;
        this.sizeCtl = m592o - (m592o >>> 2);
        this.baseCount = j2;
    }

    /* renamed from: s */
    static C2849l m588s(C2849l c2849l) {
        C2849l c2849l2 = null;
        C2849l c2849l3 = null;
        while (c2849l != null) {
            C2849l c2849l4 = new C2849l(c2849l.f684a, c2849l.f685b, c2849l.f686c, null);
            if (c2849l3 == null) {
                c2849l2 = c2849l4;
            } else {
                c2849l3.f687d = c2849l4;
            }
            c2849l = c2849l.f687d;
            c2849l3 = c2849l4;
        }
        return c2849l2;
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
        C2851n[] c2851nArr = new C2851n[16];
        for (int i5 = 0; i5 < 16; i5++) {
            c2851nArr[i5] = new C2851n(0.75f);
        }
        objectOutputStream.putFields().put("segments", c2851nArr);
        objectOutputStream.putFields().put("segmentShift", i3);
        objectOutputStream.putFields().put("segmentMask", i4);
        objectOutputStream.writeFields();
        C2849l[] c2849lArr = this.f668a;
        if (c2849lArr != null) {
            C2853p c2853p = new C2853p(c2849lArr, c2849lArr.length, 0, c2849lArr.length);
            while (true) {
                C2849l m586a = c2853p.m586a();
                if (m586a == null) {
                    break;
                }
                objectOutputStream.writeObject(m586a.f685b);
                objectOutputStream.writeObject(m586a.f686c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public void clear() {
        C2849l[] c2849lArr = this.f668a;
        int i = 0;
        long j = 0;
        while (c2849lArr != null && i < c2849lArr.length) {
            C2849l m593n = m593n(c2849lArr, i);
            if (m593n == null) {
                i++;
            } else {
                int i2 = m593n.f684a;
                if (i2 == -1) {
                    c2849lArr = m601f(c2849lArr, m593n);
                    i = 0;
                } else {
                    synchronized (m593n) {
                        if (m593n(c2849lArr, i) == m593n) {
                            for (C2849l c2849l = i2 >= 0 ? m593n : m593n instanceof C2854q ? ((C2854q) m593n).f703f : null; c2849l != null; c2849l = c2849l.f687d) {
                                j--;
                            }
                            m596k(c2849lArr, i, null);
                            i++;
                        }
                    }
                }
            }
        }
        if (j != 0) {
            m606a(j, -1);
        }
    }

    @Override // p033j$.util.Map
    public Object compute(Object obj, BiFunction biFunction) {
        int i;
        C2849l c2849l;
        Object obj2;
        Object obj3;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m595l = m595l(obj.hashCode());
        C2849l[] c2849lArr = this.f668a;
        int i2 = 0;
        Object obj4 = null;
        int i3 = 0;
        while (true) {
            if (c2849lArr != null) {
                int length = c2849lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m595l;
                    C2849l m593n = m593n(c2849lArr, i4);
                    if (m593n == null) {
                        C2850m c2850m = new C2850m();
                        synchronized (c2850m) {
                            if (m605b(c2849lArr, i4, null, c2850m)) {
                                Object apply = biFunction.apply(obj, null);
                                if (apply != null) {
                                    c2849l = new C2849l(m595l, obj, apply, null);
                                    i = 1;
                                } else {
                                    i = i2;
                                    c2849l = null;
                                }
                                m596k(c2849lArr, i4, c2849l);
                                i2 = i;
                                obj4 = apply;
                                i3 = 1;
                            }
                        }
                        if (i3 != 0) {
                            break;
                        }
                    } else {
                        int i5 = m593n.f684a;
                        if (i5 == -1) {
                            c2849lArr = m601f(c2849lArr, m593n);
                        } else {
                            synchronized (m593n) {
                                if (m593n(c2849lArr, i4) == m593n) {
                                    if (i5 >= 0) {
                                        C2849l c2849l2 = null;
                                        C2849l c2849l3 = m593n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2849l3.f684a != m595l || ((obj3 = c2849l3.f685b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2849l c2849l4 = c2849l3.f687d;
                                                if (c2849l4 == null) {
                                                    Object apply2 = biFunction.apply(obj, null);
                                                    if (apply2 != null) {
                                                        c2849l3.f687d = new C2849l(m595l, obj, apply2, null);
                                                        i2 = 1;
                                                    }
                                                    obj2 = apply2;
                                                } else {
                                                    i6++;
                                                    c2849l2 = c2849l3;
                                                    c2849l3 = c2849l4;
                                                }
                                            }
                                        }
                                        obj2 = biFunction.apply(obj, c2849l3.f686c);
                                        if (obj2 != null) {
                                            c2849l3.f686c = obj2;
                                        } else {
                                            C2849l c2849l5 = c2849l3.f687d;
                                            if (c2849l2 != null) {
                                                c2849l2.f687d = c2849l5;
                                            } else {
                                                m596k(c2849lArr, i4, c2849l5);
                                            }
                                            i2 = -1;
                                        }
                                        i3 = i6;
                                        obj4 = obj2;
                                    } else if (m593n instanceof C2854q) {
                                        C2854q c2854q = (C2854q) m593n;
                                        C2855r c2855r = c2854q.f702e;
                                        C2855r m575b = c2855r != null ? c2855r.m575b(m595l, obj, null) : null;
                                        Object apply3 = biFunction.apply(obj, m575b == null ? null : m575b.f686c);
                                        if (apply3 != null) {
                                            if (m575b != null) {
                                                m575b.f686c = apply3;
                                            } else {
                                                c2854q.m581f(m595l, obj, apply3);
                                                i2 = 1;
                                            }
                                        } else if (m575b != null) {
                                            if (c2854q.m580g(m575b)) {
                                                m596k(c2849lArr, i4, m588s(c2854q.f703f));
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
                                    m590q(c2849lArr, i4);
                                }
                            }
                        }
                    }
                }
            }
            c2849lArr = m600g();
        }
        if (i2 != 0) {
            m606a(i2, i3);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object compute(Object obj, java.util.function.BiFunction biFunction) {
        return compute(obj, C3298s.m120a(biFunction));
    }

    @Override // p033j$.util.concurrent.InterfaceC2864b, p033j$.util.Map
    public Object computeIfAbsent(Object obj, Function function) {
        int i;
        Object apply;
        C2855r m575b;
        Object obj2;
        Object obj3;
        if (obj == null || function == null) {
            throw null;
        }
        int m595l = m595l(obj.hashCode());
        C2849l[] c2849lArr = this.f668a;
        Object obj4 = null;
        int i2 = 0;
        while (true) {
            if (c2849lArr != null) {
                int length = c2849lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m595l;
                    C2849l m593n = m593n(c2849lArr, i3);
                    boolean z = true;
                    if (m593n == null) {
                        C2850m c2850m = new C2850m();
                        synchronized (c2850m) {
                            if (m605b(c2849lArr, i3, null, c2850m)) {
                                Object apply2 = function.apply(obj);
                                m596k(c2849lArr, i3, apply2 != null ? new C2849l(m595l, obj, apply2, null) : null);
                                obj4 = apply2;
                                i2 = 1;
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    } else {
                        int i4 = m593n.f684a;
                        if (i4 == -1) {
                            c2849lArr = m601f(c2849lArr, m593n);
                        } else {
                            synchronized (m593n) {
                                if (m593n(c2849lArr, i3) == m593n) {
                                    if (i4 >= 0) {
                                        C2849l c2849l = m593n;
                                        i = 1;
                                        while (true) {
                                            if (c2849l.f684a != m595l || ((obj3 = c2849l.f685b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2849l c2849l2 = c2849l.f687d;
                                                if (c2849l2 == null) {
                                                    apply = function.apply(obj);
                                                    if (apply != null) {
                                                        c2849l.f687d = new C2849l(m595l, obj, apply, null);
                                                    }
                                                } else {
                                                    i++;
                                                    c2849l = c2849l2;
                                                }
                                            }
                                        }
                                        obj2 = c2849l.f686c;
                                        z = false;
                                        int i5 = i;
                                        obj4 = obj2;
                                        i2 = i5;
                                    } else if (m593n instanceof C2854q) {
                                        i = 2;
                                        C2854q c2854q = (C2854q) m593n;
                                        C2855r c2855r = c2854q.f702e;
                                        if (c2855r == null || (m575b = c2855r.m575b(m595l, obj, null)) == null) {
                                            apply = function.apply(obj);
                                            if (apply != null) {
                                                c2854q.m581f(m595l, obj, apply);
                                                i2 = i;
                                                obj4 = apply;
                                            }
                                            z = false;
                                            i2 = i;
                                            obj4 = apply;
                                        } else {
                                            obj2 = m575b.f686c;
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
                                    m590q(c2849lArr, i3);
                                }
                                if (!z) {
                                    return obj4;
                                }
                            }
                        }
                    }
                }
            }
            c2849lArr = m600g();
        }
        if (obj4 != null) {
            m606a(1L, i2);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
        return computeIfAbsent(obj, C3244L.m207a(function));
    }

    @Override // p033j$.util.Map
    public Object computeIfPresent(Object obj, BiFunction biFunction) {
        C2855r m575b;
        C2849l m588s;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m595l = m595l(obj.hashCode());
        C2849l[] c2849lArr = this.f668a;
        int i = 0;
        Object obj3 = null;
        int i2 = 0;
        while (true) {
            if (c2849lArr != null) {
                int length = c2849lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m595l;
                    C2849l m593n = m593n(c2849lArr, i3);
                    if (m593n == null) {
                        break;
                    }
                    int i4 = m593n.f684a;
                    if (i4 == -1) {
                        c2849lArr = m601f(c2849lArr, m593n);
                    } else {
                        synchronized (m593n) {
                            if (m593n(c2849lArr, i3) == m593n) {
                                if (i4 >= 0) {
                                    i2 = 1;
                                    C2849l c2849l = null;
                                    C2849l c2849l2 = m593n;
                                    while (true) {
                                        if (c2849l2.f684a != m595l || ((obj2 = c2849l2.f685b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                            C2849l c2849l3 = c2849l2.f687d;
                                            if (c2849l3 == null) {
                                                break;
                                            }
                                            i2++;
                                            c2849l = c2849l2;
                                            c2849l2 = c2849l3;
                                        }
                                    }
                                    obj3 = biFunction.apply(obj, c2849l2.f686c);
                                    if (obj3 != null) {
                                        c2849l2.f686c = obj3;
                                    } else {
                                        m588s = c2849l2.f687d;
                                        if (c2849l != null) {
                                            c2849l.f687d = m588s;
                                            i = -1;
                                        }
                                        m596k(c2849lArr, i3, m588s);
                                        i = -1;
                                    }
                                } else if (m593n instanceof C2854q) {
                                    i2 = 2;
                                    C2854q c2854q = (C2854q) m593n;
                                    C2855r c2855r = c2854q.f702e;
                                    if (c2855r != null && (m575b = c2855r.m575b(m595l, obj, null)) != null) {
                                        obj3 = biFunction.apply(obj, m575b.f686c);
                                        if (obj3 != null) {
                                            m575b.f686c = obj3;
                                        } else {
                                            if (c2854q.m580g(m575b)) {
                                                m588s = m588s(c2854q.f703f);
                                                m596k(c2849lArr, i3, m588s);
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
            c2849lArr = m600g();
        }
        if (i != 0) {
            m606a(i, i2);
        }
        return obj3;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfPresent(Object obj, java.util.function.BiFunction biFunction) {
        return computeIfPresent(obj, C3298s.m120a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public boolean containsValue(Object obj) {
        Objects.requireNonNull(obj);
        C2849l[] c2849lArr = this.f668a;
        if (c2849lArr != null) {
            C2853p c2853p = new C2853p(c2849lArr, c2849lArr.length, 0, c2849lArr.length);
            while (true) {
                C2849l m586a = c2853p.m586a();
                if (m586a == null) {
                    break;
                }
                Object obj2 = m586a.f686c;
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

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        C2842e c2842e = this.f673f;
        if (c2842e != null) {
            return c2842e;
        }
        C2842e c2842e2 = new C2842e(this);
        this.f673f = c2842e2;
        return c2842e2;
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public boolean equals(Object obj) {
        V value;
        V v;
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                C2849l[] c2849lArr = this.f668a;
                int length = c2849lArr == null ? 0 : c2849lArr.length;
                C2853p c2853p = new C2853p(c2849lArr, length, 0, length);
                while (true) {
                    C2849l m586a = c2853p.m586a();
                    if (m586a == null) {
                        for (Map.Entry<K, V> entry : map.entrySet()) {
                            K key = entry.getKey();
                            if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                                return false;
                            }
                        }
                        return true;
                    }
                    Object obj2 = m586a.f686c;
                    Object obj3 = map.get(m586a.f685b);
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
    final C2849l[] m601f(C2849l[] c2849lArr, C2849l c2849l) {
        C2849l[] c2849lArr2;
        int i;
        if (!(c2849l instanceof C2844g) || (c2849lArr2 = ((C2844g) c2849l).f679e) == null) {
            return this.f668a;
        }
        int m597j = m597j(c2849lArr.length);
        while (true) {
            if (c2849lArr2 != this.f669b || this.f668a != c2849lArr || (i = this.sizeCtl) >= 0 || (i >>> 16) != m597j || i == m597j + 1 || i == RtpPacket.MAX_SEQUENCE_NUMBER + m597j || this.transferIndex <= 0) {
                break;
            } else if (f660h.compareAndSwapInt(this, f661i, i, i + 1)) {
                m591p(c2849lArr, c2849lArr2);
                break;
            }
        }
        return c2849lArr2;
    }

    @Override // p033j$.util.concurrent.InterfaceC2864b, p033j$.util.Map
    public void forEach(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2849l[] c2849lArr = this.f668a;
        if (c2849lArr == null) {
            return;
        }
        C2853p c2853p = new C2853p(c2849lArr, c2849lArr.length, 0, c2849lArr.length);
        while (true) {
            C2849l m586a = c2853p.m586a();
            if (m586a == null) {
                return;
            }
            biConsumer.accept(m586a.f685b, m586a.f686c);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void forEach(java.util.function.BiConsumer biConsumer) {
        forEach(C3294q.m125a(biConsumer));
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
        return (V) r1.f686c;
     */
    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(java.lang.Object r5) {
        /*
            r4 = this;
            int r0 = r5.hashCode()
            int r0 = m595l(r0)
            j$.util.concurrent.ConcurrentHashMap$l[] r1 = r4.f668a
            r2 = 0
            if (r1 == 0) goto L4e
            int r3 = r1.length
            if (r3 <= 0) goto L4e
            int r3 = r3 + (-1)
            r3 = r3 & r0
            j$.util.concurrent.ConcurrentHashMap$l r1 = m593n(r1, r3)
            if (r1 == 0) goto L4e
            int r3 = r1.f684a
            if (r3 != r0) goto L2c
            java.lang.Object r3 = r1.f685b
            if (r3 == r5) goto L29
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L29:
            java.lang.Object r5 = r1.f686c
            return r5
        L2c:
            if (r3 >= 0) goto L37
            j$.util.concurrent.ConcurrentHashMap$l r5 = r1.mo576a(r0, r5)
            if (r5 == 0) goto L36
            java.lang.Object r2 = r5.f686c
        L36:
            return r2
        L37:
            j$.util.concurrent.ConcurrentHashMap$l r1 = r1.f687d
            if (r1 == 0) goto L4e
            int r3 = r1.f684a
            if (r3 != r0) goto L37
            java.lang.Object r3 = r1.f685b
            if (r3 == r5) goto L4b
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L4b:
            java.lang.Object r5 = r1.f686c
            return r5
        L4e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p033j$.util.concurrent.InterfaceC2864b, p033j$.util.Map
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
    final java.lang.Object m599h(java.lang.Object r9, java.lang.Object r10, boolean r11) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L98
            if (r10 == 0) goto L98
            int r1 = r9.hashCode()
            int r1 = m595l(r1)
            r2 = 0
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.f668a
        L10:
            if (r3 == 0) goto L92
            int r4 = r3.length
            if (r4 != 0) goto L17
            goto L92
        L17:
            int r4 = r4 + (-1)
            r4 = r4 & r1
            j$.util.concurrent.ConcurrentHashMap$l r5 = m593n(r3, r4)
            if (r5 != 0) goto L2c
            j$.util.concurrent.ConcurrentHashMap$l r5 = new j$.util.concurrent.ConcurrentHashMap$l
            r5.<init>(r1, r9, r10, r0)
            boolean r4 = m605b(r3, r4, r0, r5)
            if (r4 == 0) goto L10
            goto L89
        L2c:
            int r6 = r5.f684a
            r7 = -1
            if (r6 != r7) goto L36
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m601f(r3, r5)
            goto L10
        L36:
            monitor-enter(r5)
            j$.util.concurrent.ConcurrentHashMap$l r7 = m593n(r3, r4)     // Catch: java.lang.Throwable -> L8f
            if (r7 != r5) goto L7b
            if (r6 < 0) goto L68
            r2 = 1
            r6 = r5
        L41:
            int r7 = r6.f684a     // Catch: java.lang.Throwable -> L8f
            if (r7 != r1) goto L58
            java.lang.Object r7 = r6.f685b     // Catch: java.lang.Throwable -> L8f
            if (r7 == r9) goto L51
            if (r7 == 0) goto L58
            boolean r7 = r9.equals(r7)     // Catch: java.lang.Throwable -> L8f
            if (r7 == 0) goto L58
        L51:
            java.lang.Object r7 = r6.f686c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
        L55:
            r6.f686c = r10     // Catch: java.lang.Throwable -> L8f
            goto L7c
        L58:
            j$.util.concurrent.ConcurrentHashMap$l r7 = r6.f687d     // Catch: java.lang.Throwable -> L8f
            if (r7 != 0) goto L64
            j$.util.concurrent.ConcurrentHashMap$l r7 = new j$.util.concurrent.ConcurrentHashMap$l     // Catch: java.lang.Throwable -> L8f
            r7.<init>(r1, r9, r10, r0)     // Catch: java.lang.Throwable -> L8f
            r6.f687d = r7     // Catch: java.lang.Throwable -> L8f
            goto L7b
        L64:
            int r2 = r2 + 1
            r6 = r7
            goto L41
        L68:
            boolean r6 = r5 instanceof p033j$.util.concurrent.ConcurrentHashMap.C2854q     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            r2 = 2
            r6 = r5
            j$.util.concurrent.ConcurrentHashMap$q r6 = (p033j$.util.concurrent.ConcurrentHashMap.C2854q) r6     // Catch: java.lang.Throwable -> L8f
            j$.util.concurrent.ConcurrentHashMap$r r6 = r6.m581f(r1, r9, r10)     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            java.lang.Object r7 = r6.f686c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
            goto L55
        L7b:
            r7 = r0
        L7c:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            if (r2 == 0) goto L10
            r9 = 8
            if (r2 < r9) goto L86
            r8.m590q(r3, r4)
        L86:
            if (r7 == 0) goto L89
            return r7
        L89:
            r9 = 1
            r8.m606a(r9, r2)
            return r0
        L8f:
            r9 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            throw r9
        L92:
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m600g()
            goto L10
        L98:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.m599h(java.lang.Object, java.lang.Object, boolean):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public int hashCode() {
        C2849l[] c2849lArr = this.f668a;
        int i = 0;
        if (c2849lArr != null) {
            C2853p c2853p = new C2853p(c2849lArr, c2849lArr.length, 0, c2849lArr.length);
            while (true) {
                C2849l m586a = c2853p.m586a();
                if (m586a == null) {
                    break;
                }
                i += m586a.f686c.hashCode() ^ m586a.f685b.hashCode();
            }
        }
        return i;
    }

    /* renamed from: i */
    final Object m598i(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        C2849l m593n;
        Object obj4;
        C2855r m575b;
        C2849l m588s;
        Object obj5;
        int m595l = m595l(obj.hashCode());
        C2849l[] c2849lArr = this.f668a;
        while (true) {
            if (c2849lArr == null || (length = c2849lArr.length) == 0 || (m593n = m593n(c2849lArr, (i = (length - 1) & m595l))) == null) {
                break;
            }
            int i2 = m593n.f684a;
            if (i2 == -1) {
                c2849lArr = m601f(c2849lArr, m593n);
            } else {
                boolean z = false;
                synchronized (m593n) {
                    if (m593n(c2849lArr, i) == m593n) {
                        if (i2 >= 0) {
                            C2849l c2849l = null;
                            C2849l c2849l2 = m593n;
                            while (true) {
                                if (c2849l2.f684a != m595l || ((obj5 = c2849l2.f685b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                    C2849l c2849l3 = c2849l2.f687d;
                                    if (c2849l3 == null) {
                                        break;
                                    }
                                    c2849l = c2849l2;
                                    c2849l2 = c2849l3;
                                }
                            }
                            obj4 = c2849l2.f686c;
                            if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                if (obj2 != null) {
                                    c2849l2.f686c = obj2;
                                } else if (c2849l != null) {
                                    c2849l.f687d = c2849l2.f687d;
                                } else {
                                    m588s = c2849l2.f687d;
                                    m596k(c2849lArr, i, m588s);
                                }
                                z = true;
                            }
                            obj4 = null;
                            z = true;
                        } else if (m593n instanceof C2854q) {
                            C2854q c2854q = (C2854q) m593n;
                            C2855r c2855r = c2854q.f702e;
                            if (c2855r != null && (m575b = c2855r.m575b(m595l, obj, null)) != null) {
                                obj4 = m575b.f686c;
                                if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                    if (obj2 != null) {
                                        m575b.f686c = obj2;
                                    } else if (c2854q.m580g(m575b)) {
                                        m588s = m588s(c2854q.f703f);
                                        m596k(c2849lArr, i, m588s);
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
                            m606a(-1L, -1);
                        }
                        return obj4;
                    }
                }
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public boolean isEmpty() {
        return m594m() <= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public Set<K> keySet() {
        C2846i c2846i = this.f671d;
        if (c2846i != null) {
            return c2846i;
        }
        C2846i c2846i2 = new C2846i(this, null);
        this.f671d = c2846i2;
        return c2846i2;
    }

    /* renamed from: m */
    final long m594m() {
        C2840c[] c2840cArr = this.f670c;
        long j = this.baseCount;
        if (c2840cArr != null) {
            for (C2840c c2840c : c2840cArr) {
                if (c2840c != null) {
                    j += c2840c.value;
                }
            }
        }
        return j;
    }

    @Override // p033j$.util.Map
    public Object merge(Object obj, Object obj2, BiFunction biFunction) {
        int i;
        Object obj3;
        Object obj4;
        Object obj5 = obj2;
        if (obj == null || obj5 == null || biFunction == null) {
            throw null;
        }
        int m595l = m595l(obj.hashCode());
        C2849l[] c2849lArr = this.f668a;
        int i2 = 0;
        Object obj6 = null;
        int i3 = 0;
        while (true) {
            if (c2849lArr != null) {
                int length = c2849lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m595l;
                    C2849l m593n = m593n(c2849lArr, i4);
                    i = 1;
                    if (m593n != null) {
                        int i5 = m593n.f684a;
                        if (i5 == -1) {
                            c2849lArr = m601f(c2849lArr, m593n);
                        } else {
                            synchronized (m593n) {
                                if (m593n(c2849lArr, i4) == m593n) {
                                    if (i5 >= 0) {
                                        C2849l c2849l = null;
                                        C2849l c2849l2 = m593n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2849l2.f684a != m595l || ((obj4 = c2849l2.f685b) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                C2849l c2849l3 = c2849l2.f687d;
                                                if (c2849l3 == null) {
                                                    c2849l2.f687d = new C2849l(m595l, obj, obj5, null);
                                                    obj3 = obj5;
                                                    break;
                                                }
                                                i6++;
                                                c2849l = c2849l2;
                                                c2849l2 = c2849l3;
                                            }
                                        }
                                        Object apply = biFunction.apply(c2849l2.f686c, obj5);
                                        if (apply != null) {
                                            c2849l2.f686c = apply;
                                        } else {
                                            C2849l c2849l4 = c2849l2.f687d;
                                            if (c2849l != null) {
                                                c2849l.f687d = c2849l4;
                                            } else {
                                                m596k(c2849lArr, i4, c2849l4);
                                            }
                                            i2 = -1;
                                        }
                                        i = i2;
                                        obj3 = apply;
                                        i3 = i6;
                                        obj6 = obj3;
                                        i2 = i;
                                    } else if (m593n instanceof C2854q) {
                                        i3 = 2;
                                        C2854q c2854q = (C2854q) m593n;
                                        C2855r c2855r = c2854q.f702e;
                                        C2855r m575b = c2855r == null ? null : c2855r.m575b(m595l, obj, null);
                                        Object apply2 = m575b == null ? obj5 : biFunction.apply(m575b.f686c, obj5);
                                        if (apply2 != null) {
                                            if (m575b != null) {
                                                m575b.f686c = apply2;
                                            } else {
                                                c2854q.m581f(m595l, obj, apply2);
                                                i2 = 1;
                                            }
                                        } else if (m575b != null) {
                                            if (c2854q.m580g(m575b)) {
                                                m596k(c2849lArr, i4, m588s(c2854q.f703f));
                                            }
                                            i2 = -1;
                                        }
                                        obj6 = apply2;
                                    }
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    m590q(c2849lArr, i4);
                                }
                                i = i2;
                                obj5 = obj6;
                            }
                        }
                    } else if (m605b(c2849lArr, i4, null, new C2849l(m595l, obj, obj5, null))) {
                        break;
                    }
                }
            }
            c2849lArr = m600g();
        }
        if (i != 0) {
            m606a(i, i3);
        }
        return obj5;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
        return merge(obj, obj2, C3298s.m120a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public V put(K k, V v) {
        return (V) m599h(k, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m589r(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            m599h(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p033j$.util.Map
    public V putIfAbsent(K k, V v) {
        return (V) m599h(k, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public V remove(Object obj) {
        return (V) m598i(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p033j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        Objects.requireNonNull(obj);
        return (obj2 == null || m598i(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p033j$.util.Map
    public Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return m598i(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p033j$.util.Map
    public boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return m598i(obj, obj3, obj2) != null;
    }

    @Override // p033j$.util.Map
    public void replaceAll(BiFunction biFunction) {
        Objects.requireNonNull(biFunction);
        C2849l[] c2849lArr = this.f668a;
        if (c2849lArr == null) {
            return;
        }
        C2853p c2853p = new C2853p(c2849lArr, c2849lArr.length, 0, c2849lArr.length);
        while (true) {
            C2849l m586a = c2853p.m586a();
            if (m586a == null) {
                return;
            }
            Object obj = m586a.f686c;
            Object obj2 = m586a.f685b;
            do {
                Object apply = biFunction.apply(obj2, obj);
                Objects.requireNonNull(apply);
                if (m598i(obj2, apply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void replaceAll(java.util.function.BiFunction biFunction) {
        replaceAll(C3298s.m120a(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public int size() {
        long m594m = m594m();
        if (m594m < 0) {
            return 0;
        }
        if (m594m > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) m594m;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        C2849l[] c2849lArr = this.f668a;
        int length = c2849lArr == null ? 0 : c2849lArr.length;
        C2853p c2853p = new C2853p(c2849lArr, length, 0, length);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        C2849l m586a = c2853p.m586a();
        if (m586a != null) {
            while (true) {
                Object obj = m586a.f685b;
                Object obj2 = m586a.f686c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                m586a = c2853p.m586a();
                if (m586a == null) {
                    break;
                }
                sb.append(',');
                sb.append(' ');
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public Collection<V> values() {
        C2858u c2858u = this.f672e;
        if (c2858u != null) {
            return c2858u;
        }
        C2858u c2858u2 = new C2858u(this);
        this.f672e = c2858u2;
        return c2858u2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC2839b implements Collection, Serializable {

        /* renamed from: a */
        final ConcurrentHashMap f676a;

        AbstractC2839b(ConcurrentHashMap concurrentHashMap) {
            this.f676a = concurrentHashMap;
        }

        @Override // java.util.Collection
        public final void clear() {
            this.f676a.clear();
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
            throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.AbstractC2839b.containsAll(java.util.Collection):boolean");
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return this.f676a.isEmpty();
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
            return this.f676a.size();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            long m594m = this.f676a.m594m();
            if (m594m < 0) {
                m594m = 0;
            }
            if (m594m <= 2147483639) {
                int i = (int) m594m;
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
            long m594m = this.f676a.m594m();
            if (m594m < 0) {
                m594m = 0;
            }
            if (m594m <= 2147483639) {
                int i = (int) m594m;
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
