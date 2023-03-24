package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC2861o0 implements InterfaceC2712N4, InterfaceC2718O4 {

    /* renamed from: a */
    private final boolean f1007a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2861o0(boolean z) {
        this.f1007a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2862o1.m370d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2862o1.m369e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: b */
    public int mo376b() {
        if (this.f1007a) {
            return 0;
        }
        return EnumC2799d4.f918r;
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: c */
    public Object mo375c(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        (this.f1007a ? new C2873q0(abstractC2923y2, interfaceC2625s, this) : new C2879r0(abstractC2923y2, interfaceC2625s, abstractC2923y2.mo301v0(this))).invoke();
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: d */
    public Object mo374d(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        AbstractC2788c abstractC2788c = (AbstractC2788c) abstractC2923y2;
        abstractC2788c.mo309n0(abstractC2788c.mo301v0(this), interfaceC2625s);
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public /* synthetic */ void mo311n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
