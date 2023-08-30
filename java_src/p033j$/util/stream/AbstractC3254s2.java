package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC3254s2 extends CountedCompleter implements InterfaceC3219m3 {

    /* renamed from: a */
    protected final InterfaceC2992s f1143a;

    /* renamed from: b */
    protected final AbstractC3290y2 f1144b;

    /* renamed from: c */
    protected final long f1145c;

    /* renamed from: d */
    protected long f1146d;

    /* renamed from: e */
    protected long f1147e;

    /* renamed from: f */
    protected int f1148f;

    /* renamed from: g */
    protected int f1149g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3254s2(InterfaceC2992s interfaceC2992s, AbstractC3290y2 abstractC3290y2, int i) {
        this.f1143a = interfaceC2992s;
        this.f1144b = abstractC3290y2;
        this.f1145c = AbstractC3173f.m420h(interfaceC2992s.estimateSize());
        this.f1146d = 0L;
        this.f1147e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3254s2(AbstractC3254s2 abstractC3254s2, InterfaceC2992s interfaceC2992s, long j, long j2, int i) {
        super(abstractC3254s2);
        this.f1143a = interfaceC2992s;
        this.f1144b = abstractC3254s2.f1144b;
        this.f1145c = abstractC3254s2.f1145c;
        this.f1146d = j;
        this.f1147e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3229o1.m372f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3229o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    /* renamed from: b */
    abstract AbstractC3254s2 mo345b(InterfaceC2992s interfaceC2992s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2992s trySplit;
        InterfaceC2992s interfaceC2992s = this.f1143a;
        AbstractC3254s2 abstractC3254s2 = this;
        while (interfaceC2992s.estimateSize() > abstractC3254s2.f1145c && (trySplit = interfaceC2992s.trySplit()) != null) {
            abstractC3254s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC3254s2.mo345b(trySplit, abstractC3254s2.f1146d, estimateSize).fork();
            abstractC3254s2 = abstractC3254s2.mo345b(interfaceC2992s, abstractC3254s2.f1146d + estimateSize, abstractC3254s2.f1147e - estimateSize);
        }
        AbstractC3155c abstractC3155c = (AbstractC3155c) abstractC3254s2.f1144b;
        Objects.requireNonNull(abstractC3155c);
        abstractC3155c.mo313n0(abstractC3155c.mo305v0(abstractC3254s2), interfaceC2992s);
        abstractC3254s2.propagateCompletion();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        long j2 = this.f1147e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1146d;
        this.f1148f = i;
        this.f1149g = i + ((int) j2);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
