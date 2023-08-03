package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3087n4 implements InterfaceC3062j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1090a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1091b;

    public /* synthetic */ C3087n4(InterfaceC2820f interfaceC2820f) {
        this.f1091b = interfaceC2820f;
    }

    @Override // p033j$.util.stream.InterfaceC3062j3, p033j$.util.stream.InterfaceC3080m3
    public final void accept(double d) {
        switch (this.f1090a) {
            case 0:
                ((InterfaceC2820f) this.f1091b).accept(d);
                return;
            default:
                ((C2977U3) this.f1091b).accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1090a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m381b(Double d) {
        switch (this.f1090a) {
            case 0:
                AbstractC3090o1.m377a(this, d);
                return;
            default:
                AbstractC3090o1.m377a(this, d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        switch (this.f1090a) {
            case 0:
                Objects.requireNonNull(interfaceC2820f);
                return new C2819e(this, interfaceC2820f);
            default:
                Objects.requireNonNull(interfaceC2820f);
                return new C2819e(this, interfaceC2820f);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    public /* synthetic */ C3087n4(C2977U3 c2977u3) {
        this.f1091b = c2977u3;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1090a) {
            case 0:
                AbstractC3090o1.m374d(this);
                throw null;
            default:
                AbstractC3090o1.m374d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        switch (this.f1090a) {
            case 0:
                AbstractC3090o1.m373e(this);
                throw null;
            default:
                AbstractC3090o1.m373e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1090a) {
            case 0:
                m381b((Double) obj);
                return;
            default:
                m381b((Double) obj);
                return;
        }
    }
}
