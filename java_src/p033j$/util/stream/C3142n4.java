package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2874e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3142n4 implements InterfaceC3117j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1091a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1092b;

    public /* synthetic */ C3142n4(InterfaceC2875f interfaceC2875f) {
        this.f1092b = interfaceC2875f;
    }

    @Override // p033j$.util.stream.InterfaceC3117j3, p033j$.util.stream.InterfaceC3135m3
    public final void accept(double d) {
        switch (this.f1091a) {
            case 0:
                ((InterfaceC2875f) this.f1092b).accept(d);
                return;
            default:
                ((C3032U3) this.f1092b).accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1091a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m381b(Double d) {
        switch (this.f1091a) {
            case 0:
                AbstractC3145o1.m377a(this, d);
                return;
            default:
                AbstractC3145o1.m377a(this, d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        switch (this.f1091a) {
            case 0:
                Objects.requireNonNull(interfaceC2875f);
                return new C2874e(this, interfaceC2875f);
            default:
                Objects.requireNonNull(interfaceC2875f);
                return new C2874e(this, interfaceC2875f);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    public /* synthetic */ C3142n4(C3032U3 c3032u3) {
        this.f1092b = c3032u3;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1091a) {
            case 0:
                AbstractC3145o1.m374d(this);
                throw null;
            default:
                AbstractC3145o1.m374d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public /* synthetic */ void accept(long j) {
        switch (this.f1091a) {
            case 0:
                AbstractC3145o1.m373e(this);
                throw null;
            default:
                AbstractC3145o1.m373e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1091a) {
            case 0:
                m381b((Double) obj);
                return;
            default:
                m381b((Double) obj);
                return;
        }
    }
}
