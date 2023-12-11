package p033j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C3099r extends AbstractC3049i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1169b = 3;

    /* renamed from: c */
    Object f1170c;

    /* renamed from: d */
    final /* synthetic */ Object f1171d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3099r(C3105s c3105s, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1171d = c3105s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1169b) {
            case 0:
                if (((Set) this.f1170c).contains(obj)) {
                    return;
                }
                ((Set) this.f1170c).add(obj);
                this.f1104a.accept((InterfaceC3073m3) obj);
                return;
            case 1:
                InterfaceC3023e1 interfaceC3023e1 = (InterfaceC3023e1) ((Function) ((C2928N) this.f1171d).f935m).apply(obj);
                if (interfaceC3023e1 != null) {
                    try {
                        interfaceC3023e1.sequential().mo251d((InterfaceC2827p) this.f1170c);
                    } catch (Throwable th) {
                        try {
                            interfaceC3023e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3023e1 != null) {
                    interfaceC3023e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2922M) this.f1171d).f924m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo325T((InterfaceC2823l) this.f1170c);
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
                InterfaceC2966U interfaceC2966U = (InterfaceC2966U) ((Function) ((C2910K) this.f1171d).f911m).apply(obj);
                if (interfaceC2966U != null) {
                    try {
                        interfaceC2966U.sequential().mo268j((InterfaceC2817f) this.f1170c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2966U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2966U != null) {
                    interfaceC2966U.close();
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3049i3, p033j$.util.stream.InterfaceC3073m3
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

    @Override // p033j$.util.stream.InterfaceC3073m3
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
    public C3099r(C2910K c2910k, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1171d = c2910k;
        InterfaceC3073m3 interfaceC3073m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3073m32);
        this.f1170c = new C2880F(interfaceC3073m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3099r(C2922M c2922m, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1171d = c2922m;
        InterfaceC3073m3 interfaceC3073m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3073m32);
        this.f1170c = new C2857B0(interfaceC3073m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3099r(C2928N c2928n, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1171d = c2928n;
        InterfaceC3073m3 interfaceC3073m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3073m32);
        this.f1170c = new C2977W0(interfaceC3073m32);
    }
}
