package p033j$.util.stream;

import p033j$.lang.AbstractC2723a;
import p033j$.lang.AbstractC2724b;
import p033j$.lang.AbstractC2725c;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2828n;
import p033j$.wrappers.C3201U;
import p033j$.wrappers.C3203W;
import p033j$.wrappers.C3208a0;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2888F0 extends AbstractC3044g3 {

    /* renamed from: b */
    public final /* synthetic */ int f816b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f817c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888F0(C2917K c2917k, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f817c = c2917k;
    }

    @Override // p033j$.util.stream.InterfaceC3068k3, p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        switch (this.f816b) {
            case 0:
                this.f1039a.accept(i);
                return;
            case 1:
                ((InterfaceC2826l) ((C2929M) this.f817c).f871m).accept(i);
                this.f1039a.accept(i);
                return;
            case 2:
                this.f1039a.accept(i);
                return;
            case 3:
                this.f1039a.accept(((C3208a0) ((C2929M) this.f817c).f871m).m152a(i));
                return;
            case 4:
                this.f1039a.accept((InterfaceC3080m3) ((InterfaceC2827m) ((C2923L) this.f817c).f866m).apply(i));
                return;
            case 5:
                this.f1039a.accept(((InterfaceC2828n) ((C2935N) this.f817c).f882m).applyAsLong(i));
                return;
            case 6:
                this.f1039a.accept(((C3203W) ((C2917K) this.f817c).f858m).m158a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((InterfaceC2827m) ((C2929M) this.f817c).f871m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo260U(new C2864B0(this));
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
                if (((C3201U) ((C2929M) this.f817c).f871m).m160b(i)) {
                    this.f1039a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        switch (this.f816b) {
            case 7:
                this.f1039a.mo297n(-1L);
                return;
            case 8:
                this.f1039a.mo297n(-1L);
                return;
            default:
                this.f1039a.mo297n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888F0(C2923L c2923l, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f817c = c2923l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888F0(C2929M c2929m, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f817c = c2929m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888F0(C2929M c2929m, InterfaceC3080m3 interfaceC3080m3, AbstractC2723a abstractC2723a) {
        super(interfaceC3080m3);
        this.f817c = c2929m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888F0(C2929M c2929m, InterfaceC3080m3 interfaceC3080m3, AbstractC2724b abstractC2724b) {
        super(interfaceC3080m3);
        this.f817c = c2929m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888F0(C2929M c2929m, InterfaceC3080m3 interfaceC3080m3, AbstractC2725c abstractC2725c) {
        super(interfaceC3080m3);
        this.f817c = c2929m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888F0(C2935N c2935n, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f817c = c2935n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888F0(C2941O c2941o, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f817c = c2941o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888F0(C2894G0 c2894g0, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f817c = c2894g0;
    }
}
