package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.stream.h3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2924h3 implements InterfaceC2948l3 {

    /* renamed from: a */
    protected final InterfaceC2954m3 f962a;

    public AbstractC2924h3(InterfaceC2954m3 interfaceC2954m3) {
        Objects.requireNonNull(interfaceC2954m3);
        this.f962a = interfaceC2954m3;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(double d) {
        AbstractC2964o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(int i) {
        AbstractC2964o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2964o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
        this.f962a.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f962a.mo296o();
    }
}
