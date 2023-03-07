package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2733p4 implements InterfaceC2702k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1011a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1012b;

    public /* synthetic */ C2733p4(InterfaceC2460l interfaceC2460l) {
        this.f1012b = interfaceC2460l;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1011a) {
            case 0:
                AbstractC2724o1.m369f(this);
                throw null;
            default:
                AbstractC2724o1.m369f(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1011a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m346b(Integer num) {
        switch (this.f1011a) {
            case 0:
                AbstractC2724o1.m373b(this, num);
                return;
            default:
                AbstractC2724o1.m373b(this, num);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        switch (this.f1011a) {
            case 0:
                Objects.requireNonNull(interfaceC2460l);
                return new C2459k(this, interfaceC2460l);
            default:
                Objects.requireNonNull(interfaceC2460l);
                return new C2459k(this, interfaceC2460l);
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

    public /* synthetic */ C2733p4(C2621W3 c2621w3) {
        this.f1012b = c2621w3;
    }

    @Override // p034j$.util.stream.InterfaceC2702k3, p034j$.util.stream.InterfaceC2714m3
    public final void accept(int i) {
        switch (this.f1011a) {
            case 0:
                ((InterfaceC2460l) this.f1012b).accept(i);
                return;
            default:
                ((C2621W3) this.f1012b).accept(i);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public /* synthetic */ void accept(long j) {
        switch (this.f1011a) {
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
        switch (this.f1011a) {
            case 0:
                m346b((Integer) obj);
                return;
            default:
                m346b((Integer) obj);
                return;
        }
    }
}
