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
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.LockSupport;
import java.util.concurrent.locks.ReentrantLock;
import org.telegram.messenger.LiteMode;
import p033j$.util.AbstractC2838k;
import p033j$.util.Collection;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.Predicate;
import p033j$.util.stream.Stream;
import p033j$.wrappers.C$r8$wrapper$java$util$function$BiFunction$VWRP;
import p033j$.wrappers.C$r8$wrapper$java$util$function$Function$VWRP;
import p033j$.wrappers.C$r8$wrapper$java$util$function$Predicate$VWRP;
import p033j$.wrappers.C3181L0;
import p033j$.wrappers.C3185P;
import p033j$.wrappers.C3209h;
import p033j$.wrappers.C3227q;
import p033j$.wrappers.C3237v;
import sun.misc.Unsafe;
/* renamed from: j$.util.concurrent.ConcurrentHashMap */
/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, InterfaceC2804b {

    /* renamed from: g */
    static final int f705g = Runtime.getRuntime().availableProcessors();

    /* renamed from: h */
    private static final Unsafe f706h;

    /* renamed from: i */
    private static final long f707i;

    /* renamed from: j */
    private static final long f708j;

    /* renamed from: k */
    private static final long f709k;

    /* renamed from: l */
    private static final long f710l;

    /* renamed from: m */
    private static final long f711m;

    /* renamed from: n */
    private static final long f712n;

    /* renamed from: o */
    private static final int f713o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;

    /* renamed from: a */
    volatile transient C2789l[] f714a;

    /* renamed from: b */
    private volatile transient C2789l[] f715b;
    private volatile transient long baseCount;

    /* renamed from: c */
    private volatile transient C2780c[] f716c;
    private volatile transient int cellsBusy;

    /* renamed from: d */
    private transient C2786i f717d;

    /* renamed from: e */
    private transient C2798u f718e;

    /* renamed from: f */
    private transient C2782e f719f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$a */
    /* loaded from: classes2.dex */
    public static class C2778a extends C2793p {

        /* renamed from: i */
        final ConcurrentHashMap f720i;

        /* renamed from: j */
        C2789l f721j;

        C2778a(C2789l[] c2789lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2789lArr, i, i2, i3);
            this.f720i = concurrentHashMap;
            m652a();
        }

        public final boolean hasMoreElements() {
            return this.f739b != null;
        }

        public final boolean hasNext() {
            return this.f739b != null;
        }

        public final void remove() {
            C2789l c2789l = this.f721j;
            if (c2789l == null) {
                throw new IllegalStateException();
            }
            this.f721j = null;
            this.f720i.m664i(c2789l.f731b, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$c */
    /* loaded from: classes2.dex */
    public static final class C2780c {
        volatile long value;

        C2780c(long j) {
            this.value = j;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$d */
    /* loaded from: classes2.dex */
    static final class C2781d extends C2778a implements Iterator, p033j$.util.Iterator {
        C2781d(C2789l[] c2789lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2789lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3237v.m168b(consumer));
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public Object next() {
            C2789l c2789l = this.f739b;
            if (c2789l != null) {
                Object obj = c2789l.f731b;
                Object obj2 = c2789l.f732c;
                this.f721j = c2789l;
                m652a();
                return new C2788k(obj, obj2, this.f720i);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$e */
    /* loaded from: classes2.dex */
    public static final class C2782e extends AbstractC2779b implements Set, Collection {
        C2782e(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set, p033j$.util.Collection
        /* renamed from: a */
        public boolean add(Map.Entry entry) {
            return this.f722a.m665h(entry.getKey(), entry.getValue(), false) == null;
        }

        @Override // java.util.Collection, java.util.Set, p033j$.util.Collection
        public boolean addAll(java.util.Collection collection) {
            java.util.Iterator it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (add((Map.Entry) it.next())) {
                    z = true;
                }
            }
            return z;
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2779b, java.util.Collection
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            Object value;
            return (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = this.f722a.get(key)) == null || (value = entry.getValue()) == null || (value != obj2 && !value.equals(obj2))) ? false : true;
        }

        @Override // java.util.Collection, java.util.Set, p033j$.util.Collection
        public final boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p033j$.util.Collection, p033j$.lang.InterfaceC2669e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2789l[] c2789lArr = this.f722a.f714a;
            if (c2789lArr == null) {
                return;
            }
            C2793p c2793p = new C2793p(c2789lArr, c2789lArr.length, 0, c2789lArr.length);
            while (true) {
                C2789l m652a = c2793p.m652a();
                if (m652a == null) {
                    return;
                }
                consumer.accept(new C2788k(m652a.f731b, m652a.f732c, this.f722a));
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3237v.m168b(consumer));
        }

        @Override // java.util.Collection, java.util.Set, p033j$.util.Collection
        public final int hashCode() {
            C2789l[] c2789lArr = this.f722a.f714a;
            int i = 0;
            if (c2789lArr != null) {
                C2793p c2793p = new C2793p(c2789lArr, c2789lArr.length, 0, c2789lArr.length);
                while (true) {
                    C2789l m652a = c2793p.m652a();
                    if (m652a == null) {
                        break;
                    }
                    i += m652a.hashCode();
                }
            }
            return i;
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2779b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f722a;
            C2789l[] c2789lArr = concurrentHashMap.f714a;
            int length = c2789lArr == null ? 0 : c2789lArr.length;
            return new C2781d(c2789lArr, length, 0, length, concurrentHashMap);
        }

        @Override // java.util.Collection, p033j$.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream parallelStream() {
            return C3181L0.m241m0(Collection.CC.$default$parallelStream(this));
        }

        @Override // java.util.Collection, java.util.Set, p033j$.util.Collection
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && this.f722a.remove(key, value);
        }

        @Override // p033j$.util.Collection
        public /* synthetic */ boolean removeIf(Predicate predicate) {
            return Collection.CC.$default$removeIf(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return Collection.CC.$default$removeIf(this, C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p033j$.util.Collection, p033j$.lang.InterfaceC2669e
        public Spliterator spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f722a;
            long m660m = concurrentHashMap.m660m();
            C2789l[] c2789lArr = concurrentHashMap.f714a;
            int length = c2789lArr == null ? 0 : c2789lArr.length;
            return new C2783f(c2789lArr, length, 0, length, m660m >= 0 ? m660m : 0L, concurrentHashMap);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ java.util.Spliterator spliterator() {
            return C3209h.m205a(spliterator());
        }

        @Override // java.util.Collection, p033j$.util.Collection
        public /* synthetic */ Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream stream() {
            return C3181L0.m241m0(Collection.CC.$default$stream(this));
        }

        @Override // p033j$.util.Collection
        public /* synthetic */ Object[] toArray(IntFunction intFunction) {
            return Collection.CC.$default$toArray(this, intFunction);
        }

        public /* synthetic */ Object[] toArray(java.util.function.IntFunction intFunction) {
            return Collection.CC.$default$toArray(this, C3185P.m236a(intFunction));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$f */
    /* loaded from: classes2.dex */
    public static final class C2783f extends C2793p implements Spliterator {

        /* renamed from: i */
        final ConcurrentHashMap f723i;

        /* renamed from: j */
        long f724j;

        C2783f(C2789l[] c2789lArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
            super(c2789lArr, i, i2, i3);
            this.f723i = concurrentHashMap;
            this.f724j = j;
        }

        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        public boolean mo182b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2789l m652a = m652a();
            if (m652a == null) {
                return false;
            }
            consumer.accept(new C2788k(m652a.f731b, m652a.f732c, this.f723i));
            return true;
        }

        @Override // p033j$.util.Spliterator
        public int characteristics() {
            return 4353;
        }

        @Override // p033j$.util.Spliterator
        public long estimateSize() {
            return this.f724j;
        }

        @Override // p033j$.util.Spliterator
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2789l m652a = m652a();
                if (m652a == null) {
                    return;
                }
                consumer.accept(new C2788k(m652a.f731b, m652a.f732c, this.f723i));
            }
        }

        @Override // p033j$.util.Spliterator
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2838k.m605d(this);
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2838k.m604e(this, i);
        }

        @Override // p033j$.util.Spliterator
        public Spliterator trySplit() {
            int i = this.f743f;
            int i2 = this.f744g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2789l[] c2789lArr = this.f738a;
            int i4 = this.f745h;
            this.f744g = i3;
            long j = this.f724j >>> 1;
            this.f724j = j;
            return new C2783f(c2789lArr, i4, i3, i2, j, this.f723i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$g */
    /* loaded from: classes2.dex */
    public static final class C2784g extends C2789l {

        /* renamed from: e */
        final C2789l[] f725e;

        C2784g(C2789l[] c2789lArr) {
            super(-1, null, null, null);
            this.f725e = c2789lArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
            if ((r0 instanceof p033j$.util.concurrent.ConcurrentHashMap.C2784g) == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
            r0 = ((p033j$.util.concurrent.ConcurrentHashMap.C2784g) r0).f725e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
            return r0.mo642a(r5, r6);
         */
        @Override // p033j$.util.concurrent.ConcurrentHashMap.C2789l
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        p033j$.util.concurrent.ConcurrentHashMap.C2789l mo642a(int r5, java.lang.Object r6) {
            /*
                r4 = this;
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r4.f725e
            L2:
                r1 = 0
                if (r0 == 0) goto L37
                int r2 = r0.length
                if (r2 == 0) goto L37
                int r2 = r2 + (-1)
                r2 = r2 & r5
                j$.util.concurrent.ConcurrentHashMap$l r0 = p033j$.util.concurrent.ConcurrentHashMap.m659n(r0, r2)
                if (r0 != 0) goto L12
                goto L37
            L12:
                int r2 = r0.f730a
                if (r2 != r5) goto L23
                java.lang.Object r3 = r0.f731b
                if (r3 == r6) goto L22
                if (r3 == 0) goto L23
                boolean r3 = r6.equals(r3)
                if (r3 == 0) goto L23
            L22:
                return r0
            L23:
                if (r2 >= 0) goto L33
                boolean r1 = r0 instanceof p033j$.util.concurrent.ConcurrentHashMap.C2784g
                if (r1 == 0) goto L2e
                j$.util.concurrent.ConcurrentHashMap$g r0 = (p033j$.util.concurrent.ConcurrentHashMap.C2784g) r0
                j$.util.concurrent.ConcurrentHashMap$l[] r0 = r0.f725e
                goto L2
            L2e:
                j$.util.concurrent.ConcurrentHashMap$l r5 = r0.mo642a(r5, r6)
                return r5
            L33:
                j$.util.concurrent.ConcurrentHashMap$l r0 = r0.f733d
                if (r0 != 0) goto L12
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.C2784g.mo642a(int, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$l");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$h */
    /* loaded from: classes2.dex */
    public static final class C2785h extends C2778a implements java.util.Iterator, Enumeration, p033j$.util.Iterator {
        C2785h(C2789l[] c2789lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2789lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3237v.m168b(consumer));
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public final Object next() {
            C2789l c2789l = this.f739b;
            if (c2789l != null) {
                Object obj = c2789l.f731b;
                this.f721j = c2789l;
                m652a();
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
    public static class C2786i extends AbstractC2779b implements Set, Collection {
        C2786i(ConcurrentHashMap concurrentHashMap, Object obj) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, java.util.Set, p033j$.util.Collection
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, java.util.Set, p033j$.util.Collection
        public boolean addAll(java.util.Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2779b, java.util.Collection
        public boolean contains(Object obj) {
            return this.f722a.containsKey(obj);
        }

        @Override // java.util.Collection, java.util.Set, p033j$.util.Collection
        public boolean equals(Object obj) {
            Set set;
            return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
        }

        @Override // p033j$.util.Collection, p033j$.lang.InterfaceC2669e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2789l[] c2789lArr = this.f722a.f714a;
            if (c2789lArr == null) {
                return;
            }
            C2793p c2793p = new C2793p(c2789lArr, c2789lArr.length, 0, c2789lArr.length);
            while (true) {
                C2789l m652a = c2793p.m652a();
                if (m652a == null) {
                    return;
                }
                consumer.accept(m652a.f731b);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3237v.m168b(consumer));
        }

        @Override // java.util.Collection, java.util.Set, p033j$.util.Collection
        public int hashCode() {
            java.util.Iterator it = iterator();
            int i = 0;
            while (((C2778a) it).hasNext()) {
                i += ((C2785h) it).next().hashCode();
            }
            return i;
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2779b, java.util.Collection, java.lang.Iterable
        public java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f722a;
            C2789l[] c2789lArr = concurrentHashMap.f714a;
            int length = c2789lArr == null ? 0 : c2789lArr.length;
            return new C2785h(c2789lArr, length, 0, length, concurrentHashMap);
        }

        @Override // java.util.Collection, p033j$.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream parallelStream() {
            return C3181L0.m241m0(Collection.CC.$default$parallelStream(this));
        }

        @Override // java.util.Collection, java.util.Set, p033j$.util.Collection
        public boolean remove(Object obj) {
            return this.f722a.remove(obj) != null;
        }

        @Override // p033j$.util.Collection
        public /* synthetic */ boolean removeIf(Predicate predicate) {
            return Collection.CC.$default$removeIf(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return Collection.CC.$default$removeIf(this, C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p033j$.util.Collection, p033j$.lang.InterfaceC2669e
        public Spliterator spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f722a;
            long m660m = concurrentHashMap.m660m();
            C2789l[] c2789lArr = concurrentHashMap.f714a;
            int length = c2789lArr == null ? 0 : c2789lArr.length;
            return new C2787j(c2789lArr, length, 0, length, m660m >= 0 ? m660m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ java.util.Spliterator spliterator() {
            return C3209h.m205a(spliterator());
        }

        @Override // java.util.Collection, p033j$.util.Collection
        public /* synthetic */ Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream stream() {
            return C3181L0.m241m0(Collection.CC.$default$stream(this));
        }

        @Override // p033j$.util.Collection
        public /* synthetic */ Object[] toArray(IntFunction intFunction) {
            return Collection.CC.$default$toArray(this, intFunction);
        }

        public /* synthetic */ Object[] toArray(java.util.function.IntFunction intFunction) {
            return Collection.CC.$default$toArray(this, C3185P.m236a(intFunction));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$j */
    /* loaded from: classes2.dex */
    public static final class C2787j extends C2793p implements Spliterator {

        /* renamed from: i */
        long f726i;

        C2787j(C2789l[] c2789lArr, int i, int i2, int i3, long j) {
            super(c2789lArr, i, i2, i3);
            this.f726i = j;
        }

        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        public boolean mo182b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2789l m652a = m652a();
            if (m652a == null) {
                return false;
            }
            consumer.accept(m652a.f731b);
            return true;
        }

        @Override // p033j$.util.Spliterator
        public int characteristics() {
            return 4353;
        }

        @Override // p033j$.util.Spliterator
        public long estimateSize() {
            return this.f726i;
        }

        @Override // p033j$.util.Spliterator
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2789l m652a = m652a();
                if (m652a == null) {
                    return;
                }
                consumer.accept(m652a.f731b);
            }
        }

        @Override // p033j$.util.Spliterator
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2838k.m605d(this);
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2838k.m604e(this, i);
        }

        @Override // p033j$.util.Spliterator
        public Spliterator trySplit() {
            int i = this.f743f;
            int i2 = this.f744g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2789l[] c2789lArr = this.f738a;
            int i4 = this.f745h;
            this.f744g = i3;
            long j = this.f726i >>> 1;
            this.f726i = j;
            return new C2787j(c2789lArr, i4, i3, i2, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$k */
    /* loaded from: classes2.dex */
    public static final class C2788k implements Map.Entry {

        /* renamed from: a */
        final Object f727a;

        /* renamed from: b */
        Object f728b;

        /* renamed from: c */
        final ConcurrentHashMap f729c;

        C2788k(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
            this.f727a = obj;
            this.f728b = obj2;
            this.f729c = concurrentHashMap;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f727a) || key.equals(obj2)) && (value == (obj3 = this.f728b) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f727a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f728b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f727a.hashCode() ^ this.f728b.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Objects.requireNonNull(obj);
            Object obj2 = this.f728b;
            this.f728b = obj;
            this.f729c.put(this.f727a, obj);
            return obj2;
        }

        public String toString() {
            return this.f727a + "=" + this.f728b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$l */
    /* loaded from: classes2.dex */
    public static class C2789l implements Map.Entry {

        /* renamed from: a */
        final int f730a;

        /* renamed from: b */
        final Object f731b;

        /* renamed from: c */
        volatile Object f732c;

        /* renamed from: d */
        volatile C2789l f733d;

        C2789l(int i, Object obj, Object obj2, C2789l c2789l) {
            this.f730a = i;
            this.f731b = obj;
            this.f732c = obj2;
            this.f733d = c2789l;
        }

        /* renamed from: a */
        C2789l mo642a(int i, Object obj) {
            Object obj2;
            C2789l c2789l = this;
            do {
                if (c2789l.f730a == i && ((obj2 = c2789l.f731b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return c2789l;
                }
                c2789l = c2789l.f733d;
            } while (c2789l != null);
            return null;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            Map.Entry entry;
            Object key;
            Object value;
            Object obj2;
            Object obj3;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && (key == (obj2 = this.f731b) || key.equals(obj2)) && (value == (obj3 = this.f732c) || value.equals(obj3));
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f731b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f732c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f731b.hashCode() ^ this.f732c.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public final String toString() {
            return this.f731b + "=" + this.f732c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$m */
    /* loaded from: classes2.dex */
    public static final class C2790m extends C2789l {
        C2790m() {
            super(-3, null, null, null);
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.C2789l
        /* renamed from: a */
        C2789l mo642a(int i, Object obj) {
            return null;
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$n */
    /* loaded from: classes2.dex */
    static class C2791n extends ReentrantLock {
        C2791n(float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$o */
    /* loaded from: classes2.dex */
    public static final class C2792o {

        /* renamed from: a */
        int f734a;

        /* renamed from: b */
        int f735b;

        /* renamed from: c */
        C2789l[] f736c;

        /* renamed from: d */
        C2792o f737d;

        C2792o() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$p */
    /* loaded from: classes2.dex */
    public static class C2793p {

        /* renamed from: a */
        C2789l[] f738a;

        /* renamed from: b */
        C2789l f739b = null;

        /* renamed from: c */
        C2792o f740c;

        /* renamed from: d */
        C2792o f741d;

        /* renamed from: e */
        int f742e;

        /* renamed from: f */
        int f743f;

        /* renamed from: g */
        int f744g;

        /* renamed from: h */
        final int f745h;

        C2793p(C2789l[] c2789lArr, int i, int i2, int i3) {
            this.f738a = c2789lArr;
            this.f745h = i;
            this.f742e = i2;
            this.f743f = i2;
            this.f744g = i3;
        }

        /* renamed from: a */
        final C2789l m652a() {
            C2789l[] c2789lArr;
            int length;
            int i;
            C2792o c2792o;
            C2789l c2789l = this.f739b;
            if (c2789l != null) {
                c2789l = c2789l.f733d;
            }
            while (c2789l == null) {
                if (this.f743f >= this.f744g || (c2789lArr = this.f738a) == null || (length = c2789lArr.length) <= (i = this.f742e) || i < 0) {
                    this.f739b = null;
                    return null;
                }
                C2789l m659n = ConcurrentHashMap.m659n(c2789lArr, i);
                if (m659n == null || m659n.f730a >= 0) {
                    c2789l = m659n;
                } else if (m659n instanceof C2784g) {
                    this.f738a = ((C2784g) m659n).f725e;
                    C2792o c2792o2 = this.f741d;
                    if (c2792o2 != null) {
                        this.f741d = c2792o2.f737d;
                    } else {
                        c2792o2 = new C2792o();
                    }
                    c2792o2.f736c = c2789lArr;
                    c2792o2.f734a = length;
                    c2792o2.f735b = i;
                    c2792o2.f737d = this.f740c;
                    this.f740c = c2792o2;
                    c2789l = null;
                } else {
                    c2789l = m659n instanceof C2794q ? ((C2794q) m659n).f749f : null;
                }
                if (this.f740c != null) {
                    while (true) {
                        c2792o = this.f740c;
                        if (c2792o == null) {
                            break;
                        }
                        int i2 = this.f742e;
                        int i3 = c2792o.f734a;
                        int i4 = i2 + i3;
                        this.f742e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.f742e = c2792o.f735b;
                        this.f738a = c2792o.f736c;
                        c2792o.f736c = null;
                        C2792o c2792o3 = c2792o.f737d;
                        c2792o.f737d = this.f741d;
                        this.f740c = c2792o3;
                        this.f741d = c2792o;
                        length = i3;
                    }
                    if (c2792o == null) {
                        int i5 = this.f742e + this.f745h;
                        this.f742e = i5;
                        if (i5 >= length) {
                            int i6 = this.f743f + 1;
                            this.f743f = i6;
                            this.f742e = i6;
                        }
                    }
                } else {
                    int i7 = i + this.f745h;
                    this.f742e = i7;
                    if (i7 >= length) {
                        int i8 = this.f743f + 1;
                        this.f743f = i8;
                        this.f742e = i8;
                    }
                }
            }
            this.f739b = c2789l;
            return c2789l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$q */
    /* loaded from: classes2.dex */
    public static final class C2794q extends C2789l {

        /* renamed from: h */
        private static final Unsafe f746h;

        /* renamed from: i */
        private static final long f747i;

        /* renamed from: e */
        C2795r f748e;

        /* renamed from: f */
        volatile C2795r f749f;

        /* renamed from: g */
        volatile Thread f750g;
        volatile int lockState;

        static {
            try {
                Unsafe m626c = AbstractC2805c.m626c();
                f746h = m626c;
                f747i = m626c.objectFieldOffset(C2794q.class.getDeclaredField("lockState"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        C2794q(C2795r c2795r) {
            super(-2, null, null, null);
            int m669d;
            int m643j;
            this.f749f = c2795r;
            C2795r c2795r2 = null;
            while (c2795r != null) {
                C2795r c2795r3 = (C2795r) c2795r.f733d;
                c2795r.f753g = null;
                c2795r.f752f = null;
                if (c2795r2 == null) {
                    c2795r.f751e = null;
                    c2795r.f755i = false;
                } else {
                    Object obj = c2795r.f731b;
                    int i = c2795r.f730a;
                    C2795r c2795r4 = c2795r2;
                    Class cls = null;
                    while (true) {
                        Object obj2 = c2795r4.f731b;
                        int i2 = c2795r4.f730a;
                        m643j = i2 > i ? -1 : i2 < i ? 1 : ((cls == null && (cls = ConcurrentHashMap.m670c(obj)) == null) || (m669d = ConcurrentHashMap.m669d(cls, obj, obj2)) == 0) ? m643j(obj, obj2) : m669d;
                        C2795r c2795r5 = m643j <= 0 ? c2795r4.f752f : c2795r4.f753g;
                        if (c2795r5 == null) {
                            break;
                        }
                        c2795r4 = c2795r5;
                    }
                    c2795r.f751e = c2795r4;
                    if (m643j <= 0) {
                        c2795r4.f752f = c2795r;
                    } else {
                        c2795r4.f753g = c2795r;
                    }
                    c2795r = m650c(c2795r2, c2795r);
                }
                c2795r2 = c2795r;
                c2795r = c2795r3;
            }
            this.f748e = c2795r2;
        }

        /* renamed from: b */
        static C2795r m651b(C2795r c2795r, C2795r c2795r2) {
            while (c2795r2 != null && c2795r2 != c2795r) {
                C2795r c2795r3 = c2795r2.f751e;
                if (c2795r3 == null) {
                    c2795r2.f755i = false;
                    return c2795r2;
                } else if (c2795r2.f755i) {
                    c2795r2.f755i = false;
                    return c2795r;
                } else {
                    C2795r c2795r4 = c2795r3.f752f;
                    C2795r c2795r5 = null;
                    if (c2795r4 == c2795r2) {
                        c2795r4 = c2795r3.f753g;
                        if (c2795r4 != null && c2795r4.f755i) {
                            c2795r4.f755i = false;
                            c2795r3.f755i = true;
                            c2795r = m645h(c2795r, c2795r3);
                            c2795r3 = c2795r2.f751e;
                            c2795r4 = c2795r3 == null ? null : c2795r3.f753g;
                        }
                        if (c2795r4 == null) {
                            c2795r2 = c2795r3;
                        } else {
                            C2795r c2795r6 = c2795r4.f752f;
                            C2795r c2795r7 = c2795r4.f753g;
                            if ((c2795r7 != null && c2795r7.f755i) || (c2795r6 != null && c2795r6.f755i)) {
                                if (c2795r7 == null || !c2795r7.f755i) {
                                    if (c2795r6 != null) {
                                        c2795r6.f755i = false;
                                    }
                                    c2795r4.f755i = true;
                                    c2795r = m644i(c2795r, c2795r4);
                                    c2795r3 = c2795r2.f751e;
                                    if (c2795r3 != null) {
                                        c2795r5 = c2795r3.f753g;
                                    }
                                } else {
                                    c2795r5 = c2795r4;
                                }
                                if (c2795r5 != null) {
                                    c2795r5.f755i = c2795r3 == null ? false : c2795r3.f755i;
                                    C2795r c2795r8 = c2795r5.f753g;
                                    if (c2795r8 != null) {
                                        c2795r8.f755i = false;
                                    }
                                }
                                if (c2795r3 != null) {
                                    c2795r3.f755i = false;
                                    c2795r = m645h(c2795r, c2795r3);
                                }
                                c2795r2 = c2795r;
                                c2795r = c2795r2;
                            }
                            c2795r4.f755i = true;
                            c2795r2 = c2795r3;
                        }
                    } else {
                        if (c2795r4 != null && c2795r4.f755i) {
                            c2795r4.f755i = false;
                            c2795r3.f755i = true;
                            c2795r = m644i(c2795r, c2795r3);
                            c2795r3 = c2795r2.f751e;
                            c2795r4 = c2795r3 == null ? null : c2795r3.f752f;
                        }
                        if (c2795r4 == null) {
                            c2795r2 = c2795r3;
                        } else {
                            C2795r c2795r9 = c2795r4.f752f;
                            C2795r c2795r10 = c2795r4.f753g;
                            if ((c2795r9 != null && c2795r9.f755i) || (c2795r10 != null && c2795r10.f755i)) {
                                if (c2795r9 == null || !c2795r9.f755i) {
                                    if (c2795r10 != null) {
                                        c2795r10.f755i = false;
                                    }
                                    c2795r4.f755i = true;
                                    c2795r = m645h(c2795r, c2795r4);
                                    c2795r3 = c2795r2.f751e;
                                    if (c2795r3 != null) {
                                        c2795r5 = c2795r3.f752f;
                                    }
                                } else {
                                    c2795r5 = c2795r4;
                                }
                                if (c2795r5 != null) {
                                    c2795r5.f755i = c2795r3 == null ? false : c2795r3.f755i;
                                    C2795r c2795r11 = c2795r5.f752f;
                                    if (c2795r11 != null) {
                                        c2795r11.f755i = false;
                                    }
                                }
                                if (c2795r3 != null) {
                                    c2795r3.f755i = false;
                                    c2795r = m644i(c2795r, c2795r3);
                                }
                                c2795r2 = c2795r;
                                c2795r = c2795r2;
                            }
                            c2795r4.f755i = true;
                            c2795r2 = c2795r3;
                        }
                    }
                }
            }
            return c2795r;
        }

        /* renamed from: c */
        static C2795r m650c(C2795r c2795r, C2795r c2795r2) {
            C2795r c2795r3;
            c2795r2.f755i = true;
            while (true) {
                C2795r c2795r4 = c2795r2.f751e;
                if (c2795r4 == null) {
                    c2795r2.f755i = false;
                    return c2795r2;
                } else if (!c2795r4.f755i || (c2795r3 = c2795r4.f751e) == null) {
                    break;
                } else {
                    C2795r c2795r5 = c2795r3.f752f;
                    if (c2795r4 == c2795r5) {
                        c2795r5 = c2795r3.f753g;
                        if (c2795r5 == null || !c2795r5.f755i) {
                            if (c2795r2 == c2795r4.f753g) {
                                c2795r = m645h(c2795r, c2795r4);
                                C2795r c2795r6 = c2795r4.f751e;
                                c2795r3 = c2795r6 == null ? null : c2795r6.f751e;
                                c2795r4 = c2795r6;
                                c2795r2 = c2795r4;
                            }
                            if (c2795r4 != null) {
                                c2795r4.f755i = false;
                                if (c2795r3 != null) {
                                    c2795r3.f755i = true;
                                    c2795r = m644i(c2795r, c2795r3);
                                }
                            }
                        } else {
                            c2795r5.f755i = false;
                            c2795r4.f755i = false;
                            c2795r3.f755i = true;
                            c2795r2 = c2795r3;
                        }
                    } else if (c2795r5 == null || !c2795r5.f755i) {
                        if (c2795r2 == c2795r4.f752f) {
                            c2795r = m644i(c2795r, c2795r4);
                            C2795r c2795r7 = c2795r4.f751e;
                            c2795r3 = c2795r7 == null ? null : c2795r7.f751e;
                            c2795r4 = c2795r7;
                            c2795r2 = c2795r4;
                        }
                        if (c2795r4 != null) {
                            c2795r4.f755i = false;
                            if (c2795r3 != null) {
                                c2795r3.f755i = true;
                                c2795r = m645h(c2795r, c2795r3);
                            }
                        }
                    } else {
                        c2795r5.f755i = false;
                        c2795r4.f755i = false;
                        c2795r3.f755i = true;
                        c2795r2 = c2795r3;
                    }
                }
            }
            return c2795r;
        }

        /* renamed from: d */
        private final void m649d() {
            boolean z = false;
            while (true) {
                int i = this.lockState;
                if ((i & (-3)) == 0) {
                    if (f746h.compareAndSwapInt(this, f747i, i, 1)) {
                        break;
                    }
                } else if ((i & 2) == 0) {
                    if (f746h.compareAndSwapInt(this, f747i, i, i | 2)) {
                        z = true;
                        this.f750g = Thread.currentThread();
                    }
                } else if (z) {
                    LockSupport.park(this);
                }
            }
            if (z) {
                this.f750g = null;
            }
        }

        /* renamed from: e */
        private final void m648e() {
            if (f746h.compareAndSwapInt(this, f747i, 0, 1)) {
                return;
            }
            m649d();
        }

        /* renamed from: h */
        static C2795r m645h(C2795r c2795r, C2795r c2795r2) {
            C2795r c2795r3 = c2795r2.f753g;
            if (c2795r3 != null) {
                C2795r c2795r4 = c2795r3.f752f;
                c2795r2.f753g = c2795r4;
                if (c2795r4 != null) {
                    c2795r4.f751e = c2795r2;
                }
                C2795r c2795r5 = c2795r2.f751e;
                c2795r3.f751e = c2795r5;
                if (c2795r5 == null) {
                    c2795r3.f755i = false;
                    c2795r = c2795r3;
                } else if (c2795r5.f752f == c2795r2) {
                    c2795r5.f752f = c2795r3;
                } else {
                    c2795r5.f753g = c2795r3;
                }
                c2795r3.f752f = c2795r2;
                c2795r2.f751e = c2795r3;
            }
            return c2795r;
        }

        /* renamed from: i */
        static C2795r m644i(C2795r c2795r, C2795r c2795r2) {
            C2795r c2795r3 = c2795r2.f752f;
            if (c2795r3 != null) {
                C2795r c2795r4 = c2795r3.f753g;
                c2795r2.f752f = c2795r4;
                if (c2795r4 != null) {
                    c2795r4.f751e = c2795r2;
                }
                C2795r c2795r5 = c2795r2.f751e;
                c2795r3.f751e = c2795r5;
                if (c2795r5 == null) {
                    c2795r3.f755i = false;
                    c2795r = c2795r3;
                } else if (c2795r5.f753g == c2795r2) {
                    c2795r5.f753g = c2795r3;
                } else {
                    c2795r5.f752f = c2795r3;
                }
                c2795r3.f753g = c2795r2;
                c2795r2.f751e = c2795r3;
            }
            return c2795r;
        }

        /* renamed from: j */
        static int m643j(Object obj, Object obj2) {
            int compareTo;
            return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.C2789l
        /* renamed from: a */
        final C2789l mo642a(int i, Object obj) {
            Object obj2;
            Thread thread;
            Thread thread2;
            C2789l c2789l = this.f749f;
            while (true) {
                C2795r c2795r = null;
                if (c2789l == null) {
                    return null;
                }
                int i2 = this.lockState;
                if ((i2 & 3) == 0) {
                    Unsafe unsafe = f746h;
                    long j = f747i;
                    if (unsafe.compareAndSwapInt(this, j, i2, i2 + 4)) {
                        try {
                            C2795r c2795r2 = this.f748e;
                            if (c2795r2 != null) {
                                c2795r = c2795r2.m641b(i, obj, null);
                            }
                            if (AbstractC2805c.m628a(unsafe, this, j, -4) == 6 && (thread2 = this.f750g) != null) {
                                LockSupport.unpark(thread2);
                            }
                            return c2795r;
                        } catch (Throwable th) {
                            if (AbstractC2805c.m628a(f746h, this, f747i, -4) == 6 && (thread = this.f750g) != null) {
                                LockSupport.unpark(thread);
                            }
                            throw th;
                        }
                    }
                } else if (c2789l.f730a != i || ((obj2 = c2789l.f731b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                    c2789l = c2789l.f733d;
                }
            }
            return c2789l;
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
        final p033j$.util.concurrent.ConcurrentHashMap.C2795r m647f(int r16, java.lang.Object r17, java.lang.Object r18) {
            /*
                r15 = this;
                r1 = r15
                r0 = r16
                r4 = r17
                j$.util.concurrent.ConcurrentHashMap$r r2 = r1.f748e
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
                r1.f748e = r9
                r1.f749f = r9
                goto La2
            L22:
                int r5 = r10.f730a
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
                java.lang.Object r5 = r10.f731b
                if (r5 == r4) goto Laa
                if (r5 == 0) goto L3c
                boolean r6 = r4.equals(r5)
                if (r6 == 0) goto L3c
                goto Laa
            L3c:
                if (r2 != 0) goto L44
                java.lang.Class r2 = p033j$.util.concurrent.ConcurrentHashMap.m670c(r17)
                if (r2 == 0) goto L4a
            L44:
                int r6 = p033j$.util.concurrent.ConcurrentHashMap.m669d(r2, r4, r5)
                if (r6 != 0) goto L67
            L4a:
                if (r3 != 0) goto L62
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f752f
                if (r3 == 0) goto L56
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m641b(r0, r4, r2)
                if (r3 != 0) goto L60
            L56:
                j$.util.concurrent.ConcurrentHashMap$r r3 = r10.f753g
                if (r3 == 0) goto L61
                j$.util.concurrent.ConcurrentHashMap$r r3 = r3.m641b(r0, r4, r2)
                if (r3 == 0) goto L61
            L60:
                return r3
            L61:
                r3 = r11
            L62:
                int r5 = m643j(r4, r5)
                goto L28
            L67:
                r12 = r6
            L68:
                if (r12 > 0) goto L6d
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f752f
                goto L6f
            L6d:
                j$.util.concurrent.ConcurrentHashMap$r r5 = r10.f753g
            L6f:
                if (r5 != 0) goto La7
                j$.util.concurrent.ConcurrentHashMap$r r13 = r1.f749f
                j$.util.concurrent.ConcurrentHashMap$r r14 = new j$.util.concurrent.ConcurrentHashMap$r
                r2 = r14
                r3 = r16
                r4 = r17
                r5 = r18
                r6 = r13
                r7 = r10
                r2.<init>(r3, r4, r5, r6, r7)
                r1.f749f = r14
                if (r13 == 0) goto L87
                r13.f754h = r14
            L87:
                if (r12 > 0) goto L8c
                r10.f752f = r14
                goto L8e
            L8c:
                r10.f753g = r14
            L8e:
                boolean r0 = r10.f755i
                if (r0 != 0) goto L95
                r14.f755i = r11
                goto La2
            L95:
                r15.m648e()
                j$.util.concurrent.ConcurrentHashMap$r r0 = r1.f748e     // Catch: java.lang.Throwable -> La3
                j$.util.concurrent.ConcurrentHashMap$r r0 = m650c(r0, r14)     // Catch: java.lang.Throwable -> La3
                r1.f748e = r0     // Catch: java.lang.Throwable -> La3
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
            throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.C2794q.m647f(int, java.lang.Object, java.lang.Object):j$.util.concurrent.ConcurrentHashMap$r");
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
        final boolean m646g(p033j$.util.concurrent.ConcurrentHashMap.C2795r r11) {
            /*
                Method dump skipped, instructions count: 205
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.C2794q.m646g(j$.util.concurrent.ConcurrentHashMap$r):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$r */
    /* loaded from: classes2.dex */
    public static final class C2795r extends C2789l {

        /* renamed from: e */
        C2795r f751e;

        /* renamed from: f */
        C2795r f752f;

        /* renamed from: g */
        C2795r f753g;

        /* renamed from: h */
        C2795r f754h;

        /* renamed from: i */
        boolean f755i;

        C2795r(int i, Object obj, Object obj2, C2789l c2789l, C2795r c2795r) {
            super(i, obj, obj2, c2789l);
            this.f751e = c2795r;
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.C2789l
        /* renamed from: a */
        C2789l mo642a(int i, Object obj) {
            return m641b(i, obj, null);
        }

        /* renamed from: b */
        final C2795r m641b(int i, Object obj, Class cls) {
            int m669d;
            if (obj != null) {
                C2795r c2795r = this;
                do {
                    C2795r c2795r2 = c2795r.f752f;
                    C2795r c2795r3 = c2795r.f753g;
                    int i2 = c2795r.f730a;
                    if (i2 <= i) {
                        if (i2 >= i) {
                            Object obj2 = c2795r.f731b;
                            if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                                return c2795r;
                            }
                            if (c2795r2 != null) {
                                if (c2795r3 != null) {
                                    if ((cls == null && (cls = ConcurrentHashMap.m670c(obj)) == null) || (m669d = ConcurrentHashMap.m669d(cls, obj, obj2)) == 0) {
                                        C2795r m641b = c2795r3.m641b(i, obj, cls);
                                        if (m641b != null) {
                                            return m641b;
                                        }
                                    } else if (m669d >= 0) {
                                        c2795r2 = c2795r3;
                                    }
                                }
                            }
                        }
                        c2795r = c2795r3;
                        continue;
                    }
                    c2795r = c2795r2;
                    continue;
                } while (c2795r != null);
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$s */
    /* loaded from: classes2.dex */
    public static final class C2796s extends C2778a implements java.util.Iterator, Enumeration, p033j$.util.Iterator {
        C2796s(C2789l[] c2789lArr, int i, int i2, int i3, ConcurrentHashMap concurrentHashMap) {
            super(c2789lArr, i, i2, i3, concurrentHashMap);
        }

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator
        public /* synthetic */ void forEachRemaining(java.util.function.Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, C3237v.m168b(consumer));
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public final Object next() {
            C2789l c2789l = this.f739b;
            if (c2789l != null) {
                Object obj = c2789l.f732c;
                this.f721j = c2789l;
                m652a();
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
    public static final class C2797t extends C2793p implements Spliterator {

        /* renamed from: i */
        long f756i;

        C2797t(C2789l[] c2789lArr, int i, int i2, int i3, long j) {
            super(c2789lArr, i, i2, i3);
            this.f756i = j;
        }

        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        public boolean mo182b(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2789l m652a = m652a();
            if (m652a == null) {
                return false;
            }
            consumer.accept(m652a.f732c);
            return true;
        }

        @Override // p033j$.util.Spliterator
        public int characteristics() {
            return 4352;
        }

        @Override // p033j$.util.Spliterator
        public long estimateSize() {
            return this.f756i;
        }

        @Override // p033j$.util.Spliterator
        public void forEachRemaining(Consumer consumer) {
            Objects.requireNonNull(consumer);
            while (true) {
                C2789l m652a = m652a();
                if (m652a == null) {
                    return;
                }
                consumer.accept(m652a.f732c);
            }
        }

        @Override // p033j$.util.Spliterator
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2838k.m605d(this);
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2838k.m604e(this, i);
        }

        @Override // p033j$.util.Spliterator
        public Spliterator trySplit() {
            int i = this.f743f;
            int i2 = this.f744g;
            int i3 = (i + i2) >>> 1;
            if (i3 <= i) {
                return null;
            }
            C2789l[] c2789lArr = this.f738a;
            int i4 = this.f745h;
            this.f744g = i3;
            long j = this.f756i >>> 1;
            this.f756i = j;
            return new C2797t(c2789lArr, i4, i3, i2, j);
        }
    }

    /* renamed from: j$.util.concurrent.ConcurrentHashMap$u */
    /* loaded from: classes2.dex */
    static final class C2798u extends AbstractC2779b implements Collection {
        C2798u(ConcurrentHashMap concurrentHashMap) {
            super(concurrentHashMap);
        }

        @Override // java.util.Collection, p033j$.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, p033j$.util.Collection
        public final boolean addAll(java.util.Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2779b, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f722a.containsValue(obj);
        }

        @Override // p033j$.util.Collection, p033j$.lang.InterfaceC2669e
        public void forEach(Consumer consumer) {
            Objects.requireNonNull(consumer);
            C2789l[] c2789lArr = this.f722a.f714a;
            if (c2789lArr == null) {
                return;
            }
            C2793p c2793p = new C2793p(c2789lArr, c2789lArr.length, 0, c2789lArr.length);
            while (true) {
                C2789l m652a = c2793p.m652a();
                if (m652a == null) {
                    return;
                }
                consumer.accept(m652a.f732c);
            }
        }

        @Override // java.lang.Iterable
        public /* synthetic */ void forEach(java.util.function.Consumer consumer) {
            forEach(C3237v.m168b(consumer));
        }

        @Override // p033j$.util.concurrent.ConcurrentHashMap.AbstractC2779b, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator iterator() {
            ConcurrentHashMap concurrentHashMap = this.f722a;
            C2789l[] c2789lArr = concurrentHashMap.f714a;
            int length = c2789lArr == null ? 0 : c2789lArr.length;
            return new C2796s(c2789lArr, length, 0, length, concurrentHashMap);
        }

        @Override // java.util.Collection, p033j$.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream parallelStream() {
            return C3181L0.m241m0(Collection.CC.$default$parallelStream(this));
        }

        @Override // java.util.Collection, p033j$.util.Collection
        public final boolean remove(Object obj) {
            C2778a c2778a;
            if (obj != null) {
                java.util.Iterator it = iterator();
                do {
                    c2778a = (C2778a) it;
                    if (!c2778a.hasNext()) {
                        return false;
                    }
                } while (!obj.equals(((C2796s) it).next()));
                c2778a.remove();
                return true;
            }
            return false;
        }

        @Override // p033j$.util.Collection
        public /* synthetic */ boolean removeIf(Predicate predicate) {
            return Collection.CC.$default$removeIf(this, predicate);
        }

        @Override // java.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            return Collection.CC.$default$removeIf(this, C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate));
        }

        @Override // java.util.Collection, java.lang.Iterable, p033j$.util.Collection, p033j$.lang.InterfaceC2669e
        public Spliterator spliterator() {
            ConcurrentHashMap concurrentHashMap = this.f722a;
            long m660m = concurrentHashMap.m660m();
            C2789l[] c2789lArr = concurrentHashMap.f714a;
            int length = c2789lArr == null ? 0 : c2789lArr.length;
            return new C2797t(c2789lArr, length, 0, length, m660m >= 0 ? m660m : 0L);
        }

        @Override // java.util.Collection, java.lang.Iterable
        public /* synthetic */ java.util.Spliterator spliterator() {
            return C3209h.m205a(spliterator());
        }

        @Override // java.util.Collection, p033j$.util.Collection
        public /* synthetic */ Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream stream() {
            return C3181L0.m241m0(Collection.CC.$default$stream(this));
        }

        @Override // p033j$.util.Collection
        public /* synthetic */ Object[] toArray(IntFunction intFunction) {
            return Collection.CC.$default$toArray(this, intFunction);
        }

        public /* synthetic */ Object[] toArray(java.util.function.IntFunction intFunction) {
            return Collection.CC.$default$toArray(this, C3185P.m236a(intFunction));
        }
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", C2791n[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        try {
            Unsafe m626c = AbstractC2805c.m626c();
            f706h = m626c;
            f707i = m626c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("sizeCtl"));
            f708j = m626c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("transferIndex"));
            f709k = m626c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("baseCount"));
            f710l = m626c.objectFieldOffset(ConcurrentHashMap.class.getDeclaredField("cellsBusy"));
            f711m = m626c.objectFieldOffset(C2780c.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
            f712n = m626c.arrayBaseOffset(C2789l[].class);
            int arrayIndexScale = m626c.arrayIndexScale(C2789l[].class);
            if (((arrayIndexScale - 1) & arrayIndexScale) != 0) {
                throw new Error("data type scale not a power of two");
            }
            f713o = 31 - Integer.numberOfLeadingZeros(arrayIndexScale);
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
        this.sizeCtl = i >= 536870912 ? 1073741824 : m658o(i + (i >>> 1) + 1);
    }

    public ConcurrentHashMap(int i, float f, int i2) {
        if (f <= BitmapDescriptorFactory.HUE_RED || i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        long j = (long) (((i < i2 ? i2 : i) / f) + 1.0d);
        this.sizeCtl = j >= 1073741824 ? 1073741824 : m658o((int) j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r1.compareAndSwapLong(r11, r3, r5, r9) == false) goto L53;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m672a(long r12, int r14) {
        /*
            r11 = this;
            j$.util.concurrent.ConcurrentHashMap$c[] r0 = r11.f716c
            if (r0 != 0) goto L14
            sun.misc.Unsafe r1 = p033j$.util.concurrent.ConcurrentHashMap.f706h
            long r3 = p033j$.util.concurrent.ConcurrentHashMap.f709k
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
            int r3 = p033j$.util.concurrent.ThreadLocalRandom.m639b()
            r2 = r2 & r3
            r4 = r0[r2]
            if (r4 == 0) goto L94
            sun.misc.Unsafe r3 = p033j$.util.concurrent.ConcurrentHashMap.f706h
            long r5 = p033j$.util.concurrent.ConcurrentHashMap.f711m
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
            long r9 = r11.m660m()
        L3b:
            if (r14 < 0) goto L93
        L3d:
            int r4 = r11.sizeCtl
            long r12 = (long) r4
            int r12 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r12 < 0) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r12 = r11.f714a
            if (r12 == 0) goto L93
            int r13 = r12.length
            r14 = 1073741824(0x40000000, float:2.0)
            if (r13 >= r14) goto L93
            int r13 = m663j(r13)
            if (r4 >= 0) goto L7b
            int r14 = r4 >>> 16
            if (r14 != r13) goto L93
            int r14 = r13 + 1
            if (r4 == r14) goto L93
            r14 = 65535(0xffff, float:9.1834E-41)
            int r13 = r13 + r14
            if (r4 == r13) goto L93
            j$.util.concurrent.ConcurrentHashMap$l[] r13 = r11.f715b
            if (r13 == 0) goto L93
            int r14 = r11.transferIndex
            if (r14 > 0) goto L6a
            goto L93
        L6a:
            sun.misc.Unsafe r0 = p033j$.util.concurrent.ConcurrentHashMap.f706h
            long r2 = p033j$.util.concurrent.ConcurrentHashMap.f707i
            int r5 = r4 + 1
            r1 = r11
            boolean r14 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r14 == 0) goto L8e
            r11.m657p(r12, r13)
            goto L8e
        L7b:
            sun.misc.Unsafe r0 = p033j$.util.concurrent.ConcurrentHashMap.f706h
            long r2 = p033j$.util.concurrent.ConcurrentHashMap.f707i
            int r13 = r13 << 16
            int r5 = r13 + 2
            r1 = r11
            boolean r13 = r0.compareAndSwapInt(r1, r2, r4, r5)
            if (r13 == 0) goto L8e
            r13 = 0
            r11.m657p(r12, r13)
        L8e:
            long r9 = r11.m660m()
            goto L3d
        L93:
            return
        L94:
            r11.m668e(r12, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.m672a(long, int):void");
    }

    /* renamed from: b */
    static final boolean m671b(C2789l[] c2789lArr, int i, C2789l c2789l, C2789l c2789l2) {
        return f706h.compareAndSwapObject(c2789lArr, (i << f713o) + f712n, (Object) null, c2789l2);
    }

    /* renamed from: c */
    static Class m670c(Object obj) {
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
    static int m669d(Class cls, Object obj, Object obj2) {
        if (obj2 == null || obj2.getClass() != cls) {
            return 0;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x009b, code lost:
        if (r24.f716c != r7) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009d, code lost:
        r1 = new p033j$.util.concurrent.ConcurrentHashMap.C2780c[r8 << 1];
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
        r24.f716c = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x001b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0101 A[SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m668e(long r25, boolean r27) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.m668e(long, boolean):void");
    }

    /* renamed from: g */
    private final C2789l[] m666g() {
        while (true) {
            C2789l[] c2789lArr = this.f714a;
            if (c2789lArr != null && c2789lArr.length != 0) {
                return c2789lArr;
            }
            int i = this.sizeCtl;
            if (i < 0) {
                Thread.yield();
            } else if (f706h.compareAndSwapInt(this, f707i, i, -1)) {
                try {
                    C2789l[] c2789lArr2 = this.f714a;
                    if (c2789lArr2 == null || c2789lArr2.length == 0) {
                        int i2 = i > 0 ? i : 16;
                        C2789l[] c2789lArr3 = new C2789l[i2];
                        this.f714a = c2789lArr3;
                        i = i2 - (i2 >>> 2);
                        c2789lArr2 = c2789lArr3;
                    }
                    this.sizeCtl = i;
                    return c2789lArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i;
                    throw th;
                }
            }
        }
    }

    /* renamed from: j */
    static final int m663j(int i) {
        return Integer.numberOfLeadingZeros(i) | LiteMode.FLAG_CHAT_SCALE;
    }

    /* renamed from: k */
    static final void m662k(C2789l[] c2789lArr, int i, C2789l c2789l) {
        f706h.putObjectVolatile(c2789lArr, (i << f713o) + f712n, c2789l);
    }

    /* renamed from: l */
    static final int m661l(int i) {
        return (i ^ (i >>> 16)) & Integer.MAX_VALUE;
    }

    /* renamed from: n */
    static final C2789l m659n(C2789l[] c2789lArr, int i) {
        return (C2789l) f706h.getObjectVolatile(c2789lArr, (i << f713o) + f712n);
    }

    /* renamed from: o */
    private static final int m658o(int i) {
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
    private final void m657p(C2789l[] c2789lArr, C2789l[] c2789lArr2) {
        C2789l[] c2789lArr3;
        int i;
        C2789l[] c2789lArr4;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        C2784g c2784g;
        C2795r c2795r;
        int i7;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = c2789lArr.length;
        int i8 = f705g;
        boolean z = true;
        int i9 = i8 > 1 ? (length >>> 3) / i8 : length;
        int i10 = i9 < 16 ? 16 : i9;
        if (c2789lArr2 == null) {
            try {
                C2789l[] c2789lArr5 = new C2789l[length << 1];
                concurrentHashMap.f715b = c2789lArr5;
                concurrentHashMap.transferIndex = length;
                c2789lArr3 = c2789lArr5;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            c2789lArr3 = c2789lArr2;
        }
        int length2 = c2789lArr3.length;
        C2784g c2784g2 = new C2784g(c2789lArr3);
        int i11 = -1;
        C2789l[] c2789lArr6 = c2789lArr;
        boolean z2 = true;
        int i12 = 0;
        int i13 = 0;
        boolean z3 = false;
        while (true) {
            if (z2) {
                int i14 = i12 - 1;
                if (i14 >= i13 || z3) {
                    i = i14;
                    c2789lArr4 = c2789lArr6;
                    i2 = i13;
                    i3 = i11;
                    z2 = false;
                } else {
                    int i15 = concurrentHashMap.transferIndex;
                    if (i15 <= 0) {
                        i12 = i11;
                    } else {
                        Unsafe unsafe = f706h;
                        long j = f708j;
                        int i16 = i15 > i10 ? i15 - i10 : 0;
                        i = i14;
                        c2789lArr4 = c2789lArr6;
                        i2 = i13;
                        i3 = i11;
                        if (unsafe.compareAndSwapInt(this, j, i15, i16)) {
                            i12 = i15 - 1;
                            i11 = i3;
                            c2789lArr6 = c2789lArr4;
                            i13 = i16;
                        }
                    }
                    z2 = false;
                }
                i11 = i3;
                c2789lArr6 = c2789lArr4;
                i13 = i2;
                i12 = i;
            } else {
                C2789l[] c2789lArr7 = c2789lArr6;
                int i17 = i13;
                int i18 = i11;
                C2795r c2795r2 = null;
                if (i12 < 0 || i12 >= length || (i4 = i12 + length) >= length2) {
                    int i19 = i10;
                    int i20 = length2;
                    C2784g c2784g3 = c2784g2;
                    if (z3) {
                        this.f715b = null;
                        this.f714a = c2789lArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    Unsafe unsafe2 = f706h;
                    long j2 = f707i;
                    int i21 = this.sizeCtl;
                    int i22 = i12;
                    if (!unsafe2.compareAndSwapInt(this, j2, i21, i21 - 1)) {
                        c2784g2 = c2784g3;
                        concurrentHashMap = this;
                        z = true;
                        i12 = i22;
                        c2789lArr6 = c2789lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    } else if (i21 - 2 != (m663j(length) << 16)) {
                        return;
                    } else {
                        c2784g2 = c2784g3;
                        i12 = length;
                        concurrentHashMap = this;
                        z = true;
                        z2 = true;
                        z3 = true;
                        c2789lArr6 = c2789lArr7;
                        i13 = i17;
                        i10 = i19;
                        length2 = i20;
                        i11 = -1;
                    }
                } else {
                    C2789l m659n = m659n(c2789lArr7, i12);
                    if (m659n == null) {
                        z2 = m671b(c2789lArr7, i12, null, c2784g2);
                    } else {
                        int i23 = m659n.f730a;
                        if (i23 == i18) {
                            z2 = z;
                        } else {
                            synchronized (m659n) {
                                if (m659n(c2789lArr7, i12) == m659n) {
                                    if (i23 >= 0) {
                                        int i24 = i23 & length;
                                        C2795r c2795r3 = m659n;
                                        for (C2795r c2795r4 = m659n.f733d; c2795r4 != null; c2795r4 = c2795r4.f733d) {
                                            int i25 = c2795r4.f730a & length;
                                            if (i25 != i24) {
                                                c2795r3 = c2795r4;
                                                i24 = i25;
                                            }
                                        }
                                        if (i24 == 0) {
                                            c2795r = null;
                                            c2795r2 = c2795r3;
                                        } else {
                                            c2795r = c2795r3;
                                        }
                                        C2789l c2789l = m659n;
                                        while (c2789l != c2795r3) {
                                            int i26 = c2789l.f730a;
                                            C2795r c2795r5 = c2795r3;
                                            Object obj = c2789l.f731b;
                                            int i27 = i10;
                                            Object obj2 = c2789l.f732c;
                                            if ((i26 & length) == 0) {
                                                i7 = length2;
                                                c2795r2 = new C2789l(i26, obj, obj2, c2795r2);
                                            } else {
                                                i7 = length2;
                                                c2795r = new C2789l(i26, obj, obj2, c2795r);
                                            }
                                            c2789l = c2789l.f733d;
                                            c2795r3 = c2795r5;
                                            i10 = i27;
                                            length2 = i7;
                                        }
                                        i5 = i10;
                                        i6 = length2;
                                        m662k(c2789lArr3, i12, c2795r2);
                                        m662k(c2789lArr3, i4, c2795r);
                                        m662k(c2789lArr7, i12, c2784g2);
                                        c2784g = c2784g2;
                                    } else {
                                        i5 = i10;
                                        i6 = length2;
                                        if (m659n instanceof C2794q) {
                                            C2794q c2794q = (C2794q) m659n;
                                            C2795r c2795r6 = null;
                                            C2795r c2795r7 = null;
                                            C2789l c2789l2 = c2794q.f749f;
                                            int i28 = 0;
                                            int i29 = 0;
                                            C2795r c2795r8 = null;
                                            while (c2789l2 != null) {
                                                C2794q c2794q2 = c2794q;
                                                int i30 = c2789l2.f730a;
                                                C2784g c2784g4 = c2784g2;
                                                C2795r c2795r9 = new C2795r(i30, c2789l2.f731b, c2789l2.f732c, null, null);
                                                if ((i30 & length) == 0) {
                                                    c2795r9.f754h = c2795r7;
                                                    if (c2795r7 == null) {
                                                        c2795r2 = c2795r9;
                                                    } else {
                                                        c2795r7.f733d = c2795r9;
                                                    }
                                                    i28++;
                                                    c2795r7 = c2795r9;
                                                } else {
                                                    c2795r9.f754h = c2795r6;
                                                    if (c2795r6 == null) {
                                                        c2795r8 = c2795r9;
                                                    } else {
                                                        c2795r6.f733d = c2795r9;
                                                    }
                                                    i29++;
                                                    c2795r6 = c2795r9;
                                                }
                                                c2789l2 = c2789l2.f733d;
                                                c2794q = c2794q2;
                                                c2784g2 = c2784g4;
                                            }
                                            C2794q c2794q3 = c2794q;
                                            C2784g c2784g5 = c2784g2;
                                            C2789l m654s = i28 <= 6 ? m654s(c2795r2) : i29 != 0 ? new C2794q(c2795r2) : c2794q3;
                                            C2789l m654s2 = i29 <= 6 ? m654s(c2795r8) : i28 != 0 ? new C2794q(c2795r8) : c2794q3;
                                            m662k(c2789lArr3, i12, m654s);
                                            m662k(c2789lArr3, i4, m654s2);
                                            c2784g = c2784g5;
                                            m662k(c2789lArr, i12, c2784g);
                                            c2789lArr7 = c2789lArr;
                                        }
                                    }
                                    z2 = true;
                                } else {
                                    i5 = i10;
                                    i6 = length2;
                                }
                                c2784g = c2784g2;
                            }
                            i11 = -1;
                            c2784g2 = c2784g;
                            c2789lArr6 = c2789lArr7;
                            i13 = i17;
                            i10 = i5;
                            length2 = i6;
                            z = true;
                            concurrentHashMap = this;
                        }
                    }
                    i11 = i18;
                    c2789lArr6 = c2789lArr7;
                    i13 = i17;
                }
            }
        }
    }

    /* renamed from: q */
    private final void m656q(C2789l[] c2789lArr, int i) {
        int length = c2789lArr.length;
        if (length < 64) {
            m655r(length << 1);
            return;
        }
        C2789l m659n = m659n(c2789lArr, i);
        if (m659n == null || m659n.f730a < 0) {
            return;
        }
        synchronized (m659n) {
            if (m659n(c2789lArr, i) == m659n) {
                C2795r c2795r = null;
                C2789l c2789l = m659n;
                C2795r c2795r2 = null;
                while (c2789l != null) {
                    C2795r c2795r3 = new C2795r(c2789l.f730a, c2789l.f731b, c2789l.f732c, null, null);
                    c2795r3.f754h = c2795r2;
                    if (c2795r2 == null) {
                        c2795r = c2795r3;
                    } else {
                        c2795r2.f733d = c2795r3;
                    }
                    c2789l = c2789l.f733d;
                    c2795r2 = c2795r3;
                }
                m662k(c2789lArr, i, new C2794q(c2795r));
            }
        }
    }

    /* renamed from: r */
    private final void m655r(int i) {
        int length;
        C2789l[] c2789lArr;
        int m658o = i >= 536870912 ? 1073741824 : m658o(i + (i >>> 1) + 1);
        while (true) {
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                return;
            }
            C2789l[] c2789lArr2 = this.f714a;
            if (c2789lArr2 == null || (length = c2789lArr2.length) == 0) {
                int i3 = i2 > m658o ? i2 : m658o;
                if (f706h.compareAndSwapInt(this, f707i, i2, -1)) {
                    try {
                        if (this.f714a == c2789lArr2) {
                            this.f714a = new C2789l[i3];
                            i2 = i3 - (i3 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i2;
                    }
                } else {
                    continue;
                }
            } else if (m658o <= i2 || length >= 1073741824) {
                return;
            } else {
                if (c2789lArr2 == this.f714a) {
                    int m663j = m663j(length);
                    if (i2 < 0) {
                        if ((i2 >>> 16) != m663j || i2 == m663j + 1 || i2 == m663j + RtpPacket.MAX_SEQUENCE_NUMBER || (c2789lArr = this.f715b) == null || this.transferIndex <= 0) {
                            return;
                        }
                        if (f706h.compareAndSwapInt(this, f707i, i2, i2 + 1)) {
                            m657p(c2789lArr2, c2789lArr);
                        }
                    } else if (f706h.compareAndSwapInt(this, f707i, i2, (m663j << 16) + 2)) {
                        m657p(c2789lArr2, null);
                    }
                } else {
                    continue;
                }
            }
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        long j;
        int m658o;
        boolean z;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j2 = 0;
        long j3 = 0;
        C2789l c2789l = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j3++;
            c2789l = new C2789l(m661l(readObject.hashCode()), readObject, readObject2, c2789l);
        }
        if (j3 == 0) {
            this.sizeCtl = 0;
            return;
        }
        boolean z2 = true;
        if (j3 >= 536870912) {
            m658o = 1073741824;
        } else {
            int i = (int) j3;
            m658o = m658o(i + (i >>> 1) + 1);
        }
        C2789l[] c2789lArr = new C2789l[m658o];
        int i2 = m658o - 1;
        while (c2789l != null) {
            C2789l c2789l2 = c2789l.f733d;
            int i3 = c2789l.f730a;
            int i4 = i3 & i2;
            C2789l m659n = m659n(c2789lArr, i4);
            if (m659n == null) {
                z = z2;
            } else {
                Object obj2 = c2789l.f731b;
                if (m659n.f730a >= 0) {
                    int i5 = 0;
                    for (C2789l c2789l3 = m659n; c2789l3 != null; c2789l3 = c2789l3.f733d) {
                        if (c2789l3.f730a == i3 && ((obj = c2789l3.f731b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i5++;
                    }
                    z = true;
                    if (z && i5 >= 8) {
                        j2++;
                        c2789l.f733d = m659n;
                        C2789l c2789l4 = c2789l;
                        C2795r c2795r = null;
                        C2795r c2795r2 = null;
                        while (c2789l4 != null) {
                            long j4 = j2;
                            C2795r c2795r3 = new C2795r(c2789l4.f730a, c2789l4.f731b, c2789l4.f732c, null, null);
                            c2795r3.f754h = c2795r2;
                            if (c2795r2 == null) {
                                c2795r = c2795r3;
                            } else {
                                c2795r2.f733d = c2795r3;
                            }
                            c2789l4 = c2789l4.f733d;
                            c2795r2 = c2795r3;
                            j2 = j4;
                        }
                        m662k(c2789lArr, i4, new C2794q(c2795r));
                    }
                } else if (((C2794q) m659n).m647f(i3, obj2, c2789l.f732c) == null) {
                    j2 += j;
                }
                z = false;
            }
            if (z) {
                j2++;
                c2789l.f733d = m659n;
                m662k(c2789lArr, i4, c2789l);
            }
            j = 1;
            c2789l = c2789l2;
            z2 = true;
        }
        this.f714a = c2789lArr;
        this.sizeCtl = m658o - (m658o >>> 2);
        this.baseCount = j2;
    }

    /* renamed from: s */
    static C2789l m654s(C2789l c2789l) {
        C2789l c2789l2 = null;
        C2789l c2789l3 = null;
        while (c2789l != null) {
            C2789l c2789l4 = new C2789l(c2789l.f730a, c2789l.f731b, c2789l.f732c, null);
            if (c2789l3 == null) {
                c2789l2 = c2789l4;
            } else {
                c2789l3.f733d = c2789l4;
            }
            c2789l = c2789l.f733d;
            c2789l3 = c2789l4;
        }
        return c2789l2;
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
        C2791n[] c2791nArr = new C2791n[16];
        for (int i5 = 0; i5 < 16; i5++) {
            c2791nArr[i5] = new C2791n(0.75f);
        }
        objectOutputStream.putFields().put("segments", c2791nArr);
        objectOutputStream.putFields().put("segmentShift", i3);
        objectOutputStream.putFields().put("segmentMask", i4);
        objectOutputStream.writeFields();
        C2789l[] c2789lArr = this.f714a;
        if (c2789lArr != null) {
            C2793p c2793p = new C2793p(c2789lArr, c2789lArr.length, 0, c2789lArr.length);
            while (true) {
                C2789l m652a = c2793p.m652a();
                if (m652a == null) {
                    break;
                }
                objectOutputStream.writeObject(m652a.f731b);
                objectOutputStream.writeObject(m652a.f732c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public void clear() {
        C2789l[] c2789lArr = this.f714a;
        int i = 0;
        long j = 0;
        while (c2789lArr != null && i < c2789lArr.length) {
            C2789l m659n = m659n(c2789lArr, i);
            if (m659n == null) {
                i++;
            } else {
                int i2 = m659n.f730a;
                if (i2 == -1) {
                    c2789lArr = m667f(c2789lArr, m659n);
                    i = 0;
                } else {
                    synchronized (m659n) {
                        if (m659n(c2789lArr, i) == m659n) {
                            for (C2789l c2789l = i2 >= 0 ? m659n : m659n instanceof C2794q ? ((C2794q) m659n).f749f : null; c2789l != null; c2789l = c2789l.f733d) {
                                j--;
                            }
                            m662k(c2789lArr, i, null);
                            i++;
                        }
                    }
                }
            }
        }
        if (j != 0) {
            m672a(j, -1);
        }
    }

    @Override // p033j$.util.Map
    public Object compute(Object obj, BiFunction biFunction) {
        int i;
        C2789l c2789l;
        Object obj2;
        Object obj3;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m661l = m661l(obj.hashCode());
        C2789l[] c2789lArr = this.f714a;
        int i2 = 0;
        Object obj4 = null;
        int i3 = 0;
        while (true) {
            if (c2789lArr != null) {
                int length = c2789lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m661l;
                    C2789l m659n = m659n(c2789lArr, i4);
                    if (m659n == null) {
                        C2790m c2790m = new C2790m();
                        synchronized (c2790m) {
                            if (m671b(c2789lArr, i4, null, c2790m)) {
                                Object apply = biFunction.apply(obj, null);
                                if (apply != null) {
                                    c2789l = new C2789l(m661l, obj, apply, null);
                                    i = 1;
                                } else {
                                    i = i2;
                                    c2789l = null;
                                }
                                m662k(c2789lArr, i4, c2789l);
                                i2 = i;
                                obj4 = apply;
                                i3 = 1;
                            }
                        }
                        if (i3 != 0) {
                            break;
                        }
                    } else {
                        int i5 = m659n.f730a;
                        if (i5 == -1) {
                            c2789lArr = m667f(c2789lArr, m659n);
                        } else {
                            synchronized (m659n) {
                                if (m659n(c2789lArr, i4) == m659n) {
                                    if (i5 >= 0) {
                                        C2789l c2789l2 = null;
                                        C2789l c2789l3 = m659n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2789l3.f730a != m661l || ((obj3 = c2789l3.f731b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2789l c2789l4 = c2789l3.f733d;
                                                if (c2789l4 == null) {
                                                    Object apply2 = biFunction.apply(obj, null);
                                                    if (apply2 != null) {
                                                        c2789l3.f733d = new C2789l(m661l, obj, apply2, null);
                                                        i2 = 1;
                                                    }
                                                    obj2 = apply2;
                                                } else {
                                                    i6++;
                                                    c2789l2 = c2789l3;
                                                    c2789l3 = c2789l4;
                                                }
                                            }
                                        }
                                        obj2 = biFunction.apply(obj, c2789l3.f732c);
                                        if (obj2 != null) {
                                            c2789l3.f732c = obj2;
                                        } else {
                                            C2789l c2789l5 = c2789l3.f733d;
                                            if (c2789l2 != null) {
                                                c2789l2.f733d = c2789l5;
                                            } else {
                                                m662k(c2789lArr, i4, c2789l5);
                                            }
                                            i2 = -1;
                                        }
                                        i3 = i6;
                                        obj4 = obj2;
                                    } else if (m659n instanceof C2794q) {
                                        C2794q c2794q = (C2794q) m659n;
                                        C2795r c2795r = c2794q.f748e;
                                        C2795r m641b = c2795r != null ? c2795r.m641b(m661l, obj, null) : null;
                                        Object apply3 = biFunction.apply(obj, m641b == null ? null : m641b.f732c);
                                        if (apply3 != null) {
                                            if (m641b != null) {
                                                m641b.f732c = apply3;
                                            } else {
                                                c2794q.m647f(m661l, obj, apply3);
                                                i2 = 1;
                                            }
                                        } else if (m641b != null) {
                                            if (c2794q.m646g(m641b)) {
                                                m662k(c2789lArr, i4, m654s(c2794q.f749f));
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
                                    m656q(c2789lArr, i4);
                                }
                            }
                        }
                    }
                }
            }
            c2789lArr = m666g();
        }
        if (i2 != 0) {
            m672a(i2, i3);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object compute(Object obj, java.util.function.BiFunction biFunction) {
        return compute(obj, C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
    }

    @Override // p033j$.util.concurrent.InterfaceC2804b, p033j$.util.Map
    public Object computeIfAbsent(Object obj, Function function) {
        int i;
        Object apply;
        C2795r m641b;
        Object obj2;
        Object obj3;
        if (obj == null || function == null) {
            throw null;
        }
        int m661l = m661l(obj.hashCode());
        C2789l[] c2789lArr = this.f714a;
        Object obj4 = null;
        int i2 = 0;
        while (true) {
            if (c2789lArr != null) {
                int length = c2789lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m661l;
                    C2789l m659n = m659n(c2789lArr, i3);
                    boolean z = true;
                    if (m659n == null) {
                        C2790m c2790m = new C2790m();
                        synchronized (c2790m) {
                            if (m671b(c2789lArr, i3, null, c2790m)) {
                                Object apply2 = function.apply(obj);
                                m662k(c2789lArr, i3, apply2 != null ? new C2789l(m661l, obj, apply2, null) : null);
                                obj4 = apply2;
                                i2 = 1;
                            }
                        }
                        if (i2 != 0) {
                            break;
                        }
                    } else {
                        int i4 = m659n.f730a;
                        if (i4 == -1) {
                            c2789lArr = m667f(c2789lArr, m659n);
                        } else {
                            synchronized (m659n) {
                                if (m659n(c2789lArr, i3) == m659n) {
                                    if (i4 >= 0) {
                                        C2789l c2789l = m659n;
                                        i = 1;
                                        while (true) {
                                            if (c2789l.f730a != m661l || ((obj3 = c2789l.f731b) != obj && (obj3 == null || !obj.equals(obj3)))) {
                                                C2789l c2789l2 = c2789l.f733d;
                                                if (c2789l2 == null) {
                                                    apply = function.apply(obj);
                                                    if (apply != null) {
                                                        c2789l.f733d = new C2789l(m661l, obj, apply, null);
                                                    }
                                                } else {
                                                    i++;
                                                    c2789l = c2789l2;
                                                }
                                            }
                                        }
                                        obj2 = c2789l.f732c;
                                        z = false;
                                        int i5 = i;
                                        obj4 = obj2;
                                        i2 = i5;
                                    } else if (m659n instanceof C2794q) {
                                        i = 2;
                                        C2794q c2794q = (C2794q) m659n;
                                        C2795r c2795r = c2794q.f748e;
                                        if (c2795r == null || (m641b = c2795r.m641b(m661l, obj, null)) == null) {
                                            apply = function.apply(obj);
                                            if (apply != null) {
                                                c2794q.m647f(m661l, obj, apply);
                                                i2 = i;
                                                obj4 = apply;
                                            }
                                            z = false;
                                            i2 = i;
                                            obj4 = apply;
                                        } else {
                                            obj2 = m641b.f732c;
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
                                    m656q(c2789lArr, i3);
                                }
                                if (!z) {
                                    return obj4;
                                }
                            }
                        }
                    }
                }
            }
            c2789lArr = m666g();
        }
        if (obj4 != null) {
            m672a(1L, i2);
        }
        return obj4;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
        return computeIfAbsent(obj, C$r8$wrapper$java$util$function$Function$VWRP.convert(function));
    }

    @Override // p033j$.util.Map
    public Object computeIfPresent(Object obj, BiFunction biFunction) {
        C2795r m641b;
        C2789l m654s;
        Object obj2;
        if (obj == null || biFunction == null) {
            throw null;
        }
        int m661l = m661l(obj.hashCode());
        C2789l[] c2789lArr = this.f714a;
        int i = 0;
        Object obj3 = null;
        int i2 = 0;
        while (true) {
            if (c2789lArr != null) {
                int length = c2789lArr.length;
                if (length != 0) {
                    int i3 = (length - 1) & m661l;
                    C2789l m659n = m659n(c2789lArr, i3);
                    if (m659n == null) {
                        break;
                    }
                    int i4 = m659n.f730a;
                    if (i4 == -1) {
                        c2789lArr = m667f(c2789lArr, m659n);
                    } else {
                        synchronized (m659n) {
                            if (m659n(c2789lArr, i3) == m659n) {
                                if (i4 >= 0) {
                                    i2 = 1;
                                    C2789l c2789l = null;
                                    C2789l c2789l2 = m659n;
                                    while (true) {
                                        if (c2789l2.f730a != m661l || ((obj2 = c2789l2.f731b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                                            C2789l c2789l3 = c2789l2.f733d;
                                            if (c2789l3 == null) {
                                                break;
                                            }
                                            i2++;
                                            c2789l = c2789l2;
                                            c2789l2 = c2789l3;
                                        }
                                    }
                                    obj3 = biFunction.apply(obj, c2789l2.f732c);
                                    if (obj3 != null) {
                                        c2789l2.f732c = obj3;
                                    } else {
                                        m654s = c2789l2.f733d;
                                        if (c2789l != null) {
                                            c2789l.f733d = m654s;
                                            i = -1;
                                        }
                                        m662k(c2789lArr, i3, m654s);
                                        i = -1;
                                    }
                                } else if (m659n instanceof C2794q) {
                                    i2 = 2;
                                    C2794q c2794q = (C2794q) m659n;
                                    C2795r c2795r = c2794q.f748e;
                                    if (c2795r != null && (m641b = c2795r.m641b(m661l, obj, null)) != null) {
                                        obj3 = biFunction.apply(obj, m641b.f732c);
                                        if (obj3 != null) {
                                            m641b.f732c = obj3;
                                        } else {
                                            if (c2794q.m646g(m641b)) {
                                                m654s = m654s(c2794q.f749f);
                                                m662k(c2789lArr, i3, m654s);
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
            c2789lArr = m666g();
        }
        if (i != 0) {
            m672a(i, i2);
        }
        return obj3;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object computeIfPresent(Object obj, java.util.function.BiFunction biFunction) {
        return computeIfPresent(obj, C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public boolean containsValue(Object obj) {
        Objects.requireNonNull(obj);
        C2789l[] c2789lArr = this.f714a;
        if (c2789lArr != null) {
            C2793p c2793p = new C2793p(c2789lArr, c2789lArr.length, 0, c2789lArr.length);
            while (true) {
                C2789l m652a = c2793p.m652a();
                if (m652a == null) {
                    break;
                }
                Object obj2 = m652a.f732c;
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
        C2782e c2782e = this.f719f;
        if (c2782e != null) {
            return c2782e;
        }
        C2782e c2782e2 = new C2782e(this);
        this.f719f = c2782e2;
        return c2782e2;
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public boolean equals(Object obj) {
        V value;
        V v;
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                C2789l[] c2789lArr = this.f714a;
                int length = c2789lArr == null ? 0 : c2789lArr.length;
                C2793p c2793p = new C2793p(c2789lArr, length, 0, length);
                while (true) {
                    C2789l m652a = c2793p.m652a();
                    if (m652a == null) {
                        for (Map.Entry<K, V> entry : map.entrySet()) {
                            K key = entry.getKey();
                            if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                                return false;
                            }
                        }
                        return true;
                    }
                    Object obj2 = m652a.f732c;
                    Object obj3 = map.get(m652a.f731b);
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
    final C2789l[] m667f(C2789l[] c2789lArr, C2789l c2789l) {
        C2789l[] c2789lArr2;
        int i;
        if (!(c2789l instanceof C2784g) || (c2789lArr2 = ((C2784g) c2789l).f725e) == null) {
            return this.f714a;
        }
        int m663j = m663j(c2789lArr.length);
        while (true) {
            if (c2789lArr2 != this.f715b || this.f714a != c2789lArr || (i = this.sizeCtl) >= 0 || (i >>> 16) != m663j || i == m663j + 1 || i == RtpPacket.MAX_SEQUENCE_NUMBER + m663j || this.transferIndex <= 0) {
                break;
            } else if (f706h.compareAndSwapInt(this, f707i, i, i + 1)) {
                m657p(c2789lArr, c2789lArr2);
                break;
            }
        }
        return c2789lArr2;
    }

    @Override // p033j$.util.concurrent.InterfaceC2804b, p033j$.util.Map
    public void forEach(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2789l[] c2789lArr = this.f714a;
        if (c2789lArr == null) {
            return;
        }
        C2793p c2793p = new C2793p(c2789lArr, c2789lArr.length, 0, c2789lArr.length);
        while (true) {
            C2789l m652a = c2793p.m652a();
            if (m652a == null) {
                return;
            }
            biConsumer.accept(m652a.f731b, m652a.f732c);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void forEach(java.util.function.BiConsumer biConsumer) {
        forEach(C3227q.m178a(biConsumer));
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
        return (V) r1.f732c;
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
            int r0 = m661l(r0)
            j$.util.concurrent.ConcurrentHashMap$l[] r1 = r4.f714a
            r2 = 0
            if (r1 == 0) goto L4e
            int r3 = r1.length
            if (r3 <= 0) goto L4e
            int r3 = r3 + (-1)
            r3 = r3 & r0
            j$.util.concurrent.ConcurrentHashMap$l r1 = m659n(r1, r3)
            if (r1 == 0) goto L4e
            int r3 = r1.f730a
            if (r3 != r0) goto L2c
            java.lang.Object r3 = r1.f731b
            if (r3 == r5) goto L29
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L29:
            java.lang.Object r5 = r1.f732c
            return r5
        L2c:
            if (r3 >= 0) goto L37
            j$.util.concurrent.ConcurrentHashMap$l r5 = r1.mo642a(r0, r5)
            if (r5 == 0) goto L36
            java.lang.Object r2 = r5.f732c
        L36:
            return r2
        L37:
            j$.util.concurrent.ConcurrentHashMap$l r1 = r1.f733d
            if (r1 == 0) goto L4e
            int r3 = r1.f730a
            if (r3 != r0) goto L37
            java.lang.Object r3 = r1.f731b
            if (r3 == r5) goto L4b
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L4b:
            java.lang.Object r5 = r1.f732c
            return r5
        L4e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p033j$.util.concurrent.InterfaceC2804b, p033j$.util.Map
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
    final java.lang.Object m665h(java.lang.Object r9, java.lang.Object r10, boolean r11) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L98
            if (r10 == 0) goto L98
            int r1 = r9.hashCode()
            int r1 = m661l(r1)
            r2 = 0
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.f714a
        L10:
            if (r3 == 0) goto L92
            int r4 = r3.length
            if (r4 != 0) goto L17
            goto L92
        L17:
            int r4 = r4 + (-1)
            r4 = r4 & r1
            j$.util.concurrent.ConcurrentHashMap$l r5 = m659n(r3, r4)
            if (r5 != 0) goto L2c
            j$.util.concurrent.ConcurrentHashMap$l r5 = new j$.util.concurrent.ConcurrentHashMap$l
            r5.<init>(r1, r9, r10, r0)
            boolean r4 = m671b(r3, r4, r0, r5)
            if (r4 == 0) goto L10
            goto L89
        L2c:
            int r6 = r5.f730a
            r7 = -1
            if (r6 != r7) goto L36
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m667f(r3, r5)
            goto L10
        L36:
            monitor-enter(r5)
            j$.util.concurrent.ConcurrentHashMap$l r7 = m659n(r3, r4)     // Catch: java.lang.Throwable -> L8f
            if (r7 != r5) goto L7b
            if (r6 < 0) goto L68
            r2 = 1
            r6 = r5
        L41:
            int r7 = r6.f730a     // Catch: java.lang.Throwable -> L8f
            if (r7 != r1) goto L58
            java.lang.Object r7 = r6.f731b     // Catch: java.lang.Throwable -> L8f
            if (r7 == r9) goto L51
            if (r7 == 0) goto L58
            boolean r7 = r9.equals(r7)     // Catch: java.lang.Throwable -> L8f
            if (r7 == 0) goto L58
        L51:
            java.lang.Object r7 = r6.f732c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
        L55:
            r6.f732c = r10     // Catch: java.lang.Throwable -> L8f
            goto L7c
        L58:
            j$.util.concurrent.ConcurrentHashMap$l r7 = r6.f733d     // Catch: java.lang.Throwable -> L8f
            if (r7 != 0) goto L64
            j$.util.concurrent.ConcurrentHashMap$l r7 = new j$.util.concurrent.ConcurrentHashMap$l     // Catch: java.lang.Throwable -> L8f
            r7.<init>(r1, r9, r10, r0)     // Catch: java.lang.Throwable -> L8f
            r6.f733d = r7     // Catch: java.lang.Throwable -> L8f
            goto L7b
        L64:
            int r2 = r2 + 1
            r6 = r7
            goto L41
        L68:
            boolean r6 = r5 instanceof p033j$.util.concurrent.ConcurrentHashMap.C2794q     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            r2 = 2
            r6 = r5
            j$.util.concurrent.ConcurrentHashMap$q r6 = (p033j$.util.concurrent.ConcurrentHashMap.C2794q) r6     // Catch: java.lang.Throwable -> L8f
            j$.util.concurrent.ConcurrentHashMap$r r6 = r6.m647f(r1, r9, r10)     // Catch: java.lang.Throwable -> L8f
            if (r6 == 0) goto L7b
            java.lang.Object r7 = r6.f732c     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L7c
            goto L55
        L7b:
            r7 = r0
        L7c:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            if (r2 == 0) goto L10
            r9 = 8
            if (r2 < r9) goto L86
            r8.m656q(r3, r4)
        L86:
            if (r7 == 0) goto L89
            return r7
        L89:
            r9 = 1
            r8.m672a(r9, r2)
            return r0
        L8f:
            r9 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L8f
            throw r9
        L92:
            j$.util.concurrent.ConcurrentHashMap$l[] r3 = r8.m666g()
            goto L10
        L98:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.m665h(java.lang.Object, java.lang.Object, boolean):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public int hashCode() {
        C2789l[] c2789lArr = this.f714a;
        int i = 0;
        if (c2789lArr != null) {
            C2793p c2793p = new C2793p(c2789lArr, c2789lArr.length, 0, c2789lArr.length);
            while (true) {
                C2789l m652a = c2793p.m652a();
                if (m652a == null) {
                    break;
                }
                i += m652a.f732c.hashCode() ^ m652a.f731b.hashCode();
            }
        }
        return i;
    }

    /* renamed from: i */
    final Object m664i(Object obj, Object obj2, Object obj3) {
        int length;
        int i;
        C2789l m659n;
        Object obj4;
        C2795r m641b;
        C2789l m654s;
        Object obj5;
        int m661l = m661l(obj.hashCode());
        C2789l[] c2789lArr = this.f714a;
        while (true) {
            if (c2789lArr == null || (length = c2789lArr.length) == 0 || (m659n = m659n(c2789lArr, (i = (length - 1) & m661l))) == null) {
                break;
            }
            int i2 = m659n.f730a;
            if (i2 == -1) {
                c2789lArr = m667f(c2789lArr, m659n);
            } else {
                boolean z = false;
                synchronized (m659n) {
                    if (m659n(c2789lArr, i) == m659n) {
                        if (i2 >= 0) {
                            C2789l c2789l = null;
                            C2789l c2789l2 = m659n;
                            while (true) {
                                if (c2789l2.f730a != m661l || ((obj5 = c2789l2.f731b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                    C2789l c2789l3 = c2789l2.f733d;
                                    if (c2789l3 == null) {
                                        break;
                                    }
                                    c2789l = c2789l2;
                                    c2789l2 = c2789l3;
                                }
                            }
                            obj4 = c2789l2.f732c;
                            if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                if (obj2 != null) {
                                    c2789l2.f732c = obj2;
                                } else if (c2789l != null) {
                                    c2789l.f733d = c2789l2.f733d;
                                } else {
                                    m654s = c2789l2.f733d;
                                    m662k(c2789lArr, i, m654s);
                                }
                                z = true;
                            }
                            obj4 = null;
                            z = true;
                        } else if (m659n instanceof C2794q) {
                            C2794q c2794q = (C2794q) m659n;
                            C2795r c2795r = c2794q.f748e;
                            if (c2795r != null && (m641b = c2795r.m641b(m661l, obj, null)) != null) {
                                obj4 = m641b.f732c;
                                if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                    if (obj2 != null) {
                                        m641b.f732c = obj2;
                                    } else if (c2794q.m646g(m641b)) {
                                        m654s = m654s(c2794q.f749f);
                                        m662k(c2789lArr, i, m654s);
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
                            m672a(-1L, -1);
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
        return m660m() <= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public Set<K> keySet() {
        C2786i c2786i = this.f717d;
        if (c2786i != null) {
            return c2786i;
        }
        C2786i c2786i2 = new C2786i(this, null);
        this.f717d = c2786i2;
        return c2786i2;
    }

    /* renamed from: m */
    final long m660m() {
        C2780c[] c2780cArr = this.f716c;
        long j = this.baseCount;
        if (c2780cArr != null) {
            for (C2780c c2780c : c2780cArr) {
                if (c2780c != null) {
                    j += c2780c.value;
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
        int m661l = m661l(obj.hashCode());
        C2789l[] c2789lArr = this.f714a;
        int i2 = 0;
        Object obj6 = null;
        int i3 = 0;
        while (true) {
            if (c2789lArr != null) {
                int length = c2789lArr.length;
                if (length != 0) {
                    int i4 = (length - 1) & m661l;
                    C2789l m659n = m659n(c2789lArr, i4);
                    i = 1;
                    if (m659n != null) {
                        int i5 = m659n.f730a;
                        if (i5 == -1) {
                            c2789lArr = m667f(c2789lArr, m659n);
                        } else {
                            synchronized (m659n) {
                                if (m659n(c2789lArr, i4) == m659n) {
                                    if (i5 >= 0) {
                                        C2789l c2789l = null;
                                        C2789l c2789l2 = m659n;
                                        int i6 = 1;
                                        while (true) {
                                            if (c2789l2.f730a != m661l || ((obj4 = c2789l2.f731b) != obj && (obj4 == null || !obj.equals(obj4)))) {
                                                C2789l c2789l3 = c2789l2.f733d;
                                                if (c2789l3 == null) {
                                                    c2789l2.f733d = new C2789l(m661l, obj, obj5, null);
                                                    obj3 = obj5;
                                                    break;
                                                }
                                                i6++;
                                                c2789l = c2789l2;
                                                c2789l2 = c2789l3;
                                            }
                                        }
                                        Object apply = biFunction.apply(c2789l2.f732c, obj5);
                                        if (apply != null) {
                                            c2789l2.f732c = apply;
                                        } else {
                                            C2789l c2789l4 = c2789l2.f733d;
                                            if (c2789l != null) {
                                                c2789l.f733d = c2789l4;
                                            } else {
                                                m662k(c2789lArr, i4, c2789l4);
                                            }
                                            i2 = -1;
                                        }
                                        i = i2;
                                        obj3 = apply;
                                        i3 = i6;
                                        obj6 = obj3;
                                        i2 = i;
                                    } else if (m659n instanceof C2794q) {
                                        i3 = 2;
                                        C2794q c2794q = (C2794q) m659n;
                                        C2795r c2795r = c2794q.f748e;
                                        C2795r m641b = c2795r == null ? null : c2795r.m641b(m661l, obj, null);
                                        Object apply2 = m641b == null ? obj5 : biFunction.apply(m641b.f732c, obj5);
                                        if (apply2 != null) {
                                            if (m641b != null) {
                                                m641b.f732c = apply2;
                                            } else {
                                                c2794q.m647f(m661l, obj, apply2);
                                                i2 = 1;
                                            }
                                        } else if (m641b != null) {
                                            if (c2794q.m646g(m641b)) {
                                                m662k(c2789lArr, i4, m654s(c2794q.f749f));
                                            }
                                            i2 = -1;
                                        }
                                        obj6 = apply2;
                                    }
                                }
                            }
                            if (i3 != 0) {
                                if (i3 >= 8) {
                                    m656q(c2789lArr, i4);
                                }
                                i = i2;
                                obj5 = obj6;
                            }
                        }
                    } else if (m671b(c2789lArr, i4, null, new C2789l(m661l, obj, obj5, null))) {
                        break;
                    }
                }
            }
            c2789lArr = m666g();
        }
        if (i != 0) {
            m672a(i, i3);
        }
        return obj5;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ Object merge(Object obj, Object obj2, java.util.function.BiFunction biFunction) {
        return merge(obj, obj2, C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public V put(K k, V v) {
        return (V) m665h(k, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m655r(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            m665h(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p033j$.util.Map
    public V putIfAbsent(K k, V v) {
        return (V) m665h(k, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public V remove(Object obj) {
        return (V) m664i(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p033j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        Objects.requireNonNull(obj);
        return (obj2 == null || m664i(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p033j$.util.Map
    public Object replace(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw null;
        }
        return m664i(obj, obj2, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, p033j$.util.Map
    public boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return m664i(obj, obj3, obj2) != null;
    }

    @Override // p033j$.util.Map
    public void replaceAll(BiFunction biFunction) {
        Objects.requireNonNull(biFunction);
        C2789l[] c2789lArr = this.f714a;
        if (c2789lArr == null) {
            return;
        }
        C2793p c2793p = new C2793p(c2789lArr, c2789lArr.length, 0, c2789lArr.length);
        while (true) {
            C2789l m652a = c2793p.m652a();
            if (m652a == null) {
                return;
            }
            Object obj = m652a.f732c;
            Object obj2 = m652a.f731b;
            do {
                Object apply = biFunction.apply(obj2, obj);
                Objects.requireNonNull(apply);
                if (m664i(obj2, apply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public /* synthetic */ void replaceAll(java.util.function.BiFunction biFunction) {
        replaceAll(C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
    }

    @Override // java.util.AbstractMap, java.util.Map, p033j$.util.Map
    public int size() {
        long m660m = m660m();
        if (m660m < 0) {
            return 0;
        }
        if (m660m > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) m660m;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        C2789l[] c2789lArr = this.f714a;
        int length = c2789lArr == null ? 0 : c2789lArr.length;
        C2793p c2793p = new C2793p(c2789lArr, length, 0, length);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        C2789l m652a = c2793p.m652a();
        if (m652a != null) {
            while (true) {
                Object obj = m652a.f731b;
                Object obj2 = m652a.f732c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                m652a = c2793p.m652a();
                if (m652a == null) {
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
    public java.util.Collection<V> values() {
        C2798u c2798u = this.f718e;
        if (c2798u != null) {
            return c2798u;
        }
        C2798u c2798u2 = new C2798u(this);
        this.f718e = c2798u2;
        return c2798u2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.util.concurrent.ConcurrentHashMap$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC2779b implements java.util.Collection, Serializable {

        /* renamed from: a */
        final ConcurrentHashMap f722a;

        AbstractC2779b(ConcurrentHashMap concurrentHashMap) {
            this.f722a = concurrentHashMap;
        }

        @Override // java.util.Collection
        public final void clear() {
            this.f722a.clear();
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
            throw new UnsupportedOperationException("Method not decompiled: p033j$.util.concurrent.ConcurrentHashMap.AbstractC2779b.containsAll(java.util.Collection):boolean");
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return this.f722a.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public abstract java.util.Iterator iterator();

        @Override // java.util.Collection
        public final boolean removeAll(java.util.Collection collection) {
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
        public final boolean retainAll(java.util.Collection collection) {
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
            return this.f722a.size();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            long m660m = this.f722a.m660m();
            if (m660m < 0) {
                m660m = 0;
            }
            if (m660m <= 2147483639) {
                int i = (int) m660m;
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
            long m660m = this.f722a.m660m();
            if (m660m < 0) {
                m660m = 0;
            }
            if (m660m <= 2147483639) {
                int i = (int) m660m;
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
