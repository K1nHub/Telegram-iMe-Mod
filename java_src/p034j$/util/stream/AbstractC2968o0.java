package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC2968o0 implements InterfaceC2819N4, InterfaceC2825O4 {

    /* renamed from: a */
    private final boolean f1010a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2968o0(boolean z) {
        this.f1010a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: b */
    public int mo362b() {
        if (this.f1010a) {
            return 0;
        }
        return EnumC2906d4.f921r;
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: c */
    public Object mo361c(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        (this.f1010a ? new C2980q0(abstractC3030y2, interfaceC2732s, this) : new C2986r0(abstractC3030y2, interfaceC2732s, abstractC3030y2.mo287v0(this))).invoke();
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: d */
    public Object mo360d(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        AbstractC2895c abstractC2895c = (AbstractC2895c) abstractC3030y2;
        abstractC2895c.mo295n0(abstractC2895c.mo287v0(this), interfaceC2732s);
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2718y
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public /* synthetic */ void mo297n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
