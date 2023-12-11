package p033j$.util.stream;

import p033j$.lang.AbstractC2667a;
import p033j$.lang.AbstractC2668b;
import p033j$.lang.AbstractC2669c;
import p033j$.util.function.InterfaceC2827p;
import p033j$.util.function.InterfaceC2828q;
import p033j$.util.function.InterfaceC2830s;
import p033j$.wrappers.C3210g0;
import p033j$.wrappers.C3214i0;
import p033j$.wrappers.C3218k0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2992Z0 extends AbstractC3043h3 {

    /* renamed from: b */
    public final /* synthetic */ int f1001b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f1002c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Z0(C2910K c2910k, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1002c = c2910k;
    }

    @Override // p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public void accept(long j) {
        switch (this.f1001b) {
            case 0:
                this.f1097a.accept(j);
                return;
            case 1:
                this.f1097a.accept(((InterfaceC2830s) ((C2928N) this.f1002c).f935m).applyAsLong(j));
                return;
            case 2:
                this.f1097a.accept((InterfaceC3073m3) ((InterfaceC2828q) ((C2916L) this.f1002c).f919m).apply(j));
                return;
            case 3:
                this.f1097a.accept(((C3218k0) ((C2922M) this.f1002c).f924m).m191a(j));
                return;
            case 4:
                this.f1097a.accept(((C3214i0) ((C2910K) this.f1002c).f911m).m197a(j));
                return;
            case 5:
                InterfaceC3023e1 interfaceC3023e1 = (InterfaceC3023e1) ((InterfaceC2828q) ((C2928N) this.f1002c).f935m).apply(j);
                if (interfaceC3023e1 != null) {
                    try {
                        interfaceC3023e1.sequential().mo251d(new C2977W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC3023e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3023e1 != null) {
                    interfaceC3023e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3210g0) ((C2928N) this.f1002c).f935m).m203b(j)) {
                    this.f1097a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2827p) ((C2928N) this.f1002c).f935m).accept(j);
                this.f1097a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        switch (this.f1001b) {
            case 5:
                this.f1097a.mo361m(-1L);
                return;
            case 6:
                this.f1097a.mo361m(-1L);
                return;
            default:
                this.f1097a.mo361m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Z0(C2916L c2916l, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1002c = c2916l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Z0(C2922M c2922m, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1002c = c2922m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Z0(C2928N c2928n, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1002c = c2928n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Z0(C2928N c2928n, InterfaceC3073m3 interfaceC3073m3, AbstractC2667a abstractC2667a) {
        super(interfaceC3073m3);
        this.f1002c = c2928n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Z0(C2928N c2928n, InterfaceC3073m3 interfaceC3073m3, AbstractC2668b abstractC2668b) {
        super(interfaceC3073m3);
        this.f1002c = c2928n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Z0(C2928N c2928n, InterfaceC3073m3 interfaceC3073m3, AbstractC2669c abstractC2669c) {
        super(interfaceC3073m3);
        this.f1002c = c2928n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Z0(C2934O c2934o, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1002c = c2934o;
    }
}
