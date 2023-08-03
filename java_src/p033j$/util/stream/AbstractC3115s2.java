package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC3115s2 extends CountedCompleter implements InterfaceC3080m3 {

    /* renamed from: a */
    protected final InterfaceC2853s f1133a;

    /* renamed from: b */
    protected final AbstractC3151y2 f1134b;

    /* renamed from: c */
    protected final long f1135c;

    /* renamed from: d */
    protected long f1136d;

    /* renamed from: e */
    protected long f1137e;

    /* renamed from: f */
    protected int f1138f;

    /* renamed from: g */
    protected int f1139g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3115s2(InterfaceC2853s interfaceC2853s, AbstractC3151y2 abstractC3151y2, int i) {
        this.f1133a = interfaceC2853s;
        this.f1134b = abstractC3151y2;
        this.f1135c = AbstractC3034f.m420h(interfaceC2853s.estimateSize());
        this.f1136d = 0L;
        this.f1137e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3115s2(AbstractC3115s2 abstractC3115s2, InterfaceC2853s interfaceC2853s, long j, long j2, int i) {
        super(abstractC3115s2);
        this.f1133a = interfaceC2853s;
        this.f1134b = abstractC3115s2.f1134b;
        this.f1135c = abstractC3115s2.f1135c;
        this.f1136d = j;
        this.f1137e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m372f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    /* renamed from: b */
    abstract AbstractC3115s2 mo345b(InterfaceC2853s interfaceC2853s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2853s trySplit;
        InterfaceC2853s interfaceC2853s = this.f1133a;
        AbstractC3115s2 abstractC3115s2 = this;
        while (interfaceC2853s.estimateSize() > abstractC3115s2.f1135c && (trySplit = interfaceC2853s.trySplit()) != null) {
            abstractC3115s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC3115s2.mo345b(trySplit, abstractC3115s2.f1136d, estimateSize).fork();
            abstractC3115s2 = abstractC3115s2.mo345b(interfaceC2853s, abstractC3115s2.f1136d + estimateSize, abstractC3115s2.f1137e - estimateSize);
        }
        AbstractC3016c abstractC3016c = (AbstractC3016c) abstractC3115s2.f1134b;
        Objects.requireNonNull(abstractC3016c);
        abstractC3016c.mo313n0(abstractC3016c.mo305v0(abstractC3115s2), interfaceC2853s);
        abstractC3115s2.propagateCompletion();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        long j2 = this.f1137e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1136d;
        this.f1138f = i;
        this.f1139g = i + ((int) j2);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
