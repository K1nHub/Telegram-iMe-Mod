package p033j$.util.stream;

import p033j$.lang.AbstractC2666a;
import p033j$.lang.AbstractC2667b;
import p033j$.lang.AbstractC2668c;
import p033j$.util.function.InterfaceC2826p;
import p033j$.util.function.InterfaceC2827q;
import p033j$.util.function.InterfaceC2829s;
import p033j$.wrappers.C3209g0;
import p033j$.wrappers.C3213i0;
import p033j$.wrappers.C3217k0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2991Z0 extends AbstractC3042h3 {

    /* renamed from: b */
    public final /* synthetic */ int f1001b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f1002c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2991Z0(C2909K c2909k, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1002c = c2909k;
    }

    @Override // p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public void accept(long j) {
        switch (this.f1001b) {
            case 0:
                this.f1097a.accept(j);
                return;
            case 1:
                this.f1097a.accept(((InterfaceC2829s) ((C2927N) this.f1002c).f935m).applyAsLong(j));
                return;
            case 2:
                this.f1097a.accept((InterfaceC3072m3) ((InterfaceC2827q) ((C2915L) this.f1002c).f919m).apply(j));
                return;
            case 3:
                this.f1097a.accept(((C3217k0) ((C2921M) this.f1002c).f924m).m190a(j));
                return;
            case 4:
                this.f1097a.accept(((C3213i0) ((C2909K) this.f1002c).f911m).m196a(j));
                return;
            case 5:
                InterfaceC3022e1 interfaceC3022e1 = (InterfaceC3022e1) ((InterfaceC2827q) ((C2927N) this.f1002c).f935m).apply(j);
                if (interfaceC3022e1 != null) {
                    try {
                        interfaceC3022e1.sequential().mo250d(new C2976W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC3022e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3022e1 != null) {
                    interfaceC3022e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3209g0) ((C2927N) this.f1002c).f935m).m202b(j)) {
                    this.f1097a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2826p) ((C2927N) this.f1002c).f935m).accept(j);
                this.f1097a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        switch (this.f1001b) {
            case 5:
                this.f1097a.mo360m(-1L);
                return;
            case 6:
                this.f1097a.mo360m(-1L);
                return;
            default:
                this.f1097a.mo360m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2991Z0(C2915L c2915l, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1002c = c2915l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2991Z0(C2921M c2921m, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1002c = c2921m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2991Z0(C2927N c2927n, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1002c = c2927n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2991Z0(C2927N c2927n, InterfaceC3072m3 interfaceC3072m3, AbstractC2666a abstractC2666a) {
        super(interfaceC3072m3);
        this.f1002c = c2927n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2991Z0(C2927N c2927n, InterfaceC3072m3 interfaceC3072m3, AbstractC2667b abstractC2667b) {
        super(interfaceC3072m3);
        this.f1002c = c2927n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2991Z0(C2927N c2927n, InterfaceC3072m3 interfaceC3072m3, AbstractC2668c abstractC2668c) {
        super(interfaceC3072m3);
        this.f1002c = c2927n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2991Z0(C2933O c2933o, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1002c = c2933o;
    }
}
