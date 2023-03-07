package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC2723o0 implements InterfaceC2574N4, InterfaceC2580O4 {

    /* renamed from: a */
    private final boolean f1001a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2723o0(boolean z) {
        this.f1001a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2724o1.m371d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2724o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: b */
    public int mo377b() {
        if (this.f1001a) {
            return 0;
        }
        return EnumC2661d4.f912r;
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: c */
    public Object mo376c(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        (this.f1001a ? new C2735q0(abstractC2785y2, interfaceC2487s, this) : new C2741r0(abstractC2785y2, interfaceC2487s, abstractC2785y2.mo302v0(this))).invoke();
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: d */
    public Object mo375d(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        AbstractC2650c abstractC2650c = (AbstractC2650c) abstractC2785y2;
        abstractC2650c.mo310n0(abstractC2650c.mo302v0(this), interfaceC2487s);
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public /* synthetic */ void mo312n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
