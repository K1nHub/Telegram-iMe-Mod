package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.i0 */
/* loaded from: classes2.dex */
abstract class AbstractC2687i0 implements InterfaceC2580O4 {

    /* renamed from: a */
    boolean f956a;

    /* renamed from: b */
    Object f957b;

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
    public void accept(Object obj) {
        if (this.f956a) {
            return;
        }
        this.f956a = true;
        this.f957b = obj;
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
        return this.f956a;
    }
}
