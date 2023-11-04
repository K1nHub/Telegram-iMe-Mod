package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC3085o0 implements InterfaceC2936N4, InterfaceC2942O4 {

    /* renamed from: a */
    private final boolean f1145a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3085o0(boolean z) {
        this.f1145a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3086o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: b */
    public int mo426b() {
        if (this.f1145a) {
            return 0;
        }
        return EnumC3023d4.f1056r;
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: c */
    public Object mo425c(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        (this.f1145a ? new C3097q0(abstractC3147y2, spliterator, this) : new C3103r0(abstractC3147y2, spliterator, abstractC3147y2.mo351u0(this))).invoke();
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: d */
    public Object mo424d(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        AbstractC3012c abstractC3012c = (AbstractC3012c) abstractC3147y2;
        abstractC3012c.mo359m0(abstractC3012c.mo351u0(this), spliterator);
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2838x
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public /* synthetic */ void mo361m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
