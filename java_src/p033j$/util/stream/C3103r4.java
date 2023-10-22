package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3103r4 implements InterfaceC3066l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1180a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1181b;

    public /* synthetic */ C3103r4(InterfaceC2826p interfaceC2826p) {
        this.f1181b = interfaceC2826p;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1180a) {
            case 0:
                AbstractC3082o1.m417f(this);
                throw null;
            default:
                AbstractC3082o1.m417f(this);
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
    public /* synthetic */ void m392b(Long l) {
        switch (this.f1180a) {
            case 0:
                AbstractC3082o1.m420c(this, l);
                return;
            default:
                AbstractC3082o1.m420c(this, l);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        switch (this.f1180a) {
            case 0:
                Objects.requireNonNull(interfaceC2826p);
                return new C2825o(this, interfaceC2826p);
            default:
                Objects.requireNonNull(interfaceC2826p);
                return new C2825o(this, interfaceC2826p);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public /* synthetic */ void mo360m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }

    public /* synthetic */ C3103r4(C2989Y3 c2989y3) {
        this.f1181b = c2989y3;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1180a) {
            case 0:
                AbstractC3082o1.m419d(this);
                throw null;
            default:
                AbstractC3082o1.m419d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public final void accept(long j) {
        switch (this.f1180a) {
            case 0:
                ((InterfaceC2826p) this.f1181b).accept(j);
                return;
            default:
                ((C2989Y3) this.f1181b).accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1180a) {
            case 0:
                m392b((Long) obj);
                return;
            default:
                m392b((Long) obj);
                return;
        }
    }
}
