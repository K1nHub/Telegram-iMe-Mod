package p033j$.util.stream;

import p033j$.lang.AbstractC2667a;
import p033j$.lang.AbstractC2668b;
import p033j$.lang.AbstractC2669c;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2818g;
import p033j$.util.function.InterfaceC2819h;
import p033j$.wrappers.C3164C;
import p033j$.wrappers.C3168E;
import p033j$.wrappers.C3176I;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2904J extends AbstractC3031f3 {

    /* renamed from: b */
    public final /* synthetic */ int f900b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f901c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2904J(C2910K c2910k, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f901c = c2910k;
    }

    @Override // p033j$.util.stream.InterfaceC3055j3, p033j$.util.stream.InterfaceC3073m3
    public void accept(double d) {
        switch (this.f900b) {
            case 0:
                this.f1080a.accept(((C3176I) ((C2910K) this.f901c).f911m).m261a(d));
                return;
            case 1:
                this.f1080a.accept((InterfaceC3073m3) ((InterfaceC2818g) ((C2916L) this.f901c).f919m).apply(d));
                return;
            case 2:
                this.f1080a.accept(((C3168E) ((C2922M) this.f901c).f924m).m288a(d));
                return;
            case 3:
                this.f1080a.accept(((InterfaceC2819h) ((C2928N) this.f901c).f935m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2966U interfaceC2966U = (InterfaceC2966U) ((InterfaceC2818g) ((C2910K) this.f901c).f911m).apply(d);
                if (interfaceC2966U != null) {
                    try {
                        interfaceC2966U.sequential().mo268j(new C2880F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2966U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2966U != null) {
                    interfaceC2966U.close();
                    return;
                }
                return;
            case 5:
                if (((C3164C) ((C2910K) this.f901c).f911m).m292b(d)) {
                    this.f1080a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2817f) ((C2910K) this.f901c).f911m).accept(d);
                this.f1080a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        switch (this.f900b) {
            case 4:
                this.f1080a.mo361m(-1L);
                return;
            case 5:
                this.f1080a.mo361m(-1L);
                return;
            default:
                this.f1080a.mo361m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2904J(C2910K c2910k, InterfaceC3073m3 interfaceC3073m3, AbstractC2667a abstractC2667a) {
        super(interfaceC3073m3);
        this.f901c = c2910k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2904J(C2910K c2910k, InterfaceC3073m3 interfaceC3073m3, AbstractC2668b abstractC2668b) {
        super(interfaceC3073m3);
        this.f901c = c2910k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2904J(C2910K c2910k, InterfaceC3073m3 interfaceC3073m3, AbstractC2669c abstractC2669c) {
        super(interfaceC3073m3);
        this.f901c = c2910k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2904J(C2916L c2916l, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f901c = c2916l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2904J(C2922M c2922m, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f901c = c2922m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2904J(C2928N c2928n, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f901c = c2928n;
    }
}
