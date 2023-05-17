package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC2989s2 extends CountedCompleter implements InterfaceC2954m3 {

    /* renamed from: a */
    protected final InterfaceC2727s f1048a;

    /* renamed from: b */
    protected final AbstractC3025y2 f1049b;

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
    public AbstractC2989s2(InterfaceC2727s interfaceC2727s, AbstractC3025y2 abstractC3025y2, int i) {
        this.f1048a = interfaceC2727s;
        this.f1049b = abstractC3025y2;
        this.f1050c = AbstractC2908f.m402h(interfaceC2727s.estimateSize());
        this.f1051d = 0L;
        this.f1052e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2989s2(AbstractC2989s2 abstractC2989s2, InterfaceC2727s interfaceC2727s, long j, long j2, int i) {
        super(abstractC2989s2);
        this.f1048a = interfaceC2727s;
        this.f1049b = abstractC2989s2.f1049b;
        this.f1050c = abstractC2989s2.f1050c;
        this.f1051d = j;
        this.f1052e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2964o1.m354f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2964o1.m356d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2964o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    /* renamed from: b */
    abstract AbstractC2989s2 mo327b(InterfaceC2727s interfaceC2727s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2727s trySplit;
        InterfaceC2727s interfaceC2727s = this.f1048a;
        AbstractC2989s2 abstractC2989s2 = this;
        while (interfaceC2727s.estimateSize() > abstractC2989s2.f1050c && (trySplit = interfaceC2727s.trySplit()) != null) {
            abstractC2989s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC2989s2.mo327b(trySplit, abstractC2989s2.f1051d, estimateSize).fork();
            abstractC2989s2 = abstractC2989s2.mo327b(interfaceC2727s, abstractC2989s2.f1051d + estimateSize, abstractC2989s2.f1052e - estimateSize);
        }
        AbstractC2890c abstractC2890c = (AbstractC2890c) abstractC2989s2.f1049b;
        Objects.requireNonNull(abstractC2890c);
        abstractC2890c.mo295n0(abstractC2890c.mo287v0(abstractC2989s2), interfaceC2727s);
        abstractC2989s2.propagateCompletion();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
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

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
