package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2815e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3079n4 implements InterfaceC3054j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1140a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1141b;

    public /* synthetic */ C3079n4(InterfaceC2816f interfaceC2816f) {
        this.f1141b = interfaceC2816f;
    }

    @Override // p033j$.util.stream.InterfaceC3054j3, p033j$.util.stream.InterfaceC3072m3
    public final void accept(double d) {
        switch (this.f1140a) {
            case 0:
                ((InterfaceC2816f) this.f1141b).accept(d);
                return;
            default:
                ((C2969U3) this.f1141b).accept(d);
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
    public /* synthetic */ void m426b(Double d) {
        switch (this.f1140a) {
            case 0:
                AbstractC3082o1.m422a(this, d);
                return;
            default:
                AbstractC3082o1.m422a(this, d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        switch (this.f1140a) {
            case 0:
                Objects.requireNonNull(interfaceC2816f);
                return new C2815e(this, interfaceC2816f);
            default:
                Objects.requireNonNull(interfaceC2816f);
                return new C2815e(this, interfaceC2816f);
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

    public /* synthetic */ C3079n4(C2969U3 c2969u3) {
        this.f1141b = c2969u3;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1140a) {
            case 0:
                AbstractC3082o1.m419d(this);
                throw null;
            default:
                AbstractC3082o1.m419d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        switch (this.f1140a) {
            case 0:
                AbstractC3082o1.m418e(this);
                throw null;
            default:
                AbstractC3082o1.m418e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1140a) {
            case 0:
                m426b((Double) obj);
                return;
            default:
                m426b((Double) obj);
                return;
        }
    }
}
