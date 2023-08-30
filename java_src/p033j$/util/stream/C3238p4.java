package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2964k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3238p4 implements InterfaceC3207k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1115a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1116b;

    public /* synthetic */ C3238p4(InterfaceC2965l interfaceC2965l) {
        this.f1116b = interfaceC2965l;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1115a) {
            case 0:
                AbstractC3229o1.m372f(this);
                throw null;
            default:
                AbstractC3229o1.m372f(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1115a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m349b(Integer num) {
        switch (this.f1115a) {
            case 0:
                AbstractC3229o1.m376b(this, num);
                return;
            default:
                AbstractC3229o1.m376b(this, num);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        switch (this.f1115a) {
            case 0:
                Objects.requireNonNull(interfaceC2965l);
                return new C2964k(this, interfaceC2965l);
            default:
                Objects.requireNonNull(interfaceC2965l);
                return new C2964k(this, interfaceC2965l);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    public /* synthetic */ C3238p4(C3126W3 c3126w3) {
        this.f1116b = c3126w3;
    }

    @Override // p033j$.util.stream.InterfaceC3207k3, p033j$.util.stream.InterfaceC3219m3
    public final void accept(int i) {
        switch (this.f1115a) {
            case 0:
                ((InterfaceC2965l) this.f1116b).accept(i);
                return;
            default:
                ((C3126W3) this.f1116b).accept(i);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        switch (this.f1115a) {
            case 0:
                AbstractC3229o1.m373e(this);
                throw null;
            default:
                AbstractC3229o1.m373e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1115a) {
            case 0:
                m349b((Integer) obj);
                return;
            default:
                m349b((Integer) obj);
                return;
        }
    }
}
