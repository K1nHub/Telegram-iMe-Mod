package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2885p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3166r4 implements InterfaceC3129l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1131a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1132b;

    public /* synthetic */ C3166r4(InterfaceC2886q interfaceC2886q) {
        this.f1132b = interfaceC2886q;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1131a) {
            case 0:
                AbstractC3145o1.m372f(this);
                throw null;
            default:
                AbstractC3145o1.m372f(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1131a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m347b(Long l) {
        switch (this.f1131a) {
            case 0:
                AbstractC3145o1.m375c(this, l);
                return;
            default:
                AbstractC3145o1.m375c(this, l);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        switch (this.f1131a) {
            case 0:
                Objects.requireNonNull(interfaceC2886q);
                return new C2885p(this, interfaceC2886q);
            default:
                Objects.requireNonNull(interfaceC2886q);
                return new C2885p(this, interfaceC2886q);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    public /* synthetic */ C3166r4(C3052Y3 c3052y3) {
        this.f1132b = c3052y3;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1131a) {
            case 0:
                AbstractC3145o1.m374d(this);
                throw null;
            default:
                AbstractC3145o1.m374d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public final void accept(long j) {
        switch (this.f1131a) {
            case 0:
                ((InterfaceC2886q) this.f1132b).accept(j);
                return;
            default:
                ((C3052Y3) this.f1132b).accept(j);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1131a) {
            case 0:
                m347b((Long) obj);
                return;
            default:
                m347b((Long) obj);
                return;
        }
    }
}
