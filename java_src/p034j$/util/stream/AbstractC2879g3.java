package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2660k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.stream.g3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2879g3 implements InterfaceC2903k3 {

    /* renamed from: a */
    protected final InterfaceC2915m3 f954a;

    public AbstractC2879g3(InterfaceC2915m3 interfaceC2915m3) {
        Objects.requireNonNull(interfaceC2915m3);
        this.f954a = interfaceC2915m3;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        AbstractC2925o1.m349f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        AbstractC2925o1.m350e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2925o1.m353b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        this.f954a.mo316m();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public boolean mo291o() {
        return this.f954a.mo291o();
    }
}
