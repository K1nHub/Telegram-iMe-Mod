package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2830p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3111r4 implements InterfaceC3074l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1130a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1131b;

    public /* synthetic */ C3111r4(InterfaceC2831q interfaceC2831q) {
        this.f1131b = interfaceC2831q;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1130a) {
            case 0:
                AbstractC3090o1.m372f(this);
                throw null;
            default:
                AbstractC3090o1.m372f(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1130a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m347b(Long l) {
        switch (this.f1130a) {
            case 0:
                AbstractC3090o1.m375c(this, l);
                return;
            default:
                AbstractC3090o1.m375c(this, l);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo158f(InterfaceC2831q interfaceC2831q) {
        switch (this.f1130a) {
            case 0:
                Objects.requireNonNull(interfaceC2831q);
                return new C2830p(this, interfaceC2831q);
            default:
                Objects.requireNonNull(interfaceC2831q);
                return new C2830p(this, interfaceC2831q);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    public /* synthetic */ C3111r4(C2997Y3 c2997y3) {
        this.f1131b = c2997y3;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1130a) {
            case 0:
                AbstractC3090o1.m374d(this);
                throw null;
            default:
                AbstractC3090o1.m374d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public final void accept(long j) {
        switch (this.f1130a) {
            case 0:
                ((InterfaceC2831q) this.f1131b).accept(j);
                return;
            default:
                ((C2997Y3) this.f1131b).accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1130a) {
            case 0:
                m347b((Long) obj);
                return;
            default:
                m347b((Long) obj);
                return;
        }
    }
}
