package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2814e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3078n4 implements InterfaceC3053j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1140a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1141b;

    public /* synthetic */ C3078n4(InterfaceC2815f interfaceC2815f) {
        this.f1141b = interfaceC2815f;
    }

    @Override // p033j$.util.stream.InterfaceC3053j3, p033j$.util.stream.InterfaceC3071m3
    public final void accept(double d) {
        switch (this.f1140a) {
            case 0:
                ((InterfaceC2815f) this.f1141b).accept(d);
                return;
            default:
                ((C2968U3) this.f1141b).accept(d);
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
    public /* synthetic */ void m430b(Double d) {
        switch (this.f1140a) {
            case 0:
                AbstractC3081o1.m426a(this, d);
                return;
            default:
                AbstractC3081o1.m426a(this, d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        switch (this.f1140a) {
            case 0:
                Objects.requireNonNull(interfaceC2815f);
                return new C2814e(this, interfaceC2815f);
            default:
                Objects.requireNonNull(interfaceC2815f);
                return new C2814e(this, interfaceC2815f);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public /* synthetic */ void mo364m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }

    public /* synthetic */ C3078n4(C2968U3 c2968u3) {
        this.f1141b = c2968u3;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1140a) {
            case 0:
                AbstractC3081o1.m423d(this);
                throw null;
            default:
                AbstractC3081o1.m423d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        switch (this.f1140a) {
            case 0:
                AbstractC3081o1.m422e(this);
                throw null;
            default:
                AbstractC3081o1.m422e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1140a) {
            case 0:
                m430b((Double) obj);
                return;
            default:
                m430b((Double) obj);
                return;
        }
    }
}
