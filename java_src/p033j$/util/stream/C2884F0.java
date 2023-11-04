package p033j$.util.stream;

import p033j$.lang.AbstractC2670a;
import p033j$.lang.AbstractC2671b;
import p033j$.lang.AbstractC2672c;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.wrappers.C3192S;
import p033j$.wrappers.C3194U;
import p033j$.wrappers.C3198Y;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2884F0 extends AbstractC3040g3 {

    /* renamed from: b */
    public final /* synthetic */ int f869b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f870c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2884F0(C2913K c2913k, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f870c = c2913k;
    }

    @Override // p033j$.util.stream.InterfaceC3064k3, p033j$.util.stream.InterfaceC3076m3
    public void accept(int i) {
        switch (this.f869b) {
            case 0:
                this.f1092a.accept(i);
                return;
            case 1:
                ((InterfaceC2826l) ((C2925M) this.f870c).f924m).accept(i);
                this.f1092a.accept(i);
                return;
            case 2:
                this.f1092a.accept(i);
                return;
            case 3:
                this.f1092a.accept(((C3198Y) ((C2925M) this.f870c).f924m).m224a(i));
                return;
            case 4:
                this.f1092a.accept((InterfaceC3076m3) ((IntFunction) ((C2919L) this.f870c).f919m).apply(i));
                return;
            case 5:
                this.f1092a.accept(((InterfaceC2827m) ((C2931N) this.f870c).f935m).applyAsLong(i));
                return;
            case 6:
                this.f1092a.accept(((C3194U) ((C2913K) this.f870c).f911m).m228a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((IntFunction) ((C2925M) this.f870c).f924m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo325T(new C2860B0(this));
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
                if (((C3192S) ((C2925M) this.f870c).f924m).m230b(i)) {
                    this.f1092a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        switch (this.f869b) {
            case 7:
                this.f1092a.mo361m(-1L);
                return;
            case 8:
                this.f1092a.mo361m(-1L);
                return;
            default:
                this.f1092a.mo361m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2884F0(C2919L c2919l, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f870c = c2919l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2884F0(C2925M c2925m, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f870c = c2925m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2884F0(C2925M c2925m, InterfaceC3076m3 interfaceC3076m3, AbstractC2670a abstractC2670a) {
        super(interfaceC3076m3);
        this.f870c = c2925m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2884F0(C2925M c2925m, InterfaceC3076m3 interfaceC3076m3, AbstractC2671b abstractC2671b) {
        super(interfaceC3076m3);
        this.f870c = c2925m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2884F0(C2925M c2925m, InterfaceC3076m3 interfaceC3076m3, AbstractC2672c abstractC2672c) {
        super(interfaceC3076m3);
        this.f870c = c2925m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2884F0(C2931N c2931n, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f870c = c2931n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2884F0(C2937O c2937o, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f870c = c2937o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2884F0(C2890G0 c2890g0, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f870c = c2890g0;
    }
}
