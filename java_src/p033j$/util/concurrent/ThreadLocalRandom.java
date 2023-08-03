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
    private static final AtomicInteger f710d = new AtomicInteger();

    /* renamed from: e */
    private static final AtomicLong f711e;

    /* renamed from: f */
    private static final ThreadLocal f712f;

    /* renamed from: g */
    private static final ThreadLocal f713g;

    /* renamed from: a */
    long f714a;

    /* renamed from: b */
    int f715b;

    /* renamed from: c */
    boolean f716c = true;

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
        long f717a;

        /* renamed from: b */
        final long f718b;

        /* renamed from: c */
        final double f719c;

        /* renamed from: d */
        final double f720d;

        C2805b(long j, long j2, double d, double d2) {
            this.f717a = j;
            this.f718b = j2;
            this.f719c = d;
            this.f720d = d2;
        }

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        /* renamed from: a */
        public C2805b trySplit() {
            long j = this.f717a;
            long j2 = (this.f718b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f717a = j2;
            return new C2805b(j, j2, this.f719c, this.f720d);
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
        /* renamed from: b */
        public /* synthetic */ boolean mo131b(Consumer consumer) {
            return AbstractC2780a.m619j(this, consumer);
        }

        @Override // p033j$.util.InterfaceC2853s
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: e */
        public void forEachRemaining(InterfaceC2820f interfaceC2820f) {
            Objects.requireNonNull(interfaceC2820f);
            long j = this.f717a;
            long j2 = this.f718b;
            if (j < j2) {
                this.f717a = j2;
                double d = this.f719c;
                double d2 = this.f720d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2820f.accept(current.m571c(d, d2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.InterfaceC2853s
        public long estimateSize() {
            return this.f718b - this.f717a;
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2780a.m627b(this, consumer);
        }

        @Override // p033j$.util.InterfaceC2853s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2780a.m624e(this);
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2780a.m623f(this, i);
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: k */
        public boolean tryAdvance(InterfaceC2820f interfaceC2820f) {
            Objects.requireNonNull(interfaceC2820f);
            long j = this.f717a;
            if (j < this.f718b) {
                interfaceC2820f.accept(ThreadLocalRandom.current().m571c(this.f719c, this.f720d));
                this.f717a = j + 1;
                return true;
            }
            return false;
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$c */
    /* loaded from: classes2.dex */
    static final class C2806c implements InterfaceC2853s.InterfaceC2855b {

        /* renamed from: a */
        long f721a;

        /* renamed from: b */
        final long f722b;

        /* renamed from: c */
        final int f723c;

        /* renamed from: d */
        final int f724d;

        C2806c(long j, long j2, int i, int i2) {
            this.f721a = j;
            this.f722b = j2;
            this.f723c = i;
            this.f724d = i2;
        }

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        /* renamed from: a */
        public C2806c trySplit() {
            long j = this.f721a;
            long j2 = (this.f722b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f721a = j2;
            return new C2806c(j, j2, this.f723c, this.f724d);
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC2853s
        /* renamed from: b */
        public /* synthetic */ boolean mo131b(Consumer consumer) {
            return AbstractC2780a.m618k(this, consumer);
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: c */
        public void forEachRemaining(InterfaceC2826l interfaceC2826l) {
            Objects.requireNonNull(interfaceC2826l);
            long j = this.f721a;
            long j2 = this.f722b;
            if (j < j2) {
                this.f721a = j2;
                int i = this.f723c;
                int i2 = this.f724d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2826l.accept(current.m570d(i, i2));
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
            return this.f722b - this.f721a;
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC2853s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2780a.m626c(this, consumer);
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: g */
        public boolean tryAdvance(InterfaceC2826l interfaceC2826l) {
            Objects.requireNonNull(interfaceC2826l);
            long j = this.f721a;
            if (j < this.f722b) {
                interfaceC2826l.accept(ThreadLocalRandom.current().m570d(this.f723c, this.f724d));
                this.f721a = j + 1;
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
            return AbstractC2780a.m624e(this);
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2780a.m623f(this, i);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$d */
    /* loaded from: classes2.dex */
    static final class C2807d implements InterfaceC2853s.InterfaceC2856c {

        /* renamed from: a */
        long f725a;

        /* renamed from: b */
        final long f726b;

        /* renamed from: c */
        final long f727c;

        /* renamed from: d */
        final long f728d;

        C2807d(long j, long j2, long j3, long j4) {
            this.f725a = j;
            this.f726b = j2;
            this.f727c = j3;
            this.f728d = j4;
        }

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        /* renamed from: a */
        public C2807d trySplit() {
            long j = this.f725a;
            long j2 = (this.f726b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f725a = j2;
            return new C2807d(j, j2, this.f727c, this.f728d);
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
        /* renamed from: b */
        public /* synthetic */ boolean mo131b(Consumer consumer) {
            return AbstractC2780a.m617l(this, consumer);
        }

        @Override // p033j$.util.InterfaceC2853s
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: d */
        public void forEachRemaining(InterfaceC2831q interfaceC2831q) {
            Objects.requireNonNull(interfaceC2831q);
            long j = this.f725a;
            long j2 = this.f726b;
            if (j < j2) {
                this.f725a = j2;
                long j3 = this.f727c;
                long j4 = this.f728d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2831q.accept(current.m569e(j3, j4));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.InterfaceC2853s
        public long estimateSize() {
            return this.f726b - this.f725a;
        }

        @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2780a.m625d(this, consumer);
        }

        @Override // p033j$.util.InterfaceC2853s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2780a.m624e(this);
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2780a.m623f(this, i);
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: i */
        public boolean tryAdvance(InterfaceC2831q interfaceC2831q) {
            Objects.requireNonNull(interfaceC2831q);
            long j = this.f725a;
            if (j < this.f726b) {
                interfaceC2831q.accept(ThreadLocalRandom.current().m569e(this.f727c, this.f728d));
                this.f725a = j + 1;
                return true;
            }
            return false;
        }
    }

    static {
        long m566h;
        if (((Boolean) AccessController.doPrivileged(new C2811d())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            m566h = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                m566h = (m566h << 8) | (seed[i] & 255);
            }
        } else {
            m566h = m566h(System.nanoTime()) ^ m566h(System.currentTimeMillis());
        }
        f711e = new AtomicLong(m566h);
        f712f = new ThreadLocal();
        f713g = new C2804a();
        new ObjectStreamField("rnd", Long.TYPE);
        new ObjectStreamField("initialized", Boolean.TYPE);
    }

    ThreadLocalRandom(C2811d c2811d) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final int m573a(int i) {
        int i2 = i ^ (i << 13);
        int i3 = i2 ^ (i2 >>> 17);
        int i4 = i3 ^ (i3 << 5);
        ((ThreadLocalRandom) f713g.get()).f715b = i4;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final int m572b() {
        return ((ThreadLocalRandom) f713g.get()).f715b;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f713g.get();
        if (threadLocalRandom.f715b == 0) {
            m568f();
        }
        return threadLocalRandom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static final void m568f() {
        int addAndGet = f710d.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long m566h = m566h(f711e.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f713g.get();
        threadLocalRandom.f714a = m566h;
        threadLocalRandom.f715b = addAndGet;
    }

    /* renamed from: g */
    private static int m567g(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        return (int) (((j2 ^ (j2 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    /* renamed from: h */
    private static long m566h(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    /* renamed from: c */
    final double m571c(double d, double d2) {
        double nextLong = (nextLong() >>> 11) * 1.1102230246251565E-16d;
        if (d < d2) {
            double d3 = ((d2 - d) * nextLong) + d;
            return d3 >= d2 ? Double.longBitsToDouble(Double.doubleToLongBits(d2) - 1) : d3;
        }
        return nextLong;
    }

    /* renamed from: d */
    final int m570d(int i, int i2) {
        int i3;
        int m567g = m567g(m565i());
        if (i < i2) {
            int i4 = i2 - i;
            int i5 = i4 - 1;
            if ((i4 & i5) == 0) {
                i3 = m567g & i5;
            } else if (i4 > 0) {
                int i6 = m567g >>> 1;
                while (true) {
                    int i7 = i6 + i5;
                    i3 = i6 % i4;
                    if (i7 - i3 >= 0) {
                        break;
                    }
                    i6 = m567g(m565i()) >>> 1;
                }
            } else {
                while (true) {
                    if (m567g >= i && m567g < i2) {
                        return m567g;
                    }
                    m567g = m567g(m565i());
                }
            }
            return i3 + i;
        }
        return m567g;
    }

    @Override // java.util.Random
    public DoubleStream doubles() {
        return C3190L0.m206n0(AbstractC3090o1.m360r(new C2805b(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d), false));
    }

    /* renamed from: e */
    final long m569e(long j, long j2) {
        long m566h = m566h(m565i());
        if (j >= j2) {
            return m566h;
        }
        long j3 = j2 - j;
        long j4 = j3 - 1;
        if ((j3 & j4) == 0) {
            return (m566h & j4) + j;
        }
        if (j3 > 0) {
            while (true) {
                long j5 = m566h >>> 1;
                long j6 = j5 + j4;
                long j7 = j5 % j3;
                if (j6 - j7 >= 0) {
                    return j7 + j;
                }
                m566h = m566h(m565i());
            }
        } else {
            while (true) {
                if (m566h >= j && m566h < j2) {
                    return m566h;
                }
                m566h = m566h(m565i());
            }
        }
    }

    /* renamed from: i */
    final long m565i() {
        long j = this.f714a - 7046029254386353131L;
        this.f714a = j;
        return j;
    }

    @Override // java.util.Random
    public IntStream ints() {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3090o1.m359s(new C2806c(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0), false));
    }

    @Override // java.util.Random
    public LongStream longs() {
        return C3194N0.m187n0(AbstractC3090o1.m358t(new C2807d(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L), false));
    }

    @Override // java.util.Random
    protected int next(int i) {
        return (int) (m566h(m565i()) >>> (64 - i));
    }

    @Override // java.util.Random
    public boolean nextBoolean() {
        return m567g(m565i()) < 0;
    }

    @Override // java.util.Random
    public double nextDouble() {
        return (m566h(m565i()) >>> 11) * 1.1102230246251565E-16d;
    }

    @Override // java.util.Random
    public float nextFloat() {
        return (m567g(m565i()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public double nextGaussian() {
        ThreadLocal threadLocal = f712f;
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
                f712f.set(new Double(nextDouble2 * sqrt));
                return nextDouble * sqrt;
            }
        }
    }

    @Override // java.util.Random
    public int nextInt() {
        return m567g(m565i());
    }

    @Override // java.util.Random
    public int nextInt(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int m567g = m567g(m565i());
        int i2 = i - 1;
        if ((i & i2) == 0) {
            return m567g & i2;
        }
        while (true) {
            int i3 = m567g >>> 1;
            int i4 = i3 + i2;
            int i5 = i3 % i;
            if (i4 - i5 >= 0) {
                return i5;
            }
            m567g = m567g(m565i());
        }
    }

    public int nextInt(int i, int i2) {
        if (i < i2) {
            return m570d(i, i2);
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public long nextLong() {
        return m566h(m565i());
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (this.f716c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Random
    public DoubleStream doubles(double d, double d2) {
        if (d < d2) {
            return C3190L0.m206n0(AbstractC3090o1.m360r(new C2805b(0L, Long.MAX_VALUE, d, d2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public IntStream ints(int i, int i2) {
        if (i < i2) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3090o1.m359s(new C2806c(0L, Long.MAX_VALUE, i, i2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public LongStream longs(long j) {
        if (j >= 0) {
            return C3194N0.m187n0(AbstractC3090o1.m358t(new C2807d(0L, j, Long.MAX_VALUE, 0L), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j) {
        if (j >= 0) {
            return C3190L0.m206n0(AbstractC3090o1.m360r(new C2805b(0L, j, Double.MAX_VALUE, 0.0d), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j) {
        if (j >= 0) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3090o1.m359s(new C2806c(0L, j, Integer.MAX_VALUE, 0), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2) {
        if (j < j2) {
            return C3194N0.m187n0(AbstractC3090o1.m358t(new C2807d(0L, Long.MAX_VALUE, j, j2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j, double d, double d2) {
        if (j >= 0) {
            if (d < d2) {
                return C3190L0.m206n0(AbstractC3090o1.m360r(new C2805b(0L, j, d, d2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j, int i, int i2) {
        if (j >= 0) {
            if (i < i2) {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3090o1.m359s(new C2806c(0L, j, i, i2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2, long j3) {
        if (j >= 0) {
            if (j2 < j3) {
                return C3194N0.m187n0(AbstractC3090o1.m358t(new C2807d(0L, j, j2, j3), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }
}
