package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.g3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3044g3 implements InterfaceC3068k3 {

    /* renamed from: a */
    protected final InterfaceC3080m3 f1042a;

    public AbstractC3044g3(InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        this.f1042a = interfaceC3080m3;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3090o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        this.f1042a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1042a.mo314o();
    }
}
