package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC3115s2 extends CountedCompleter implements InterfaceC3080m3 {

    /* renamed from: a */
    protected final InterfaceC2853s f1130a;

    /* renamed from: b */
    protected final AbstractC3151y2 f1131b;

    /* renamed from: c */
    protected final long f1132c;

    /* renamed from: d */
    protected long f1133d;

    /* renamed from: e */
    protected long f1134e;

    /* renamed from: f */
    protected int f1135f;

    /* renamed from: g */
    protected int f1136g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3115s2(InterfaceC2853s interfaceC2853s, AbstractC3151y2 abstractC3151y2, int i) {
        this.f1130a = interfaceC2853s;
        this.f1131b = abstractC3151y2;
        this.f1132c = AbstractC3034f.m402h(interfaceC2853s.estimateSize());
        this.f1133d = 0L;
        this.f1134e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3115s2(AbstractC3115s2 abstractC3115s2, InterfaceC2853s interfaceC2853s, long j, long j2, int i) {
        super(abstractC3115s2);
        this.f1130a = interfaceC2853s;
        this.f1131b = abstractC3115s2.f1131b;
        this.f1132c = abstractC3115s2.f1132c;
        this.f1133d = j;
        this.f1134e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m354f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m356d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m355e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    /* renamed from: b */
    abstract AbstractC3115s2 mo327b(InterfaceC2853s interfaceC2853s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2853s trySplit;
        InterfaceC2853s interfaceC2853s = this.f1130a;
        AbstractC3115s2 abstractC3115s2 = this;
        while (interfaceC2853s.estimateSize() > abstractC3115s2.f1132c && (trySplit = interfaceC2853s.trySplit()) != null) {
            abstractC3115s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC3115s2.mo327b(trySplit, abstractC3115s2.f1133d, estimateSize).fork();
            abstractC3115s2 = abstractC3115s2.mo327b(interfaceC2853s, abstractC3115s2.f1133d + estimateSize, abstractC3115s2.f1134e - estimateSize);
        }
        AbstractC3016c abstractC3016c = (AbstractC3016c) abstractC3115s2.f1131b;
        Objects.requireNonNull(abstractC3016c);
        abstractC3016c.mo295n0(abstractC3016c.mo287v0(abstractC3115s2), interfaceC2853s);
        abstractC3115s2.propagateCompletion();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        long j2 = this.f1134e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1133d;
        this.f1135f = i;
        this.f1136g = i + ((int) j2);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
