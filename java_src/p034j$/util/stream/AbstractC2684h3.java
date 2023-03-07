package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2464p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.stream.h3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2684h3 implements InterfaceC2708l3 {

    /* renamed from: a */
    protected final InterfaceC2714m3 f953a;

    public AbstractC2684h3(InterfaceC2714m3 interfaceC2714m3) {
        Objects.requireNonNull(interfaceC2714m3);
        this.f953a = interfaceC2714m3;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(int i) {
        AbstractC2724o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2724o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        this.f953a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f953a.mo311o();
    }
}
