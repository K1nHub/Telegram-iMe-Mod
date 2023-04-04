package p035j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC2963s2 extends CountedCompleter implements InterfaceC2928m3 {

    /* renamed from: a */
    protected final InterfaceC2701s f1050a;

    /* renamed from: b */
    protected final AbstractC2999y2 f1051b;

    /* renamed from: c */
    protected final long f1052c;

    /* renamed from: d */
    protected long f1053d;

    /* renamed from: e */
    protected long f1054e;

    /* renamed from: f */
    protected int f1055f;

    /* renamed from: g */
    protected int f1056g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2963s2(InterfaceC2701s interfaceC2701s, AbstractC2999y2 abstractC2999y2, int i) {
        this.f1050a = interfaceC2701s;
        this.f1051b = abstractC2999y2;
        this.f1052c = AbstractC2882f.m411h(interfaceC2701s.estimateSize());
        this.f1053d = 0L;
        this.f1054e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2963s2(AbstractC2963s2 abstractC2963s2, InterfaceC2701s interfaceC2701s, long j, long j2, int i) {
        super(abstractC2963s2);
        this.f1050a = interfaceC2701s;
        this.f1051b = abstractC2963s2.f1051b;
        this.f1052c = abstractC2963s2.f1052c;
        this.f1053d = j;
        this.f1054e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2938o1.m365d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2938o1.m364e(this);
        throw null;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    /* renamed from: b */
    abstract AbstractC2963s2 mo336b(InterfaceC2701s interfaceC2701s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2701s trySplit;
        InterfaceC2701s interfaceC2701s = this.f1050a;
        AbstractC2963s2 abstractC2963s2 = this;
        while (interfaceC2701s.estimateSize() > abstractC2963s2.f1052c && (trySplit = interfaceC2701s.trySplit()) != null) {
            abstractC2963s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC2963s2.mo336b(trySplit, abstractC2963s2.f1053d, estimateSize).fork();
            abstractC2963s2 = abstractC2963s2.mo336b(interfaceC2701s, abstractC2963s2.f1053d + estimateSize, abstractC2963s2.f1054e - estimateSize);
        }
        AbstractC2864c abstractC2864c = (AbstractC2864c) abstractC2963s2.f1051b;
        Objects.requireNonNull(abstractC2864c);
        abstractC2864c.mo304n0(abstractC2864c.mo296v0(abstractC2963s2), interfaceC2701s);
        abstractC2963s2.propagateCompletion();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        long j2 = this.f1054e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1053d;
        this.f1055f = i;
        this.f1056g = i + ((int) j2);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}
