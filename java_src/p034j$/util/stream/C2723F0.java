package p034j$.util.stream;

import p034j$.lang.AbstractC2558a;
import p034j$.lang.AbstractC2559b;
import p034j$.lang.AbstractC2560c;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2663n;
import p034j$.wrappers.C3036U;
import p034j$.wrappers.C3038W;
import p034j$.wrappers.C3043a0;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2723F0 extends AbstractC2879g3 {

    /* renamed from: b */
    public final /* synthetic */ int f731b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f732c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2723F0(C2752K c2752k, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f732c = c2752k;
    }

    @Override // p034j$.util.stream.InterfaceC2903k3, p034j$.util.stream.InterfaceC2915m3
    public void accept(int i) {
        switch (this.f731b) {
            case 0:
                this.f954a.accept(i);
                return;
            case 1:
                ((InterfaceC2661l) ((C2764M) this.f732c).f786m).accept(i);
                this.f954a.accept(i);
                return;
            case 2:
                this.f954a.accept(i);
                return;
            case 3:
                this.f954a.accept(((C3043a0) ((C2764M) this.f732c).f786m).m147a(i));
                return;
            case 4:
                this.f954a.accept((InterfaceC2915m3) ((InterfaceC2662m) ((C2758L) this.f732c).f781m).apply(i));
                return;
            case 5:
                this.f954a.accept(((InterfaceC2663n) ((C2770N) this.f732c).f797m).applyAsLong(i));
                return;
            case 6:
                this.f954a.accept(((C3038W) ((C2752K) this.f732c).f773m).m153a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((InterfaceC2662m) ((C2764M) this.f732c).f786m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo255U(new C2699B0(this));
                    } catch (Throwable th) {
                        try {
                            intStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                if (((C3036U) ((C2764M) this.f732c).f786m).m155b(i)) {
                    this.f954a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        switch (this.f731b) {
            case 7:
                this.f954a.mo292n(-1L);
                return;
            case 8:
                this.f954a.mo292n(-1L);
                return;
            default:
                this.f954a.mo292n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2723F0(C2758L c2758l, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f732c = c2758l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2723F0(C2764M c2764m, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f732c = c2764m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2723F0(C2764M c2764m, InterfaceC2915m3 interfaceC2915m3, AbstractC2558a abstractC2558a) {
        super(interfaceC2915m3);
        this.f732c = c2764m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2723F0(C2764M c2764m, InterfaceC2915m3 interfaceC2915m3, AbstractC2559b abstractC2559b) {
        super(interfaceC2915m3);
        this.f732c = c2764m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2723F0(C2764M c2764m, InterfaceC2915m3 interfaceC2915m3, AbstractC2560c abstractC2560c) {
        super(interfaceC2915m3);
        this.f732c = c2764m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2723F0(C2770N c2770n, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f732c = c2770n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2723F0(C2776O c2776o, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f732c = c2776o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2723F0(C2729G0 c2729g0, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f732c = c2729g0;
    }
}
