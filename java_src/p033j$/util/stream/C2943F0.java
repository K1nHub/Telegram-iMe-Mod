package p033j$.util.stream;

import p033j$.lang.AbstractC2778a;
import p033j$.lang.AbstractC2779b;
import p033j$.lang.AbstractC2780c;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2883n;
import p033j$.wrappers.C3256U;
import p033j$.wrappers.C3258W;
import p033j$.wrappers.C3263a0;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2943F0 extends AbstractC3099g3 {

    /* renamed from: b */
    public final /* synthetic */ int f820b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f821c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2943F0(C2972K c2972k, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f821c = c2972k;
    }

    @Override // p033j$.util.stream.InterfaceC3123k3, p033j$.util.stream.InterfaceC3135m3
    public void accept(int i) {
        switch (this.f820b) {
            case 0:
                this.f1043a.accept(i);
                return;
            case 1:
                ((InterfaceC2881l) ((C2984M) this.f821c).f875m).accept(i);
                this.f1043a.accept(i);
                return;
            case 2:
                this.f1043a.accept(i);
                return;
            case 3:
                this.f1043a.accept(((C3263a0) ((C2984M) this.f821c).f875m).m170a(i));
                return;
            case 4:
                this.f1043a.accept((InterfaceC3135m3) ((InterfaceC2882m) ((C2978L) this.f821c).f870m).apply(i));
                return;
            case 5:
                this.f1043a.accept(((InterfaceC2883n) ((C2990N) this.f821c).f886m).applyAsLong(i));
                return;
            case 6:
                this.f1043a.accept(((C3258W) ((C2972K) this.f821c).f862m).m176a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((InterfaceC2882m) ((C2984M) this.f821c).f875m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo278U(new C2919B0(this));
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
                if (((C3256U) ((C2984M) this.f821c).f875m).m178b(i)) {
                    this.f1043a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f820b) {
            case 7:
                this.f1043a.mo315n(-1L);
                return;
            case 8:
                this.f1043a.mo315n(-1L);
                return;
            default:
                this.f1043a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2943F0(C2978L c2978l, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f821c = c2978l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2943F0(C2984M c2984m, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f821c = c2984m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2943F0(C2984M c2984m, InterfaceC3135m3 interfaceC3135m3, AbstractC2778a abstractC2778a) {
        super(interfaceC3135m3);
        this.f821c = c2984m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2943F0(C2984M c2984m, InterfaceC3135m3 interfaceC3135m3, AbstractC2779b abstractC2779b) {
        super(interfaceC3135m3);
        this.f821c = c2984m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2943F0(C2984M c2984m, InterfaceC3135m3 interfaceC3135m3, AbstractC2780c abstractC2780c) {
        super(interfaceC3135m3);
        this.f821c = c2984m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2943F0(C2990N c2990n, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f821c = c2990n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2943F0(C2996O c2996o, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f821c = c2996o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2943F0(C2949G0 c2949g0, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f821c = c2949g0;
    }
}
