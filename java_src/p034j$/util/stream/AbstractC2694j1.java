package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.j1 */
/* loaded from: classes2.dex */
abstract class AbstractC2694j1 implements InterfaceC2714m3 {

    /* renamed from: a */
    boolean f964a;

    /* renamed from: b */
    boolean f965b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2694j1(EnumC2700k1 enumC2700k1) {
        boolean z;
        z = enumC2700k1.f971b;
        this.f965b = !z;
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

    @Override // p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public /* synthetic */ void accept(long j) {
        AbstractC2724o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public /* synthetic */ void mo312n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f964a;
    }
}
