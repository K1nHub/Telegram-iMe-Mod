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
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2826p;
import p033j$.util.stream.AbstractC3082o1;
import p033j$.wrappers.C$r8$wrapper$java$util$stream$IntStream$WRP;
import p033j$.wrappers.C3176I0;
import p033j$.wrappers.C3180K0;
/* renamed from: j$.util.concurrent.ThreadLocalRandom */
/* loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {

    /* renamed from: d */
    private static final AtomicInteger f757d = new AtomicInteger();

    /* renamed from: e */
    private static final AtomicLong f758e;

    /* renamed from: f */
    private static final ThreadLocal f759f;

    /* renamed from: g */
    private static final ThreadLocal f760g;

    /* renamed from: a */
    long f761a;

    /* renamed from: b */
    int f762b;

    /* renamed from: c */
    boolean f763c = true;

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$a */
    /* loaded from: classes2.dex */
    class C2800a extends ThreadLocal<ThreadLocalRandom> {
        C2800a() {
        }

        @Override // java.lang.ThreadLocal
        protected ThreadLocalRandom initialValue() {
            return new ThreadLocalRandom(null);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$b */
    /* loaded from: classes2.dex */
    static final class C2801b implements Spliterator.InterfaceC2772a {

        /* renamed from: a */
        long f764a;

        /* renamed from: b */
        final long f765b;

        /* renamed from: c */
        final double f766c;

        /* renamed from: d */
        final double f767d;

        C2801b(long j, long j2, double d, double d2) {
            this.f764a = j;
            this.f765b = j2;
            this.f766c = d;
            this.f767d = d2;
        }

        @Override // p033j$.util.Spliterator
        /* renamed from: a */
        public C2801b trySplit() {
            long j = this.f764a;
            long j2 = (this.f765b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f764a = j2;
            return new C2801b(j, j2, this.f766c, this.f767d);
        }

        @Override // p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator
        /* renamed from: b */
        public /* synthetic */ boolean mo178b(Consumer consumer) {
            return AbstractC2839k.m599f(this, consumer);
        }

        @Override // p033j$.util.Spliterator
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.Spliterator.InterfaceC2775d
        /* renamed from: e */
        public void forEachRemaining(InterfaceC2816f interfaceC2816f) {
            Objects.requireNonNull(interfaceC2816f);
            long j = this.f764a;
            long j2 = this.f765b;
            if (j < j2) {
                this.f764a = j2;
                double d = this.f766c;
                double d2 = this.f767d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2816f.accept(current.m634c(d, d2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.Spliterator
        public long estimateSize() {
            return this.f765b - this.f764a;
        }

        @Override // p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2839k.m604a(this, consumer);
        }

        @Override // p033j$.util.Spliterator
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2839k.m601d(this);
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2839k.m600e(this, i);
        }

        @Override // p033j$.util.Spliterator.InterfaceC2775d
        /* renamed from: n */
        public boolean tryAdvance(InterfaceC2816f interfaceC2816f) {
            Objects.requireNonNull(interfaceC2816f);
            long j = this.f764a;
            if (j < this.f765b) {
                interfaceC2816f.accept(ThreadLocalRandom.current().m634c(this.f766c, this.f767d));
                this.f764a = j + 1;
                return true;
            }
            return false;
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$c */
    /* loaded from: classes2.dex */
    static final class C2802c implements Spliterator.InterfaceC2773b {

        /* renamed from: a */
        long f768a;

        /* renamed from: b */
        final long f769b;

        /* renamed from: c */
        final int f770c;

        /* renamed from: d */
        final int f771d;

        C2802c(long j, long j2, int i, int i2) {
            this.f768a = j;
            this.f769b = j2;
            this.f770c = i;
            this.f771d = i2;
        }

        @Override // p033j$.util.Spliterator
        /* renamed from: a */
        public C2802c trySplit() {
            long j = this.f768a;
            long j2 = (this.f769b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f768a = j2;
            return new C2802c(j, j2, this.f770c, this.f771d);
        }

        @Override // p033j$.util.Spliterator.InterfaceC2773b, p033j$.util.Spliterator
        /* renamed from: b */
        public /* synthetic */ boolean mo178b(Consumer consumer) {
            return AbstractC2839k.m598g(this, consumer);
        }

        @Override // p033j$.util.Spliterator.InterfaceC2775d
        /* renamed from: c */
        public void forEachRemaining(InterfaceC2822l interfaceC2822l) {
            Objects.requireNonNull(interfaceC2822l);
            long j = this.f768a;
            long j2 = this.f769b;
            if (j < j2) {
                this.f768a = j2;
                int i = this.f770c;
                int i2 = this.f771d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2822l.accept(current.m633d(i, i2));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.Spliterator
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.Spliterator
        public long estimateSize() {
            return this.f769b - this.f768a;
        }

        @Override // p033j$.util.Spliterator.InterfaceC2773b, p033j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2839k.m603b(this, consumer);
        }

        @Override // p033j$.util.Spliterator.InterfaceC2775d
        /* renamed from: g */
        public boolean tryAdvance(InterfaceC2822l interfaceC2822l) {
            Objects.requireNonNull(interfaceC2822l);
            long j = this.f768a;
            if (j < this.f769b) {
                interfaceC2822l.accept(ThreadLocalRandom.current().m633d(this.f770c, this.f771d));
                this.f768a = j + 1;
                return true;
            }
            return false;
        }

        @Override // p033j$.util.Spliterator
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2839k.m601d(this);
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2839k.m600e(this, i);
        }
    }

    /* renamed from: j$.util.concurrent.ThreadLocalRandom$d */
    /* loaded from: classes2.dex */
    static final class C2803d implements Spliterator.InterfaceC2774c {

        /* renamed from: a */
        long f772a;

        /* renamed from: b */
        final long f773b;

        /* renamed from: c */
        final long f774c;

        /* renamed from: d */
        final long f775d;

        C2803d(long j, long j2, long j3, long j4) {
            this.f772a = j;
            this.f773b = j2;
            this.f774c = j3;
            this.f775d = j4;
        }

        @Override // p033j$.util.Spliterator
        /* renamed from: a */
        public C2803d trySplit() {
            long j = this.f772a;
            long j2 = (this.f773b + j) >>> 1;
            if (j2 <= j) {
                return null;
            }
            this.f772a = j2;
            return new C2803d(j, j2, this.f774c, this.f775d);
        }

        @Override // p033j$.util.Spliterator.InterfaceC2774c, p033j$.util.Spliterator
        /* renamed from: b */
        public /* synthetic */ boolean mo178b(Consumer consumer) {
            return AbstractC2839k.m597h(this, consumer);
        }

        @Override // p033j$.util.Spliterator
        public int characteristics() {
            return 17728;
        }

        @Override // p033j$.util.Spliterator.InterfaceC2775d
        /* renamed from: d */
        public void forEachRemaining(InterfaceC2826p interfaceC2826p) {
            Objects.requireNonNull(interfaceC2826p);
            long j = this.f772a;
            long j2 = this.f773b;
            if (j < j2) {
                this.f772a = j2;
                long j3 = this.f774c;
                long j4 = this.f775d;
                ThreadLocalRandom current = ThreadLocalRandom.current();
                do {
                    interfaceC2826p.accept(current.m632e(j3, j4));
                    j++;
                } while (j < j2);
            }
        }

        @Override // p033j$.util.Spliterator
        public long estimateSize() {
            return this.f773b - this.f772a;
        }

        @Override // p033j$.util.Spliterator.InterfaceC2774c, p033j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            AbstractC2839k.m602c(this, consumer);
        }

        @Override // p033j$.util.Spliterator
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2839k.m601d(this);
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2839k.m600e(this, i);
        }

        @Override // p033j$.util.Spliterator.InterfaceC2775d
        /* renamed from: i */
        public boolean tryAdvance(InterfaceC2826p interfaceC2826p) {
            Objects.requireNonNull(interfaceC2826p);
            long j = this.f772a;
            if (j < this.f773b) {
                interfaceC2826p.accept(ThreadLocalRandom.current().m632e(this.f774c, this.f775d));
                this.f772a = j + 1;
                return true;
            }
            return false;
        }
    }

    static {
        long m629h;
        if (((Boolean) AccessController.doPrivileged(new C2807d())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            m629h = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                m629h = (m629h << 8) | (seed[i] & 255);
            }
        } else {
            m629h = m629h(System.nanoTime()) ^ m629h(System.currentTimeMillis());
        }
        f758e = new AtomicLong(m629h);
        f759f = new ThreadLocal();
        f760g = new C2800a();
        new ObjectStreamField("rnd", Long.TYPE);
        new ObjectStreamField("initialized", Boolean.TYPE);
    }

    ThreadLocalRandom(C2807d c2807d) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final int m636a(int i) {
        int i2 = i ^ (i << 13);
        int i3 = i2 ^ (i2 >>> 17);
        int i4 = i3 ^ (i3 << 5);
        ((ThreadLocalRandom) f760g.get()).f762b = i4;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final int m635b() {
        return ((ThreadLocalRandom) f760g.get()).f762b;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f760g.get();
        if (threadLocalRandom.f762b == 0) {
            m631f();
        }
        return threadLocalRandom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static final void m631f() {
        int addAndGet = f757d.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long m629h = m629h(f758e.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f760g.get();
        threadLocalRandom.f761a = m629h;
        threadLocalRandom.f762b = addAndGet;
    }

    /* renamed from: g */
    private static int m630g(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        return (int) (((j2 ^ (j2 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    /* renamed from: h */
    private static long m629h(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    /* renamed from: c */
    final double m634c(double d, double d2) {
        double nextLong = (nextLong() >>> 11) * 1.1102230246251565E-16d;
        if (d < d2) {
            double d3 = ((d2 - d) * nextLong) + d;
            return d3 >= d2 ? Double.longBitsToDouble(Double.doubleToLongBits(d2) - 1) : d3;
        }
        return nextLong;
    }

    /* renamed from: d */
    final int m633d(int i, int i2) {
        int i3;
        int m630g = m630g(m628i());
        if (i < i2) {
            int i4 = i2 - i;
            int i5 = i4 - 1;
            if ((i4 & i5) == 0) {
                i3 = m630g & i5;
            } else if (i4 > 0) {
                int i6 = m630g >>> 1;
                while (true) {
                    int i7 = i6 + i5;
                    i3 = i6 % i4;
                    if (i7 - i3 >= 0) {
                        break;
                    }
                    i6 = m630g(m628i()) >>> 1;
                }
            } else {
                while (true) {
                    if (m630g >= i && m630g < i2) {
                        return m630g;
                    }
                    m630g = m630g(m628i());
                }
            }
            return i3 + i;
        }
        return m630g;
    }

    @Override // java.util.Random
    public DoubleStream doubles() {
        return C3176I0.m258m0(AbstractC3082o1.m405r(new C2801b(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d), false));
    }

    /* renamed from: e */
    final long m632e(long j, long j2) {
        long m629h = m629h(m628i());
        if (j >= j2) {
            return m629h;
        }
        long j3 = j2 - j;
        long j4 = j3 - 1;
        if ((j3 & j4) == 0) {
            return (m629h & j4) + j;
        }
        if (j3 > 0) {
            while (true) {
                long j5 = m629h >>> 1;
                long j6 = j5 + j4;
                long j7 = j5 % j3;
                if (j6 - j7 >= 0) {
                    return j7 + j;
                }
                m629h = m629h(m628i());
            }
        } else {
            while (true) {
                if (m629h >= j && m629h < j2) {
                    return m629h;
                }
                m629h = m629h(m628i());
            }
        }
    }

    /* renamed from: i */
    final long m628i() {
        long j = this.f761a - 7046029254386353131L;
        this.f761a = j;
        return j;
    }

    @Override // java.util.Random
    public IntStream ints() {
        return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3082o1.m404s(new C2802c(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0), false));
    }

    @Override // java.util.Random
    public LongStream longs() {
        return C3180K0.m239m0(AbstractC3082o1.m403t(new C2803d(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L), false));
    }

    @Override // java.util.Random
    protected int next(int i) {
        return (int) (m629h(m628i()) >>> (64 - i));
    }

    @Override // java.util.Random
    public boolean nextBoolean() {
        return m630g(m628i()) < 0;
    }

    @Override // java.util.Random
    public double nextDouble() {
        return (m629h(m628i()) >>> 11) * 1.1102230246251565E-16d;
    }

    @Override // java.util.Random
    public float nextFloat() {
        return (m630g(m628i()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public double nextGaussian() {
        ThreadLocal threadLocal = f759f;
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
                f759f.set(new Double(nextDouble2 * sqrt));
                return nextDouble * sqrt;
            }
        }
    }

    @Override // java.util.Random
    public int nextInt() {
        return m630g(m628i());
    }

    @Override // java.util.Random
    public int nextInt(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int m630g = m630g(m628i());
        int i2 = i - 1;
        if ((i & i2) == 0) {
            return m630g & i2;
        }
        while (true) {
            int i3 = m630g >>> 1;
            int i4 = i3 + i2;
            int i5 = i3 % i;
            if (i4 - i5 >= 0) {
                return i5;
            }
            m630g = m630g(m628i());
        }
    }

    public int nextInt(int i, int i2) {
        if (i < i2) {
            return m633d(i, i2);
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public long nextLong() {
        return m629h(m628i());
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (this.f763c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Random
    public DoubleStream doubles(double d, double d2) {
        if (d < d2) {
            return C3176I0.m258m0(AbstractC3082o1.m405r(new C2801b(0L, Long.MAX_VALUE, d, d2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public IntStream ints(int i, int i2) {
        if (i < i2) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3082o1.m404s(new C2802c(0L, Long.MAX_VALUE, i, i2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public LongStream longs(long j) {
        if (j >= 0) {
            return C3180K0.m239m0(AbstractC3082o1.m403t(new C2803d(0L, j, Long.MAX_VALUE, 0L), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j) {
        if (j >= 0) {
            return C3176I0.m258m0(AbstractC3082o1.m405r(new C2801b(0L, j, Double.MAX_VALUE, 0.0d), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j) {
        if (j >= 0) {
            return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3082o1.m404s(new C2802c(0L, j, Integer.MAX_VALUE, 0), false));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2) {
        if (j < j2) {
            return C3180K0.m239m0(AbstractC3082o1.m403t(new C2803d(0L, Long.MAX_VALUE, j, j2), false));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public DoubleStream doubles(long j, double d, double d2) {
        if (j >= 0) {
            if (d < d2) {
                return C3176I0.m258m0(AbstractC3082o1.m405r(new C2801b(0L, j, d, d2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public IntStream ints(long j, int i, int i2) {
        if (j >= 0) {
            if (i < i2) {
                return C$r8$wrapper$java$util$stream$IntStream$WRP.convert(AbstractC3082o1.m404s(new C2802c(0L, j, i, i2), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public LongStream longs(long j, long j2, long j3) {
        if (j >= 0) {
            if (j2 < j3) {
                return C3180K0.m239m0(AbstractC3082o1.m403t(new C2803d(0L, j, j2, j3), false));
            }
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        throw new IllegalArgumentException("size must be non-negative");
    }
}
