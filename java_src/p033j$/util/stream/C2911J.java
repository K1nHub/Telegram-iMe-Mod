package p033j$.util.stream;

import p033j$.lang.AbstractC2723a;
import p033j$.lang.AbstractC2724b;
import p033j$.lang.AbstractC2725c;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2822h;
import p033j$.wrappers.C3173D;
import p033j$.wrappers.C3177F;
import p033j$.wrappers.C3185J;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2911J extends AbstractC3038f3 {

    /* renamed from: b */
    public final /* synthetic */ int f850b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f851c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2911J(C2917K c2917k, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f851c = c2917k;
    }

    @Override // p033j$.util.stream.InterfaceC3062j3, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        switch (this.f850b) {
            case 0:
                this.f1030a.accept(((C3185J) ((C2917K) this.f851c).f861m).m226a(d));
                return;
            case 1:
                this.f1030a.accept((InterfaceC3080m3) ((InterfaceC2821g) ((C2923L) this.f851c).f869m).apply(d));
                return;
            case 2:
                this.f1030a.accept(((C3177F) ((C2929M) this.f851c).f874m).m239a(d));
                return;
            case 3:
                this.f1030a.accept(((InterfaceC2822h) ((C2935N) this.f851c).f885m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2973U interfaceC2973U = (InterfaceC2973U) ((InterfaceC2821g) ((C2917K) this.f851c).f861m).apply(d);
                if (interfaceC2973U != null) {
                    try {
                        interfaceC2973U.sequential().mo214j(new C2887F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2973U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2973U != null) {
                    interfaceC2973U.close();
                    return;
                }
                return;
            case 5:
                if (((C3173D) ((C2917K) this.f851c).f861m).m243b(d)) {
                    this.f1030a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2820f) ((C2917K) this.f851c).f861m).accept(d);
                this.f1030a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f850b) {
            case 4:
                this.f1030a.mo315n(-1L);
                return;
            case 5:
                this.f1030a.mo315n(-1L);
                return;
            default:
                this.f1030a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2911J(C2917K c2917k, InterfaceC3080m3 interfaceC3080m3, AbstractC2723a abstractC2723a) {
        super(interfaceC3080m3);
        this.f851c = c2917k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2911J(C2917K c2917k, InterfaceC3080m3 interfaceC3080m3, AbstractC2724b abstractC2724b) {
        super(interfaceC3080m3);
        this.f851c = c2917k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2911J(C2917K c2917k, InterfaceC3080m3 interfaceC3080m3, AbstractC2725c abstractC2725c) {
        super(interfaceC3080m3);
        this.f851c = c2917k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2911J(C2923L c2923l, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f851c = c2923l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2911J(C2929M c2929m, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f851c = c2929m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2911J(C2935N c2935n, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f851c = c2935n;
    }
}
