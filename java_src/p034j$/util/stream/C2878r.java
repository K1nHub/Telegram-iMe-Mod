package p034j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C2878r extends AbstractC2828i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1031b = 3;

    /* renamed from: c */
    Object f1032c;

    /* renamed from: d */
    final /* synthetic */ Object f1033d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878r(C2884s c2884s, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f1033d = c2884s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1031b) {
            case 0:
                if (((Set) this.f1032c).contains(obj)) {
                    return;
                }
                ((Set) this.f1032c).add(obj);
                this.f966a.accept((InterfaceC2852m3) obj);
                return;
            case 1:
                InterfaceC2802e1 interfaceC2802e1 = (InterfaceC2802e1) ((Function) ((C2707N) this.f1033d).f797m).apply(obj);
                if (interfaceC2802e1 != null) {
                    try {
                        interfaceC2802e1.sequential().mo194d((InterfaceC2603q) this.f1032c);
                    } catch (Throwable th) {
                        try {
                            interfaceC2802e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2802e1 != null) {
                    interfaceC2802e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2701M) this.f1033d).f786m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo274U((InterfaceC2598l) this.f1032c);
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
                InterfaceC2745U interfaceC2745U = (InterfaceC2745U) ((Function) ((C2689K) this.f1033d).f773m).apply(obj);
                if (interfaceC2745U != null) {
                    try {
                        interfaceC2745U.sequential().mo210j((InterfaceC2592f) this.f1032c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2745U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2745U != null) {
                    interfaceC2745U.close();
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC2828i3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        switch (this.f1031b) {
            case 0:
                this.f1032c = null;
                this.f966a.mo335m();
                return;
            default:
                this.f966a.mo335m();
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        switch (this.f1031b) {
            case 0:
                this.f1032c = new HashSet();
                this.f966a.mo311n(-1L);
                return;
            case 1:
                this.f966a.mo311n(-1L);
                return;
            case 2:
                this.f966a.mo311n(-1L);
                return;
            default:
                this.f966a.mo311n(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878r(C2689K c2689k, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f1033d = c2689k;
        InterfaceC2852m3 interfaceC2852m32 = this.f966a;
        Objects.requireNonNull(interfaceC2852m32);
        this.f1032c = new C2659F(interfaceC2852m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878r(C2701M c2701m, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f1033d = c2701m;
        InterfaceC2852m3 interfaceC2852m32 = this.f966a;
        Objects.requireNonNull(interfaceC2852m32);
        this.f1032c = new C2636B0(interfaceC2852m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878r(C2707N c2707n, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f1033d = c2707n;
        InterfaceC2852m3 interfaceC2852m32 = this.f966a;
        Objects.requireNonNull(interfaceC2852m32);
        this.f1032c = new C2756W0(interfaceC2852m32);
    }
}
