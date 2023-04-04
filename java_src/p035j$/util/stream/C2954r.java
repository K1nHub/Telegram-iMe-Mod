package p035j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C2954r extends AbstractC2904i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1036b = 3;

    /* renamed from: c */
    Object f1037c;

    /* renamed from: d */
    final /* synthetic */ Object f1038d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2954r(C2960s c2960s, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f1038d = c2960s;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1036b) {
            case 0:
                if (((Set) this.f1037c).contains(obj)) {
                    return;
                }
                ((Set) this.f1037c).add(obj);
                this.f971a.accept((InterfaceC2928m3) obj);
                return;
            case 1:
                InterfaceC2878e1 interfaceC2878e1 = (InterfaceC2878e1) ((Function) ((C2783N) this.f1038d).f802m).apply(obj);
                if (interfaceC2878e1 != null) {
                    try {
                        interfaceC2878e1.sequential().mo189d((InterfaceC2679q) this.f1037c);
                    } catch (Throwable th) {
                        try {
                            interfaceC2878e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2878e1 != null) {
                    interfaceC2878e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2777M) this.f1038d).f791m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo269U((InterfaceC2674l) this.f1037c);
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
                InterfaceC2821U interfaceC2821U = (InterfaceC2821U) ((Function) ((C2765K) this.f1038d).f778m).apply(obj);
                if (interfaceC2821U != null) {
                    try {
                        interfaceC2821U.sequential().mo205j((InterfaceC2668f) this.f1037c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2821U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2821U != null) {
                    interfaceC2821U.close();
                    return;
                }
                return;
        }
    }

    @Override // p035j$.util.stream.AbstractC2904i3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        switch (this.f1036b) {
            case 0:
                this.f1037c = null;
                this.f971a.mo330m();
                return;
            default:
                this.f971a.mo330m();
                return;
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        switch (this.f1036b) {
            case 0:
                this.f1037c = new HashSet();
                this.f971a.mo306n(-1L);
                return;
            case 1:
                this.f971a.mo306n(-1L);
                return;
            case 2:
                this.f971a.mo306n(-1L);
                return;
            default:
                this.f971a.mo306n(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2954r(C2765K c2765k, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f1038d = c2765k;
        InterfaceC2928m3 interfaceC2928m32 = this.f971a;
        Objects.requireNonNull(interfaceC2928m32);
        this.f1037c = new C2735F(interfaceC2928m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2954r(C2777M c2777m, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f1038d = c2777m;
        InterfaceC2928m3 interfaceC2928m32 = this.f971a;
        Objects.requireNonNull(interfaceC2928m32);
        this.f1037c = new C2712B0(interfaceC2928m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2954r(C2783N c2783n, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f1038d = c2783n;
        InterfaceC2928m3 interfaceC2928m32 = this.f971a;
        Objects.requireNonNull(interfaceC2928m32);
        this.f1037c = new C2832W0(interfaceC2928m32);
    }
}
