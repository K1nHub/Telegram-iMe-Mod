package p034j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C2941r extends AbstractC2891i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1031b = 3;

    /* renamed from: c */
    Object f1032c;

    /* renamed from: d */
    final /* synthetic */ Object f1033d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2941r(C2947s c2947s, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f1033d = c2947s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1031b) {
            case 0:
                if (((Set) this.f1032c).contains(obj)) {
                    return;
                }
                ((Set) this.f1032c).add(obj);
                this.f966a.accept((InterfaceC2915m3) obj);
                return;
            case 1:
                InterfaceC2865e1 interfaceC2865e1 = (InterfaceC2865e1) ((Function) ((C2770N) this.f1033d).f797m).apply(obj);
                if (interfaceC2865e1 != null) {
                    try {
                        interfaceC2865e1.sequential().mo175d((InterfaceC2666q) this.f1032c);
                    } catch (Throwable th) {
                        try {
                            interfaceC2865e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2865e1 != null) {
                    interfaceC2865e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2764M) this.f1033d).f786m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo255U((InterfaceC2661l) this.f1032c);
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
                InterfaceC2808U interfaceC2808U = (InterfaceC2808U) ((Function) ((C2752K) this.f1033d).f773m).apply(obj);
                if (interfaceC2808U != null) {
                    try {
                        interfaceC2808U.sequential().mo191j((InterfaceC2655f) this.f1032c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2808U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2808U != null) {
                    interfaceC2808U.close();
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC2891i3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        switch (this.f1031b) {
            case 0:
                this.f1032c = null;
                this.f966a.mo316m();
                return;
            default:
                this.f966a.mo316m();
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        switch (this.f1031b) {
            case 0:
                this.f1032c = new HashSet();
                this.f966a.mo292n(-1L);
                return;
            case 1:
                this.f966a.mo292n(-1L);
                return;
            case 2:
                this.f966a.mo292n(-1L);
                return;
            default:
                this.f966a.mo292n(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2941r(C2752K c2752k, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f1033d = c2752k;
        InterfaceC2915m3 interfaceC2915m32 = this.f966a;
        Objects.requireNonNull(interfaceC2915m32);
        this.f1032c = new C2722F(interfaceC2915m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2941r(C2764M c2764m, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f1033d = c2764m;
        InterfaceC2915m3 interfaceC2915m32 = this.f966a;
        Objects.requireNonNull(interfaceC2915m32);
        this.f1032c = new C2699B0(interfaceC2915m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2941r(C2770N c2770n, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f1033d = c2770n;
        InterfaceC2915m3 interfaceC2915m32 = this.f966a;
        Objects.requireNonNull(interfaceC2915m32);
        this.f1032c = new C2819W0(interfaceC2915m32);
    }
}
