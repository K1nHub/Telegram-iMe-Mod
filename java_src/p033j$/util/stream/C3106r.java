package p033j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C3106r extends AbstractC3056i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1116b = 3;

    /* renamed from: c */
    Object f1117c;

    /* renamed from: d */
    final /* synthetic */ Object f1118d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3106r(C3112s c3112s, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1118d = c3112s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1116b) {
            case 0:
                if (((Set) this.f1117c).contains(obj)) {
                    return;
                }
                ((Set) this.f1117c).add(obj);
                this.f1051a.accept((InterfaceC3080m3) obj);
                return;
            case 1:
                InterfaceC3030e1 interfaceC3030e1 = (InterfaceC3030e1) ((Function) ((C2935N) this.f1118d).f882m).apply(obj);
                if (interfaceC3030e1 != null) {
                    try {
                        interfaceC3030e1.sequential().mo180d((InterfaceC2831q) this.f1117c);
                    } catch (Throwable th) {
                        try {
                            interfaceC3030e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3030e1 != null) {
                    interfaceC3030e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2929M) this.f1118d).f871m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo260U((InterfaceC2826l) this.f1117c);
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
                InterfaceC2973U interfaceC2973U = (InterfaceC2973U) ((Function) ((C2917K) this.f1118d).f858m).apply(obj);
                if (interfaceC2973U != null) {
                    try {
                        interfaceC2973U.sequential().mo196j((InterfaceC2820f) this.f1117c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2973U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2973U != null) {
                    interfaceC2973U.close();
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3056i3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo321m() {
        switch (this.f1116b) {
            case 0:
                this.f1117c = null;
                this.f1051a.mo321m();
                return;
            default:
                this.f1051a.mo321m();
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        switch (this.f1116b) {
            case 0:
                this.f1117c = new HashSet();
                this.f1051a.mo297n(-1L);
                return;
            case 1:
                this.f1051a.mo297n(-1L);
                return;
            case 2:
                this.f1051a.mo297n(-1L);
                return;
            default:
                this.f1051a.mo297n(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3106r(C2917K c2917k, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1118d = c2917k;
        InterfaceC3080m3 interfaceC3080m32 = this.f1051a;
        Objects.requireNonNull(interfaceC3080m32);
        this.f1117c = new C2887F(interfaceC3080m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3106r(C2929M c2929m, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1118d = c2929m;
        InterfaceC3080m3 interfaceC3080m32 = this.f1051a;
        Objects.requireNonNull(interfaceC3080m32);
        this.f1117c = new C2864B0(interfaceC3080m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3106r(C2935N c2935n, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1118d = c2935n;
        InterfaceC3080m3 interfaceC3080m32 = this.f1051a;
        Objects.requireNonNull(interfaceC3080m32);
        this.f1117c = new C2984W0(interfaceC3080m32);
    }
}