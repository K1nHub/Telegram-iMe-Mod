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
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.stream.AbstractC2724o1;
import p034j$.wrappers.C$r8$wrapper$java$util$stream$IntStream$WRP;
import p034j$.wrappers.C2824L0;
import p034j$.wrappers.C2828N0;
/* renamed from: j$.util.concurrent.ThreadLocalRandom */
/* loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {

    /* renamed from: d */
    private static final AtomicInteger f616d = new AtomicInteger();

    /* renamed from: e */
    private static final AtomicLong f617e;

    /* renamed from: f */
    private static final ThreadLocal f618f;

    /* renamed from: g */
    private static final ThreadLocal f619g;

    /* renamed from: a */
    long f620a;

    /* renamed from: b */
    int f621b;

    /* renamed from: c */
    boolean f622c = true;

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$a */
    /* loaded from: classes2.dex */
    class C2438a extends ThreadLocal<ThreadLocalRandom> {
        C2438a() {
        }

        @Override // java.lang.ThreadLocal
        protected ThreadLocalRandom initialValue() {
            return new ThreadLocalRandom(null);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$b */
    /* loaded from: classes2.dex */
    static final class C2439b implements InterfaceC2487s.InterfaceC2488a {

        /* renamed from: a */
        long f623a;

        /* renamed from: b */
        final long f624b;

        /* renamed from: c */
        final double f625c;

        /* renamed from: d */
        final double f626d;

        C2439b(long j, long j2, double d, double d2) {
            this.f623a = j;
            this.f624b = j2;
            this.f625c = d;
            this.f626d = d2;
        }

        @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
        /* renamed from: a */
        public C2439b trySplit() {
            long j = this.f623a;
            long j2 = (this.f624b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f623a = j2;
            return new C2439b(j, j2, this.f625c, this.f626d);
        }

        @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2487s
        /* renamed from: b */
        public /* synthetic */ boolean mo128b(Consumer consumer) {
            return AbstractC2414a.m617j(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2487s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC2794t
        /* renamed from: e */
        public void forEachRemaining(InterfaceC2454f interfaceC2454f) {
            Objects.requireNonNull(interfaceC2454f);
            long j = this.f623a;
            long j2 = this.f624b;
            if (j < j2) {
                this.f623a = j2;
                double d = this.f625c;
                double d2 = this.f626d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2454f.accept(current.m568c(d, d2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2487s
        public long estimateSize() {
            return this.f624b - this.f623a;
        }

        @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2487s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2414a.m625b(this, consumer);
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

        @Override // p034j$.util.InterfaceC2794t
        /* renamed from: k */
        public boolean tryAdvance(InterfaceC2454f interfaceC2454f) {
            Objects.requireNonNull(interfaceC2454f);
            long j = this.f623a;
            if (j < this.f624b) {
                interfaceC2454f.accept(ThreadLocalRandom.current().m568c(this.f625c, this.f626d));
                this.f623a = j + 1;
                return true;
            }
            return false;
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$c */
    /* loaded from: classes2.dex */
    static final class C2440c implements InterfaceC2487s.InterfaceC2489b {

        /* renamed from: a */
        long f627a;

        /* renamed from: b */
        final long f628b;

        /* renamed from: c */
        final int f629c;

        /* renamed from: d */
        final int f630d;

        C2440c(long j, long j2, int i, int i2) {
            this.f627a = j;
            this.f628b = j2;
            this.f629c = i;
            this.f630d = i2;
        }

        @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
        /* renamed from: a */
        public C2440c trySplit() {
            long j = this.f627a;
            long j2 = (this.f628b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f627a = j2;
            return new C2440c(j, j2, this.f629c, this.f630d);
        }

        @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2487s
        /* renamed from: b */
        public /* synthetic */ boolean mo128b(Consumer consumer) {
            return AbstractC2414a.m616k(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2794t
        /* renamed from: c */
        public void forEachRemaining(InterfaceC2460l interfaceC2460l) {
            Objects.requireNonNull(interfaceC2460l);
            long j = this.f627a;
            long j2 = this.f628b;
            if (j < j2) {
                this.f627a = j2;
                int i = this.f629c;
                int i2 = this.f630d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2460l.accept(current.m567d(i, i2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2487s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC2487s
        public long estimateSize() {
            return this.f628b - this.f627a;
        }

        @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2487s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2414a.m624c(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2794t
        /* renamed from: g */
        public boolean tryAdvance(InterfaceC2460l interfaceC2460l) {
            Objects.requireNonNull(interfaceC2460l);
            long j = this.f627a;
            if (j < this.f628b) {
                interfaceC2460l.accept(ThreadLocalRandom.current().m567d(this.f629c, this.f630d));
                this.f627a = j + 1;
                return true;
            }
            return false;
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
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$d */
    /* loaded from: classes2.dex */
    static final class C2441d implements InterfaceC2487s.InterfaceC2490c {

        /* renamed from: a */
        long f631a;

        /* renamed from: b */
        final long f632b;

        /* renamed from: c */
        final long f633c;

        /* renamed from: d */
        final long f634d;

        C2441d(long j, long j2, long j3, long j4) {
            this.f631a = j;
            this.f632b = j2;
            this.f633c = j3;
            this.f634d = j4;
        }

        @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
        /* renamed from: a */
        public C2441d trySplit() {
            long j = this.f631a;
            long j2 = (this.f632b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f631a = j2;
            return new C2441d(j, j2, this.f633c, this.f634d);
        }

        @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2487s
        /* renamed from: b */
        public /* synthetic */ boolean mo128b(Consumer consumer) {
            return AbstractC2414a.m615l(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2487s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC2794t
        /* renamed from: d */
        public void forEachRemaining(InterfaceC2465q interfaceC2465q) {
            Objects.requireNonNull(interfaceC2465q);
            long j = this.f631a;
            long j2 = this.f632b;
            if (j < j2) {
                this.f631a = j2;
                long j3 = this.f633c;
                long j4 = this.f634d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2465q.accept(current.m566e(j3, j4));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2487s
        public long estimateSize() {
            return this.f632b - this.f631a;
        }

        @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2487s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2414a.m623d(this, consumer);
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

        @Override // p034j$.util.InterfaceC2794t
        /* renamed from: i */
        public boolean tryAdvance(InterfaceC2465q interfaceC2465q) {
            Objects.requireNonNull(interfaceC2465q);
            long j = this.f631a;
            if (j < this.f632b) {
                interfaceC2465q.accept(ThreadLocalRandom.current().m566e(this.f633c, this.f634d));
                this.f631a = j + 1;
                return true;
            }
            return false;
        }
    }

    static {
        long m563h;
        if (((Boolean) AccessController.doPrivileged(new C2445d())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            m563h = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                m563h = (m563h << 8) | (seed[i] & 255);
            }
        } else {
            m563h = m563h(System.nanoTime()) ^ m563h(System.currentTimeMillis());
        }
        f617e = new AtomicLong(m563h);
        f618f = new ThreadLocal();
        f619g = new C2438a();
        new ObjectStreamField("rnd", Long.TYPE);
        new ObjectStreamField("initialized", Boolean.TYPE);
    }

    ThreadLocalRandom(C2445d c2445d) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final int m570a(int i) {
        int i2 = i ^ (i << 13);
        int i3 = i2 ^ (i2 >>> 17);
        int i4 = i3 ^ (i3 << 5);
        ((ThreadLocalRandom) f619g.get()).f621b = i4;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final int m569b() {
        return ((ThreadLocalRandom) f619g.get()).f621b;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f619g.get();
        if (threadLocalRandom.f621b == 0) {
            m565f();
        }
        return threadLocalRandom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static final void m565f() {
        int addAndGet = f616d.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long m563h = m563h(f617e.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f619g.get();
        threadLocalRandom.f620a = m563h;
        threadLocalRandom.f621b = addAndGet;
    }

    /* renamed from: g */
    private static int m564g(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        return (int) (((j2 ^ (j2 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    /* renamed from: h */
    private static long m563h(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    /* renamed from: c */
    final double m568c(double d, double d2) {
        double nextLong = (nextLong() >>> 11) * 1.1102230246251565E-16d;
        if (d < d2) {
            double d3 = ((d2 - d) * nextLong) + d;
            return d3 >= d2 ? Double.longBitsToDouble(Double.doubleToLongBits(d2) - 1) : d3;
        }
        return nextLong;
    }

    /* renamed from: d */
    final int m567d(int i, int i2) {
        int i3;
        int m564g = m564g(m562i());
        if (i < i2) {
            int i4 = i2 - i;
            int i5 = i4 - 1;
            if ((i4 & i5) == 0) {
                i3 = m564g & i5;
            } else if (i4 > 0) {
                int i6 = m564g >>> 1;
                while (true) {
                    int i7 = i6 + i5;
                    i3 = i6 % i4;
                    if (i7 - i3 >= 0) {
                        break;
                    }
                    i6 = m564g(m562i()) >>> 1;
                }
            } else {
                while (true) {
                    if (m564g >= i && m564g < i2) {
                        return m564g;
                    }
                    m564g = m564g(m562i());
                }
            }
            return i3 + i;
        }
        return m564g;
    }

    @Override // java.util.Random
    public DoubleStream doubles() {
        return C2824L0.m203n0(AbstractC2724o1.m357r(new C2439b(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d), false));
    }

    /* renamed from: e */
    final long m566e(long j, long j2) {
        long m563h = m563h(m562i());
        if (j >= j2) {
            return m563h;
        }
        long j3 = j2 - j;
        long j4 = j3 - 1;
        if ((j3 & j4) == 0) {
            return (m563h & j4) + j;
        }
        if (j3 > 0) {
            while (true) {
                long j5 = m563h >>> 1;
                long j6 = j5 + j4;
                long j7 = j5 % j3;
                if (j6 - j7 >= 0) {
                    return j7 + j;
                }
                m563h = m563h(m562i());
            }
        } else {
            while (true) {
                if (m563h >= j && m563h < j2) {
                    return m563h;
                }
                m563h = m563h(m562i());
            }
        }
    }

    /* renamed from: i */
    final long m562i() {
        long j = this.f620a - 7046029254386353131L;
        this.f620a = j;
        return j;
    }

    @Override // java.util.Random
    public IntStream ints() {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2724o1.m356s(new C2440c(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0), false));
    }

    @Override // java.util.Random
    public LongStream longs() {
        return C2828N0.m184n0(AbstractC2724o1.m355t(new C2441d(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L), false));
    }

    @Override // java.util.Random
    protected int next(int i) {
        return (int) (m563h(m562i()) >>> (64 - i));
    }

    @Override // java.util.Random
    public boolean nextBoolean() {
        return m564g(m562i()) < 0;
    }

    @Override // java.util.Random
    public double nextDouble() {
        return (m563h(m562i()) >>> 11) * 1.1102230246251565E-16d;
    }

    @Override // java.util.Random
    public float nextFloat() {
        return (m564g(m562i()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public double nextGaussian() {
        ThreadLocal threadLocal = f618f;
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
                f618f.set(new Double(nextDouble2 * sqrt));
                return nextDouble * sqrt;
            }
        }
    }

    @Override // java.util.Random
    public int nextInt() {
        return m564g(m562i());
    }

    @Override // java.util.Random
    public int nextInt(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int m564g = m564g(m562i());
        int i2 = i - 1;
        if ((i & i2) == 0) {
            return m564g & i2;
        }
        while (true) {
            int i3 = m564g >>> 1;
            int i4 = i3 + i2;
            int i5 = i3 % i;
            if (i4 - i5 >= 0) {
                return i5;
            }
            m564g = m564g(m562i());
        }
    }

    public int nextInt(int i, int i2) {
        if (i < i2) {
            return m567d(i, i2);
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public long nextLong() {
        return m563h(m562i());
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (this.f622c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Random
    public DoubleStream doubles(double d, double d2) {
        if (d < d2) {
            return C2824L0.m203n0(AbstractC2724o1.m357r(new C2439b(0L, Long.MAX_VALUE, d, d2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public IntStream ints(int i, int i2) {
        if (i < i2) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2724o1.m356s(new C2440c(0L, Long.MAX_VALUE, i, i2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public LongStream longs(long j) {
        if (j >= 0) {
            return C2828N0.m184n0(AbstractC2724o1.m355t(new C2441d(0L, j, Long.MAX_VALUE, 0L), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j) {
        if (j >= 0) {
            return C2824L0.m203n0(AbstractC2724o1.m357r(new C2439b(0L, j, Double.MAX_VALUE, 0.0d), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j) {
        if (j >= 0) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2724o1.m356s(new C2440c(0L, j, Integer.MAX_VALUE, 0), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2) {
        if (j < j2) {
            return C2828N0.m184n0(AbstractC2724o1.m355t(new C2441d(0L, Long.MAX_VALUE, j, j2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j, double d, double d2) {
        if (j >= 0) {
            if (d < d2) {
                return C2824L0.m203n0(AbstractC2724o1.m357r(new C2439b(0L, j, d, d2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j, int i, int i2) {
        if (j >= 0) {
            if (i < i2) {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2724o1.m356s(new C2440c(0L, j, i, i2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2, long j3) {
        if (j >= 0) {
            if (j2 < j3) {
                return C2828N0.m184n0(AbstractC2724o1.m355t(new C2441d(0L, j, j2, j3), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }
}
