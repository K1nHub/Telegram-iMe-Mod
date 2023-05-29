package p034j$.util.concurrent;

import java.io.ObjectStreamField;
import java.security.AccessController;
import java.security.SecureRandom;
import java.util.Comparator;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.stream.AbstractC2969o1;
import p034j$.wrappers.C$r8$wrapper$java$util$stream$IntStream$WRP;
import p034j$.wrappers.C3069L0;
import p034j$.wrappers.C3073N0;
/* renamed from: j$.util.concurrent.ThreadLocalRandom */
/* loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {

    /* renamed from: d */
    private static final AtomicInteger f625d = new AtomicInteger();

    /* renamed from: e */
    private static final AtomicLong f626e;

    /* renamed from: f */
    private static final ThreadLocal f627f;

    /* renamed from: g */
    private static final ThreadLocal f628g;

    /* renamed from: a */
    long f629a;

    /* renamed from: b */
    int f630b;

    /* renamed from: c */
    boolean f631c = true;

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$a */
    /* loaded from: classes2.dex */
    class C2683a extends ThreadLocal<ThreadLocalRandom> {
        C2683a() {
        }

        @Override // java.lang.ThreadLocal
        protected ThreadLocalRandom initialValue() {
            return new ThreadLocalRandom(null);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$b */
    /* loaded from: classes2.dex */
    static final class C2684b implements InterfaceC2732s.InterfaceC2733a {

        /* renamed from: a */
        long f632a;

        /* renamed from: b */
        final long f633b;

        /* renamed from: c */
        final double f634c;

        /* renamed from: d */
        final double f635d;

        C2684b(long j, long j2, double d, double d2) {
            this.f632a = j;
            this.f633b = j2;
            this.f634c = d;
            this.f635d = d2;
        }

        @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
        /* renamed from: a */
        public C2684b trySplit() {
            long j = this.f632a;
            long j2 = (this.f633b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f632a = j2;
            return new C2684b(j, j2, this.f634c, this.f635d);
        }

        @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC2732s
        /* renamed from: b */
        public /* synthetic */ boolean mo113b(Consumer consumer) {
            return AbstractC2659a.m601j(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2732s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC3039t
        /* renamed from: e */
        public void forEachRemaining(InterfaceC2699f interfaceC2699f) {
            Objects.requireNonNull(interfaceC2699f);
            long j = this.f632a;
            long j2 = this.f633b;
            if (j < j2) {
                this.f632a = j2;
                double d = this.f634c;
                double d2 = this.f635d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2699f.accept(current.m553c(d, d2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2732s
        public long estimateSize() {
            return this.f633b - this.f632a;
        }

        @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC2732s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2659a.m609b(this, consumer);
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

        @Override // p034j$.util.InterfaceC3039t
        /* renamed from: k */
        public boolean tryAdvance(InterfaceC2699f interfaceC2699f) {
            Objects.requireNonNull(interfaceC2699f);
            long j = this.f632a;
            if (j < this.f633b) {
                interfaceC2699f.accept(ThreadLocalRandom.current().m553c(this.f634c, this.f635d));
                this.f632a = j + 1;
                return true;
            }
            return false;
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$c */
    /* loaded from: classes2.dex */
    static final class C2685c implements InterfaceC2732s.InterfaceC2734b {

        /* renamed from: a */
        long f636a;

        /* renamed from: b */
        final long f637b;

        /* renamed from: c */
        final int f638c;

        /* renamed from: d */
        final int f639d;

        C2685c(long j, long j2, int i, int i2) {
            this.f636a = j;
            this.f637b = j2;
            this.f638c = i;
            this.f639d = i2;
        }

        @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
        /* renamed from: a */
        public C2685c trySplit() {
            long j = this.f636a;
            long j2 = (this.f637b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f636a = j2;
            return new C2685c(j, j2, this.f638c, this.f639d);
        }

        @Override // p034j$.util.InterfaceC2732s.InterfaceC2734b, p034j$.util.InterfaceC2732s
        /* renamed from: b */
        public /* synthetic */ boolean mo113b(Consumer consumer) {
            return AbstractC2659a.m600k(this, consumer);
        }

        @Override // p034j$.util.InterfaceC3039t
        /* renamed from: c */
        public void forEachRemaining(InterfaceC2705l interfaceC2705l) {
            Objects.requireNonNull(interfaceC2705l);
            long j = this.f636a;
            long j2 = this.f637b;
            if (j < j2) {
                this.f636a = j2;
                int i = this.f638c;
                int i2 = this.f639d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2705l.accept(current.m552d(i, i2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2732s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC2732s
        public long estimateSize() {
            return this.f637b - this.f636a;
        }

        @Override // p034j$.util.InterfaceC2732s.InterfaceC2734b, p034j$.util.InterfaceC2732s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2659a.m608c(this, consumer);
        }

        @Override // p034j$.util.InterfaceC3039t
        /* renamed from: g */
        public boolean tryAdvance(InterfaceC2705l interfaceC2705l) {
            Objects.requireNonNull(interfaceC2705l);
            long j = this.f636a;
            if (j < this.f637b) {
                interfaceC2705l.accept(ThreadLocalRandom.current().m552d(this.f638c, this.f639d));
                this.f636a = j + 1;
                return true;
            }
            return false;
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
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$d */
    /* loaded from: classes2.dex */
    static final class C2686d implements InterfaceC2732s.InterfaceC2735c {

        /* renamed from: a */
        long f640a;

        /* renamed from: b */
        final long f641b;

        /* renamed from: c */
        final long f642c;

        /* renamed from: d */
        final long f643d;

        C2686d(long j, long j2, long j3, long j4) {
            this.f640a = j;
            this.f641b = j2;
            this.f642c = j3;
            this.f643d = j4;
        }

        @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
        /* renamed from: a */
        public C2686d trySplit() {
            long j = this.f640a;
            long j2 = (this.f641b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f640a = j2;
            return new C2686d(j, j2, this.f642c, this.f643d);
        }

        @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c, p034j$.util.InterfaceC2732s
        /* renamed from: b */
        public /* synthetic */ boolean mo113b(Consumer consumer) {
            return AbstractC2659a.m599l(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2732s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC3039t
        /* renamed from: d */
        public void forEachRemaining(InterfaceC2710q interfaceC2710q) {
            Objects.requireNonNull(interfaceC2710q);
            long j = this.f640a;
            long j2 = this.f641b;
            if (j < j2) {
                this.f640a = j2;
                long j3 = this.f642c;
                long j4 = this.f643d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2710q.accept(current.m551e(j3, j4));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2732s
        public long estimateSize() {
            return this.f641b - this.f640a;
        }

        @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c, p034j$.util.InterfaceC2732s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2659a.m607d(this, consumer);
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

        @Override // p034j$.util.InterfaceC3039t
        /* renamed from: i */
        public boolean tryAdvance(InterfaceC2710q interfaceC2710q) {
            Objects.requireNonNull(interfaceC2710q);
            long j = this.f640a;
            if (j < this.f641b) {
                interfaceC2710q.accept(ThreadLocalRandom.current().m551e(this.f642c, this.f643d));
                this.f640a = j + 1;
                return true;
            }
            return false;
        }
    }

    static {
        long m548h;
        if (((Boolean) AccessController.doPrivileged(new C2690d())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            m548h = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                m548h = (m548h << 8) | (seed[i] & 255);
            }
        } else {
            m548h = m548h(System.nanoTime()) ^ m548h(System.currentTimeMillis());
        }
        f626e = new AtomicLong(m548h);
        f627f = new ThreadLocal();
        f628g = new C2683a();
        new ObjectStreamField("rnd", Long.TYPE);
        new ObjectStreamField("initialized", Boolean.TYPE);
    }

    ThreadLocalRandom(C2690d c2690d) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final int m555a(int i) {
        int i2 = i ^ (i << 13);
        int i3 = i2 ^ (i2 >>> 17);
        int i4 = i3 ^ (i3 << 5);
        ((ThreadLocalRandom) f628g.get()).f630b = i4;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final int m554b() {
        return ((ThreadLocalRandom) f628g.get()).f630b;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f628g.get();
        if (threadLocalRandom.f630b == 0) {
            m550f();
        }
        return threadLocalRandom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static final void m550f() {
        int addAndGet = f625d.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long m548h = m548h(f626e.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f628g.get();
        threadLocalRandom.f629a = m548h;
        threadLocalRandom.f630b = addAndGet;
    }

    /* renamed from: g */
    private static int m549g(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        return (int) (((j2 ^ (j2 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    /* renamed from: h */
    private static long m548h(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    /* renamed from: c */
    final double m553c(double d, double d2) {
        double nextLong = (nextLong() >>> 11) * 1.1102230246251565E-16d;
        if (d < d2) {
            double d3 = ((d2 - d) * nextLong) + d;
            return d3 >= d2 ? Double.longBitsToDouble(Double.doubleToLongBits(d2) - 1) : d3;
        }
        return nextLong;
    }

    /* renamed from: d */
    final int m552d(int i, int i2) {
        int i3;
        int m549g = m549g(m547i());
        if (i < i2) {
            int i4 = i2 - i;
            int i5 = i4 - 1;
            if ((i4 & i5) == 0) {
                i3 = m549g & i5;
            } else if (i4 > 0) {
                int i6 = m549g >>> 1;
                while (true) {
                    int i7 = i6 + i5;
                    i3 = i6 % i4;
                    if (i7 - i3 >= 0) {
                        break;
                    }
                    i6 = m549g(m547i()) >>> 1;
                }
            } else {
                while (true) {
                    if (m549g >= i && m549g < i2) {
                        return m549g;
                    }
                    m549g = m549g(m547i());
                }
            }
            return i3 + i;
        }
        return m549g;
    }

    @Override // java.util.Random
    public DoubleStream doubles() {
        return C3069L0.m188n0(AbstractC2969o1.m342r(new C2684b(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d), false));
    }

    /* renamed from: e */
    final long m551e(long j, long j2) {
        long m548h = m548h(m547i());
        if (j >= j2) {
            return m548h;
        }
        long j3 = j2 - j;
        long j4 = j3 - 1;
        if ((j3 & j4) == 0) {
            return (m548h & j4) + j;
        }
        if (j3 > 0) {
            while (true) {
                long j5 = m548h >>> 1;
                long j6 = j5 + j4;
                long j7 = j5 % j3;
                if (j6 - j7 >= 0) {
                    return j7 + j;
                }
                m548h = m548h(m547i());
            }
        } else {
            while (true) {
                if (m548h >= j && m548h < j2) {
                    return m548h;
                }
                m548h = m548h(m547i());
            }
        }
    }

    /* renamed from: i */
    final long m547i() {
        long j = this.f629a - 7046029254386353131L;
        this.f629a = j;
        return j;
    }

    @Override // java.util.Random
    public IntStream ints() {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2969o1.m341s(new C2685c(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0), false));
    }

    @Override // java.util.Random
    public LongStream longs() {
        return C3073N0.m169n0(AbstractC2969o1.m340t(new C2686d(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L), false));
    }

    @Override // java.util.Random
    protected int next(int i) {
        return (int) (m548h(m547i()) >>> (64 - i));
    }

    @Override // java.util.Random
    public boolean nextBoolean() {
        return m549g(m547i()) < 0;
    }

    @Override // java.util.Random
    public double nextDouble() {
        return (m548h(m547i()) >>> 11) * 1.1102230246251565E-16d;
    }

    @Override // java.util.Random
    public float nextFloat() {
        return (m549g(m547i()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public double nextGaussian() {
        ThreadLocal threadLocal = f627f;
        Double d = (Double) threadLocal.get();
        if (d != null) {
            threadLocal.set(null);
            return d.doubleValue();
        }
        while (true) {
            double nextDouble = (nextDouble() * 2.0d) - 1.0d;
            double nextDouble2 = (nextDouble() * 2.0d) - 1.0d;
            double d2 = (nextDouble2 * nextDouble2) + (nextDouble * nextDouble);
            if (d2 < 1.0d && d2 != 0.0d) {
                double sqrt = StrictMath.sqrt((StrictMath.log(d2) * (-2.0d)) / d2);
                f627f.set(new Double(nextDouble2 * sqrt));
                return nextDouble * sqrt;
            }
        }
    }

    @Override // java.util.Random
    public int nextInt() {
        return m549g(m547i());
    }

    @Override // java.util.Random
    public int nextInt(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int m549g = m549g(m547i());
        int i2 = i - 1;
        if ((i & i2) == 0) {
            return m549g & i2;
        }
        while (true) {
            int i3 = m549g >>> 1;
            int i4 = i3 + i2;
            int i5 = i3 % i;
            if (i4 - i5 >= 0) {
                return i5;
            }
            m549g = m549g(m547i());
        }
    }

    public int nextInt(int i, int i2) {
        if (i < i2) {
            return m552d(i, i2);
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public long nextLong() {
        return m548h(m547i());
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (this.f631c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Random
    public DoubleStream doubles(double d, double d2) {
        if (d < d2) {
            return C3069L0.m188n0(AbstractC2969o1.m342r(new C2684b(0L, Long.MAX_VALUE, d, d2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public IntStream ints(int i, int i2) {
        if (i < i2) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2969o1.m341s(new C2685c(0L, Long.MAX_VALUE, i, i2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public LongStream longs(long j) {
        if (j >= 0) {
            return C3073N0.m169n0(AbstractC2969o1.m340t(new C2686d(0L, j, Long.MAX_VALUE, 0L), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j) {
        if (j >= 0) {
            return C3069L0.m188n0(AbstractC2969o1.m342r(new C2684b(0L, j, Double.MAX_VALUE, 0.0d), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j) {
        if (j >= 0) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2969o1.m341s(new C2685c(0L, j, Integer.MAX_VALUE, 0), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2) {
        if (j < j2) {
            return C3073N0.m169n0(AbstractC2969o1.m340t(new C2686d(0L, Long.MAX_VALUE, j, j2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j, double d, double d2) {
        if (j >= 0) {
            if (d < d2) {
                return C3069L0.m188n0(AbstractC2969o1.m342r(new C2684b(0L, j, d, d2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j, int i, int i2) {
        if (j >= 0) {
            if (i < i2) {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2969o1.m341s(new C2685c(0L, j, i, i2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2, long j3) {
        if (j >= 0) {
            if (j2 < j3) {
                return C3073N0.m169n0(AbstractC2969o1.m340t(new C2686d(0L, j, j2, j3), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }
}
