package p033j$.util.stream;

import p033j$.lang.AbstractC2667a;
import p033j$.lang.AbstractC2668b;
import p033j$.lang.AbstractC2669c;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.InterfaceC2824m;
import p033j$.wrappers.C3189S;
import p033j$.wrappers.C3191U;
import p033j$.wrappers.C3195Y;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2881F0 extends AbstractC3037g3 {

    /* renamed from: b */
    public final /* synthetic */ int f869b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f870c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2881F0(C2910K c2910k, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f870c = c2910k;
    }

    @Override // p033j$.util.stream.InterfaceC3061k3, p033j$.util.stream.InterfaceC3073m3
    public void accept(int i) {
        switch (this.f869b) {
            case 0:
                this.f1092a.accept(i);
                return;
            case 1:
                ((InterfaceC2823l) ((C2922M) this.f870c).f924m).accept(i);
                this.f1092a.accept(i);
                return;
            case 2:
                this.f1092a.accept(i);
                return;
            case 3:
                this.f1092a.accept(((C3195Y) ((C2922M) this.f870c).f924m).m224a(i));
                return;
            case 4:
                this.f1092a.accept((InterfaceC3073m3) ((IntFunction) ((C2916L) this.f870c).f919m).apply(i));
                return;
            case 5:
                this.f1092a.accept(((InterfaceC2824m) ((C2928N) this.f870c).f935m).applyAsLong(i));
                return;
            case 6:
                this.f1092a.accept(((C3191U) ((C2910K) this.f870c).f911m).m228a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((IntFunction) ((C2922M) this.f870c).f924m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo325T(new C2857B0(this));
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
                if (((C3189S) ((C2922M) this.f870c).f924m).m230b(i)) {
                    this.f1092a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
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
    public C2881F0(C2916L c2916l, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f870c = c2916l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2881F0(C2922M c2922m, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f870c = c2922m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2881F0(C2922M c2922m, InterfaceC3073m3 interfaceC3073m3, AbstractC2667a abstractC2667a) {
        super(interfaceC3073m3);
        this.f870c = c2922m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2881F0(C2922M c2922m, InterfaceC3073m3 interfaceC3073m3, AbstractC2668b abstractC2668b) {
        super(interfaceC3073m3);
        this.f870c = c2922m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2881F0(C2922M c2922m, InterfaceC3073m3 interfaceC3073m3, AbstractC2669c abstractC2669c) {
        super(interfaceC3073m3);
        this.f870c = c2922m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2881F0(C2928N c2928n, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f870c = c2928n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2881F0(C2934O c2934o, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f870c = c2934o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2881F0(C2887G0 c2887g0, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f870c = c2887g0;
    }
}
