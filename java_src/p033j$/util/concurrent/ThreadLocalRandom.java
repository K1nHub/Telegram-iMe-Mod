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
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2886q;
import p033j$.util.stream.AbstractC3145o1;
import p033j$.wrappers.C$r8$wrapper$java$util$stream$IntStream$WRP;
import p033j$.wrappers.C3245L0;
import p033j$.wrappers.C3249N0;
/* renamed from: j$.util.concurrent.ThreadLocalRandom */
/* loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {

    /* renamed from: d */
    private static final AtomicInteger f711d = new AtomicInteger();

    /* renamed from: e */
    private static final AtomicLong f712e;

    /* renamed from: f */
    private static final ThreadLocal f713f;

    /* renamed from: g */
    private static final ThreadLocal f714g;

    /* renamed from: a */
    long f715a;

    /* renamed from: b */
    int f716b;

    /* renamed from: c */
    boolean f717c = true;

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$a */
    /* loaded from: classes2.dex */
    class C2859a extends ThreadLocal<ThreadLocalRandom> {
        C2859a() {
        }

        @Override // java.lang.ThreadLocal
        protected ThreadLocalRandom initialValue() {
            return new ThreadLocalRandom(null);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$b */
    /* loaded from: classes2.dex */
    static final class C2860b implements InterfaceC2908s.InterfaceC2909a {

        /* renamed from: a */
        long f718a;

        /* renamed from: b */
        final long f719b;

        /* renamed from: c */
        final double f720c;

        /* renamed from: d */
        final double f721d;

        C2860b(long j, long j2, double d, double d2) {
            this.f718a = j;
            this.f719b = j2;
            this.f720c = d;
            this.f721d = d2;
        }

        @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
        /* renamed from: a */
        public C2860b trySplit() {
            long j = this.f718a;
            long j2 = (this.f719b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f718a = j2;
            return new C2860b(j, j2, this.f720c, this.f721d);
        }

        @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC2908s
        /* renamed from: b */
        public /* synthetic */ boolean mo131b(Consumer consumer) {
            return AbstractC2835a.m619j(this, consumer);
        }

        @Override // p033j$.util.InterfaceC2908s
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.InterfaceC3215t
        /* renamed from: e */
        public void forEachRemaining(InterfaceC2875f interfaceC2875f) {
            Objects.requireNonNull(interfaceC2875f);
            long j = this.f718a;
            long j2 = this.f719b;
            if (j < j2) {
                this.f718a = j2;
                double d = this.f720c;
                double d2 = this.f721d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2875f.accept(current.m571c(d, d2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.InterfaceC2908s
        public long estimateSize() {
            return this.f719b - this.f718a;
        }

        @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC2908s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2835a.m627b(this, consumer);
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

        @Override // p033j$.util.InterfaceC3215t
        /* renamed from: k */
        public boolean tryAdvance(InterfaceC2875f interfaceC2875f) {
            Objects.requireNonNull(interfaceC2875f);
            long j = this.f718a;
            if (j < this.f719b) {
                interfaceC2875f.accept(ThreadLocalRandom.current().m571c(this.f720c, this.f721d));
                this.f718a = j + 1;
                return true;
            }
            return false;
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$c */
    /* loaded from: classes2.dex */
    static final class C2861c implements InterfaceC2908s.InterfaceC2910b {

        /* renamed from: a */
        long f722a;

        /* renamed from: b */
        final long f723b;

        /* renamed from: c */
        final int f724c;

        /* renamed from: d */
        final int f725d;

        C2861c(long j, long j2, int i, int i2) {
            this.f722a = j;
            this.f723b = j2;
            this.f724c = i;
            this.f725d = i2;
        }

        @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
        /* renamed from: a */
        public C2861c trySplit() {
            long j = this.f722a;
            long j2 = (this.f723b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f722a = j2;
            return new C2861c(j, j2, this.f724c, this.f725d);
        }

        @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b, p033j$.util.InterfaceC2908s
        /* renamed from: b */
        public /* synthetic */ boolean mo131b(Consumer consumer) {
            return AbstractC2835a.m618k(this, consumer);
        }

        @Override // p033j$.util.InterfaceC3215t
        /* renamed from: c */
        public void forEachRemaining(InterfaceC2881l interfaceC2881l) {
            Objects.requireNonNull(interfaceC2881l);
            long j = this.f722a;
            long j2 = this.f723b;
            if (j < j2) {
                this.f722a = j2;
                int i = this.f724c;
                int i2 = this.f725d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2881l.accept(current.m570d(i, i2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.InterfaceC2908s
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.InterfaceC2908s
        public long estimateSize() {
            return this.f723b - this.f722a;
        }

        @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b, p033j$.util.InterfaceC2908s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2835a.m626c(this, consumer);
        }

        @Override // p033j$.util.InterfaceC3215t
        /* renamed from: g */
        public boolean tryAdvance(InterfaceC2881l interfaceC2881l) {
            Objects.requireNonNull(interfaceC2881l);
            long j = this.f722a;
            if (j < this.f723b) {
                interfaceC2881l.accept(ThreadLocalRandom.current().m570d(this.f724c, this.f725d));
                this.f722a = j + 1;
                return true;
            }
            return false;
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
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$d */
    /* loaded from: classes2.dex */
    static final class C2862d implements InterfaceC2908s.InterfaceC2911c {

        /* renamed from: a */
        long f726a;

        /* renamed from: b */
        final long f727b;

        /* renamed from: c */
        final long f728c;

        /* renamed from: d */
        final long f729d;

        C2862d(long j, long j2, long j3, long j4) {
            this.f726a = j;
            this.f727b = j2;
            this.f728c = j3;
            this.f729d = j4;
        }

        @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
        /* renamed from: a */
        public C2862d trySplit() {
            long j = this.f726a;
            long j2 = (this.f727b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f726a = j2;
            return new C2862d(j, j2, this.f728c, this.f729d);
        }

        @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c, p033j$.util.InterfaceC2908s
        /* renamed from: b */
        public /* synthetic */ boolean mo131b(Consumer consumer) {
            return AbstractC2835a.m617l(this, consumer);
        }

        @Override // p033j$.util.InterfaceC2908s
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.InterfaceC3215t
        /* renamed from: d */
        public void forEachRemaining(InterfaceC2886q interfaceC2886q) {
            Objects.requireNonNull(interfaceC2886q);
            long j = this.f726a;
            long j2 = this.f727b;
            if (j < j2) {
                this.f726a = j2;
                long j3 = this.f728c;
                long j4 = this.f729d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2886q.accept(current.m569e(j3, j4));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.InterfaceC2908s
        public long estimateSize() {
            return this.f727b - this.f726a;
        }

        @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c, p033j$.util.InterfaceC2908s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2835a.m625d(this, consumer);
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

        @Override // p033j$.util.InterfaceC3215t
        /* renamed from: i */
        public boolean tryAdvance(InterfaceC2886q interfaceC2886q) {
            Objects.requireNonNull(interfaceC2886q);
            long j = this.f726a;
            if (j < this.f727b) {
                interfaceC2886q.accept(ThreadLocalRandom.current().m569e(this.f728c, this.f729d));
                this.f726a = j + 1;
                return true;
            }
            return false;
        }
    }

    static {
        long m566h;
        if (((Boolean) AccessController.doPrivileged(new C2866d())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            m566h = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                m566h = (m566h << 8) | (seed[i] & 255);
            }
        } else {
            m566h = m566h(System.nanoTime()) ^ m566h(System.currentTimeMillis());
        }
        f712e = new AtomicLong(m566h);
        f713f = new ThreadLocal();
        f714g = new C2859a();
        new ObjectStreamField("rnd", Long.TYPE);
        new ObjectStreamField("initialized", Boolean.TYPE);
    }

    ThreadLocalRandom(C2866d c2866d) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final int m573a(int i) {
        int i2 = i ^ (i << 13);
        int i3 = i2 ^ (i2 >>> 17);
        int i4 = i3 ^ (i3 << 5);
        ((ThreadLocalRandom) f714g.get()).f716b = i4;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final int m572b() {
        return ((ThreadLocalRandom) f714g.get()).f716b;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f714g.get();
        if (threadLocalRandom.f716b == 0) {
            m568f();
        }
        return threadLocalRandom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static final void m568f() {
        int addAndGet = f711d.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long m566h = m566h(f712e.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f714g.get();
        threadLocalRandom.f715a = m566h;
        threadLocalRandom.f716b = addAndGet;
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
        return C3245L0.m206n0(AbstractC3145o1.m360r(new C2860b(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d), false));
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
        long j = this.f715a - 7046029254386353131L;
        this.f715a = j;
        return j;
    }

    @Override // java.util.Random
    public IntStream ints() {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3145o1.m359s(new C2861c(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0), false));
    }

    @Override // java.util.Random
    public LongStream longs() {
        return C3249N0.m187n0(AbstractC3145o1.m358t(new C2862d(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L), false));
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
        ThreadLocal threadLocal = f713f;
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
                f713f.set(new Double(nextDouble2 * sqrt));
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
        if (this.f717c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Random
    public DoubleStream doubles(double d, double d2) {
        if (d < d2) {
            return C3245L0.m206n0(AbstractC3145o1.m360r(new C2860b(0L, Long.MAX_VALUE, d, d2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public IntStream ints(int i, int i2) {
        if (i < i2) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3145o1.m359s(new C2861c(0L, Long.MAX_VALUE, i, i2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public LongStream longs(long j) {
        if (j >= 0) {
            return C3249N0.m187n0(AbstractC3145o1.m358t(new C2862d(0L, j, Long.MAX_VALUE, 0L), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j) {
        if (j >= 0) {
            return C3245L0.m206n0(AbstractC3145o1.m360r(new C2860b(0L, j, Double.MAX_VALUE, 0.0d), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j) {
        if (j >= 0) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3145o1.m359s(new C2861c(0L, j, Integer.MAX_VALUE, 0), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2) {
        if (j < j2) {
            return C3249N0.m187n0(AbstractC3145o1.m358t(new C2862d(0L, Long.MAX_VALUE, j, j2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j, double d, double d2) {
        if (j >= 0) {
            if (d < d2) {
                return C3245L0.m206n0(AbstractC3145o1.m360r(new C2860b(0L, j, d, d2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j, int i, int i2) {
        if (j >= 0) {
            if (i < i2) {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3145o1.m359s(new C2861c(0L, j, i, i2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2, long j3) {
        if (j >= 0) {
            if (j2 < j3) {
                return C3249N0.m187n0(AbstractC3145o1.m358t(new C2862d(0L, j, j2, j3), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }
}
