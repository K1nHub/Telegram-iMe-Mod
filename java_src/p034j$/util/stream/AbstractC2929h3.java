package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2709p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.stream.h3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2929h3 implements InterfaceC2953l3 {

    /* renamed from: a */
    protected final InterfaceC2959m3 f962a;

    public AbstractC2929h3(InterfaceC2959m3 interfaceC2959m3) {
        Objects.requireNonNull(interfaceC2959m3);
        this.f962a = interfaceC2959m3;
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

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2969o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
        this.f962a.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f962a.mo296o();
    }
}
