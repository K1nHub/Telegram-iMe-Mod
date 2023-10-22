package p033j$.util.stream;

import p033j$.lang.AbstractC2666a;
import p033j$.lang.AbstractC2667b;
import p033j$.lang.AbstractC2668c;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2823m;
import p033j$.wrappers.C3188S;
import p033j$.wrappers.C3190U;
import p033j$.wrappers.C3194Y;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2880F0 extends AbstractC3036g3 {

    /* renamed from: b */
    public final /* synthetic */ int f869b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f870c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2880F0(C2909K c2909k, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f870c = c2909k;
    }

    @Override // p033j$.util.stream.InterfaceC3060k3, p033j$.util.stream.InterfaceC3072m3
    public void accept(int i) {
        switch (this.f869b) {
            case 0:
                this.f1092a.accept(i);
                return;
            case 1:
                ((InterfaceC2822l) ((C2921M) this.f870c).f924m).accept(i);
                this.f1092a.accept(i);
                return;
            case 2:
                this.f1092a.accept(i);
                return;
            case 3:
                this.f1092a.accept(((C3194Y) ((C2921M) this.f870c).f924m).m223a(i));
                return;
            case 4:
                this.f1092a.accept((InterfaceC3072m3) ((IntFunction) ((C2915L) this.f870c).f919m).apply(i));
                return;
            case 5:
                this.f1092a.accept(((InterfaceC2823m) ((C2927N) this.f870c).f935m).applyAsLong(i));
                return;
            case 6:
                this.f1092a.accept(((C3190U) ((C2909K) this.f870c).f911m).m227a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((IntFunction) ((C2921M) this.f870c).f924m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo324T(new C2856B0(this));
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
                if (((C3188S) ((C2921M) this.f870c).f924m).m229b(i)) {
                    this.f1092a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        switch (this.f869b) {
            case 7:
                this.f1092a.mo360m(-1L);
                return;
            case 8:
                this.f1092a.mo360m(-1L);
                return;
            default:
                this.f1092a.mo360m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2880F0(C2915L c2915l, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f870c = c2915l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2880F0(C2921M c2921m, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f870c = c2921m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2880F0(C2921M c2921m, InterfaceC3072m3 interfaceC3072m3, AbstractC2666a abstractC2666a) {
        super(interfaceC3072m3);
        this.f870c = c2921m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2880F0(C2921M c2921m, InterfaceC3072m3 interfaceC3072m3, AbstractC2667b abstractC2667b) {
        super(interfaceC3072m3);
        this.f870c = c2921m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2880F0(C2921M c2921m, InterfaceC3072m3 interfaceC3072m3, AbstractC2668c abstractC2668c) {
        super(interfaceC3072m3);
        this.f870c = c2921m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2880F0(C2927N c2927n, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f870c = c2927n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2880F0(C2933O c2933o, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f870c = c2933o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2880F0(C2886G0 c2886g0, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f870c = c2886g0;
    }
}
