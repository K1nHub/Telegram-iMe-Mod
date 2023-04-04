package p035j$.util.concurrent;

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
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.stream.AbstractC2938o1;
import p035j$.wrappers.C$r8$wrapper$java$util$stream$IntStream$WRP;
import p035j$.wrappers.C3038L0;
import p035j$.wrappers.C3042N0;
/* renamed from: j$.util.concurrent.ThreadLocalRandom */
/* loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {

    /* renamed from: d */
    private static final AtomicInteger f627d = new AtomicInteger();

    /* renamed from: e */
    private static final AtomicLong f628e;

    /* renamed from: f */
    private static final ThreadLocal f629f;

    /* renamed from: g */
    private static final ThreadLocal f630g;

    /* renamed from: a */
    long f631a;

    /* renamed from: b */
    int f632b;

    /* renamed from: c */
    boolean f633c = true;

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$a */
    /* loaded from: classes2.dex */
    class C2652a extends ThreadLocal<ThreadLocalRandom> {
        C2652a() {
        }

        @Override // java.lang.ThreadLocal
        protected ThreadLocalRandom initialValue() {
            return new ThreadLocalRandom(null);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$b */
    /* loaded from: classes2.dex */
    static final class C2653b implements InterfaceC2701s.InterfaceC2702a {

        /* renamed from: a */
        long f634a;

        /* renamed from: b */
        final long f635b;

        /* renamed from: c */
        final double f636c;

        /* renamed from: d */
        final double f637d;

        C2653b(long j, long j2, double d, double d2) {
            this.f634a = j;
            this.f635b = j2;
            this.f636c = d;
            this.f637d = d2;
        }

        @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
        /* renamed from: a */
        public C2653b trySplit() {
            long j = this.f634a;
            long j2 = (this.f635b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f634a = j2;
            return new C2653b(j, j2, this.f636c, this.f637d);
        }

        @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC2701s
        /* renamed from: b */
        public /* synthetic */ boolean mo122b(Consumer consumer) {
            return AbstractC2628a.m611j(this, consumer);
        }

        @Override // p035j$.util.InterfaceC2701s
        public int characteristics() {
            return 17728;
        }

        @Override // p035j$.util.InterfaceC3008t
        /* renamed from: e */
        public void forEachRemaining(InterfaceC2668f interfaceC2668f) {
            Objects.requireNonNull(interfaceC2668f);
            long j = this.f634a;
            long j2 = this.f635b;
            if (j < j2) {
                this.f634a = j2;
                double d = this.f636c;
                double d2 = this.f637d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2668f.accept(current.m562c(d, d2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p035j$.util.InterfaceC2701s
        public long estimateSize() {
            return this.f635b - this.f634a;
        }

        @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC2701s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2628a.m619b(this, consumer);
        }

        @Override // p035j$.util.InterfaceC2701s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2628a.m616e(this);
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2628a.m615f(this, i);
        }

        @Override // p035j$.util.InterfaceC3008t
        /* renamed from: k */
        public boolean tryAdvance(InterfaceC2668f interfaceC2668f) {
            Objects.requireNonNull(interfaceC2668f);
            long j = this.f634a;
            if (j < this.f635b) {
                interfaceC2668f.accept(ThreadLocalRandom.current().m562c(this.f636c, this.f637d));
                this.f634a = j + 1;
                return true;
            }
            return false;
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$c */
    /* loaded from: classes2.dex */
    static final class C2654c implements InterfaceC2701s.InterfaceC2703b {

        /* renamed from: a */
        long f638a;

        /* renamed from: b */
        final long f639b;

        /* renamed from: c */
        final int f640c;

        /* renamed from: d */
        final int f641d;

        C2654c(long j, long j2, int i, int i2) {
            this.f638a = j;
            this.f639b = j2;
            this.f640c = i;
            this.f641d = i2;
        }

        @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
        /* renamed from: a */
        public C2654c trySplit() {
            long j = this.f638a;
            long j2 = (this.f639b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f638a = j2;
            return new C2654c(j, j2, this.f640c, this.f641d);
        }

        @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b, p035j$.util.InterfaceC2701s
        /* renamed from: b */
        public /* synthetic */ boolean mo122b(Consumer consumer) {
            return AbstractC2628a.m610k(this, consumer);
        }

        @Override // p035j$.util.InterfaceC3008t
        /* renamed from: c */
        public void forEachRemaining(InterfaceC2674l interfaceC2674l) {
            Objects.requireNonNull(interfaceC2674l);
            long j = this.f638a;
            long j2 = this.f639b;
            if (j < j2) {
                this.f638a = j2;
                int i = this.f640c;
                int i2 = this.f641d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2674l.accept(current.m561d(i, i2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p035j$.util.InterfaceC2701s
        public int characteristics() {
            return 17728;
        }

        @Override // p035j$.util.InterfaceC2701s
        public long estimateSize() {
            return this.f639b - this.f638a;
        }

        @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b, p035j$.util.InterfaceC2701s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2628a.m618c(this, consumer);
        }

        @Override // p035j$.util.InterfaceC3008t
        /* renamed from: g */
        public boolean tryAdvance(InterfaceC2674l interfaceC2674l) {
            Objects.requireNonNull(interfaceC2674l);
            long j = this.f638a;
            if (j < this.f639b) {
                interfaceC2674l.accept(ThreadLocalRandom.current().m561d(this.f640c, this.f641d));
                this.f638a = j + 1;
                return true;
            }
            return false;
        }

        @Override // p035j$.util.InterfaceC2701s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2628a.m616e(this);
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2628a.m615f(this, i);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$d */
    /* loaded from: classes2.dex */
    static final class C2655d implements InterfaceC2701s.InterfaceC2704c {

        /* renamed from: a */
        long f642a;

        /* renamed from: b */
        final long f643b;

        /* renamed from: c */
        final long f644c;

        /* renamed from: d */
        final long f645d;

        C2655d(long j, long j2, long j3, long j4) {
            this.f642a = j;
            this.f643b = j2;
            this.f644c = j3;
            this.f645d = j4;
        }

        @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
        /* renamed from: a */
        public C2655d trySplit() {
            long j = this.f642a;
            long j2 = (this.f643b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f642a = j2;
            return new C2655d(j, j2, this.f644c, this.f645d);
        }

        @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c, p035j$.util.InterfaceC2701s
        /* renamed from: b */
        public /* synthetic */ boolean mo122b(Consumer consumer) {
            return AbstractC2628a.m609l(this, consumer);
        }

        @Override // p035j$.util.InterfaceC2701s
        public int characteristics() {
            return 17728;
        }

        @Override // p035j$.util.InterfaceC3008t
        /* renamed from: d */
        public void forEachRemaining(InterfaceC2679q interfaceC2679q) {
            Objects.requireNonNull(interfaceC2679q);
            long j = this.f642a;
            long j2 = this.f643b;
            if (j < j2) {
                this.f642a = j2;
                long j3 = this.f644c;
                long j4 = this.f645d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2679q.accept(current.m560e(j3, j4));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p035j$.util.InterfaceC2701s
        public long estimateSize() {
            return this.f643b - this.f642a;
        }

        @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c, p035j$.util.InterfaceC2701s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2628a.m617d(this, consumer);
        }

        @Override // p035j$.util.InterfaceC2701s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2628a.m616e(this);
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2628a.m615f(this, i);
        }

        @Override // p035j$.util.InterfaceC3008t
        /* renamed from: i */
        public boolean tryAdvance(InterfaceC2679q interfaceC2679q) {
            Objects.requireNonNull(interfaceC2679q);
            long j = this.f642a;
            if (j < this.f643b) {
                interfaceC2679q.accept(ThreadLocalRandom.current().m560e(this.f644c, this.f645d));
                this.f642a = j + 1;
                return true;
            }
            return false;
        }
    }

    static {
        long m557h;
        if (((Boolean) AccessController.doPrivileged(new C2659d())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            m557h = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                m557h = (m557h << 8) | (seed[i] & 255);
            }
        } else {
            m557h = m557h(System.nanoTime()) ^ m557h(System.currentTimeMillis());
        }
        f628e = new AtomicLong(m557h);
        f629f = new ThreadLocal();
        f630g = new C2652a();
        new ObjectStreamField("rnd", Long.TYPE);
        new ObjectStreamField("initialized", Boolean.TYPE);
    }

    ThreadLocalRandom(C2659d c2659d) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final int m564a(int i) {
        int i2 = i ^ (i << 13);
        int i3 = i2 ^ (i2 >>> 17);
        int i4 = i3 ^ (i3 << 5);
        ((ThreadLocalRandom) f630g.get()).f632b = i4;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final int m563b() {
        return ((ThreadLocalRandom) f630g.get()).f632b;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f630g.get();
        if (threadLocalRandom.f632b == 0) {
            m559f();
        }
        return threadLocalRandom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static final void m559f() {
        int addAndGet = f627d.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long m557h = m557h(f628e.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f630g.get();
        threadLocalRandom.f631a = m557h;
        threadLocalRandom.f632b = addAndGet;
    }

    /* renamed from: g */
    private static int m558g(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        return (int) (((j2 ^ (j2 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    /* renamed from: h */
    private static long m557h(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    /* renamed from: c */
    final double m562c(double d, double d2) {
        double nextLong = (nextLong() >>> 11) * 1.1102230246251565E-16d;
        if (d < d2) {
            double d3 = ((d2 - d) * nextLong) + d;
            return d3 >= d2 ? Double.longBitsToDouble(Double.doubleToLongBits(d2) - 1) : d3;
        }
        return nextLong;
    }

    /* renamed from: d */
    final int m561d(int i, int i2) {
        int i3;
        int m558g = m558g(m556i());
        if (i < i2) {
            int i4 = i2 - i;
            int i5 = i4 - 1;
            if ((i4 & i5) == 0) {
                i3 = m558g & i5;
            } else if (i4 > 0) {
                int i6 = m558g >>> 1;
                while (true) {
                    int i7 = i6 + i5;
                    i3 = i6 % i4;
                    if (i7 - i3 >= 0) {
                        break;
                    }
                    i6 = m558g(m556i()) >>> 1;
                }
            } else {
                while (true) {
                    if (m558g >= i && m558g < i2) {
                        return m558g;
                    }
                    m558g = m558g(m556i());
                }
            }
            return i3 + i;
        }
        return m558g;
    }

    @Override // java.util.Random
    public DoubleStream doubles() {
        return C3038L0.m197n0(AbstractC2938o1.m351r(new C2653b(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d), false));
    }

    /* renamed from: e */
    final long m560e(long j, long j2) {
        long m557h = m557h(m556i());
        if (j >= j2) {
            return m557h;
        }
        long j3 = j2 - j;
        long j4 = j3 - 1;
        if ((j3 & j4) == 0) {
            return (m557h & j4) + j;
        }
        if (j3 > 0) {
            while (true) {
                long j5 = m557h >>> 1;
                long j6 = j5 + j4;
                long j7 = j5 % j3;
                if (j6 - j7 >= 0) {
                    return j7 + j;
                }
                m557h = m557h(m556i());
            }
        } else {
            while (true) {
                if (m557h >= j && m557h < j2) {
                    return m557h;
                }
                m557h = m557h(m556i());
            }
        }
    }

    /* renamed from: i */
    final long m556i() {
        long j = this.f631a - 7046029254386353131L;
        this.f631a = j;
        return j;
    }

    @Override // java.util.Random
    public IntStream ints() {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2938o1.m350s(new C2654c(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0), false));
    }

    @Override // java.util.Random
    public LongStream longs() {
        return C3042N0.m178n0(AbstractC2938o1.m349t(new C2655d(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L), false));
    }

    @Override // java.util.Random
    protected int next(int i) {
        return (int) (m557h(m556i()) >>> (64 - i));
    }

    @Override // java.util.Random
    public boolean nextBoolean() {
        return m558g(m556i()) < 0;
    }

    @Override // java.util.Random
    public double nextDouble() {
        return (m557h(m556i()) >>> 11) * 1.1102230246251565E-16d;
    }

    @Override // java.util.Random
    public float nextFloat() {
        return (m558g(m556i()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public double nextGaussian() {
        ThreadLocal threadLocal = f629f;
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
                f629f.set(new Double(nextDouble2 * sqrt));
                return nextDouble * sqrt;
            }
        }
    }

    @Override // java.util.Random
    public int nextInt() {
        return m558g(m556i());
    }

    @Override // java.util.Random
    public int nextInt(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int m558g = m558g(m556i());
        int i2 = i - 1;
        if ((i & i2) == 0) {
            return m558g & i2;
        }
        while (true) {
            int i3 = m558g >>> 1;
            int i4 = i3 + i2;
            int i5 = i3 % i;
            if (i4 - i5 >= 0) {
                return i5;
            }
            m558g = m558g(m556i());
        }
    }

    public int nextInt(int i, int i2) {
        if (i < i2) {
            return m561d(i, i2);
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public long nextLong() {
        return m557h(m556i());
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (this.f633c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Random
    public DoubleStream doubles(double d, double d2) {
        if (d < d2) {
            return C3038L0.m197n0(AbstractC2938o1.m351r(new C2653b(0L, Long.MAX_VALUE, d, d2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public IntStream ints(int i, int i2) {
        if (i < i2) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2938o1.m350s(new C2654c(0L, Long.MAX_VALUE, i, i2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public LongStream longs(long j) {
        if (j >= 0) {
            return C3042N0.m178n0(AbstractC2938o1.m349t(new C2655d(0L, j, Long.MAX_VALUE, 0L), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j) {
        if (j >= 0) {
            return C3038L0.m197n0(AbstractC2938o1.m351r(new C2653b(0L, j, Double.MAX_VALUE, 0.0d), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j) {
        if (j >= 0) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2938o1.m350s(new C2654c(0L, j, Integer.MAX_VALUE, 0), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2) {
        if (j < j2) {
            return C3042N0.m178n0(AbstractC2938o1.m349t(new C2655d(0L, Long.MAX_VALUE, j, j2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j, double d, double d2) {
        if (j >= 0) {
            if (d < d2) {
                return C3038L0.m197n0(AbstractC2938o1.m351r(new C2653b(0L, j, d, d2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j, int i, int i2) {
        if (j >= 0) {
            if (i < i2) {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2938o1.m350s(new C2654c(0L, j, i, i2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2, long j3) {
        if (j >= 0) {
            if (j2 < j3) {
                return C3042N0.m178n0(AbstractC2938o1.m349t(new C2655d(0L, j, j2, j3), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }
}
