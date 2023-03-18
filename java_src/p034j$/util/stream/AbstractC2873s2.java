package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC2873s2 extends CountedCompleter implements InterfaceC2838m3 {

    /* renamed from: a */
    protected final InterfaceC2611s f1044a;

    /* renamed from: b */
    protected final AbstractC2909y2 f1045b;

    /* renamed from: c */
    protected final long f1046c;

    /* renamed from: d */
    protected long f1047d;

    /* renamed from: e */
    protected long f1048e;

    /* renamed from: f */
    protected int f1049f;

    /* renamed from: g */
    protected int f1050g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2873s2(InterfaceC2611s interfaceC2611s, AbstractC2909y2 abstractC2909y2, int i) {
        this.f1044a = interfaceC2611s;
        this.f1045b = abstractC2909y2;
        this.f1046c = AbstractC2792f.m417h(interfaceC2611s.estimateSize());
        this.f1047d = 0L;
        this.f1048e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2873s2(AbstractC2873s2 abstractC2873s2, InterfaceC2611s interfaceC2611s, long j, long j2, int i) {
        super(abstractC2873s2);
        this.f1044a = interfaceC2611s;
        this.f1045b = abstractC2873s2.f1045b;
        this.f1046c = abstractC2873s2.f1046c;
        this.f1047d = j;
        this.f1048e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2848o1.m369f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2848o1.m371d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2848o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    /* renamed from: b */
    abstract AbstractC2873s2 mo342b(InterfaceC2611s interfaceC2611s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2611s trySplit;
        InterfaceC2611s interfaceC2611s = this.f1044a;
        AbstractC2873s2 abstractC2873s2 = this;
        while (interfaceC2611s.estimateSize() > abstractC2873s2.f1046c && (trySplit = interfaceC2611s.trySplit()) != null) {
            abstractC2873s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC2873s2.mo342b(trySplit, abstractC2873s2.f1047d, estimateSize).fork();
            abstractC2873s2 = abstractC2873s2.mo342b(interfaceC2611s, abstractC2873s2.f1047d + estimateSize, abstractC2873s2.f1048e - estimateSize);
        }
        AbstractC2774c abstractC2774c = (AbstractC2774c) abstractC2873s2.f1045b;
        Objects.requireNonNull(abstractC2774c);
        abstractC2774c.mo310n0(abstractC2774c.mo302v0(abstractC2873s2), interfaceC2611s);
        abstractC2873s2.propagateCompletion();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        long j2 = this.f1048e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1047d;
        this.f1049f = i;
        this.f1050g = i + ((int) j2);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
