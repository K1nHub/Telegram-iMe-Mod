package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2969p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3250r4 implements InterfaceC3213l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1140a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1141b;

    public /* synthetic */ C3250r4(InterfaceC2970q interfaceC2970q) {
        this.f1141b = interfaceC2970q;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1140a) {
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
        switch (this.f1140a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m347b(Long l) {
        switch (this.f1140a) {
            case 0:
                AbstractC3229o1.m375c(this, l);
                return;
            default:
                AbstractC3229o1.m375c(this, l);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        switch (this.f1140a) {
            case 0:
                Objects.requireNonNull(interfaceC2970q);
                return new C2969p(this, interfaceC2970q);
            default:
                Objects.requireNonNull(interfaceC2970q);
                return new C2969p(this, interfaceC2970q);
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

    public /* synthetic */ C3250r4(C3136Y3 c3136y3) {
        this.f1141b = c3136y3;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1140a) {
            case 0:
                AbstractC3229o1.m374d(this);
                throw null;
            default:
                AbstractC3229o1.m374d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public final void accept(long j) {
        switch (this.f1140a) {
            case 0:
                ((InterfaceC2970q) this.f1141b).accept(j);
                return;
            default:
                ((C3136Y3) this.f1141b).accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1140a) {
            case 0:
                m347b((Long) obj);
                return;
            default:
                m347b((Long) obj);
                return;
        }
    }
}
