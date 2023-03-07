package p034j$.util.stream;

import p034j$.lang.AbstractC2357a;
import p034j$.lang.AbstractC2358b;
import p034j$.lang.AbstractC2359c;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.function.InterfaceC2466r;
import p034j$.util.function.InterfaceC2468t;
import p034j$.wrappers.C2858i0;
import p034j$.wrappers.C2862k0;
import p034j$.wrappers.C2866m0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2633Z0 extends AbstractC2684h3 {

    /* renamed from: b */
    public final /* synthetic */ int f857b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f858c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2633Z0(C2551K c2551k, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f858c = c2551k;
    }

    @Override // p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        switch (this.f857b) {
            case 0:
                this.f953a.accept(j);
                return;
            case 1:
                this.f953a.accept(((InterfaceC2468t) ((C2569N) this.f858c).f791m).applyAsLong(j));
                return;
            case 2:
                this.f953a.accept((InterfaceC2714m3) ((InterfaceC2466r) ((C2557L) this.f858c).f775m).apply(j));
                return;
            case 3:
                this.f953a.accept(((C2866m0) ((C2563M) this.f858c).f780m).m132a(j));
                return;
            case 4:
                this.f953a.accept(((C2862k0) ((C2551K) this.f858c).f767m).m138a(j));
                return;
            case 5:
                InterfaceC2664e1 interfaceC2664e1 = (InterfaceC2664e1) ((InterfaceC2466r) ((C2569N) this.f858c).f791m).apply(j);
                if (interfaceC2664e1 != null) {
                    try {
                        interfaceC2664e1.sequential().mo195d(new C2618W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2664e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2664e1 != null) {
                    interfaceC2664e1.close();
                    return;
                }
                return;
            case 6:
                if (((C2858i0) ((C2569N) this.f858c).f791m).m144b(j)) {
                    this.f953a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2465q) ((C2569N) this.f858c).f791m).accept(j);
                this.f953a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        switch (this.f857b) {
            case 5:
                this.f953a.mo312n(-1L);
                return;
            case 6:
                this.f953a.mo312n(-1L);
                return;
            default:
                this.f953a.mo312n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2633Z0(C2557L c2557l, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f858c = c2557l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2633Z0(C2563M c2563m, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f858c = c2563m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2633Z0(C2569N c2569n, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f858c = c2569n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2633Z0(C2569N c2569n, InterfaceC2714m3 interfaceC2714m3, AbstractC2357a abstractC2357a) {
        super(interfaceC2714m3);
        this.f858c = c2569n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2633Z0(C2569N c2569n, InterfaceC2714m3 interfaceC2714m3, AbstractC2358b abstractC2358b) {
        super(interfaceC2714m3);
        this.f858c = c2569n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2633Z0(C2569N c2569n, InterfaceC2714m3 interfaceC2714m3, AbstractC2359c abstractC2359c) {
        super(interfaceC2714m3);
        this.f858c = c2569n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2633Z0(C2575O c2575o, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f858c = c2575o;
    }
}
