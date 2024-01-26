package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2824o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3102r4 implements InterfaceC3065l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1180a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1181b;

    public /* synthetic */ C3102r4(InterfaceC2825p interfaceC2825p) {
        this.f1181b = interfaceC2825p;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1180a) {
            case 0:
                AbstractC3081o1.m421f(this);
                throw null;
            default:
                AbstractC3081o1.m421f(this);
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
    public /* synthetic */ void m396b(Long l) {
        switch (this.f1180a) {
            case 0:
                AbstractC3081o1.m424c(this, l);
                return;
            default:
                AbstractC3081o1.m424c(this, l);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        switch (this.f1180a) {
            case 0:
                Objects.requireNonNull(interfaceC2825p);
                return new C2824o(this, interfaceC2825p);
            default:
                Objects.requireNonNull(interfaceC2825p);
                return new C2824o(this, interfaceC2825p);
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

    public /* synthetic */ C3102r4(C2988Y3 c2988y3) {
        this.f1181b = c2988y3;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1180a) {
            case 0:
                AbstractC3081o1.m423d(this);
                throw null;
            default:
                AbstractC3081o1.m423d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public final void accept(long j) {
        switch (this.f1180a) {
            case 0:
                ((InterfaceC2825p) this.f1181b).accept(j);
                return;
            default:
                ((C2988Y3) this.f1181b).accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1180a) {
            case 0:
                m396b((Long) obj);
                return;
            default:
                m396b((Long) obj);
                return;
        }
    }
}
