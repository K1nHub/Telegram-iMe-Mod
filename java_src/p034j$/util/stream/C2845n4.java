package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2577e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2845n4 implements InterfaceC2820j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1001a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1002b;

    public /* synthetic */ C2845n4(InterfaceC2578f interfaceC2578f) {
        this.f1002b = interfaceC2578f;
    }

    @Override // p034j$.util.stream.InterfaceC2820j3, p034j$.util.stream.InterfaceC2838m3
    public final void accept(double d) {
        switch (this.f1001a) {
            case 0:
                ((InterfaceC2578f) this.f1002b).accept(d);
                return;
            default:
                ((C2735U3) this.f1002b).accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1001a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m378b(Double d) {
        switch (this.f1001a) {
            case 0:
                AbstractC2848o1.m374a(this, d);
                return;
            default:
                AbstractC2848o1.m374a(this, d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        switch (this.f1001a) {
            case 0:
                Objects.requireNonNull(interfaceC2578f);
                return new C2577e(this, interfaceC2578f);
            default:
                Objects.requireNonNull(interfaceC2578f);
                return new C2577e(this, interfaceC2578f);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public /* synthetic */ void mo312n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    public /* synthetic */ C2845n4(C2735U3 c2735u3) {
        this.f1002b = c2735u3;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1001a) {
            case 0:
                AbstractC2848o1.m371d(this);
                throw null;
            default:
                AbstractC2848o1.m371d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public /* synthetic */ void accept(long j) {
        switch (this.f1001a) {
            case 0:
                AbstractC2848o1.m370e(this);
                throw null;
            default:
                AbstractC2848o1.m370e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1001a) {
            case 0:
                m378b((Double) obj);
                return;
            default:
                m378b((Double) obj);
                return;
        }
    }
}
