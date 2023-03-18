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
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.stream.AbstractC2848o1;
import p034j$.wrappers.C$r8$wrapper$java$util$stream$IntStream$WRP;
import p034j$.wrappers.C2948L0;
import p034j$.wrappers.C2952N0;
/* renamed from: j$.util.concurrent.ThreadLocalRandom */
/* loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {

    /* renamed from: d */
    private static final AtomicInteger f621d = new AtomicInteger();

    /* renamed from: e */
    private static final AtomicLong f622e;

    /* renamed from: f */
    private static final ThreadLocal f623f;

    /* renamed from: g */
    private static final ThreadLocal f624g;

    /* renamed from: a */
    long f625a;

    /* renamed from: b */
    int f626b;

    /* renamed from: c */
    boolean f627c = true;

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$a */
    /* loaded from: classes2.dex */
    class C2562a extends ThreadLocal<ThreadLocalRandom> {
        C2562a() {
        }

        @Override // java.lang.ThreadLocal
        protected ThreadLocalRandom initialValue() {
            return new ThreadLocalRandom(null);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$b */
    /* loaded from: classes2.dex */
    static final class C2563b implements InterfaceC2611s.InterfaceC2612a {

        /* renamed from: a */
        long f628a;

        /* renamed from: b */
        final long f629b;

        /* renamed from: c */
        final double f630c;

        /* renamed from: d */
        final double f631d;

        C2563b(long j, long j2, double d, double d2) {
            this.f628a = j;
            this.f629b = j2;
            this.f630c = d;
            this.f631d = d2;
        }

        @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
        /* renamed from: a */
        public C2563b trySplit() {
            long j = this.f628a;
            long j2 = (this.f629b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f628a = j2;
            return new C2563b(j, j2, this.f630c, this.f631d);
        }

        @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2611s
        /* renamed from: b */
        public /* synthetic */ boolean mo128b(Consumer consumer) {
            return AbstractC2538a.m617j(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2611s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC2918t
        /* renamed from: e */
        public void forEachRemaining(InterfaceC2578f interfaceC2578f) {
            Objects.requireNonNull(interfaceC2578f);
            long j = this.f628a;
            long j2 = this.f629b;
            if (j < j2) {
                this.f628a = j2;
                double d = this.f630c;
                double d2 = this.f631d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2578f.accept(current.m568c(d, d2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2611s
        public long estimateSize() {
            return this.f629b - this.f628a;
        }

        @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2611s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2538a.m625b(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2611s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2538a.m622e(this);
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2538a.m621f(this, i);
        }

        @Override // p034j$.util.InterfaceC2918t
        /* renamed from: k */
        public boolean tryAdvance(InterfaceC2578f interfaceC2578f) {
            Objects.requireNonNull(interfaceC2578f);
            long j = this.f628a;
            if (j < this.f629b) {
                interfaceC2578f.accept(ThreadLocalRandom.current().m568c(this.f630c, this.f631d));
                this.f628a = j + 1;
                return true;
            }
            return false;
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$c */
    /* loaded from: classes2.dex */
    static final class C2564c implements InterfaceC2611s.InterfaceC2613b {

        /* renamed from: a */
        long f632a;

        /* renamed from: b */
        final long f633b;

        /* renamed from: c */
        final int f634c;

        /* renamed from: d */
        final int f635d;

        C2564c(long j, long j2, int i, int i2) {
            this.f632a = j;
            this.f633b = j2;
            this.f634c = i;
            this.f635d = i2;
        }

        @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
        /* renamed from: a */
        public C2564c trySplit() {
            long j = this.f632a;
            long j2 = (this.f633b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f632a = j2;
            return new C2564c(j, j2, this.f634c, this.f635d);
        }

        @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b, p034j$.util.InterfaceC2611s
        /* renamed from: b */
        public /* synthetic */ boolean mo128b(Consumer consumer) {
            return AbstractC2538a.m616k(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2918t
        /* renamed from: c */
        public void forEachRemaining(InterfaceC2584l interfaceC2584l) {
            Objects.requireNonNull(interfaceC2584l);
            long j = this.f632a;
            long j2 = this.f633b;
            if (j < j2) {
                this.f632a = j2;
                int i = this.f634c;
                int i2 = this.f635d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2584l.accept(current.m567d(i, i2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2611s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC2611s
        public long estimateSize() {
            return this.f633b - this.f632a;
        }

        @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b, p034j$.util.InterfaceC2611s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2538a.m624c(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2918t
        /* renamed from: g */
        public boolean tryAdvance(InterfaceC2584l interfaceC2584l) {
            Objects.requireNonNull(interfaceC2584l);
            long j = this.f632a;
            if (j < this.f633b) {
                interfaceC2584l.accept(ThreadLocalRandom.current().m567d(this.f634c, this.f635d));
                this.f632a = j + 1;
                return true;
            }
            return false;
        }

        @Override // p034j$.util.InterfaceC2611s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2538a.m622e(this);
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2538a.m621f(this, i);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$d */
    /* loaded from: classes2.dex */
    static final class C2565d implements InterfaceC2611s.InterfaceC2614c {

        /* renamed from: a */
        long f636a;

        /* renamed from: b */
        final long f637b;

        /* renamed from: c */
        final long f638c;

        /* renamed from: d */
        final long f639d;

        C2565d(long j, long j2, long j3, long j4) {
            this.f636a = j;
            this.f637b = j2;
            this.f638c = j3;
            this.f639d = j4;
        }

        @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
        /* renamed from: a */
        public C2565d trySplit() {
            long j = this.f636a;
            long j2 = (this.f637b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f636a = j2;
            return new C2565d(j, j2, this.f638c, this.f639d);
        }

        @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c, p034j$.util.InterfaceC2611s
        /* renamed from: b */
        public /* synthetic */ boolean mo128b(Consumer consumer) {
            return AbstractC2538a.m615l(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2611s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC2918t
        /* renamed from: d */
        public void forEachRemaining(InterfaceC2589q interfaceC2589q) {
            Objects.requireNonNull(interfaceC2589q);
            long j = this.f636a;
            long j2 = this.f637b;
            if (j < j2) {
                this.f636a = j2;
                long j3 = this.f638c;
                long j4 = this.f639d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2589q.accept(current.m566e(j3, j4));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2611s
        public long estimateSize() {
            return this.f637b - this.f636a;
        }

        @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c, p034j$.util.InterfaceC2611s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2538a.m623d(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2611s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2538a.m622e(this);
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2538a.m621f(this, i);
        }

        @Override // p034j$.util.InterfaceC2918t
        /* renamed from: i */
        public boolean tryAdvance(InterfaceC2589q interfaceC2589q) {
            Objects.requireNonNull(interfaceC2589q);
            long j = this.f636a;
            if (j < this.f637b) {
                interfaceC2589q.accept(ThreadLocalRandom.current().m566e(this.f638c, this.f639d));
                this.f636a = j + 1;
                return true;
            }
            return false;
        }
    }

    static {
        long m563h;
        if (((Boolean) AccessController.doPrivileged(new C2569d())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            m563h = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                m563h = (m563h << 8) | (seed[i] & 255);
            }
        } else {
            m563h = m563h(System.nanoTime()) ^ m563h(System.currentTimeMillis());
        }
        f622e = new AtomicLong(m563h);
        f623f = new ThreadLocal();
        f624g = new C2562a();
        new ObjectStreamField("rnd", Long.TYPE);
        new ObjectStreamField("initialized", Boolean.TYPE);
    }

    ThreadLocalRandom(C2569d c2569d) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final int m570a(int i) {
        int i2 = i ^ (i << 13);
        int i3 = i2 ^ (i2 >>> 17);
        int i4 = i3 ^ (i3 << 5);
        ((ThreadLocalRandom) f624g.get()).f626b = i4;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final int m569b() {
        return ((ThreadLocalRandom) f624g.get()).f626b;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f624g.get();
        if (threadLocalRandom.f626b == 0) {
            m565f();
        }
        return threadLocalRandom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static final void m565f() {
        int addAndGet = f621d.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long m563h = m563h(f622e.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f624g.get();
        threadLocalRandom.f625a = m563h;
        threadLocalRandom.f626b = addAndGet;
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
        return C2948L0.m203n0(AbstractC2848o1.m357r(new C2563b(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d), false));
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
        long j = this.f625a - 7046029254386353131L;
        this.f625a = j;
        return j;
    }

    @Override // java.util.Random
    public IntStream ints() {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2848o1.m356s(new C2564c(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0), false));
    }

    @Override // java.util.Random
    public LongStream longs() {
        return C2952N0.m184n0(AbstractC2848o1.m355t(new C2565d(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L), false));
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
        ThreadLocal threadLocal = f623f;
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
                f623f.set(new Double(nextDouble2 * sqrt));
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
        if (this.f627c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Random
    public DoubleStream doubles(double d, double d2) {
        if (d < d2) {
            return C2948L0.m203n0(AbstractC2848o1.m357r(new C2563b(0L, Long.MAX_VALUE, d, d2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public IntStream ints(int i, int i2) {
        if (i < i2) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2848o1.m356s(new C2564c(0L, Long.MAX_VALUE, i, i2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public LongStream longs(long j) {
        if (j >= 0) {
            return C2952N0.m184n0(AbstractC2848o1.m355t(new C2565d(0L, j, Long.MAX_VALUE, 0L), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j) {
        if (j >= 0) {
            return C2948L0.m203n0(AbstractC2848o1.m357r(new C2563b(0L, j, Double.MAX_VALUE, 0.0d), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j) {
        if (j >= 0) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2848o1.m356s(new C2564c(0L, j, Integer.MAX_VALUE, 0), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2) {
        if (j < j2) {
            return C2952N0.m184n0(AbstractC2848o1.m355t(new C2565d(0L, Long.MAX_VALUE, j, j2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j, double d, double d2) {
        if (j >= 0) {
            if (d < d2) {
                return C2948L0.m203n0(AbstractC2848o1.m357r(new C2563b(0L, j, d, d2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j, int i, int i2) {
        if (j >= 0) {
            if (i < i2) {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2848o1.m356s(new C2564c(0L, j, i, i2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2, long j3) {
        if (j >= 0) {
            if (j2 < j3) {
                return C2952N0.m184n0(AbstractC2848o1.m355t(new C2565d(0L, j, j2, j3), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }
}
