package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2693e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.stream.f3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2912f3 implements InterfaceC2936j3 {

    /* renamed from: a */
    protected final InterfaceC2954m3 f945a;

    public AbstractC2912f3(InterfaceC2954m3 interfaceC2954m3) {
        Objects.requireNonNull(interfaceC2954m3);
        this.f945a = interfaceC2954m3;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(int i) {
        AbstractC2964o1.m356d(this);
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
    public /* synthetic */ void accept(Double d) {
        AbstractC2964o1.m359a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
        this.f945a.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f945a.mo296o();
    }
}
