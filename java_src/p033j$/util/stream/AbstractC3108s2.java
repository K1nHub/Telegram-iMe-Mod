package p033j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC3108s2 extends CountedCompleter implements InterfaceC3073m3 {

    /* renamed from: a */
    protected final Spliterator f1183a;

    /* renamed from: b */
    protected final AbstractC3144y2 f1184b;

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
    public AbstractC3108s2(Spliterator spliterator, AbstractC3144y2 abstractC3144y2, int i) {
        this.f1183a = spliterator;
        this.f1184b = abstractC3144y2;
        this.f1185c = AbstractC3027f.m466h(spliterator.estimateSize());
        this.f1186d = 0L;
        this.f1187e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3108s2(AbstractC3108s2 abstractC3108s2, Spliterator spliterator, long j, long j2, int i) {
        super(abstractC3108s2);
        this.f1183a = spliterator;
        this.f1184b = abstractC3108s2.f1184b;
        this.f1185c = abstractC3108s2.f1185c;
        this.f1186d = j;
        this.f1187e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3083o1.m418f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3083o1.m420d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3083o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    /* renamed from: b */
    abstract AbstractC3108s2 mo391b(Spliterator spliterator, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f1183a;
        AbstractC3108s2 abstractC3108s2 = this;
        while (spliterator.estimateSize() > abstractC3108s2.f1185c && (trySplit = spliterator.trySplit()) != null) {
            abstractC3108s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC3108s2.mo391b(trySplit, abstractC3108s2.f1186d, estimateSize).fork();
            abstractC3108s2 = abstractC3108s2.mo391b(spliterator, abstractC3108s2.f1186d + estimateSize, abstractC3108s2.f1187e - estimateSize);
        }
        AbstractC3009c abstractC3009c = (AbstractC3009c) abstractC3108s2.f1184b;
        Objects.requireNonNull(abstractC3009c);
        abstractC3009c.mo359m0(abstractC3009c.mo351u0(abstractC3108s2), spliterator);
        abstractC3108s2.propagateCompletion();
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        long j2 = this.f1187e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1186d;
        this.f1188f = i;
        this.f1189g = i + ((int) j2);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
