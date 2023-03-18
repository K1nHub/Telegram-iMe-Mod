package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2857p4 implements InterfaceC2826k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1016a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1017b;

    public /* synthetic */ C2857p4(InterfaceC2584l interfaceC2584l) {
        this.f1017b = interfaceC2584l;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1016a) {
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
        switch (this.f1016a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m346b(Integer num) {
        switch (this.f1016a) {
            case 0:
                AbstractC2848o1.m373b(this, num);
                return;
            default:
                AbstractC2848o1.m373b(this, num);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        switch (this.f1016a) {
            case 0:
                Objects.requireNonNull(interfaceC2584l);
                return new C2583k(this, interfaceC2584l);
            default:
                Objects.requireNonNull(interfaceC2584l);
                return new C2583k(this, interfaceC2584l);
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

    public /* synthetic */ C2857p4(C2745W3 c2745w3) {
        this.f1017b = c2745w3;
    }

    @Override // p034j$.util.stream.InterfaceC2826k3, p034j$.util.stream.InterfaceC2838m3
    public final void accept(int i) {
        switch (this.f1016a) {
            case 0:
                ((InterfaceC2584l) this.f1017b).accept(i);
                return;
            default:
                ((C2745W3) this.f1017b).accept(i);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public /* synthetic */ void accept(long j) {
        switch (this.f1016a) {
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
        switch (this.f1016a) {
            case 0:
                m346b((Integer) obj);
                return;
            default:
                m346b((Integer) obj);
                return;
        }
    }
}
