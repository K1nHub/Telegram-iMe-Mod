package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2826o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3104r4 implements InterfaceC3067l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1180a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1181b;

    public /* synthetic */ C3104r4(InterfaceC2827p interfaceC2827p) {
        this.f1181b = interfaceC2827p;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1180a) {
            case 0:
                AbstractC3083o1.m418f(this);
                throw null;
            default:
                AbstractC3083o1.m418f(this);
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
                AbstractC3083o1.m421c(this, l);
                return;
            default:
                AbstractC3083o1.m421c(this, l);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        switch (this.f1180a) {
            case 0:
                Objects.requireNonNull(interfaceC2827p);
                return new C2826o(this, interfaceC2827p);
            default:
                Objects.requireNonNull(interfaceC2827p);
                return new C2826o(this, interfaceC2827p);
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

    public /* synthetic */ C3104r4(C2990Y3 c2990y3) {
        this.f1181b = c2990y3;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1180a) {
            case 0:
                AbstractC3083o1.m420d(this);
                throw null;
            default:
                AbstractC3083o1.m420d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public final void accept(long j) {
        switch (this.f1180a) {
            case 0:
                ((InterfaceC2827p) this.f1181b).accept(j);
                return;
            default:
                ((C2990Y3) this.f1181b).accept(j);
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
