package p033j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C3161r extends AbstractC3111i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1120b = 3;

    /* renamed from: c */
    Object f1121c;

    /* renamed from: d */
    final /* synthetic */ Object f1122d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3161r(C3167s c3167s, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f1122d = c3167s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1120b) {
            case 0:
                if (((Set) this.f1121c).contains(obj)) {
                    return;
                }
                ((Set) this.f1121c).add(obj);
                this.f1055a.accept((InterfaceC3135m3) obj);
                return;
            case 1:
                InterfaceC3085e1 interfaceC3085e1 = (InterfaceC3085e1) ((Function) ((C2990N) this.f1122d).f886m).apply(obj);
                if (interfaceC3085e1 != null) {
                    try {
                        interfaceC3085e1.sequential().mo198d((InterfaceC2886q) this.f1121c);
                    } catch (Throwable th) {
                        try {
                            interfaceC3085e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3085e1 != null) {
                    interfaceC3085e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2984M) this.f1122d).f875m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo278U((InterfaceC2881l) this.f1121c);
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
                InterfaceC3028U interfaceC3028U = (InterfaceC3028U) ((Function) ((C2972K) this.f1122d).f862m).apply(obj);
                if (interfaceC3028U != null) {
                    try {
                        interfaceC3028U.sequential().mo214j((InterfaceC2875f) this.f1121c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC3028U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC3028U != null) {
                    interfaceC3028U.close();
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3111i3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        switch (this.f1120b) {
            case 0:
                this.f1121c = null;
                this.f1055a.mo339m();
                return;
            default:
                this.f1055a.mo339m();
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f1120b) {
            case 0:
                this.f1121c = new HashSet();
                this.f1055a.mo315n(-1L);
                return;
            case 1:
                this.f1055a.mo315n(-1L);
                return;
            case 2:
                this.f1055a.mo315n(-1L);
                return;
            default:
                this.f1055a.mo315n(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3161r(C2972K c2972k, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f1122d = c2972k;
        InterfaceC3135m3 interfaceC3135m32 = this.f1055a;
        Objects.requireNonNull(interfaceC3135m32);
        this.f1121c = new C2942F(interfaceC3135m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3161r(C2984M c2984m, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f1122d = c2984m;
        InterfaceC3135m3 interfaceC3135m32 = this.f1055a;
        Objects.requireNonNull(interfaceC3135m32);
        this.f1121c = new C2919B0(interfaceC3135m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3161r(C2990N c2990n, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f1122d = c2990n;
        InterfaceC3135m3 interfaceC3135m32 = this.f1055a;
        Objects.requireNonNull(interfaceC3135m32);
        this.f1121c = new C3039W0(interfaceC3135m32);
    }
}
