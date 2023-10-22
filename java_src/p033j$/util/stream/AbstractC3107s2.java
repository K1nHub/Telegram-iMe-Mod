package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC3107s2 extends CountedCompleter implements InterfaceC3072m3 {

    /* renamed from: a */
    protected final Spliterator f1183a;

    /* renamed from: b */
    protected final AbstractC3143y2 f1184b;

    /* renamed from: c */
    protected final long f1185c;

    /* renamed from: d */
    protected long f1186d;

    /* renamed from: e */
    protected long f1187e;

    /* renamed from: f */
    protected int f1188f;

    /* renamed from: g */
    protected int f1189g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3107s2(Spliterator spliterator, AbstractC3143y2 abstractC3143y2, int i) {
        this.f1183a = spliterator;
        this.f1184b = abstractC3143y2;
        this.f1185c = AbstractC3026f.m465h(spliterator.estimateSize());
        this.f1186d = 0L;
        this.f1187e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3107s2(AbstractC3107s2 abstractC3107s2, Spliterator spliterator, long j, long j2, int i) {
        super(abstractC3107s2);
        this.f1183a = spliterator;
        this.f1184b = abstractC3107s2.f1184b;
        this.f1185c = abstractC3107s2.f1185c;
        this.f1186d = j;
        this.f1187e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3082o1.m419d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    /* renamed from: b */
    abstract AbstractC3107s2 mo390b(Spliterator spliterator, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f1183a;
        AbstractC3107s2 abstractC3107s2 = this;
        while (spliterator.estimateSize() > abstractC3107s2.f1185c && (trySplit = spliterator.trySplit()) != null) {
            abstractC3107s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC3107s2.mo390b(trySplit, abstractC3107s2.f1186d, estimateSize).fork();
            abstractC3107s2 = abstractC3107s2.mo390b(spliterator, abstractC3107s2.f1186d + estimateSize, abstractC3107s2.f1187e - estimateSize);
        }
        AbstractC3008c abstractC3008c = (AbstractC3008c) abstractC3107s2.f1184b;
        Objects.requireNonNull(abstractC3008c);
        abstractC3008c.mo358m0(abstractC3008c.mo350u0(abstractC3107s2), spliterator);
        abstractC3107s2.propagateCompletion();
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        long j2 = this.f1187e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1186d;
        this.f1188f = i;
        this.f1189g = i + ((int) j2);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
