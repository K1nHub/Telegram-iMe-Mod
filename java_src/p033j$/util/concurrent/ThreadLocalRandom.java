package p033j$.util.concurrent;

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
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.stream.AbstractC3090o1;
import p033j$.wrappers.C$r8$wrapper$java$util$stream$IntStream$WRP;
import p033j$.wrappers.C3190L0;
import p033j$.wrappers.C3194N0;
/* renamed from: j$.util.concurrent.ThreadLocalRandom */
/* loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {

    /* renamed from: d */
    private static final AtomicInteger f707d = new AtomicInteger();

    /* renamed from: e */
    private static final AtomicLong f708e;

    /* renamed from: f */
    private static final ThreadLocal f709f;

    /* renamed from: g */
    private static final ThreadLocal f710g;

    /* renamed from: a */
    long f711a;

    /* renamed from: b */
    int f712b;

    /* renamed from: c */
    boolean f713c = true;

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$a */
    /* loaded from: classes2.dex */
    class C2804a extends ThreadLocal<ThreadLocalRandom> {
        C2804a() {
        }

        @Override // java.lang.ThreadLocal
        protected ThreadLocalRandom initialValue() {
            return new ThreadLocalRandom(null);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$b */
    /* loaded from: classes2.dex */
    static final class C2805b implements InterfaceC2853s.InterfaceC2854a {

        /* renamed from: a */
        long f714a;

        /* renamed from: b */
        final long f715b;

        /* renamed from: c */
        final double f716c;

        /* renamed from: d */
        final double f717d;

        C2805b(long j, long j2, double d, double d2) {
            this.f714a = j;
            this.f715b = j2;
            this.f716c = d;
            this.f717d = d2;
        }

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        /* renamed from: a */
        public C2805b trySplit() {
            long j = this.f714a;
            long j2 = (this.f715b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f714a = j2;
            return new C2805b(j, j2, this.f716c, this.f717d);
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
        /* renamed from: b */
        public /* synthetic */ boolean mo113b(Consumer consumer) {
            return AbstractC2780a.m601j(this, consumer);
        }

        @Override // p033j$.util.InterfaceC2853s
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: e */
        public void forEachRemaining(InterfaceC2820f interfaceC2820f) {
            Objects.requireNonNull(interfaceC2820f);
            long j = this.f714a;
            long j2 = this.f715b;
            if (j < j2) {
                this.f714a = j2;
                double d = this.f716c;
                double d2 = this.f717d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2820f.accept(current.m553c(d, d2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.InterfaceC2853s
        public long estimateSize() {
            return this.f715b - this.f714a;
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2780a.m609b(this, consumer);
        }

        @Override // p033j$.util.InterfaceC2853s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2780a.m606e(this);
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2780a.m605f(this, i);
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: k */
        public boolean tryAdvance(InterfaceC2820f interfaceC2820f) {
            Objects.requireNonNull(interfaceC2820f);
            long j = this.f714a;
            if (j < this.f715b) {
                interfaceC2820f.accept(ThreadLocalRandom.current().m553c(this.f716c, this.f717d));
                this.f714a = j + 1;
                return true;
            }
            return false;
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$c */
    /* loaded from: classes2.dex */
    static final class C2806c implements InterfaceC2853s.InterfaceC2855b {

        /* renamed from: a */
        long f718a;

        /* renamed from: b */
        final long f719b;

        /* renamed from: c */
        final int f720c;

        /* renamed from: d */
        final int f721d;

        C2806c(long j, long j2, int i, int i2) {
            this.f718a = j;
            this.f719b = j2;
            this.f720c = i;
            this.f721d = i2;
        }

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        /* renamed from: a */
        public C2806c trySplit() {
            long j = this.f718a;
            long j2 = (this.f719b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f718a = j2;
            return new C2806c(j, j2, this.f720c, this.f721d);
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC2853s
        /* renamed from: b */
        public /* synthetic */ boolean mo113b(Consumer consumer) {
            return AbstractC2780a.m600k(this, consumer);
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: c */
        public void forEachRemaining(InterfaceC2826l interfaceC2826l) {
            Objects.requireNonNull(interfaceC2826l);
            long j = this.f718a;
            long j2 = this.f719b;
            if (j < j2) {
                this.f718a = j2;
                int i = this.f720c;
                int i2 = this.f721d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2826l.accept(current.m552d(i, i2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.InterfaceC2853s
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.InterfaceC2853s
        public long estimateSize() {
            return this.f719b - this.f718a;
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC2853s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2780a.m608c(this, consumer);
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: g */
        public boolean tryAdvance(InterfaceC2826l interfaceC2826l) {
            Objects.requireNonNull(interfaceC2826l);
            long j = this.f718a;
            if (j < this.f719b) {
                interfaceC2826l.accept(ThreadLocalRandom.current().m552d(this.f720c, this.f721d));
                this.f718a = j + 1;
                return true;
            }
            return false;
        }

        @Override // p033j$.util.InterfaceC2853s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2780a.m606e(this);
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2780a.m605f(this, i);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$d */
    /* loaded from: classes2.dex */
    static final class C2807d implements InterfaceC2853s.InterfaceC2856c {

        /* renamed from: a */
        long f722a;

        /* renamed from: b */
        final long f723b;

        /* renamed from: c */
        final long f724c;

        /* renamed from: d */
        final long f725d;

        C2807d(long j, long j2, long j3, long j4) {
            this.f722a = j;
            this.f723b = j2;
            this.f724c = j3;
            this.f725d = j4;
        }

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        /* renamed from: a */
        public C2807d trySplit() {
            long j = this.f722a;
            long j2 = (this.f723b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f722a = j2;
            return new C2807d(j, j2, this.f724c, this.f725d);
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
        /* renamed from: b */
        public /* synthetic */ boolean mo113b(Consumer consumer) {
            return AbstractC2780a.m599l(this, consumer);
        }

        @Override // p033j$.util.InterfaceC2853s
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: d */
        public void forEachRemaining(InterfaceC2831q interfaceC2831q) {
            Objects.requireNonNull(interfaceC2831q);
            long j = this.f722a;
            long j2 = this.f723b;
            if (j < j2) {
                this.f722a = j2;
                long j3 = this.f724c;
                long j4 = this.f725d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2831q.accept(current.m551e(j3, j4));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.InterfaceC2853s
        public long estimateSize() {
            return this.f723b - this.f722a;
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2780a.m607d(this, consumer);
        }

        @Override // p033j$.util.InterfaceC2853s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2780a.m606e(this);
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2780a.m605f(this, i);
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: i */
        public boolean tryAdvance(InterfaceC2831q interfaceC2831q) {
            Objects.requireNonNull(interfaceC2831q);
            long j = this.f722a;
            if (j < this.f723b) {
                interfaceC2831q.accept(ThreadLocalRandom.current().m551e(this.f724c, this.f725d));
                this.f722a = j + 1;
                return true;
            }
            return false;
        }
    }

    static {
        long m548h;
        if (((Boolean) AccessController.doPrivileged(new C2811d())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            m548h = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                m548h = (m548h << 8) | (seed[i] & 255);
            }
        } else {
            m548h = m548h(System.nanoTime()) ^ m548h(System.currentTimeMillis());
        }
        f708e = new AtomicLong(m548h);
        f709f = new ThreadLocal();
        f710g = new C2804a();
        new ObjectStreamField("rnd", Long.TYPE);
        new ObjectStreamField("initialized", Boolean.TYPE);
    }

    ThreadLocalRandom(C2811d c2811d) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final int m555a(int i) {
        int i2 = i ^ (i << 13);
        int i3 = i2 ^ (i2 >>> 17);
        int i4 = i3 ^ (i3 << 5);
        ((ThreadLocalRandom) f710g.get()).f712b = i4;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final int m554b() {
        return ((ThreadLocalRandom) f710g.get()).f712b;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f710g.get();
        if (threadLocalRandom.f712b == 0) {
            m550f();
        }
        return threadLocalRandom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static final void m550f() {
        int addAndGet = f707d.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long m548h = m548h(f708e.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f710g.get();
        threadLocalRandom.f711a = m548h;
        threadLocalRandom.f712b = addAndGet;
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
        return C3190L0.m188n0(AbstractC3090o1.m342r(new C2805b(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d), false));
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
        long j = this.f711a - 7046029254386353131L;
        this.f711a = j;
        return j;
    }

    @Override // java.util.Random
    public IntStream ints() {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3090o1.m341s(new C2806c(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0), false));
    }

    @Override // java.util.Random
    public LongStream longs() {
        return C3194N0.m169n0(AbstractC3090o1.m340t(new C2807d(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L), false));
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
        ThreadLocal threadLocal = f709f;
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
                f709f.set(new Double(nextDouble2 * sqrt));
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
        if (this.f713c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Random
    public DoubleStream doubles(double d, double d2) {
        if (d < d2) {
            return C3190L0.m188n0(AbstractC3090o1.m342r(new C2805b(0L, Long.MAX_VALUE, d, d2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public IntStream ints(int i, int i2) {
        if (i < i2) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3090o1.m341s(new C2806c(0L, Long.MAX_VALUE, i, i2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public LongStream longs(long j) {
        if (j >= 0) {
            return C3194N0.m169n0(AbstractC3090o1.m340t(new C2807d(0L, j, Long.MAX_VALUE, 0L), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j) {
        if (j >= 0) {
            return C3190L0.m188n0(AbstractC3090o1.m342r(new C2805b(0L, j, Double.MAX_VALUE, 0.0d), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j) {
        if (j >= 0) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3090o1.m341s(new C2806c(0L, j, Integer.MAX_VALUE, 0), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2) {
        if (j < j2) {
            return C3194N0.m169n0(AbstractC3090o1.m340t(new C2807d(0L, Long.MAX_VALUE, j, j2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j, double d, double d2) {
        if (j >= 0) {
            if (d < d2) {
                return C3190L0.m188n0(AbstractC3090o1.m342r(new C2805b(0L, j, d, d2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j, int i, int i2) {
        if (j >= 0) {
            if (i < i2) {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3090o1.m341s(new C2806c(0L, j, i, i2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2, long j3) {
        if (j >= 0) {
            if (j2 < j3) {
                return C3194N0.m169n0(AbstractC3090o1.m340t(new C2807d(0L, j, j2, j3), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }
}
