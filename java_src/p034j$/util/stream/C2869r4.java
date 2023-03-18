package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2588p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2869r4 implements InterfaceC2832l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1041a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1042b;

    public /* synthetic */ C2869r4(InterfaceC2589q interfaceC2589q) {
        this.f1042b = interfaceC2589q;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1041a) {
            case 0:
                AbstractC2848o1.m369f(this);
                throw null;
            default:
                AbstractC2848o1.m369f(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1041a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m344b(Long l) {
        switch (this.f1041a) {
            case 0:
                AbstractC2848o1.m372c(this, l);
                return;
            default:
                AbstractC2848o1.m372c(this, l);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        switch (this.f1041a) {
            case 0:
                Objects.requireNonNull(interfaceC2589q);
                return new C2588p(this, interfaceC2589q);
            default:
                Objects.requireNonNull(interfaceC2589q);
                return new C2588p(this, interfaceC2589q);
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

    public /* synthetic */ C2869r4(C2755Y3 c2755y3) {
        this.f1042b = c2755y3;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1041a) {
            case 0:
                AbstractC2848o1.m371d(this);
                throw null;
            default:
                AbstractC2848o1.m371d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public final void accept(long j) {
        switch (this.f1041a) {
            case 0:
                ((InterfaceC2589q) this.f1042b).accept(j);
                return;
            default:
                ((C2755Y3) this.f1042b).accept(j);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1041a) {
            case 0:
                m344b((Long) obj);
                return;
            default:
                m344b((Long) obj);
                return;
        }
    }
}
