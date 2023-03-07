package p034j$.util.stream;

import p034j$.lang.AbstractC2357a;
import p034j$.lang.AbstractC2358b;
import p034j$.lang.AbstractC2359c;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2462n;
import p034j$.wrappers.C2835U;
import p034j$.wrappers.C2837W;
import p034j$.wrappers.C2842a0;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2522F0 extends AbstractC2678g3 {

    /* renamed from: b */
    public final /* synthetic */ int f725b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f726c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2522F0(C2551K c2551k, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f726c = c2551k;
    }

    @Override // p034j$.util.stream.InterfaceC2702k3, p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        switch (this.f725b) {
            case 0:
                this.f948a.accept(i);
                return;
            case 1:
                ((InterfaceC2460l) ((C2563M) this.f726c).f780m).accept(i);
                this.f948a.accept(i);
                return;
            case 2:
                this.f948a.accept(i);
                return;
            case 3:
                this.f948a.accept(((C2842a0) ((C2563M) this.f726c).f780m).m167a(i));
                return;
            case 4:
                this.f948a.accept((InterfaceC2714m3) ((InterfaceC2461m) ((C2557L) this.f726c).f775m).apply(i));
                return;
            case 5:
                this.f948a.accept(((InterfaceC2462n) ((C2569N) this.f726c).f791m).applyAsLong(i));
                return;
            case 6:
                this.f948a.accept(((C2837W) ((C2551K) this.f726c).f767m).m173a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((InterfaceC2461m) ((C2563M) this.f726c).f780m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo275U(new C2498B0(this));
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
                if (((C2835U) ((C2563M) this.f726c).f780m).m175b(i)) {
                    this.f948a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        switch (this.f725b) {
            case 7:
                this.f948a.mo312n(-1L);
                return;
            case 8:
                this.f948a.mo312n(-1L);
                return;
            default:
                this.f948a.mo312n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2522F0(C2557L c2557l, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f726c = c2557l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2522F0(C2563M c2563m, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f726c = c2563m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2522F0(C2563M c2563m, InterfaceC2714m3 interfaceC2714m3, AbstractC2357a abstractC2357a) {
        super(interfaceC2714m3);
        this.f726c = c2563m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2522F0(C2563M c2563m, InterfaceC2714m3 interfaceC2714m3, AbstractC2358b abstractC2358b) {
        super(interfaceC2714m3);
        this.f726c = c2563m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2522F0(C2563M c2563m, InterfaceC2714m3 interfaceC2714m3, AbstractC2359c abstractC2359c) {
        super(interfaceC2714m3);
        this.f726c = c2563m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2522F0(C2569N c2569n, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f726c = c2569n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2522F0(C2575O c2575o, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f726c = c2575o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2522F0(C2528G0 c2528g0, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f726c = c2528g0;
    }
}
