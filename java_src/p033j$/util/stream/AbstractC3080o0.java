package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC3080o0 implements InterfaceC2931N4, InterfaceC2937O4 {

    /* renamed from: a */
    private final boolean f1145a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3080o0(boolean z) {
        this.f1145a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3081o1.m423d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: b */
    public int mo429b() {
        if (this.f1145a) {
            return 0;
        }
        return EnumC3018d4.f1056r;
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: c */
    public Object mo428c(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        (this.f1145a ? new C3092q0(abstractC3142y2, spliterator, this) : new C3098r0(abstractC3142y2, spliterator, abstractC3142y2.mo354u0(this))).invoke();
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: d */
    public Object mo427d(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        AbstractC3007c abstractC3007c = (AbstractC3007c) abstractC3142y2;
        abstractC3007c.mo362m0(abstractC3007c.mo354u0(this), spliterator);
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2833x
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public /* synthetic */ void mo364m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }
}
