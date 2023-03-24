package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.stream.g3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2816g3 implements InterfaceC2840k3 {

    /* renamed from: a */
    protected final InterfaceC2852m3 f954a;

    public AbstractC2816g3(InterfaceC2852m3 interfaceC2852m3) {
        Objects.requireNonNull(interfaceC2852m3);
        this.f954a = interfaceC2852m3;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        AbstractC2862o1.m369e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2862o1.m372b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        this.f954a.mo335m();
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public boolean mo310o() {
        return this.f954a.mo310o();
    }
}
