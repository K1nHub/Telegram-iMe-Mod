package p034j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C2740r extends AbstractC2690i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1025b = 3;

    /* renamed from: c */
    Object f1026c;

    /* renamed from: d */
    final /* synthetic */ Object f1027d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2740r(C2746s c2746s, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f1027d = c2746s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1025b) {
            case 0:
                if (((Set) this.f1026c).contains(obj)) {
                    return;
                }
                ((Set) this.f1026c).add(obj);
                this.f960a.accept((InterfaceC2714m3) obj);
                return;
            case 1:
                InterfaceC2664e1 interfaceC2664e1 = (InterfaceC2664e1) ((Function) ((C2569N) this.f1027d).f791m).apply(obj);
                if (interfaceC2664e1 != null) {
                    try {
                        interfaceC2664e1.sequential().mo195d((InterfaceC2465q) this.f1026c);
                    } catch (Throwable th) {
                        try {
                            interfaceC2664e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2664e1 != null) {
                    interfaceC2664e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2563M) this.f1027d).f780m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo275U((InterfaceC2460l) this.f1026c);
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
                InterfaceC2607U interfaceC2607U = (InterfaceC2607U) ((Function) ((C2551K) this.f1027d).f767m).apply(obj);
                if (interfaceC2607U != null) {
                    try {
                        interfaceC2607U.sequential().mo211j((InterfaceC2454f) this.f1026c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2607U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2607U != null) {
                    interfaceC2607U.close();
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC2690i3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        switch (this.f1025b) {
            case 0:
                this.f1026c = null;
                this.f960a.mo336m();
                return;
            default:
                this.f960a.mo336m();
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        switch (this.f1025b) {
            case 0:
                this.f1026c = new HashSet();
                this.f960a.mo312n(-1L);
                return;
            case 1:
                this.f960a.mo312n(-1L);
                return;
            case 2:
                this.f960a.mo312n(-1L);
                return;
            default:
                this.f960a.mo312n(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2740r(C2551K c2551k, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f1027d = c2551k;
        InterfaceC2714m3 interfaceC2714m32 = this.f960a;
        Objects.requireNonNull(interfaceC2714m32);
        this.f1026c = new C2521F(interfaceC2714m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2740r(C2563M c2563m, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f1027d = c2563m;
        InterfaceC2714m3 interfaceC2714m32 = this.f960a;
        Objects.requireNonNull(interfaceC2714m32);
        this.f1026c = new C2498B0(interfaceC2714m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2740r(C2569N c2569n, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f1027d = c2569n;
        InterfaceC2714m3 interfaceC2714m32 = this.f960a;
        Objects.requireNonNull(interfaceC2714m32);
        this.f1026c = new C2618W0(interfaceC2714m32);
    }
}
