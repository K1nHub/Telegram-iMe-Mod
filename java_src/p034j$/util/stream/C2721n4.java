package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2453e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2721n4 implements InterfaceC2696j3 {

    /* renamed from: a */
    public final /* synthetic */ int f996a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f997b;

    public /* synthetic */ C2721n4(InterfaceC2454f interfaceC2454f) {
        this.f997b = interfaceC2454f;
    }

    @Override // p034j$.util.stream.InterfaceC2696j3, p034j$.util.stream.InterfaceC2714m3
    public final void accept(double d) {
        switch (this.f996a) {
            case 0:
                ((InterfaceC2454f) this.f997b).accept(d);
                return;
            default:
                ((C2611U3) this.f997b).accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f996a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m378b(Double d) {
        switch (this.f996a) {
            case 0:
                AbstractC2724o1.m374a(this, d);
                return;
            default:
                AbstractC2724o1.m374a(this, d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        switch (this.f996a) {
            case 0:
                Objects.requireNonNull(interfaceC2454f);
                return new C2453e(this, interfaceC2454f);
            default:
                Objects.requireNonNull(interfaceC2454f);
                return new C2453e(this, interfaceC2454f);
        }
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
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    public /* synthetic */ C2721n4(C2611U3 c2611u3) {
        this.f997b = c2611u3;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(int i) {
        switch (this.f996a) {
            case 0:
                AbstractC2724o1.m371d(this);
                throw null;
            default:
                AbstractC2724o1.m371d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public /* synthetic */ void accept(long j) {
        switch (this.f996a) {
            case 0:
                AbstractC2724o1.m370e(this);
                throw null;
            default:
                AbstractC2724o1.m370e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f996a) {
            case 0:
                m378b((Double) obj);
                return;
            default:
                m378b((Double) obj);
                return;
        }
    }
}
