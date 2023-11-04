package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3107r4 implements InterfaceC3070l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1180a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1181b;

    public /* synthetic */ C3107r4(InterfaceC2830p interfaceC2830p) {
        this.f1181b = interfaceC2830p;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1180a) {
            case 0:
                AbstractC3086o1.m418f(this);
                throw null;
            default:
                AbstractC3086o1.m418f(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1180a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m393b(Long l) {
        switch (this.f1180a) {
            case 0:
                AbstractC3086o1.m421c(this, l);
                return;
            default:
                AbstractC3086o1.m421c(this, l);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        switch (this.f1180a) {
            case 0:
                Objects.requireNonNull(interfaceC2830p);
                return new C2829o(this, interfaceC2830p);
            default:
                Objects.requireNonNull(interfaceC2830p);
                return new C2829o(this, interfaceC2830p);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public /* synthetic */ void mo361m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    public /* synthetic */ C3107r4(C2993Y3 c2993y3) {
        this.f1181b = c2993y3;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1180a) {
            case 0:
                AbstractC3086o1.m420d(this);
                throw null;
            default:
                AbstractC3086o1.m420d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public final void accept(long j) {
        switch (this.f1180a) {
            case 0:
                ((InterfaceC2830p) this.f1181b).accept(j);
                return;
            default:
                ((C2993Y3) this.f1181b).accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1180a) {
            case 0:
                m393b((Long) obj);
                return;
            default:
                m393b((Long) obj);
                return;
        }
    }
}
