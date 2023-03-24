package p034j$.util.stream;

import p034j$.lang.AbstractC2495a;
import p034j$.lang.AbstractC2496b;
import p034j$.lang.AbstractC2497c;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2600n;
import p034j$.wrappers.C2973U;
import p034j$.wrappers.C2975W;
import p034j$.wrappers.C2980a0;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2660F0 extends AbstractC2816g3 {

    /* renamed from: b */
    public final /* synthetic */ int f731b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f732c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2660F0(C2689K c2689k, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f732c = c2689k;
    }

    @Override // p034j$.util.stream.InterfaceC2840k3, p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        switch (this.f731b) {
            case 0:
                this.f954a.accept(i);
                return;
            case 1:
                ((InterfaceC2598l) ((C2701M) this.f732c).f786m).accept(i);
                this.f954a.accept(i);
                return;
            case 2:
                this.f954a.accept(i);
                return;
            case 3:
                this.f954a.accept(((C2980a0) ((C2701M) this.f732c).f786m).m166a(i));
                return;
            case 4:
                this.f954a.accept((InterfaceC2852m3) ((InterfaceC2599m) ((C2695L) this.f732c).f781m).apply(i));
                return;
            case 5:
                this.f954a.accept(((InterfaceC2600n) ((C2707N) this.f732c).f797m).applyAsLong(i));
                return;
            case 6:
                this.f954a.accept(((C2975W) ((C2689K) this.f732c).f773m).m172a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((InterfaceC2599m) ((C2701M) this.f732c).f786m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo274U(new C2636B0(this));
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
                if (((C2973U) ((C2701M) this.f732c).f786m).m174b(i)) {
                    this.f954a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        switch (this.f731b) {
            case 7:
                this.f954a.mo311n(-1L);
                return;
            case 8:
                this.f954a.mo311n(-1L);
                return;
            default:
                this.f954a.mo311n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2660F0(C2695L c2695l, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f732c = c2695l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2660F0(C2701M c2701m, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f732c = c2701m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2660F0(C2701M c2701m, InterfaceC2852m3 interfaceC2852m3, AbstractC2495a abstractC2495a) {
        super(interfaceC2852m3);
        this.f732c = c2701m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2660F0(C2701M c2701m, InterfaceC2852m3 interfaceC2852m3, AbstractC2496b abstractC2496b) {
        super(interfaceC2852m3);
        this.f732c = c2701m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2660F0(C2701M c2701m, InterfaceC2852m3 interfaceC2852m3, AbstractC2497c abstractC2497c) {
        super(interfaceC2852m3);
        this.f732c = c2701m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2660F0(C2707N c2707n, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f732c = c2707n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2660F0(C2713O c2713o, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f732c = c2713o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2660F0(C2666G0 c2666g0, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f732c = c2666g0;
    }
}
