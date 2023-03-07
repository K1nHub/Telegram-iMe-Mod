package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.stream.g3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2678g3 implements InterfaceC2702k3 {

    /* renamed from: a */
    protected final InterfaceC2714m3 f948a;

    public AbstractC2678g3(InterfaceC2714m3 interfaceC2714m3) {
        Objects.requireNonNull(interfaceC2714m3);
        this.f948a = interfaceC2714m3;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public /* synthetic */ void accept(long j) {
        AbstractC2724o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2724o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        this.f948a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f948a.mo311o();
    }
}
