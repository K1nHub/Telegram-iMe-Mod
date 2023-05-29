package p034j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C2985r extends AbstractC2935i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1034b = 3;

    /* renamed from: c */
    Object f1035c;

    /* renamed from: d */
    final /* synthetic */ Object f1036d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2985r(C2991s c2991s, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f1036d = c2991s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1034b) {
            case 0:
                if (((Set) this.f1035c).contains(obj)) {
                    return;
                }
                ((Set) this.f1035c).add(obj);
                this.f969a.accept((InterfaceC2959m3) obj);
                return;
            case 1:
                InterfaceC2909e1 interfaceC2909e1 = (InterfaceC2909e1) ((Function) ((C2814N) this.f1036d).f800m).apply(obj);
                if (interfaceC2909e1 != null) {
                    try {
                        interfaceC2909e1.sequential().mo180d((InterfaceC2710q) this.f1035c);
                    } catch (Throwable th) {
                        try {
                            interfaceC2909e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2909e1 != null) {
                    interfaceC2909e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2808M) this.f1036d).f789m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo260U((InterfaceC2705l) this.f1035c);
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
                InterfaceC2852U interfaceC2852U = (InterfaceC2852U) ((Function) ((C2796K) this.f1036d).f776m).apply(obj);
                if (interfaceC2852U != null) {
                    try {
                        interfaceC2852U.sequential().mo196j((InterfaceC2699f) this.f1035c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2852U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2852U != null) {
                    interfaceC2852U.close();
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC2935i3, p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
        switch (this.f1034b) {
            case 0:
                this.f1035c = null;
                this.f969a.mo321m();
                return;
            default:
                this.f969a.mo321m();
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        switch (this.f1034b) {
            case 0:
                this.f1035c = new HashSet();
                this.f969a.mo297n(-1L);
                return;
            case 1:
                this.f969a.mo297n(-1L);
                return;
            case 2:
                this.f969a.mo297n(-1L);
                return;
            default:
                this.f969a.mo297n(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2985r(C2796K c2796k, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f1036d = c2796k;
        InterfaceC2959m3 interfaceC2959m32 = this.f969a;
        Objects.requireNonNull(interfaceC2959m32);
        this.f1035c = new C2766F(interfaceC2959m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2985r(C2808M c2808m, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f1036d = c2808m;
        InterfaceC2959m3 interfaceC2959m32 = this.f969a;
        Objects.requireNonNull(interfaceC2959m32);
        this.f1035c = new C2743B0(interfaceC2959m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2985r(C2814N c2814n, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f1036d = c2814n;
        InterfaceC2959m3 interfaceC2959m32 = this.f969a;
        Objects.requireNonNull(interfaceC2959m32);
        this.f1035c = new C2863W0(interfaceC2959m32);
    }
}
