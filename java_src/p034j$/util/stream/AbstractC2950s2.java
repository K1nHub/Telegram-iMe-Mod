package p034j$.util.stream;

import java.util.Objects;
import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.s2 */
/* loaded from: classes2.dex */
abstract class AbstractC2950s2 extends CountedCompleter implements InterfaceC2915m3 {

    /* renamed from: a */
    protected final InterfaceC2688s f1045a;

    /* renamed from: b */
    protected final AbstractC2986y2 f1046b;

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
    public AbstractC2950s2(InterfaceC2688s interfaceC2688s, AbstractC2986y2 abstractC2986y2, int i) {
        this.f1045a = interfaceC2688s;
        this.f1046b = abstractC2986y2;
        this.f1047c = AbstractC2869f.m397h(interfaceC2688s.estimateSize());
        this.f1048d = 0L;
        this.f1049e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2950s2(AbstractC2950s2 abstractC2950s2, InterfaceC2688s interfaceC2688s, long j, long j2, int i) {
        super(abstractC2950s2);
        this.f1045a = interfaceC2688s;
        this.f1046b = abstractC2950s2.f1046b;
        this.f1047c = abstractC2950s2.f1047c;
        this.f1048d = j;
        this.f1049e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2925o1.m349f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2925o1.m351d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2925o1.m350e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    /* renamed from: b */
    abstract AbstractC2950s2 mo322b(InterfaceC2688s interfaceC2688s, long j, long j2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        InterfaceC2688s trySplit;
        InterfaceC2688s interfaceC2688s = this.f1045a;
        AbstractC2950s2 abstractC2950s2 = this;
        while (interfaceC2688s.estimateSize() > abstractC2950s2.f1047c && (trySplit = interfaceC2688s.trySplit()) != null) {
            abstractC2950s2.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC2950s2.mo322b(trySplit, abstractC2950s2.f1048d, estimateSize).fork();
            abstractC2950s2 = abstractC2950s2.mo322b(interfaceC2688s, abstractC2950s2.f1048d + estimateSize, abstractC2950s2.f1049e - estimateSize);
        }
        AbstractC2851c abstractC2851c = (AbstractC2851c) abstractC2950s2.f1046b;
        Objects.requireNonNull(abstractC2851c);
        abstractC2851c.mo290n0(abstractC2851c.mo282v0(abstractC2950s2), interfaceC2688s);
        abstractC2950s2.propagateCompletion();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        long j2 = this.f1049e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.f1048d;
        this.f1050f = i;
        this.f1051g = i + ((int) j2);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}
