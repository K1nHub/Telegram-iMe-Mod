package p033j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C3245r extends AbstractC3195i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1129b = 3;

    /* renamed from: c */
    Object f1130c;

    /* renamed from: d */
    final /* synthetic */ Object f1131d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3245r(C3251s c3251s, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f1131d = c3251s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1129b) {
            case 0:
                if (((Set) this.f1130c).contains(obj)) {
                    return;
                }
                ((Set) this.f1130c).add(obj);
                this.f1064a.accept((InterfaceC3219m3) obj);
                return;
            case 1:
                InterfaceC3169e1 interfaceC3169e1 = (InterfaceC3169e1) ((Function) ((C3074N) this.f1131d).f895m).apply(obj);
                if (interfaceC3169e1 != null) {
                    try {
                        interfaceC3169e1.sequential().mo198d((InterfaceC2970q) this.f1130c);
                    } catch (Throwable th) {
                        try {
                            interfaceC3169e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3169e1 != null) {
                    interfaceC3169e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C3068M) this.f1131d).f884m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo278U((InterfaceC2965l) this.f1130c);
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
                InterfaceC3112U interfaceC3112U = (InterfaceC3112U) ((Function) ((C3056K) this.f1131d).f871m).apply(obj);
                if (interfaceC3112U != null) {
                    try {
                        interfaceC3112U.sequential().mo214j((InterfaceC2959f) this.f1130c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC3112U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC3112U != null) {
                    interfaceC3112U.close();
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3195i3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        switch (this.f1129b) {
            case 0:
                this.f1130c = null;
                this.f1064a.mo339m();
                return;
            default:
                this.f1064a.mo339m();
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f1129b) {
            case 0:
                this.f1130c = new HashSet();
                this.f1064a.mo315n(-1L);
                return;
            case 1:
                this.f1064a.mo315n(-1L);
                return;
            case 2:
                this.f1064a.mo315n(-1L);
                return;
            default:
                this.f1064a.mo315n(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3245r(C3056K c3056k, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f1131d = c3056k;
        InterfaceC3219m3 interfaceC3219m32 = this.f1064a;
        Objects.requireNonNull(interfaceC3219m32);
        this.f1130c = new C3026F(interfaceC3219m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3245r(C3068M c3068m, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f1131d = c3068m;
        InterfaceC3219m3 interfaceC3219m32 = this.f1064a;
        Objects.requireNonNull(interfaceC3219m32);
        this.f1130c = new C3003B0(interfaceC3219m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3245r(C3074N c3074n, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f1131d = c3074n;
        InterfaceC3219m3 interfaceC3219m32 = this.f1064a;
        Objects.requireNonNull(interfaceC3219m32);
        this.f1130c = new C3123W0(interfaceC3219m32);
    }
}
