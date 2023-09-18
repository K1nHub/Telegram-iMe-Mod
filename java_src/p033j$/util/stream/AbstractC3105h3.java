package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2885p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.stream.h3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3105h3 implements InterfaceC3129l3 {

    /* renamed from: a */
    protected final InterfaceC3135m3 f1048a;

    public AbstractC3105h3(InterfaceC3135m3 interfaceC3135m3) {
        Objects.requireNonNull(interfaceC3135m3);
        this.f1048a = interfaceC3135m3;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(double d) {
        AbstractC3145o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(int i) {
        AbstractC3145o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3145o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        this.f1048a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1048a.mo314o();
    }
}
