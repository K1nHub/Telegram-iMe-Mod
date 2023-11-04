package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3083n4 implements InterfaceC3058j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1140a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1141b;

    public /* synthetic */ C3083n4(InterfaceC2820f interfaceC2820f) {
        this.f1141b = interfaceC2820f;
    }

    @Override // p033j$.util.stream.InterfaceC3058j3, p033j$.util.stream.InterfaceC3076m3
    public final void accept(double d) {
        switch (this.f1140a) {
            case 0:
                ((InterfaceC2820f) this.f1141b).accept(d);
                return;
            default:
                ((C2973U3) this.f1141b).accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1140a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m427b(Double d) {
        switch (this.f1140a) {
            case 0:
                AbstractC3086o1.m423a(this, d);
                return;
            default:
                AbstractC3086o1.m423a(this, d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        switch (this.f1140a) {
            case 0:
                Objects.requireNonNull(interfaceC2820f);
                return new C2819e(this, interfaceC2820f);
            default:
                Objects.requireNonNull(interfaceC2820f);
                return new C2819e(this, interfaceC2820f);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public /* synthetic */ void mo361m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    public /* synthetic */ C3083n4(C2973U3 c2973u3) {
        this.f1141b = c2973u3;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1140a) {
            case 0:
                AbstractC3086o1.m420d(this);
                throw null;
            default:
                AbstractC3086o1.m420d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        switch (this.f1140a) {
            case 0:
                AbstractC3086o1.m419e(this);
                throw null;
            default:
                AbstractC3086o1.m419e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1140a) {
            case 0:
                m427b((Double) obj);
                return;
            default:
                m427b((Double) obj);
                return;
        }
    }
}
