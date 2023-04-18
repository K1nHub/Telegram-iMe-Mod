package p034j$.util.stream;

import p034j$.lang.AbstractC2558a;
import p034j$.lang.AbstractC2559b;
import p034j$.lang.AbstractC2560c;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2656g;
import p034j$.util.function.InterfaceC2657h;
import p034j$.wrappers.C3008D;
import p034j$.wrappers.C3012F;
import p034j$.wrappers.C3020J;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2746J extends AbstractC2873f3 {

    /* renamed from: b */
    public final /* synthetic */ int f762b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f763c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2746J(C2752K c2752k, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f763c = c2752k;
    }

    @Override // p034j$.util.stream.InterfaceC2897j3, p034j$.util.stream.InterfaceC2915m3
    public void accept(double d) {
        switch (this.f762b) {
            case 0:
                this.f942a.accept(((C3020J) ((C2752K) this.f763c).f773m).m203a(d));
                return;
            case 1:
                this.f942a.accept((InterfaceC2915m3) ((InterfaceC2656g) ((C2758L) this.f763c).f781m).apply(d));
                return;
            case 2:
                this.f942a.accept(((C3012F) ((C2764M) this.f763c).f786m).m216a(d));
                return;
            case 3:
                this.f942a.accept(((InterfaceC2657h) ((C2770N) this.f763c).f797m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2808U interfaceC2808U = (InterfaceC2808U) ((InterfaceC2656g) ((C2752K) this.f763c).f773m).apply(d);
                if (interfaceC2808U != null) {
                    try {
                        interfaceC2808U.sequential().mo191j(new C2722F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2808U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2808U != null) {
                    interfaceC2808U.close();
                    return;
                }
                return;
            case 5:
                if (((C3008D) ((C2752K) this.f763c).f773m).m220b(d)) {
                    this.f942a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2655f) ((C2752K) this.f763c).f773m).accept(d);
                this.f942a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        switch (this.f762b) {
            case 4:
                this.f942a.mo292n(-1L);
                return;
            case 5:
                this.f942a.mo292n(-1L);
                return;
            default:
                this.f942a.mo292n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2746J(C2752K c2752k, InterfaceC2915m3 interfaceC2915m3, AbstractC2558a abstractC2558a) {
        super(interfaceC2915m3);
        this.f763c = c2752k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2746J(C2752K c2752k, InterfaceC2915m3 interfaceC2915m3, AbstractC2559b abstractC2559b) {
        super(interfaceC2915m3);
        this.f763c = c2752k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2746J(C2752K c2752k, InterfaceC2915m3 interfaceC2915m3, AbstractC2560c abstractC2560c) {
        super(interfaceC2915m3);
        this.f763c = c2752k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2746J(C2758L c2758l, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f763c = c2758l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2746J(C2764M c2764m, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f763c = c2764m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2746J(C2770N c2770n, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f763c = c2770n;
    }
}
