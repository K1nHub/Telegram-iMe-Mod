package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2816e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3080n4 implements InterfaceC3055j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1140a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1141b;

    public /* synthetic */ C3080n4(InterfaceC2817f interfaceC2817f) {
        this.f1141b = interfaceC2817f;
    }

    @Override // p033j$.util.stream.InterfaceC3055j3, p033j$.util.stream.InterfaceC3073m3
    public final void accept(double d) {
        switch (this.f1140a) {
            case 0:
                ((InterfaceC2817f) this.f1141b).accept(d);
                return;
            default:
                ((C2970U3) this.f1141b).accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1140a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m427b(Double d) {
        switch (this.f1140a) {
            case 0:
                AbstractC3083o1.m423a(this, d);
                return;
            default:
                AbstractC3083o1.m423a(this, d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        switch (this.f1140a) {
            case 0:
                Objects.requireNonNull(interfaceC2817f);
                return new C2816e(this, interfaceC2817f);
            default:
                Objects.requireNonNull(interfaceC2817f);
                return new C2816e(this, interfaceC2817f);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public /* synthetic */ void mo361m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    public /* synthetic */ C3080n4(C2970U3 c2970u3) {
        this.f1141b = c2970u3;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1140a) {
            case 0:
                AbstractC3083o1.m420d(this);
                throw null;
            default:
                AbstractC3083o1.m420d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        switch (this.f1140a) {
            case 0:
                AbstractC3083o1.m419e(this);
                throw null;
            default:
                AbstractC3083o1.m419e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1140a) {
            case 0:
                m427b((Double) obj);
                return;
            default:
                m427b((Double) obj);
                return;
        }
    }
}
