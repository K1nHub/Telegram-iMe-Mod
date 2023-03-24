package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.i0 */
/* loaded from: classes2.dex */
abstract class AbstractC2825i0 implements InterfaceC2718O4 {

    /* renamed from: a */
    boolean f962a;

    /* renamed from: b */
    Object f963b;

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
    public void accept(Object obj) {
        if (this.f962a) {
            return;
        }
        this.f962a = true;
        this.f963b = obj;
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
        return this.f962a;
    }
}
