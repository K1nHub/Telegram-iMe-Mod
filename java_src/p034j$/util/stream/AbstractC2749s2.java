package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC2749s2 extends CountedCompleter implements InterfaceC2714m3 {

    /* renamed from: a */
    protected final InterfaceC2487s f1039a;

    /* renamed from: b */
    protected final AbstractC2785y2 f1040b;

    /* renamed from: c */
    protected final long f1041c;

    /* renamed from: d */
    protected long f1042d;

    /* renamed from: e */
    protected long f1043e;

    /* renamed from: f */
    protected int f1044f;

    /* renamed from: g */
    protected int f1045g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2749s2(InterfaceC2487s interfaceC2487s, AbstractC2785y2 abstractC2785y2, int i) {
        this.f1039a = interfaceC2487s;
        this.f1040b = abstractC2785y2;
        this.f1041c = AbstractC2668f.m417h(interfaceC2487s.estimateSize());
        this.f1042d = 0L;
        this.f1043e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2749s2(AbstractC2749s2 abstractC2749s2, InterfaceC2487s interfaceC2487s, long j, long j2, int i) {
        super(abstractC2749s2);
        this.f1039a = interfaceC2487s;
        this.f1040b = abstractC2749s2.f1040b;
        this.f1041c = abstractC2749s2.f1041c;
        this.f1042d = j;
        this.f1043e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2724o1.m371d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2724o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    /* renamed from: b */
    abstract AbstractC2749s2 mo342b(InterfaceC2487s interfaceC2487s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2487s trySplit;
        InterfaceC2487s interfaceC2487s = this.f1039a;
        AbstractC2749s2 abstractC2749s2 = this;
        while (interfaceC2487s.estimateSize() > abstractC2749s2.f1041c && (trySplit = interfaceC2487s.trySplit()) != null) {
            abstractC2749s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC2749s2.mo342b(trySplit, abstractC2749s2.f1042d, estimateSize).fork();
            abstractC2749s2 = abstractC2749s2.mo342b(interfaceC2487s, abstractC2749s2.f1042d + estimateSize, abstractC2749s2.f1043e - estimateSize);
        }
        AbstractC2650c abstractC2650c = (AbstractC2650c) abstractC2749s2.f1040b;
        Objects.requireNonNull(abstractC2650c);
        abstractC2650c.mo310n0(abstractC2650c.mo302v0(abstractC2749s2), interfaceC2487s);
        abstractC2749s2.propagateCompletion();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        long j2 = this.f1043e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1042d;
        this.f1044f = i;
        this.f1045g = i + ((int) j2);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
