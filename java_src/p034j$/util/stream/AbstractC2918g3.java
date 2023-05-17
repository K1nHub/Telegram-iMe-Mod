package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2699k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.stream.g3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2918g3 implements InterfaceC2942k3 {

    /* renamed from: a */
    protected final InterfaceC2954m3 f957a;

    public AbstractC2918g3(InterfaceC2954m3 interfaceC2954m3) {
        Objects.requireNonNull(interfaceC2954m3);
        this.f957a = interfaceC2954m3;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(double d) {
        AbstractC2964o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public /* synthetic */ void accept(long j) {
        AbstractC2964o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2964o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
        this.f957a.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f957a.mo296o();
    }
}
