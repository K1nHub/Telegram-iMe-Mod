package p034j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C2980r extends AbstractC2930i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1034b = 3;

    /* renamed from: c */
    Object f1035c;

    /* renamed from: d */
    final /* synthetic */ Object f1036d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2980r(C2986s c2986s, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f1036d = c2986s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1034b) {
            case 0:
                if (((Set) this.f1035c).contains(obj)) {
                    return;
                }
                ((Set) this.f1035c).add(obj);
                this.f969a.accept((InterfaceC2954m3) obj);
                return;
            case 1:
                InterfaceC2904e1 interfaceC2904e1 = (InterfaceC2904e1) ((Function) ((C2809N) this.f1036d).f800m).apply(obj);
                if (interfaceC2904e1 != null) {
                    try {
                        interfaceC2904e1.sequential().mo180d((InterfaceC2705q) this.f1035c);
                    } catch (Throwable th) {
                        try {
                            interfaceC2904e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2904e1 != null) {
                    interfaceC2904e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2803M) this.f1036d).f789m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo260U((InterfaceC2700l) this.f1035c);
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
                InterfaceC2847U interfaceC2847U = (InterfaceC2847U) ((Function) ((C2791K) this.f1036d).f776m).apply(obj);
                if (interfaceC2847U != null) {
                    try {
                        interfaceC2847U.sequential().mo196j((InterfaceC2694f) this.f1035c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2847U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2847U != null) {
                    interfaceC2847U.close();
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.AbstractC2930i3, p034j$.util.stream.InterfaceC2954m3
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

    @Override // p034j$.util.stream.InterfaceC2954m3
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
    public C2980r(C2791K c2791k, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f1036d = c2791k;
        InterfaceC2954m3 interfaceC2954m32 = this.f969a;
        Objects.requireNonNull(interfaceC2954m32);
        this.f1035c = new C2761F(interfaceC2954m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2980r(C2803M c2803m, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f1036d = c2803m;
        InterfaceC2954m3 interfaceC2954m32 = this.f969a;
        Objects.requireNonNull(interfaceC2954m32);
        this.f1035c = new C2738B0(interfaceC2954m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2980r(C2809N c2809n, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f1036d = c2809n;
        InterfaceC2954m3 interfaceC2954m32 = this.f969a;
        Objects.requireNonNull(interfaceC2954m32);
        this.f1035c = new C2858W0(interfaceC2954m32);
    }
}
