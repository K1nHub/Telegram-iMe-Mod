package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2964k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.stream.g3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3183g3 implements InterfaceC3207k3 {

    /* renamed from: a */
    protected final InterfaceC3219m3 f1052a;

    public AbstractC3183g3(InterfaceC3219m3 interfaceC3219m3) {
        Objects.requireNonNull(interfaceC3219m3);
        this.f1052a = interfaceC3219m3;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        AbstractC3229o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        AbstractC3229o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3229o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        this.f1052a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1052a.mo314o();
    }
}
