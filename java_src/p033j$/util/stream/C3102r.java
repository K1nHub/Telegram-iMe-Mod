package p033j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C3102r extends AbstractC3052i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1169b = 3;

    /* renamed from: c */
    Object f1170c;

    /* renamed from: d */
    final /* synthetic */ Object f1171d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3102r(C3108s c3108s, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f1171d = c3108s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1169b) {
            case 0:
                if (((Set) this.f1170c).contains(obj)) {
                    return;
                }
                ((Set) this.f1170c).add(obj);
                this.f1104a.accept((InterfaceC3076m3) obj);
                return;
            case 1:
                InterfaceC3026e1 interfaceC3026e1 = (InterfaceC3026e1) ((Function) ((C2931N) this.f1171d).f935m).apply(obj);
                if (interfaceC3026e1 != null) {
                    try {
                        interfaceC3026e1.sequential().mo251d((InterfaceC2830p) this.f1170c);
                    } catch (Throwable th) {
                        try {
                            interfaceC3026e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3026e1 != null) {
                    interfaceC3026e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2925M) this.f1171d).f924m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo325T((InterfaceC2826l) this.f1170c);
                    } catch (Throwable th3) {
                        try {
                            intStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                InterfaceC2969U interfaceC2969U = (InterfaceC2969U) ((Function) ((C2913K) this.f1171d).f911m).apply(obj);
                if (interfaceC2969U != null) {
                    try {
                        interfaceC2969U.sequential().mo268j((InterfaceC2820f) this.f1170c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2969U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2969U != null) {
                    interfaceC2969U.close();
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3052i3, p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public void mo385l() {
        switch (this.f1169b) {
            case 0:
                this.f1170c = null;
                this.f1104a.mo385l();
                return;
            default:
                this.f1104a.mo385l();
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        switch (this.f1169b) {
            case 0:
                this.f1170c = new HashSet();
                this.f1104a.mo361m(-1L);
                return;
            case 1:
                this.f1104a.mo361m(-1L);
                return;
            case 2:
                this.f1104a.mo361m(-1L);
                return;
            default:
                this.f1104a.mo361m(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3102r(C2913K c2913k, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f1171d = c2913k;
        InterfaceC3076m3 interfaceC3076m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3076m32);
        this.f1170c = new C2883F(interfaceC3076m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3102r(C2925M c2925m, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f1171d = c2925m;
        InterfaceC3076m3 interfaceC3076m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3076m32);
        this.f1170c = new C2860B0(interfaceC3076m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3102r(C2931N c2931n, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f1171d = c2931n;
        InterfaceC3076m3 interfaceC3076m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3076m32);
        this.f1170c = new C2980W0(interfaceC3076m32);
    }
}
