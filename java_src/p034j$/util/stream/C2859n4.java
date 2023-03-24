package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2591e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2859n4 implements InterfaceC2834j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1002a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1003b;

    public /* synthetic */ C2859n4(InterfaceC2592f interfaceC2592f) {
        this.f1003b = interfaceC2592f;
    }

    @Override // p034j$.util.stream.InterfaceC2834j3, p034j$.util.stream.InterfaceC2852m3
    public final void accept(double d) {
        switch (this.f1002a) {
            case 0:
                ((InterfaceC2592f) this.f1003b).accept(d);
                return;
            default:
                ((C2749U3) this.f1003b).accept(d);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1002a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m377b(Double d) {
        switch (this.f1002a) {
            case 0:
                AbstractC2862o1.m373a(this, d);
                return;
            default:
                AbstractC2862o1.m373a(this, d);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        switch (this.f1002a) {
            case 0:
                Objects.requireNonNull(interfaceC2592f);
                return new C2591e(this, interfaceC2592f);
            default:
                Objects.requireNonNull(interfaceC2592f);
                return new C2591e(this, interfaceC2592f);
        }
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
    public /* synthetic */ boolean mo310o() {
        return false;
    }

    public /* synthetic */ C2859n4(C2749U3 c2749u3) {
        this.f1003b = c2749u3;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1002a) {
            case 0:
                AbstractC2862o1.m370d(this);
                throw null;
            default:
                AbstractC2862o1.m370d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        switch (this.f1002a) {
            case 0:
                AbstractC2862o1.m369e(this);
                throw null;
            default:
                AbstractC2862o1.m369e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1002a) {
            case 0:
                m377b((Double) obj);
                return;
            default:
                m377b((Double) obj);
                return;
        }
    }
}
