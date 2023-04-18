package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.i3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2891i3 implements InterfaceC2915m3 {

    /* renamed from: a */
    protected final InterfaceC2915m3 f966a;

    public AbstractC2891i3(InterfaceC2915m3 interfaceC2915m3) {
        Objects.requireNonNull(interfaceC2915m3);
        this.f966a = interfaceC2915m3;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        AbstractC2925o1.m349f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(int i) {
        AbstractC2925o1.m351d(this);
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

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        this.f966a.mo316m();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public boolean mo291o() {
        return this.f966a.mo291o();
    }
}
