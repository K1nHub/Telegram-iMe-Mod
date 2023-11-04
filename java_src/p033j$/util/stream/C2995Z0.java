package p033j$.util.stream;

import p033j$.lang.AbstractC2670a;
import p033j$.lang.AbstractC2671b;
import p033j$.lang.AbstractC2672c;
import p033j$.util.function.InterfaceC2830p;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2833s;
import p033j$.wrappers.C3213g0;
import p033j$.wrappers.C3217i0;
import p033j$.wrappers.C3221k0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2995Z0 extends AbstractC3046h3 {

    /* renamed from: b */
    public final /* synthetic */ int f1001b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f1002c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2995Z0(C2913K c2913k, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f1002c = c2913k;
    }

    @Override // p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        switch (this.f1001b) {
            case 0:
                this.f1097a.accept(j);
                return;
            case 1:
                this.f1097a.accept(((InterfaceC2833s) ((C2931N) this.f1002c).f935m).applyAsLong(j));
                return;
            case 2:
                this.f1097a.accept((InterfaceC3076m3) ((InterfaceC2831q) ((C2919L) this.f1002c).f919m).apply(j));
                return;
            case 3:
                this.f1097a.accept(((C3221k0) ((C2925M) this.f1002c).f924m).m191a(j));
                return;
            case 4:
                this.f1097a.accept(((C3217i0) ((C2913K) this.f1002c).f911m).m197a(j));
                return;
            case 5:
                InterfaceC3026e1 interfaceC3026e1 = (InterfaceC3026e1) ((InterfaceC2831q) ((C2931N) this.f1002c).f935m).apply(j);
                if (interfaceC3026e1 != null) {
                    try {
                        interfaceC3026e1.sequential().mo251d(new C2980W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC3026e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3026e1 != null) {
                    interfaceC3026e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3213g0) ((C2931N) this.f1002c).f935m).m203b(j)) {
                    this.f1097a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2830p) ((C2931N) this.f1002c).f935m).accept(j);
                this.f1097a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
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
    public C2995Z0(C2919L c2919l, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f1002c = c2919l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2995Z0(C2925M c2925m, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f1002c = c2925m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2995Z0(C2931N c2931n, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f1002c = c2931n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2995Z0(C2931N c2931n, InterfaceC3076m3 interfaceC3076m3, AbstractC2670a abstractC2670a) {
        super(interfaceC3076m3);
        this.f1002c = c2931n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2995Z0(C2931N c2931n, InterfaceC3076m3 interfaceC3076m3, AbstractC2671b abstractC2671b) {
        super(interfaceC3076m3);
        this.f1002c = c2931n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2995Z0(C2931N c2931n, InterfaceC3076m3 interfaceC3076m3, AbstractC2672c abstractC2672c) {
        super(interfaceC3076m3);
        this.f1002c = c2931n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2995Z0(C2937O c2937o, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f1002c = c2937o;
    }
}
