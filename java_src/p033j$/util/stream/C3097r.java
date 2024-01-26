package p033j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C3097r extends AbstractC3047i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1169b = 3;

    /* renamed from: c */
    Object f1170c;

    /* renamed from: d */
    final /* synthetic */ Object f1171d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3097r(C3103s c3103s, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f1171d = c3103s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1169b) {
            case 0:
                if (((Set) this.f1170c).contains(obj)) {
                    return;
                }
                ((Set) this.f1170c).add(obj);
                this.f1104a.accept((InterfaceC3071m3) obj);
                return;
            case 1:
                InterfaceC3021e1 interfaceC3021e1 = (InterfaceC3021e1) ((Function) ((C2926N) this.f1171d).f935m).apply(obj);
                if (interfaceC3021e1 != null) {
                    try {
                        interfaceC3021e1.sequential().mo254d((InterfaceC2825p) this.f1170c);
                    } catch (Throwable th) {
                        try {
                            interfaceC3021e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3021e1 != null) {
                    interfaceC3021e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2920M) this.f1171d).f924m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo328T((InterfaceC2821l) this.f1170c);
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
                InterfaceC2964U interfaceC2964U = (InterfaceC2964U) ((Function) ((C2908K) this.f1171d).f911m).apply(obj);
                if (interfaceC2964U != null) {
                    try {
                        interfaceC2964U.sequential().mo271j((InterfaceC2815f) this.f1170c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2964U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2964U != null) {
                    interfaceC2964U.close();
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3047i3, p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        switch (this.f1169b) {
            case 0:
                this.f1170c = null;
                this.f1104a.mo388l();
                return;
            default:
                this.f1104a.mo388l();
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        switch (this.f1169b) {
            case 0:
                this.f1170c = new HashSet();
                this.f1104a.mo364m(-1L);
                return;
            case 1:
                this.f1104a.mo364m(-1L);
                return;
            case 2:
                this.f1104a.mo364m(-1L);
                return;
            default:
                this.f1104a.mo364m(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3097r(C2908K c2908k, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f1171d = c2908k;
        InterfaceC3071m3 interfaceC3071m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3071m32);
        this.f1170c = new C2878F(interfaceC3071m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3097r(C2920M c2920m, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f1171d = c2920m;
        InterfaceC3071m3 interfaceC3071m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3071m32);
        this.f1170c = new C2855B0(interfaceC3071m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3097r(C2926N c2926n, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f1171d = c2926n;
        InterfaceC3071m3 interfaceC3071m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3071m32);
        this.f1170c = new C2975W0(interfaceC3071m32);
    }
}
