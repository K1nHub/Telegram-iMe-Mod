package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.j1 */
/* loaded from: classes2.dex */
abstract class AbstractC2832j1 implements InterfaceC2852m3 {

    /* renamed from: a */
    boolean f970a;

    /* renamed from: b */
    boolean f971b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2832j1(EnumC2838k1 enumC2838k1) {
        boolean z;
        z = enumC2838k1.f977b;
        this.f971b = !z;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(int i) {
        AbstractC2862o1.m370d(this);
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

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public /* synthetic */ void mo311n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public boolean mo310o() {
        return this.f970a;
    }
}
