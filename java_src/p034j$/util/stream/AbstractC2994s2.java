package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC2994s2 extends CountedCompleter implements InterfaceC2959m3 {

    /* renamed from: a */
    protected final InterfaceC2732s f1048a;

    /* renamed from: b */
    protected final AbstractC3030y2 f1049b;

    /* renamed from: c */
    protected final long f1050c;

    /* renamed from: d */
    protected long f1051d;

    /* renamed from: e */
    protected long f1052e;

    /* renamed from: f */
    protected int f1053f;

    /* renamed from: g */
    protected int f1054g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2994s2(InterfaceC2732s interfaceC2732s, AbstractC3030y2 abstractC3030y2, int i) {
        this.f1048a = interfaceC2732s;
        this.f1049b = abstractC3030y2;
        this.f1050c = AbstractC2913f.m402h(interfaceC2732s.estimateSize());
        this.f1051d = 0L;
        this.f1052e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2994s2(AbstractC2994s2 abstractC2994s2, InterfaceC2732s interfaceC2732s, long j, long j2, int i) {
        super(abstractC2994s2);
        this.f1048a = interfaceC2732s;
        this.f1049b = abstractC2994s2.f1049b;
        this.f1050c = abstractC2994s2.f1050c;
        this.f1051d = j;
        this.f1052e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    /* renamed from: b */
    abstract AbstractC2994s2 mo327b(InterfaceC2732s interfaceC2732s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2732s trySplit;
        InterfaceC2732s interfaceC2732s = this.f1048a;
        AbstractC2994s2 abstractC2994s2 = this;
        while (interfaceC2732s.estimateSize() > abstractC2994s2.f1050c && (trySplit = interfaceC2732s.trySplit()) != null) {
            abstractC2994s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC2994s2.mo327b(trySplit, abstractC2994s2.f1051d, estimateSize).fork();
            abstractC2994s2 = abstractC2994s2.mo327b(interfaceC2732s, abstractC2994s2.f1051d + estimateSize, abstractC2994s2.f1052e - estimateSize);
        }
        AbstractC2895c abstractC2895c = (AbstractC2895c) abstractC2994s2.f1049b;
        Objects.requireNonNull(abstractC2895c);
        abstractC2895c.mo295n0(abstractC2895c.mo287v0(abstractC2994s2), interfaceC2732s);
        abstractC2994s2.propagateCompletion();
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        long j2 = this.f1052e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1051d;
        this.f1053f = i;
        this.f1054g = i + ((int) j2);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
