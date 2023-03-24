package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC2887s2 extends CountedCompleter implements InterfaceC2852m3 {

    /* renamed from: a */
    protected final InterfaceC2625s f1045a;

    /* renamed from: b */
    protected final AbstractC2923y2 f1046b;

    /* renamed from: c */
    protected final long f1047c;

    /* renamed from: d */
    protected long f1048d;

    /* renamed from: e */
    protected long f1049e;

    /* renamed from: f */
    protected int f1050f;

    /* renamed from: g */
    protected int f1051g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2887s2(InterfaceC2625s interfaceC2625s, AbstractC2923y2 abstractC2923y2, int i) {
        this.f1045a = interfaceC2625s;
        this.f1046b = abstractC2923y2;
        this.f1047c = AbstractC2806f.m416h(interfaceC2625s.estimateSize());
        this.f1048d = 0L;
        this.f1049e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2887s2(AbstractC2887s2 abstractC2887s2, InterfaceC2625s interfaceC2625s, long j, long j2, int i) {
        super(abstractC2887s2);
        this.f1045a = interfaceC2625s;
        this.f1046b = abstractC2887s2.f1046b;
        this.f1047c = abstractC2887s2.f1047c;
        this.f1048d = j;
        this.f1049e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2862o1.m370d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2862o1.m369e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    /* renamed from: b */
    abstract AbstractC2887s2 mo341b(InterfaceC2625s interfaceC2625s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2625s trySplit;
        InterfaceC2625s interfaceC2625s = this.f1045a;
        AbstractC2887s2 abstractC2887s2 = this;
        while (interfaceC2625s.estimateSize() > abstractC2887s2.f1047c && (trySplit = interfaceC2625s.trySplit()) != null) {
            abstractC2887s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC2887s2.mo341b(trySplit, abstractC2887s2.f1048d, estimateSize).fork();
            abstractC2887s2 = abstractC2887s2.mo341b(interfaceC2625s, abstractC2887s2.f1048d + estimateSize, abstractC2887s2.f1049e - estimateSize);
        }
        AbstractC2788c abstractC2788c = (AbstractC2788c) abstractC2887s2.f1046b;
        Objects.requireNonNull(abstractC2788c);
        abstractC2788c.mo309n0(abstractC2788c.mo301v0(abstractC2887s2), interfaceC2625s);
        abstractC2887s2.propagateCompletion();
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        long j2 = this.f1049e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1048d;
        this.f1050f = i;
        this.f1051g = i + ((int) j2);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
