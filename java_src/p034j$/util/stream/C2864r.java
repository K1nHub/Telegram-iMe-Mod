package p034j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C2864r extends AbstractC2814i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1030b = 3;

    /* renamed from: c */
    Object f1031c;

    /* renamed from: d */
    final /* synthetic */ Object f1032d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2864r(C2870s c2870s, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f1032d = c2870s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1030b) {
            case 0:
                if (((Set) this.f1031c).contains(obj)) {
                    return;
                }
                ((Set) this.f1031c).add(obj);
                this.f965a.accept((InterfaceC2838m3) obj);
                return;
            case 1:
                InterfaceC2788e1 interfaceC2788e1 = (InterfaceC2788e1) ((Function) ((C2693N) this.f1032d).f796m).apply(obj);
                if (interfaceC2788e1 != null) {
                    try {
                        interfaceC2788e1.sequential().mo195d((InterfaceC2589q) this.f1031c);
                    } catch (Throwable th) {
                        try {
                            interfaceC2788e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2788e1 != null) {
                    interfaceC2788e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2687M) this.f1032d).f785m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo275U((InterfaceC2584l) this.f1031c);
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
                InterfaceC2731U interfaceC2731U = (InterfaceC2731U) ((Function) ((C2675K) this.f1032d).f772m).apply(obj);
                if (interfaceC2731U != null) {
                    try {
                        interfaceC2731U.sequential().mo211j((InterfaceC2578f) this.f1031c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2731U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2731U != null) {
                    interfaceC2731U.close();
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC2814i3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        switch (this.f1030b) {
            case 0:
                this.f1031c = null;
                this.f965a.mo336m();
                return;
            default:
                this.f965a.mo336m();
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        switch (this.f1030b) {
            case 0:
                this.f1031c = new HashSet();
                this.f965a.mo312n(-1L);
                return;
            case 1:
                this.f965a.mo312n(-1L);
                return;
            case 2:
                this.f965a.mo312n(-1L);
                return;
            default:
                this.f965a.mo312n(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2864r(C2675K c2675k, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f1032d = c2675k;
        InterfaceC2838m3 interfaceC2838m32 = this.f965a;
        Objects.requireNonNull(interfaceC2838m32);
        this.f1031c = new C2645F(interfaceC2838m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2864r(C2687M c2687m, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f1032d = c2687m;
        InterfaceC2838m3 interfaceC2838m32 = this.f965a;
        Objects.requireNonNull(interfaceC2838m32);
        this.f1031c = new C2622B0(interfaceC2838m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2864r(C2693N c2693n, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f1032d = c2693n;
        InterfaceC2838m3 interfaceC2838m32 = this.f965a;
        Objects.requireNonNull(interfaceC2838m32);
        this.f1031c = new C2742W0(interfaceC2838m32);
    }
}
