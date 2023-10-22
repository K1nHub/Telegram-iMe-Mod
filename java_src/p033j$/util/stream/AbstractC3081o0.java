package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC3081o0 implements InterfaceC2932N4, InterfaceC2938O4 {

    /* renamed from: a */
    private final boolean f1145a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3081o0(boolean z) {
        this.f1145a = z;
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

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: b */
    public int mo425b() {
        if (this.f1145a) {
            return 0;
        }
        return EnumC3019d4.f1056r;
    }

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: c */
    public Object mo424c(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        (this.f1145a ? new C3093q0(abstractC3143y2, spliterator, this) : new C3099r0(abstractC3143y2, spliterator, abstractC3143y2.mo350u0(this))).invoke();
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: d */
    public Object mo423d(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        AbstractC3008c abstractC3008c = (AbstractC3008c) abstractC3143y2;
        abstractC3008c.mo358m0(abstractC3008c.mo350u0(this), spliterator);
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public /* synthetic */ void mo360m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
