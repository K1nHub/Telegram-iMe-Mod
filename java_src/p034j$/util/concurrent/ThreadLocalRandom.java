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
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.stream.AbstractC2862o1;
import p034j$.wrappers.C$r8$wrapper$java$util$stream$IntStream$WRP;
import p034j$.wrappers.C2962L0;
import p034j$.wrappers.C2966N0;
/* renamed from: j$.util.concurrent.ThreadLocalRandom */
/* loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {

    /* renamed from: d */
    private static final AtomicInteger f622d = new AtomicInteger();

    /* renamed from: e */
    private static final AtomicLong f623e;

    /* renamed from: f */
    private static final ThreadLocal f624f;

    /* renamed from: g */
    private static final ThreadLocal f625g;

    /* renamed from: a */
    long f626a;

    /* renamed from: b */
    int f627b;

    /* renamed from: c */
    boolean f628c = true;

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$a */
    /* loaded from: classes2.dex */
    class C2576a extends ThreadLocal<ThreadLocalRandom> {
        C2576a() {
        }

        @Override // java.lang.ThreadLocal
        protected ThreadLocalRandom initialValue() {
            return new ThreadLocalRandom(null);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$b */
    /* loaded from: classes2.dex */
    static final class C2577b implements InterfaceC2625s.InterfaceC2626a {

        /* renamed from: a */
        long f629a;

        /* renamed from: b */
        final long f630b;

        /* renamed from: c */
        final double f631c;

        /* renamed from: d */
        final double f632d;

        C2577b(long j, long j2, double d, double d2) {
            this.f629a = j;
            this.f630b = j2;
            this.f631c = d;
            this.f632d = d2;
        }

        @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
        /* renamed from: a */
        public C2577b trySplit() {
            long j = this.f629a;
            long j2 = (this.f630b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f629a = j2;
            return new C2577b(j, j2, this.f631c, this.f632d);
        }

        @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2625s
        /* renamed from: b */
        public /* synthetic */ boolean mo127b(Consumer consumer) {
            return AbstractC2552a.m616j(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2625s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC2932t
        /* renamed from: e */
        public void forEachRemaining(InterfaceC2592f interfaceC2592f) {
            Objects.requireNonNull(interfaceC2592f);
            long j = this.f629a;
            long j2 = this.f630b;
            if (j < j2) {
                this.f629a = j2;
                double d = this.f631c;
                double d2 = this.f632d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2592f.accept(current.m567c(d, d2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2625s
        public long estimateSize() {
            return this.f630b - this.f629a;
        }

        @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2625s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2552a.m624b(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2625s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2552a.m621e(this);
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2552a.m620f(this, i);
        }

        @Override // p034j$.util.InterfaceC2932t
        /* renamed from: k */
        public boolean tryAdvance(InterfaceC2592f interfaceC2592f) {
            Objects.requireNonNull(interfaceC2592f);
            long j = this.f629a;
            if (j < this.f630b) {
                interfaceC2592f.accept(ThreadLocalRandom.current().m567c(this.f631c, this.f632d));
                this.f629a = j + 1;
                return true;
            }
            return false;
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$c */
    /* loaded from: classes2.dex */
    static final class C2578c implements InterfaceC2625s.InterfaceC2627b {

        /* renamed from: a */
        long f633a;

        /* renamed from: b */
        final long f634b;

        /* renamed from: c */
        final int f635c;

        /* renamed from: d */
        final int f636d;

        C2578c(long j, long j2, int i, int i2) {
            this.f633a = j;
            this.f634b = j2;
            this.f635c = i;
            this.f636d = i2;
        }

        @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
        /* renamed from: a */
        public C2578c trySplit() {
            long j = this.f633a;
            long j2 = (this.f634b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f633a = j2;
            return new C2578c(j, j2, this.f635c, this.f636d);
        }

        @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b, p034j$.util.InterfaceC2625s
        /* renamed from: b */
        public /* synthetic */ boolean mo127b(Consumer consumer) {
            return AbstractC2552a.m615k(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2932t
        /* renamed from: c */
        public void forEachRemaining(InterfaceC2598l interfaceC2598l) {
            Objects.requireNonNull(interfaceC2598l);
            long j = this.f633a;
            long j2 = this.f634b;
            if (j < j2) {
                this.f633a = j2;
                int i = this.f635c;
                int i2 = this.f636d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2598l.accept(current.m566d(i, i2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2625s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC2625s
        public long estimateSize() {
            return this.f634b - this.f633a;
        }

        @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b, p034j$.util.InterfaceC2625s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2552a.m623c(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2932t
        /* renamed from: g */
        public boolean tryAdvance(InterfaceC2598l interfaceC2598l) {
            Objects.requireNonNull(interfaceC2598l);
            long j = this.f633a;
            if (j < this.f634b) {
                interfaceC2598l.accept(ThreadLocalRandom.current().m566d(this.f635c, this.f636d));
                this.f633a = j + 1;
                return true;
            }
            return false;
        }

        @Override // p034j$.util.InterfaceC2625s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2552a.m621e(this);
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2552a.m620f(this, i);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$d */
    /* loaded from: classes2.dex */
    static final class C2579d implements InterfaceC2625s.InterfaceC2628c {

        /* renamed from: a */
        long f637a;

        /* renamed from: b */
        final long f638b;

        /* renamed from: c */
        final long f639c;

        /* renamed from: d */
        final long f640d;

        C2579d(long j, long j2, long j3, long j4) {
            this.f637a = j;
            this.f638b = j2;
            this.f639c = j3;
            this.f640d = j4;
        }

        @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
        /* renamed from: a */
        public C2579d trySplit() {
            long j = this.f637a;
            long j2 = (this.f638b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f637a = j2;
            return new C2579d(j, j2, this.f639c, this.f640d);
        }

        @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c, p034j$.util.InterfaceC2625s
        /* renamed from: b */
        public /* synthetic */ boolean mo127b(Consumer consumer) {
            return AbstractC2552a.m614l(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2625s
        public int characteristics() {
            return 17728;
        }

        @Override // p034j$.util.InterfaceC2932t
        /* renamed from: d */
        public void forEachRemaining(InterfaceC2603q interfaceC2603q) {
            Objects.requireNonNull(interfaceC2603q);
            long j = this.f637a;
            long j2 = this.f638b;
            if (j < j2) {
                this.f637a = j2;
                long j3 = this.f639c;
                long j4 = this.f640d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2603q.accept(current.m565e(j3, j4));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p034j$.util.InterfaceC2625s
        public long estimateSize() {
            return this.f638b - this.f637a;
        }

        @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c, p034j$.util.InterfaceC2625s
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2552a.m622d(this, consumer);
        }

        @Override // p034j$.util.InterfaceC2625s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2552a.m621e(this);
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2552a.m620f(this, i);
        }

        @Override // p034j$.util.InterfaceC2932t
        /* renamed from: i */
        public boolean tryAdvance(InterfaceC2603q interfaceC2603q) {
            Objects.requireNonNull(interfaceC2603q);
            long j = this.f637a;
            if (j < this.f638b) {
                interfaceC2603q.accept(ThreadLocalRandom.current().m565e(this.f639c, this.f640d));
                this.f637a = j + 1;
                return true;
            }
            return false;
        }
    }

    static {
        long m562h;
        if (((Boolean) AccessController.doPrivileged(new C2583d())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            m562h = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                m562h = (m562h << 8) | (seed[i] & 255);
            }
        } else {
            m562h = m562h(System.nanoTime()) ^ m562h(System.currentTimeMillis());
        }
        f623e = new AtomicLong(m562h);
        f624f = new ThreadLocal();
        f625g = new C2576a();
        new ObjectStreamField("rnd", Long.TYPE);
        new ObjectStreamField("initialized", Boolean.TYPE);
    }

    ThreadLocalRandom(C2583d c2583d) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final int m569a(int i) {
        int i2 = i ^ (i << 13);
        int i3 = i2 ^ (i2 >>> 17);
        int i4 = i3 ^ (i3 << 5);
        ((ThreadLocalRandom) f625g.get()).f627b = i4;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final int m568b() {
        return ((ThreadLocalRandom) f625g.get()).f627b;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f625g.get();
        if (threadLocalRandom.f627b == 0) {
            m564f();
        }
        return threadLocalRandom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static final void m564f() {
        int addAndGet = f622d.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long m562h = m562h(f623e.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f625g.get();
        threadLocalRandom.f626a = m562h;
        threadLocalRandom.f627b = addAndGet;
    }

    /* renamed from: g */
    private static int m563g(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        return (int) (((j2 ^ (j2 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    /* renamed from: h */
    private static long m562h(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    /* renamed from: c */
    final double m567c(double d, double d2) {
        double nextLong = (nextLong() >>> 11) * 1.1102230246251565E-16d;
        if (d < d2) {
            double d3 = ((d2 - d) * nextLong) + d;
            return d3 >= d2 ? Double.longBitsToDouble(Double.doubleToLongBits(d2) - 1) : d3;
        }
        return nextLong;
    }

    /* renamed from: d */
    final int m566d(int i, int i2) {
        int i3;
        int m563g = m563g(m561i());
        if (i < i2) {
            int i4 = i2 - i;
            int i5 = i4 - 1;
            if ((i4 & i5) == 0) {
                i3 = m563g & i5;
            } else if (i4 > 0) {
                int i6 = m563g >>> 1;
                while (true) {
                    int i7 = i6 + i5;
                    i3 = i6 % i4;
                    if (i7 - i3 >= 0) {
                        break;
                    }
                    i6 = m563g(m561i()) >>> 1;
                }
            } else {
                while (true) {
                    if (m563g >= i && m563g < i2) {
                        return m563g;
                    }
                    m563g = m563g(m561i());
                }
            }
            return i3 + i;
        }
        return m563g;
    }

    @Override // java.util.Random
    public DoubleStream doubles() {
        return C2962L0.m202n0(AbstractC2862o1.m356r(new C2577b(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d), false));
    }

    /* renamed from: e */
    final long m565e(long j, long j2) {
        long m562h = m562h(m561i());
        if (j >= j2) {
            return m562h;
        }
        long j3 = j2 - j;
        long j4 = j3 - 1;
        if ((j3 & j4) == 0) {
            return (m562h & j4) + j;
        }
        if (j3 > 0) {
            while (true) {
                long j5 = m562h >>> 1;
                long j6 = j5 + j4;
                long j7 = j5 % j3;
                if (j6 - j7 >= 0) {
                    return j7 + j;
                }
                m562h = m562h(m561i());
            }
        } else {
            while (true) {
                if (m562h >= j && m562h < j2) {
                    return m562h;
                }
                m562h = m562h(m561i());
            }
        }
    }

    /* renamed from: i */
    final long m561i() {
        long j = this.f626a - 7046029254386353131L;
        this.f626a = j;
        return j;
    }

    @Override // java.util.Random
    public IntStream ints() {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2862o1.m355s(new C2578c(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0), false));
    }

    @Override // java.util.Random
    public LongStream longs() {
        return C2966N0.m183n0(AbstractC2862o1.m354t(new C2579d(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L), false));
    }

    @Override // java.util.Random
    protected int next(int i) {
        return (int) (m562h(m561i()) >>> (64 - i));
    }

    @Override // java.util.Random
    public boolean nextBoolean() {
        return m563g(m561i()) < 0;
    }

    @Override // java.util.Random
    public double nextDouble() {
        return (m562h(m561i()) >>> 11) * 1.1102230246251565E-16d;
    }

    @Override // java.util.Random
    public float nextFloat() {
        return (m563g(m561i()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public double nextGaussian() {
        ThreadLocal threadLocal = f624f;
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
                f624f.set(new Double(nextDouble2 * sqrt));
                return nextDouble * sqrt;
            }
        }
    }

    @Override // java.util.Random
    public int nextInt() {
        return m563g(m561i());
    }

    @Override // java.util.Random
    public int nextInt(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int m563g = m563g(m561i());
        int i2 = i - 1;
        if ((i & i2) == 0) {
            return m563g & i2;
        }
        while (true) {
            int i3 = m563g >>> 1;
            int i4 = i3 + i2;
            int i5 = i3 % i;
            if (i4 - i5 >= 0) {
                return i5;
            }
            m563g = m563g(m561i());
        }
    }

    public int nextInt(int i, int i2) {
        if (i < i2) {
            return m566d(i, i2);
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public long nextLong() {
        return m562h(m561i());
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (this.f628c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Random
    public DoubleStream doubles(double d, double d2) {
        if (d < d2) {
            return C2962L0.m202n0(AbstractC2862o1.m356r(new C2577b(0L, Long.MAX_VALUE, d, d2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public IntStream ints(int i, int i2) {
        if (i < i2) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2862o1.m355s(new C2578c(0L, Long.MAX_VALUE, i, i2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public LongStream longs(long j) {
        if (j >= 0) {
            return C2966N0.m183n0(AbstractC2862o1.m354t(new C2579d(0L, j, Long.MAX_VALUE, 0L), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j) {
        if (j >= 0) {
            return C2962L0.m202n0(AbstractC2862o1.m356r(new C2577b(0L, j, Double.MAX_VALUE, 0.0d), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j) {
        if (j >= 0) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2862o1.m355s(new C2578c(0L, j, Integer.MAX_VALUE, 0), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2) {
        if (j < j2) {
            return C2966N0.m183n0(AbstractC2862o1.m354t(new C2579d(0L, Long.MAX_VALUE, j, j2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j, double d, double d2) {
        if (j >= 0) {
            if (d < d2) {
                return C2962L0.m202n0(AbstractC2862o1.m356r(new C2577b(0L, j, d, d2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j, int i, int i2) {
        if (j >= 0) {
            if (i < i2) {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC2862o1.m355s(new C2578c(0L, j, i, i2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2, long j3) {
        if (j >= 0) {
            if (j2 < j3) {
                return C2966N0.m183n0(AbstractC2862o1.m354t(new C2579d(0L, j, j2, j3), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }
}
