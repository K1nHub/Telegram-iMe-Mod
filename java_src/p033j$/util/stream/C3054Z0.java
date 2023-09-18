package p033j$.util.stream;

import p033j$.lang.AbstractC2778a;
import p033j$.lang.AbstractC2779b;
import p033j$.lang.AbstractC2780c;
import p033j$.util.function.InterfaceC2886q;
import p033j$.util.function.InterfaceC2887r;
import p033j$.util.function.InterfaceC2889t;
import p033j$.wrappers.C3279i0;
import p033j$.wrappers.C3283k0;
import p033j$.wrappers.C3287m0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C3054Z0 extends AbstractC3105h3 {

    /* renamed from: b */
    public final /* synthetic */ int f952b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f953c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3054Z0(C2972K c2972k, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f953c = c2972k;
    }

    @Override // p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        switch (this.f952b) {
            case 0:
                this.f1048a.accept(j);
                return;
            case 1:
                this.f1048a.accept(((InterfaceC2889t) ((C2990N) this.f953c).f886m).applyAsLong(j));
                return;
            case 2:
                this.f1048a.accept((InterfaceC3135m3) ((InterfaceC2887r) ((C2978L) this.f953c).f870m).apply(j));
                return;
            case 3:
                this.f1048a.accept(((C3287m0) ((C2984M) this.f953c).f875m).m135a(j));
                return;
            case 4:
                this.f1048a.accept(((C3283k0) ((C2972K) this.f953c).f862m).m141a(j));
                return;
            case 5:
                InterfaceC3085e1 interfaceC3085e1 = (InterfaceC3085e1) ((InterfaceC2887r) ((C2990N) this.f953c).f886m).apply(j);
                if (interfaceC3085e1 != null) {
                    try {
                        interfaceC3085e1.sequential().mo198d(new C3039W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC3085e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3085e1 != null) {
                    interfaceC3085e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3279i0) ((C2990N) this.f953c).f886m).m147b(j)) {
                    this.f1048a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2886q) ((C2990N) this.f953c).f886m).accept(j);
                this.f1048a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f952b) {
            case 5:
                this.f1048a.mo315n(-1L);
                return;
            case 6:
                this.f1048a.mo315n(-1L);
                return;
            default:
                this.f1048a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3054Z0(C2978L c2978l, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f953c = c2978l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3054Z0(C2984M c2984m, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f953c = c2984m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3054Z0(C2990N c2990n, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f953c = c2990n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3054Z0(C2990N c2990n, InterfaceC3135m3 interfaceC3135m3, AbstractC2778a abstractC2778a) {
        super(interfaceC3135m3);
        this.f953c = c2990n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3054Z0(C2990N c2990n, InterfaceC3135m3 interfaceC3135m3, AbstractC2779b abstractC2779b) {
        super(interfaceC3135m3);
        this.f953c = c2990n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3054Z0(C2990N c2990n, InterfaceC3135m3 interfaceC3135m3, AbstractC2780c abstractC2780c) {
        super(interfaceC3135m3);
        this.f953c = c2990n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3054Z0(C2996O c2996o, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f953c = c2996o;
    }
}
