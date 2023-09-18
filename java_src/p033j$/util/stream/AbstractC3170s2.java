package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC3170s2 extends CountedCompleter implements InterfaceC3135m3 {

    /* renamed from: a */
    protected final InterfaceC2908s f1134a;

    /* renamed from: b */
    protected final AbstractC3206y2 f1135b;

    /* renamed from: c */
    protected final long f1136c;

    /* renamed from: d */
    protected long f1137d;

    /* renamed from: e */
    protected long f1138e;

    /* renamed from: f */
    protected int f1139f;

    /* renamed from: g */
    protected int f1140g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3170s2(InterfaceC2908s interfaceC2908s, AbstractC3206y2 abstractC3206y2, int i) {
        this.f1134a = interfaceC2908s;
        this.f1135b = abstractC3206y2;
        this.f1136c = AbstractC3089f.m420h(interfaceC2908s.estimateSize());
        this.f1137d = 0L;
        this.f1138e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3170s2(AbstractC3170s2 abstractC3170s2, InterfaceC2908s interfaceC2908s, long j, long j2, int i) {
        super(abstractC3170s2);
        this.f1134a = interfaceC2908s;
        this.f1135b = abstractC3170s2.f1135b;
        this.f1136c = abstractC3170s2.f1136c;
        this.f1137d = j;
        this.f1138e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3145o1.m372f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3145o1.m374d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3145o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    /* renamed from: b */
    abstract AbstractC3170s2 mo345b(InterfaceC2908s interfaceC2908s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2908s trySplit;
        InterfaceC2908s interfaceC2908s = this.f1134a;
        AbstractC3170s2 abstractC3170s2 = this;
        while (interfaceC2908s.estimateSize() > abstractC3170s2.f1136c && (trySplit = interfaceC2908s.trySplit()) != null) {
            abstractC3170s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC3170s2.mo345b(trySplit, abstractC3170s2.f1137d, estimateSize).fork();
            abstractC3170s2 = abstractC3170s2.mo345b(interfaceC2908s, abstractC3170s2.f1137d + estimateSize, abstractC3170s2.f1138e - estimateSize);
        }
        AbstractC3071c abstractC3071c = (AbstractC3071c) abstractC3170s2.f1135b;
        Objects.requireNonNull(abstractC3071c);
        abstractC3071c.mo313n0(abstractC3071c.mo305v0(abstractC3170s2), interfaceC2908s);
        abstractC3170s2.propagateCompletion();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        long j2 = this.f1138e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1137d;
        this.f1139f = i;
        this.f1140g = i + ((int) j2);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
