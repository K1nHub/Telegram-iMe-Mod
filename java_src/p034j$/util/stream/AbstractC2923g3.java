package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.stream.g3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2923g3 implements InterfaceC2947k3 {

    /* renamed from: a */
    protected final InterfaceC2959m3 f957a;

    public AbstractC2923g3(InterfaceC2959m3 interfaceC2959m3) {
        Objects.requireNonNull(interfaceC2959m3);
        this.f957a = interfaceC2959m3;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2969o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
        this.f957a.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f957a.mo296o();
    }
}
