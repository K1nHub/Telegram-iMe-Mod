package p033j$.util.stream;

import p033j$.lang.AbstractC2665a;
import p033j$.lang.AbstractC2666b;
import p033j$.lang.AbstractC2667c;
import p033j$.util.function.InterfaceC2825p;
import p033j$.util.function.InterfaceC2826q;
import p033j$.util.function.InterfaceC2828s;
import p033j$.wrappers.C3208g0;
import p033j$.wrappers.C3212i0;
import p033j$.wrappers.C3216k0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2990Z0 extends AbstractC3041h3 {

    /* renamed from: b */
    public final /* synthetic */ int f1001b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f1002c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990Z0(C2908K c2908k, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f1002c = c2908k;
    }

    @Override // p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        switch (this.f1001b) {
            case 0:
                this.f1097a.accept(j);
                return;
            case 1:
                this.f1097a.accept(((InterfaceC2828s) ((C2926N) this.f1002c).f935m).applyAsLong(j));
                return;
            case 2:
                this.f1097a.accept((InterfaceC3071m3) ((InterfaceC2826q) ((C2914L) this.f1002c).f919m).apply(j));
                return;
            case 3:
                this.f1097a.accept(((C3216k0) ((C2920M) this.f1002c).f924m).m194a(j));
                return;
            case 4:
                this.f1097a.accept(((C3212i0) ((C2908K) this.f1002c).f911m).m200a(j));
                return;
            case 5:
                InterfaceC3021e1 interfaceC3021e1 = (InterfaceC3021e1) ((InterfaceC2826q) ((C2926N) this.f1002c).f935m).apply(j);
                if (interfaceC3021e1 != null) {
                    try {
                        interfaceC3021e1.sequential().mo254d(new C2975W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC3021e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3021e1 != null) {
                    interfaceC3021e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3208g0) ((C2926N) this.f1002c).f935m).m206b(j)) {
                    this.f1097a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2825p) ((C2926N) this.f1002c).f935m).accept(j);
                this.f1097a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        switch (this.f1001b) {
            case 5:
                this.f1097a.mo364m(-1L);
                return;
            case 6:
                this.f1097a.mo364m(-1L);
                return;
            default:
                this.f1097a.mo364m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990Z0(C2914L c2914l, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f1002c = c2914l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990Z0(C2920M c2920m, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f1002c = c2920m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990Z0(C2926N c2926n, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f1002c = c2926n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990Z0(C2926N c2926n, InterfaceC3071m3 interfaceC3071m3, AbstractC2665a abstractC2665a) {
        super(interfaceC3071m3);
        this.f1002c = c2926n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990Z0(C2926N c2926n, InterfaceC3071m3 interfaceC3071m3, AbstractC2666b abstractC2666b) {
        super(interfaceC3071m3);
        this.f1002c = c2926n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990Z0(C2926N c2926n, InterfaceC3071m3 interfaceC3071m3, AbstractC2667c abstractC2667c) {
        super(interfaceC3071m3);
        this.f1002c = c2926n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990Z0(C2932O c2932o, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f1002c = c2932o;
    }
}
