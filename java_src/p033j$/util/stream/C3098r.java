package p033j$.util.stream;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.stream.r */
/* loaded from: classes2.dex */
class C3098r extends AbstractC3048i3 {

    /* renamed from: b */
    public final /* synthetic */ int f1169b = 3;

    /* renamed from: c */
    Object f1170c;

    /* renamed from: d */
    final /* synthetic */ Object f1171d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3098r(C3104s c3104s, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1171d = c3104s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f1169b) {
            case 0:
                if (((Set) this.f1170c).contains(obj)) {
                    return;
                }
                ((Set) this.f1170c).add(obj);
                this.f1104a.accept((InterfaceC3072m3) obj);
                return;
            case 1:
                InterfaceC3022e1 interfaceC3022e1 = (InterfaceC3022e1) ((Function) ((C2927N) this.f1171d).f935m).apply(obj);
                if (interfaceC3022e1 != null) {
                    try {
                        interfaceC3022e1.sequential().mo250d((InterfaceC2826p) this.f1170c);
                    } catch (Throwable th) {
                        try {
                            interfaceC3022e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3022e1 != null) {
                    interfaceC3022e1.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C2921M) this.f1171d).f924m).apply(obj);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo324T((InterfaceC2822l) this.f1170c);
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
                InterfaceC2965U interfaceC2965U = (InterfaceC2965U) ((Function) ((C2909K) this.f1171d).f911m).apply(obj);
                if (interfaceC2965U != null) {
                    try {
                        interfaceC2965U.sequential().mo267j((InterfaceC2816f) this.f1170c);
                    } catch (Throwable th5) {
                        try {
                            interfaceC2965U.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (interfaceC2965U != null) {
                    interfaceC2965U.close();
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.AbstractC3048i3, p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public void mo384l() {
        switch (this.f1169b) {
            case 0:
                this.f1170c = null;
                this.f1104a.mo384l();
                return;
            default:
                this.f1104a.mo384l();
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        switch (this.f1169b) {
            case 0:
                this.f1170c = new HashSet();
                this.f1104a.mo360m(-1L);
                return;
            case 1:
                this.f1104a.mo360m(-1L);
                return;
            case 2:
                this.f1104a.mo360m(-1L);
                return;
            default:
                this.f1104a.mo360m(-1L);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3098r(C2909K c2909k, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1171d = c2909k;
        InterfaceC3072m3 interfaceC3072m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3072m32);
        this.f1170c = new C2879F(interfaceC3072m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3098r(C2921M c2921m, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1171d = c2921m;
        InterfaceC3072m3 interfaceC3072m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3072m32);
        this.f1170c = new C2856B0(interfaceC3072m32);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3098r(C2927N c2927n, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1171d = c2927n;
        InterfaceC3072m3 interfaceC3072m32 = this.f1104a;
        Objects.requireNonNull(interfaceC3072m32);
        this.f1170c = new C2976W0(interfaceC3072m32);
    }
}
