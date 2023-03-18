package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC2847o0 implements InterfaceC2698N4, InterfaceC2704O4 {

    /* renamed from: a */
    private final boolean f1006a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2847o0(boolean z) {
        this.f1006a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2848o1.m369f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2848o1.m371d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2848o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: b */
    public int mo377b() {
        if (this.f1006a) {
            return 0;
        }
        return EnumC2785d4.f917r;
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: c */
    public Object mo376c(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        (this.f1006a ? new C2859q0(abstractC2909y2, interfaceC2611s, this) : new C2865r0(abstractC2909y2, interfaceC2611s, abstractC2909y2.mo302v0(this))).invoke();
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: d */
    public Object mo375d(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        AbstractC2774c abstractC2774c = (AbstractC2774c) abstractC2909y2;
        abstractC2774c.mo310n0(abstractC2774c.mo302v0(this), interfaceC2611s);
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2597y
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public /* synthetic */ void mo312n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
