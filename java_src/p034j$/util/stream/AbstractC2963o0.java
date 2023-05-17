package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC2963o0 implements InterfaceC2814N4, InterfaceC2820O4 {

    /* renamed from: a */
    private final boolean f1010a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2963o0(boolean z) {
        this.f1010a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2964o1.m354f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2964o1.m356d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2964o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: b */
    public int mo362b() {
        if (this.f1010a) {
            return 0;
        }
        return EnumC2901d4.f921r;
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: c */
    public Object mo361c(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        (this.f1010a ? new C2975q0(abstractC3025y2, interfaceC2727s, this) : new C2981r0(abstractC3025y2, interfaceC2727s, abstractC3025y2.mo287v0(this))).invoke();
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: d */
    public Object mo360d(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        AbstractC2890c abstractC2890c = (AbstractC2890c) abstractC3025y2;
        abstractC2890c.mo295n0(abstractC2890c.mo287v0(this), interfaceC2727s);
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2713y
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public /* synthetic */ void mo297n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
