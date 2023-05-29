package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.i3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2935i3 implements InterfaceC2959m3 {

    /* renamed from: a */
    protected final InterfaceC2959m3 f969a;

    public AbstractC2935i3(InterfaceC2959m3 interfaceC2959m3) {
        Objects.requireNonNull(interfaceC2959m3);
        this.f969a = interfaceC2959m3;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
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

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
        this.f969a.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f969a.mo296o();
    }
}
